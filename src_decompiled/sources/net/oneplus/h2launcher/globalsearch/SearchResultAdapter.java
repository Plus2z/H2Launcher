package net.oneplus.h2launcher.globalsearch;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.util.ArrayList;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Stats;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.quickpage.view.CircleImageView;
import net.oneplus.h2launcher.quickpage.view.util.ColorGenerator;
import net.oneplus.h2launcher.quickpage.view.util.TextDrawable;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class SearchResultAdapter extends RecyclerView.Adapter {
    private static final int ITEM_VIEW_TYPE_APP = 1;
    private static final int ITEM_VIEW_TYPE_CONTACT = 2;
    private static final int ITEM_VIEW_TYPE_HEADER = 0;
    private static final int ITEM_VIEW_TYPE_SEARCH_ONLINE = 3;
    private static final int RECYCLER_VIEW_NUM_COLUMNS = 5;
    private static final String SEARCH_BAIDU_WEBSITE = "http://m.baidu.com/s?from=1011934f&word=";
    private static final String TAG = "SearchResultAdapter";
    private ArrayList<AppData> mAppResultList;
    private ArrayList<ContactData> mContactResultList;
    private Context mContext;
    private GlobalSearchView mGlobalSearchView;
    private int mIconSize;
    private Launcher mLauncher;
    private Stats mStats;
    private Bitmap mUnknownAppIcon;
    private ColorGenerator mGenerator = ColorGenerator.MATERIAL;
    private TextDrawable.IShapeBuilder mBuilder = TextDrawable.builder().beginConfig().toUpperCase().endConfig();

    /* JADX INFO: Access modifiers changed from: package-private */
    public SearchResultAdapter(Context context, ArrayList<AppData> appResultList, ArrayList<ContactData> contactResultList, GlobalSearchView globalSearchView) {
        this.mContext = context;
        this.mLauncher = (Launcher) this.mContext;
        this.mGlobalSearchView = globalSearchView;
        this.mStats = this.mLauncher.getStats();
        this.mAppResultList = appResultList;
        this.mContactResultList = contactResultList;
        this.mUnknownAppIcon = BitmapFactory.decodeResource(context.getResources(), R.drawable.ic_unknow_app_icon);
        this.mIconSize = context.getResources().getDimensionPixelSize(R.dimen.favorite_contacts_image_size);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setResultList(ArrayList<AppData> appResultList, ArrayList<ContactData> contactResultList) {
        this.mAppResultList = appResultList;
        this.mContactResultList = contactResultList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isHeader(int position) {
        return position == 0 || position == this.mAppResultList.size() + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isSearchOnline(int position) {
        return position == getSearchOnlinePosition();
    }

    private int getSearchOnlinePosition() {
        return this.mAppResultList.size() + this.mContactResultList.size() + 2;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int viewType) {
        if (viewType == 0) {
            return new HeaderViewHolder(View.inflate(this.mContext, R.layout.search_result_header, null));
        }
        if (viewType == 1) {
            return new AppViewHolder(View.inflate(this.mContext, R.layout.app_search_recyclerview_item, null));
        }
        if (viewType == 2) {
            return new ContactViewHolder(View.inflate(this.mContext, R.layout.contact_search_recyclerview_item, null));
        }
        if (viewType == 3) {
            return new SearchOnlineViewHolder(View.inflate(this.mContext, R.layout.search_online, null));
        }
        Logger.w(TAG, "No such view type!");
        return null;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {
        if (isHeader(position)) {
            updateHeaderViewHolder(viewHolder, position);
            return;
        }
        if (position < this.mAppResultList.size() + 1) {
            updateAppViewHolder(viewHolder, position);
        } else if (position > this.mAppResultList.size() + 1 && position < getSearchOnlinePosition()) {
            updateContactViewHolder(viewHolder, position);
        } else {
            updateSearchViewHolder(viewHolder, position);
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public int getItemCount() {
        return this.mAppResultList.size() + this.mContactResultList.size() + 3;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public int getItemViewType(int position) {
        if (isHeader(position)) {
            return 0;
        }
        if (position < this.mAppResultList.size() + 1) {
            return 1;
        }
        if (position > this.mAppResultList.size() + 1 && position < getSearchOnlinePosition()) {
            return 2;
        }
        return 3;
    }

    private void updateHeaderViewHolder(RecyclerView.ViewHolder viewHolder, int position) {
        if (position == 0) {
            if (this.mAppResultList.size() == 0) {
                ((HeaderViewHolder) viewHolder).getImageView().setVisibility(8);
                ((HeaderViewHolder) viewHolder).getTextView().setVisibility(8);
            } else {
                if (this.mGlobalSearchView.getAppResultList().size() > 5) {
                    ((HeaderViewHolder) viewHolder).getImageView().setVisibility(0);
                    if (this.mGlobalSearchView.getShowAllAppSearchResult()) {
                        ((HeaderViewHolder) viewHolder).getImageView().setRotation(180.0f);
                    } else {
                        ((HeaderViewHolder) viewHolder).getImageView().setRotation(0.0f);
                    }
                } else {
                    ((HeaderViewHolder) viewHolder).getImageView().setVisibility(8);
                }
                ((HeaderViewHolder) viewHolder).getTextView().setVisibility(0);
                ((HeaderViewHolder) viewHolder).getTextView().setText(this.mContext.getString(R.string.search_result_apps));
                ((HeaderViewHolder) viewHolder).getTextView().setBackgroundResource(R.drawable.global_search_title_card);
            }
        } else if (this.mContactResultList.size() == 0) {
            ((HeaderViewHolder) viewHolder).getImageView().setVisibility(8);
            ((HeaderViewHolder) viewHolder).getTextView().setVisibility(8);
        } else {
            if (this.mGlobalSearchView.getContactResultList().size() > 5) {
                ((HeaderViewHolder) viewHolder).getImageView().setVisibility(0);
                if (this.mGlobalSearchView.getShowAllContactSearchResult()) {
                    ((HeaderViewHolder) viewHolder).getImageView().setRotation(180.0f);
                } else {
                    ((HeaderViewHolder) viewHolder).getImageView().setRotation(0.0f);
                }
            } else {
                ((HeaderViewHolder) viewHolder).getImageView().setVisibility(8);
            }
            ((HeaderViewHolder) viewHolder).getTextView().setVisibility(0);
            ((HeaderViewHolder) viewHolder).getTextView().setText(this.mContext.getString(R.string.search_result_contacts));
            ((HeaderViewHolder) viewHolder).getTextView().setBackgroundResource(R.drawable.global_search_title_card);
        }
        if (this.mAppResultList.size() == 0 && this.mContactResultList.size() == 0) {
            this.mGlobalSearchView.getSearchInputContainer().setBackgroundResource(R.drawable.global_search_input_card);
        } else {
            this.mGlobalSearchView.getSearchInputContainer().setBackgroundResource(R.drawable.global_search_title_card);
        }
    }

    private void updateSearchViewHolder(RecyclerView.ViewHolder viewHolder, int position) {
        if (this.mGlobalSearchView.isT9Search()) {
            ((SearchOnlineViewHolder) viewHolder).getButtonView().setVisibility(8);
            ((SearchOnlineViewHolder) viewHolder).getDividerView().setVisibility(8);
        } else {
            ((SearchOnlineViewHolder) viewHolder).getButtonView().setVisibility(0);
            ((SearchOnlineViewHolder) viewHolder).getDividerView().setVisibility(0);
        }
    }

    private void updateAppViewHolder(RecyclerView.ViewHolder viewHolder, int position) {
        int appPositon = position - 1;
        AppData searchResult = this.mAppResultList.get(appPositon);
        ComponentName componentName = searchResult.getComponentName();
        if (this.mContactResultList.size() == 0) {
            if (appPositon % 5 == 0 && appPositon + 5 == this.mAppResultList.size()) {
                ((AppViewHolder) viewHolder).getLayoutView().setBackgroundResource(R.drawable.global_search_bottom_left_corner);
            } else if (appPositon % 5 == 4 && appPositon + 1 == this.mAppResultList.size()) {
                ((AppViewHolder) viewHolder).getLayoutView().setBackgroundResource(R.drawable.global_search_bottom_right_corner);
            } else {
                ((AppViewHolder) viewHolder).getLayoutView().setBackgroundResource(R.color.search_result_container_background);
            }
        } else {
            ((AppViewHolder) viewHolder).getLayoutView().setBackgroundResource(R.color.search_result_container_background);
        }
        if (componentName == null) {
            ((AppViewHolder) viewHolder).getImageView().setVisibility(4);
        } else {
            ((AppViewHolder) viewHolder).getImageView().setVisibility(0);
            Bitmap appIcon = searchResult.getIcon();
            if (appIcon == null) {
                appIcon = this.mUnknownAppIcon;
            }
            ((AppViewHolder) viewHolder).getImageView().setImageBitmap(appIcon);
        }
        ((AppViewHolder) viewHolder).getTextView().setText(searchResult.getTitle());
    }

    /* JADX WARN: Type inference failed for: r8v27, types: [net.oneplus.h2launcher.globalsearch.SearchResultAdapter$1] */
    private void updateContactViewHolder(RecyclerView.ViewHolder viewHolder, int position) {
        String[] splitName;
        int contactPositon = (position - this.mAppResultList.size()) - 2;
        ContactData searchResult = this.mContactResultList.get(contactPositon);
        if (contactPositon % 5 == 0 && contactPositon + 5 == this.mContactResultList.size()) {
            ((ContactViewHolder) viewHolder).getLayoutView().setBackgroundResource(R.drawable.global_search_bottom_left_corner);
        } else if (contactPositon % 5 == 4 && contactPositon + 1 == this.mContactResultList.size()) {
            ((ContactViewHolder) viewHolder).getLayoutView().setBackgroundResource(R.drawable.global_search_bottom_right_corner);
        } else {
            ((ContactViewHolder) viewHolder).getLayoutView().setBackgroundResource(R.color.search_result_container_background);
        }
        if (searchResult != null) {
            ((ContactViewHolder) viewHolder).getCircleImageView().getLayoutParams().height = this.mIconSize;
            ((ContactViewHolder) viewHolder).getCircleImageView().setScaleType(ImageView.ScaleType.CENTER_CROP);
            ((ContactViewHolder) viewHolder).getCircleImageView().setShapeChangeEnabled(true);
            final String id = searchResult.getId();
            final Uri imageUri = searchResult.getIcon();
            String displayName = searchResult.getDisplayName();
            if (displayName != null) {
                splitName = displayName.split("\\s");
                if (splitName.length == 0) {
                    splitName = new String[]{this.mContext.getString(R.string.unknown_contact)};
                } else {
                    ((ContactViewHolder) viewHolder).getTextView().setText(splitName[0]);
                }
            } else {
                splitName = new String[]{this.mContext.getString(R.string.unknown_contact)};
            }
            final String shortName = getShortName(splitName);
            if (id == null || id.isEmpty()) {
                setContactImage((ContactViewHolder) viewHolder, null, null);
                return;
            }
            Bitmap bitmap = getContactImageFromCache(id);
            if (bitmap != null) {
                setContactImage((ContactViewHolder) viewHolder, bitmap, imageUri);
            } else {
                new AsyncTask<ContactViewHolder, Void, Bitmap>() { // from class: net.oneplus.h2launcher.globalsearch.SearchResultAdapter.1
                    private ContactViewHolder v;

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    public Bitmap doInBackground(ContactViewHolder... params) {
                        Bitmap bitmap2;
                        this.v = params[0];
                        if (imageUri == null) {
                            int color = SearchResultAdapter.this.mGenerator.getColor(id);
                            Drawable drawable = SearchResultAdapter.this.mBuilder.buildRound(shortName, color);
                            bitmap2 = Bitmap.createBitmap(SearchResultAdapter.this.mIconSize, SearchResultAdapter.this.mIconSize, Bitmap.Config.RGB_565);
                            Canvas canvas = new Canvas(bitmap2);
                            drawable.setBounds(0, 0, SearchResultAdapter.this.mIconSize, SearchResultAdapter.this.mIconSize);
                            drawable.draw(canvas);
                        } else {
                            try {
                                bitmap2 = MediaStore.Images.Media.getBitmap(SearchResultAdapter.this.mContext.getContentResolver(), imageUri);
                            } catch (Exception e) {
                                bitmap2 = null;
                                Logger.w(SearchResultAdapter.TAG, "Get contact image from uri failed !");
                            }
                        }
                        ContactImageCache.cacheImage(id, bitmap2);
                        return bitmap2;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    public void onPostExecute(Bitmap bitmap2) {
                        SearchResultAdapter.this.setContactImage(this.v, bitmap2, imageUri);
                    }
                }.execute((ContactViewHolder) viewHolder);
            }
        }
    }

    private String getShortName(String[] splitName) {
        if (splitName[0].length() > 1) {
            return String.valueOf(splitName[0].charAt(0));
        }
        return splitName[0].length() > 0 ? splitName[0] : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setContactImage(ContactViewHolder v, Bitmap bitmap, Uri uri) {
        if (bitmap == null) {
            v.getCircleImageView().setVisibility(4);
            return;
        }
        v.getCircleImageView().setVisibility(0);
        v.getCircleImageView().setImageBitmap(bitmap);
        v.getCircleImageView().setColorFilter((ColorFilter) null);
    }

    private Bitmap getContactImageFromCache(String id) {
        return ContactImageCache.getImage(id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class HeaderViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        private ImageView imageView;
        private GlobalSearchAnimationHelper mAnimationHelper;
        private TextView textView;

        HeaderViewHolder(View itemView) {
            super(itemView);
            this.mAnimationHelper = SearchResultAdapter.this.mGlobalSearchView.getAnimationHelper();
            this.textView = (TextView) itemView.findViewById(R.id.result_title);
            this.imageView = (ImageView) itemView.findViewById(R.id.show_more);
            this.imageView.setOnClickListener(this);
        }

        TextView getTextView() {
            return this.textView;
        }

        ImageView getImageView() {
            return this.imageView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            if (!this.mAnimationHelper.isAnimating()) {
                int position = getAdapterPosition();
                if (position == 0) {
                    if (SearchResultAdapter.this.mGlobalSearchView.getShowAllAppSearchResult()) {
                        SearchResultAdapter.this.mGlobalSearchView.setShowAllAppSearchResult(false);
                        this.mAnimationHelper.runRotateAnimation(v, 180.0f, 0.0f);
                        return;
                    } else {
                        SearchResultAdapter.this.mGlobalSearchView.setShowAllAppSearchResult(true);
                        this.mAnimationHelper.runRotateAnimation(v, 0.0f, 180.0f);
                        return;
                    }
                }
                if (SearchResultAdapter.this.mGlobalSearchView.getShowAllContactSearchResult()) {
                    SearchResultAdapter.this.mGlobalSearchView.setShowAllContactSearchResult(false);
                    this.mAnimationHelper.runRotateAnimation(v, 180.0f, 0.0f);
                } else {
                    SearchResultAdapter.this.mGlobalSearchView.setShowAllContactSearchResult(true);
                    this.mAnimationHelper.runRotateAnimation(v, 0.0f, 180.0f);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class AppViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        private ImageView imageView;
        private RelativeLayout relativeLayout;
        private TextView textView;

        AppViewHolder(View itemView) {
            super(itemView);
            this.imageView = (ImageView) itemView.findViewById(R.id.grid_item_image);
            this.textView = (TextView) itemView.findViewById(R.id.grid_item_text);
            this.relativeLayout = (RelativeLayout) itemView.findViewById(R.id.grid_item_layout);
            itemView.setOnClickListener(this);
        }

        ImageView getImageView() {
            return this.imageView;
        }

        TextView getTextView() {
            return this.textView;
        }

        RelativeLayout getLayoutView() {
            return this.relativeLayout;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            UserHandleCompat user;
            int position = getAdapterPosition();
            if (SearchResultAdapter.this.mAppResultList != null) {
                ComponentName componentName = ((AppData) SearchResultAdapter.this.mAppResultList.get(position - 1)).getComponentName();
                if (componentName == null || TextUtils.isEmpty(componentName.flattenToShortString())) {
                    SearchResultAdapter.this.mGlobalSearchView.cancelAnimation();
                    SearchResultAdapter.this.mGlobalSearchView.exitAnimation();
                    return;
                }
                Intent intent = ((AppData) SearchResultAdapter.this.mAppResultList.get(position - 1)).getIntent();
                if (intent != null) {
                    intent.addFlags(268435456);
                    SearchResultAdapter.this.mLauncher.startActivitySafely(v, intent, null);
                    if (intent.hasExtra(ItemInfo.EXTRA_PROFILE)) {
                        long serialNumber = intent.getLongExtra(ItemInfo.EXTRA_PROFILE, -1L);
                        user = UserManagerCompat.getInstance(SearchResultAdapter.this.mContext).getUserForSerialNumber(serialNumber);
                    } else {
                        user = UserHandleCompat.fromIntent(intent);
                    }
                } else {
                    user = UserHandleCompat.myUserHandle();
                }
                SearchResultAdapter.this.mStats.recordAppHistory(componentName, System.currentTimeMillis());
                SearchResultAdapter.this.mStats.recordLaunch(v, intent, null, -1L, 0, user);
                SearchResultAdapter.this.mGlobalSearchView.setShouldDismiss(true);
                SearchResultAdapter.this.mGlobalSearchView.cancelAnimation();
                SearchResultAdapter.this.mGlobalSearchView.exitWithoutAnimation();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ContactViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        private CircleImageView circleImageView;
        private RelativeLayout relativeLayout;
        private TextView textView;

        ContactViewHolder(View itemView) {
            super(itemView);
            this.circleImageView = (CircleImageView) itemView.findViewById(R.id.grid_item_image);
            this.textView = (TextView) itemView.findViewById(R.id.grid_item_text);
            this.relativeLayout = (RelativeLayout) itemView.findViewById(R.id.grid_item_layout);
            itemView.setOnClickListener(this);
        }

        CircleImageView getCircleImageView() {
            return this.circleImageView;
        }

        TextView getTextView() {
            return this.textView;
        }

        RelativeLayout getLayoutView() {
            return this.relativeLayout;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            int position = getAdapterPosition();
            if (SearchResultAdapter.this.mContactResultList != null) {
                String id = ((ContactData) SearchResultAdapter.this.mContactResultList.get((position - SearchResultAdapter.this.mAppResultList.size()) - 2)).getId();
                String displayName = ((ContactData) SearchResultAdapter.this.mContactResultList.get((position - SearchResultAdapter.this.mAppResultList.size()) - 2)).getDisplayName();
                Uri iconUri = ((ContactData) SearchResultAdapter.this.mContactResultList.get((position - SearchResultAdapter.this.mAppResultList.size()) - 2)).getIcon();
                Intent intent = ((ContactData) SearchResultAdapter.this.mContactResultList.get((position - SearchResultAdapter.this.mAppResultList.size()) - 2)).getIntent();
                if (displayName == null || displayName.isEmpty()) {
                    SearchResultAdapter.this.mGlobalSearchView.cancelAnimation();
                    SearchResultAdapter.this.mGlobalSearchView.exitAnimation();
                    return;
                }
                if (intent != null) {
                    intent.addFlags(268435456);
                    SearchResultAdapter.this.mLauncher.startActivitySafely(v, intent, null);
                }
                SearchResultAdapter.this.mStats.recordContactHistory(id, displayName, iconUri, System.currentTimeMillis());
                SearchResultAdapter.this.mGlobalSearchView.setShouldDismiss(true);
                SearchResultAdapter.this.mGlobalSearchView.cancelAnimation();
                SearchResultAdapter.this.mGlobalSearchView.exitWithoutAnimation();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class SearchOnlineViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        private Button buttonView;
        private View dividerView;

        SearchOnlineViewHolder(View itemView) {
            super(itemView);
            this.buttonView = (Button) itemView.findViewById(R.id.search_online_button);
            this.dividerView = itemView.findViewById(R.id.search_online_divider);
            this.buttonView.setOnClickListener(this);
        }

        Button getButtonView() {
            return this.buttonView;
        }

        View getDividerView() {
            return this.dividerView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            String keyWord = SearchResultAdapter.this.mGlobalSearchView.getSearchInputTextField().getText().toString();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(SearchResultAdapter.SEARCH_BAIDU_WEBSITE + keyWord));
            try {
                SearchResultAdapter.this.mContext.startActivity(intent);
            } catch (ActivityNotFoundException e) {
                Logger.e(SearchResultAdapter.TAG, "Activity not found !");
            } catch (SecurityException e2) {
                Logger.e(SearchResultAdapter.TAG, "Launcher does not have the permission to launch " + intent + ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity.", e2);
            }
        }
    }
}
