package net.oneplus.h2launcher.quickpage;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.provider.ContactsContract;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.globalsearch.GlobalSearchDbHelper;
import net.oneplus.h2launcher.quickpage.view.CircleImageView;
import net.oneplus.h2launcher.quickpage.view.EmptyView;
import net.oneplus.h2launcher.quickpage.view.util.ColorGenerator;
import net.oneplus.h2launcher.quickpage.view.util.TextDrawable;
import net.oneplus.h2launcher.util.PermissionUtils;
import net.oneplus.h2launcher.widget.OneplusFlowLayout;

/* loaded from: classes.dex */
public class FavoriteContactsGrid extends QuickPageItem {
    private static final int FAVORITE_CONTACTS_COUNT = 10;
    private static final boolean ONLY_STARRED_CONTACTS = false;
    private Activity mActivity;
    private FavoriteContactsAdapter mAdapter;
    private final int mColumnCount;
    ContactsContentObserver mContactsObserver;
    private int mContainerSize;
    private Context mContext;
    private EmptyView mEmptyView;
    private OneplusFlowLayout mFlowLayout;
    private Handler mHandler;
    private PorterDuffColorFilter mHighlightFilter;
    private int mIconSize;
    private LayoutInflater mInflater;
    private FrameLayout mParentView;
    private int mSize;
    private int mTotalContacts;
    private boolean mIsResized = false;
    private boolean mIsContactsObserverRegistered = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ContactsContentObserver extends ContentObserver {
        public ContactsContentObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            FavoriteContactsGrid.this.mHandler.removeCallbacksAndMessages(null);
            FavoriteContactsGrid.this.mHandler.postDelayed(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.FavoriteContactsGrid.ContactsContentObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    new FrequentContactsLoader().execute(new Void[0]);
                }
            }, 200L);
        }
    }

    public FavoriteContactsGrid(Context context, int size, int id) {
        this.mActivity = (Activity) context;
        this.mContext = context.getApplicationContext();
        this.mId = id;
        this.mSize = size;
        this.mColumnCount = context.getResources().getInteger(R.integer.config_favoriteContactsColumns);
        this.mInflater = (LayoutInflater) context.getApplicationContext().getSystemService("layout_inflater");
        this.mParentView = (FrameLayout) this.mInflater.inflate(R.layout.favorite_contacts_grid, (ViewGroup) null);
        this.mFlowLayout = (OneplusFlowLayout) this.mParentView.findViewById(R.id.contacts_grid);
        this.mContainerSize = context.getResources().getDimensionPixelSize(R.dimen.favorite_contacts_container_size);
        this.mIconSize = context.getResources().getDimensionPixelSize(R.dimen.favorite_contacts_image_size);
        this.mHighlightFilter = new PorterDuffColorFilter(context.getResources().getColor(R.color.quick_page_frequent_app_highlight, null), PorterDuff.Mode.SRC_ATOP);
        this.mHandler = new Handler();
        this.mEmptyView = (EmptyView) this.mParentView.findViewById(R.id.empty_view);
        this.mEmptyView.setEmptyImage(R.drawable.ic_no_frequent_contacts);
        this.mContactsObserver = new ContactsContentObserver();
        if (hasContactsPermission()) {
            registerContactsObserver();
        } else {
            unregisterContactsObserver();
        }
        new FrequentContactsLoader().execute(new Void[0]);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getViewType() {
        return 1;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getIndex() {
        return this.mId;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public String getTitle() {
        return this.mContext.getString(R.string.favorite_contacts);
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public String getContent() {
        return null;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getSize() {
        return this.mSize;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public boolean hasScrollableContent() {
        return false;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public boolean isEmpty() {
        return this.mAdapter == null || this.mAdapter.getValidCount() == 0;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public View getParent() {
        return this.mParentView;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public View getView() {
        return this.mFlowLayout;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public View getEmptyView() {
        return this.mEmptyView;
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getMinHeight() {
        return this.mFlowLayout.getMinHeight();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getMaxHeight() {
        return this.mFlowLayout.getMaxHeight();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public int getStandardHeight(int height) {
        return this.mFlowLayout.getStandardHeight();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onItemViewAttached() {
        ViewGroup parent;
        if (this.mSize > 0 && !isEmpty() && (parent = (ViewGroup) this.mParentView.getParent()) != null) {
            parent.getLayoutParams().height = this.mFlowLayout.getHeightForSize(this.mSize);
            parent.requestLayout();
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onItemResizeProgress(int height) {
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onItemResizeFinished() {
        this.mSize = this.mFlowLayout.getRowCount();
        this.mIsResized = true;
        notifyItemSizeChanged();
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onUiComponentChanged() {
        new FrequentContactsLoader().execute(new Void[0]);
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onContainerVisibilityChanged(boolean visible) {
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onPermissionsChanged() {
        if (hasContactsPermission()) {
            registerContactsObserver();
        } else {
            unregisterContactsObserver();
        }
        new FrequentContactsLoader().execute(new Void[0]);
    }

    @Override // net.oneplus.h2launcher.quickpage.QuickPageItem
    public void onRemove() {
        unregisterContactsObserver();
        if (this.mAdapter != null) {
            this.mAdapter.clear();
        }
    }

    private boolean hasContactsPermission() {
        return PermissionUtils.hasGrantedPermission(this.mContext, "android.permission.READ_CONTACTS");
    }

    private void registerContactsObserver() {
        unregisterContactsObserver();
        if (this.mContactsObserver != null && !this.mIsContactsObserverRegistered) {
            this.mContext.getContentResolver().registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, this.mContactsObserver);
            this.mIsContactsObserverRegistered = true;
        }
    }

    private void unregisterContactsObserver() {
        if (this.mContactsObserver != null && this.mIsContactsObserverRegistered) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mContactsObserver);
            this.mIsContactsObserverRegistered = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<ContactInfo> getFavoriteContacts() {
        List<ContactInfo> favoriteContacts;
        ArrayList<ContactInfo> matchingContacts = new ArrayList<>();
        if (!hasContactsPermission()) {
            this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.FavoriteContactsGrid.1
                @Override // java.lang.Runnable
                public void run() {
                    FavoriteContactsGrid.this.mEmptyView.setEmptyMessage(R.string.no_contacts_permission);
                    FavoriteContactsGrid.this.mEmptyView.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.quickpage.FavoriteContactsGrid.1.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v) {
                            PermissionUtils.requestPermission(FavoriteContactsGrid.this.mActivity, "android.permission.READ_CONTACTS", 200);
                        }
                    });
                }
            });
            return matchingContacts;
        }
        this.mHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.FavoriteContactsGrid.2
            @Override // java.lang.Runnable
            public void run() {
                FavoriteContactsGrid.this.mEmptyView.setEmptyMessage(R.string.no_favorite_contacts_here);
                FavoriteContactsGrid.this.mEmptyView.setOnClickListener(null);
            }
        });
        Uri queryUri = ContactsContract.Contacts.CONTENT_URI;
        String[] projection = {GlobalSearchDbHelper.COLUMN_ID, "times_contacted", "last_time_contacted", GlobalSearchDbHelper.DISPLAY_NAME, "photo_thumb_uri", "starred"};
        Cursor cursor = this.mContext.getContentResolver().query(queryUri, projection, "times_contacted!='0'", null, null);
        if (cursor != null) {
            this.mTotalContacts = 0;
            while (cursor.moveToNext()) {
                String contactId = cursor.getString(cursor.getColumnIndex(GlobalSearchDbHelper.COLUMN_ID));
                String title = cursor.getString(cursor.getColumnIndex(GlobalSearchDbHelper.DISPLAY_NAME));
                int timesContacted = cursor.getInt(cursor.getColumnIndex("times_contacted"));
                long lastTimeContacted = cursor.getLong(cursor.getColumnIndex("last_time_contacted"));
                Intent intent = new Intent("android.intent.action.VIEW");
                Uri uri = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(contactId));
                intent.setData(uri);
                String photo = cursor.getString(cursor.getColumnIndex("photo_thumb_uri"));
                matchingContacts.add(0, new ContactInfo(String.valueOf(contactId), title, photo == null ? null : Uri.parse(photo), timesContacted, lastTimeContacted, intent));
                this.mTotalContacts++;
            }
            cursor.close();
            Collections.sort(matchingContacts);
            if (this.mTotalContacts >= 10) {
                favoriteContacts = matchingContacts.subList(0, 10);
                this.mTotalContacts = 10;
            } else {
                favoriteContacts = matchingContacts;
            }
            for (int i = 0; i < 10; i++) {
                if (i >= favoriteContacts.size()) {
                    favoriteContacts.add(null);
                }
            }
            return favoriteContacts;
        }
        return matchingContacts;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class FavoriteContactsAdapter {
        private List<ContactInfo> mListFavorites;
        private ColorGenerator mGenerator = ColorGenerator.MATERIAL;
        private TextDrawable.IShapeBuilder mBuilder = TextDrawable.builder().beginConfig().toUpperCase().endConfig();

        public FavoriteContactsAdapter(List<ContactInfo> list) {
            this.mListFavorites = list;
        }

        public void update(List<ContactInfo> list) {
            if (list != null) {
                this.mListFavorites.clear();
                this.mListFavorites.addAll(list);
                notifyDataSetChanged();
            }
        }

        private void notifyDataSetChanged() {
            FavoriteContactsGrid.this.mFlowLayout.removeAllViews();
            create();
        }

        public void create() {
            for (int i = 0; i < this.mListFavorites.size(); i++) {
                ContactInfo item = this.mListFavorites.get(i);
                FavoriteContactsGrid.this.mFlowLayout.addView(getViewForItem(item, i));
            }
        }

        public void clear() {
            this.mListFavorites.clear();
        }

        public int getValidCount() {
            int count = 0;
            for (ContactInfo info : this.mListFavorites) {
                if (info != null) {
                    count++;
                }
            }
            return count;
        }

        public View getViewForItem(final ContactInfo entry, int position) {
            String[] splitName;
            String shortName;
            View convertView = FavoriteContactsGrid.this.mInflater.inflate(R.layout.favorite_contacts_grid_item, (ViewGroup) null);
            final ViewHolder holder = new ViewHolder();
            holder.icon = (CircleImageView) convertView.findViewById(R.id.icon);
            holder.name = (TextView) convertView.findViewById(R.id.name);
            convertView.setTag(holder);
            if (entry != null) {
                holder.icon.getLayoutParams().height = FavoriteContactsGrid.this.mIconSize;
                holder.icon.setScaleType(ImageView.ScaleType.CENTER_CROP);
                holder.icon.setShapeChangeEnabled(true);
                if (entry.name == null) {
                    splitName = new String[]{FavoriteContactsGrid.this.mContext.getString(R.string.unknown_contact)};
                } else {
                    splitName = entry.name.split("\\s");
                }
                if (splitName.length == 0) {
                    splitName = new String[]{FavoriteContactsGrid.this.mContext.getString(R.string.unknown_contact)};
                } else {
                    holder.name.setText(splitName[0]);
                }
                if (entry.icon == null) {
                    if (splitName[0].length() > 1) {
                        shortName = String.valueOf(splitName[0].charAt(0));
                    } else {
                        shortName = splitName[0].length() > 0 ? splitName[0] : "";
                    }
                    int color = this.mGenerator.getColor(entry.id);
                    Drawable drawable = this.mBuilder.buildRound(shortName, color);
                    Bitmap bitmap = Bitmap.createBitmap(FavoriteContactsGrid.this.mIconSize, FavoriteContactsGrid.this.mIconSize, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmap);
                    drawable.setBounds(0, 0, FavoriteContactsGrid.this.mIconSize, FavoriteContactsGrid.this.mIconSize);
                    drawable.draw(canvas);
                    holder.icon.setImageBitmap(bitmap);
                    holder.icon.setColorFilter((ColorFilter) null);
                } else {
                    holder.icon.setImageURI(entry.icon);
                }
                convertView.setOnTouchListener(new View.OnTouchListener() { // from class: net.oneplus.h2launcher.quickpage.FavoriteContactsGrid.FavoriteContactsAdapter.1
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View v, MotionEvent event) {
                        switch (event.getAction()) {
                            case 0:
                                holder.icon.setColorFilter(FavoriteContactsGrid.this.mHighlightFilter);
                                return true;
                            case 1:
                                if (entry.intent != null) {
                                    try {
                                        entry.intent.addFlags(268435456);
                                        FavoriteContactsGrid.this.mContext.getApplicationContext().startActivity(entry.intent);
                                        break;
                                    } catch (ActivityNotFoundException anfe) {
                                        anfe.printStackTrace();
                                        break;
                                    }
                                }
                                break;
                            case 2:
                            default:
                                return true;
                            case 3:
                                break;
                        }
                        holder.icon.setColorFilter((ColorFilter) null);
                        return true;
                    }
                });
            } else {
                holder.name.setVisibility(8);
                convertView.setOnTouchListener(null);
            }
            return convertView;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ViewHolder {
        CircleImageView icon;
        TextView name;

        private ViewHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ContactInfo implements Comparable<ContactInfo> {
        private Uri icon;
        private String id;
        private Intent intent;
        private long lastTimeContacted;
        private String name;
        private int timesContacted;

        public ContactInfo(String id, String name, Uri icon, int timesContacted, long lastTimeContacted, Intent intent) {
            this.id = id;
            this.name = name;
            this.icon = icon;
            this.timesContacted = timesContacted;
            this.lastTimeContacted = lastTimeContacted;
            this.intent = intent;
        }

        @Override // java.lang.Comparable
        public int compareTo(ContactInfo o) {
            return (int) Math.signum((float) (o.lastTimeContacted - this.lastTimeContacted));
        }
    }

    /* loaded from: classes.dex */
    private class FrequentContactsLoader extends AsyncTask<Void, Void, List<ContactInfo>> {
        private FrequentContactsLoader() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<ContactInfo> doInBackground(Void... params) {
            return FavoriteContactsGrid.this.getFavoriteContacts();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<ContactInfo> contactInfo) {
            if (FavoriteContactsGrid.this.mAdapter != null) {
                FavoriteContactsGrid.this.mAdapter.update(contactInfo);
                if (!FavoriteContactsGrid.this.mIsResized) {
                    FavoriteContactsGrid.this.mSize = ((FavoriteContactsGrid.this.mAdapter.getValidCount() + FavoriteContactsGrid.this.mColumnCount) - 1) / FavoriteContactsGrid.this.mColumnCount;
                }
            } else {
                FavoriteContactsGrid.this.mAdapter = new FavoriteContactsAdapter(contactInfo);
                FavoriteContactsGrid.this.mAdapter.create();
                if (FavoriteContactsGrid.this.mSize > 0) {
                    FavoriteContactsGrid.this.mIsResized = true;
                } else {
                    FavoriteContactsGrid.this.mSize = ((FavoriteContactsGrid.this.mAdapter.getValidCount() + FavoriteContactsGrid.this.mColumnCount) - 1) / FavoriteContactsGrid.this.mColumnCount;
                    FavoriteContactsGrid.this.mIsResized = false;
                }
            }
            FavoriteContactsGrid.this.notifyItemAdapterChanged();
        }
    }
}
