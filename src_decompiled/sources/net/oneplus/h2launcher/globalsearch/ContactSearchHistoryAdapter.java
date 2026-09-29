package net.oneplus.h2launcher.globalsearch;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.MediaStore;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.quickpage.view.CircleImageView;
import net.oneplus.h2launcher.quickpage.view.util.ColorGenerator;
import net.oneplus.h2launcher.quickpage.view.util.TextDrawable;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class ContactSearchHistoryAdapter extends BaseAdapter {
    static final String TAG = "ContactSearchResultAdapter";
    private Context mContext;
    private final List<ContactData> mHistoryList;
    private int mIconSize;
    private final LayoutInflater mInflater;
    private ColorGenerator mGenerator = ColorGenerator.MATERIAL;
    private TextDrawable.IShapeBuilder mBuilder = TextDrawable.builder().beginConfig().toUpperCase().endConfig();

    public ContactSearchHistoryAdapter(Context context, List<ContactData> historyList) {
        this.mContext = context;
        this.mHistoryList = historyList;
        this.mInflater = LayoutInflater.from(context);
        this.mIconSize = context.getResources().getDimensionPixelSize(R.dimen.favorite_contacts_image_size);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mHistoryList != null) {
            return this.mHistoryList.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.mHistoryList.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    /* JADX WARN: Type inference failed for: r8v8, types: [net.oneplus.h2launcher.globalsearch.ContactSearchHistoryAdapter$1] */
    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder viewHolder;
        String[] splitName;
        if (convertView == null) {
            convertView = this.mInflater.inflate(R.layout.contact_search_gridview_item, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.displayName = (TextView) convertView.findViewById(R.id.grid_item_text);
            viewHolder.image = (CircleImageView) convertView.findViewById(R.id.grid_item_image);
            convertView.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) convertView.getTag();
        }
        ContactData contactData = (ContactData) getItem(position);
        if (contactData != null) {
            viewHolder.image.getLayoutParams().height = this.mIconSize;
            viewHolder.image.setScaleType(ImageView.ScaleType.CENTER_CROP);
            viewHolder.image.setShapeChangeEnabled(true);
            final String id = contactData.getId();
            final Uri imageUri = contactData.getIcon();
            String displayName = contactData.getDisplayName();
            if (displayName != null) {
                splitName = displayName.split("\\s");
                if (splitName.length == 0) {
                    splitName = new String[]{this.mContext.getString(R.string.unknown_contact)};
                } else {
                    viewHolder.displayName.setText(splitName[0]);
                }
            } else {
                splitName = new String[]{this.mContext.getString(R.string.unknown_contact)};
            }
            final String shortName = getShortName(splitName);
            if (id == null || id.isEmpty()) {
                setContactImage(viewHolder, null, null);
            } else {
                Bitmap bitmap = getContactImageFromCache(id);
                if (bitmap != null) {
                    setContactImage(viewHolder, bitmap, imageUri);
                } else {
                    new AsyncTask<ViewHolder, Void, Bitmap>() { // from class: net.oneplus.h2launcher.globalsearch.ContactSearchHistoryAdapter.1
                        private ViewHolder v;

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // android.os.AsyncTask
                        public Bitmap doInBackground(ViewHolder... params) {
                            Bitmap bitmap2;
                            this.v = params[0];
                            if (imageUri != null) {
                                try {
                                    bitmap2 = MediaStore.Images.Media.getBitmap(ContactSearchHistoryAdapter.this.mContext.getContentResolver(), imageUri);
                                } catch (Exception e) {
                                    bitmap2 = null;
                                    Logger.w(ContactSearchHistoryAdapter.TAG, "Get contact image from uri failed !");
                                }
                            } else {
                                int color = ContactSearchHistoryAdapter.this.mGenerator.getColor(id);
                                Drawable drawable = ContactSearchHistoryAdapter.this.mBuilder.buildRound(shortName, color);
                                bitmap2 = Bitmap.createBitmap(ContactSearchHistoryAdapter.this.mIconSize, ContactSearchHistoryAdapter.this.mIconSize, Bitmap.Config.RGB_565);
                                Canvas canvas = new Canvas(bitmap2);
                                drawable.setBounds(0, 0, ContactSearchHistoryAdapter.this.mIconSize, ContactSearchHistoryAdapter.this.mIconSize);
                                drawable.draw(canvas);
                            }
                            ContactImageCache.cacheImage(id, bitmap2);
                            return bitmap2;
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // android.os.AsyncTask
                        public void onPostExecute(Bitmap bitmap2) {
                            ContactSearchHistoryAdapter.this.setContactImage(this.v, bitmap2, imageUri);
                        }
                    }.execute(viewHolder);
                }
            }
        }
        return convertView;
    }

    private String getShortName(String[] splitName) {
        if (splitName[0].length() > 1) {
            return String.valueOf(splitName[0].charAt(0));
        }
        return splitName[0].length() > 0 ? splitName[0] : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setContactImage(ViewHolder v, Bitmap bitmap, Uri uri) {
        if (bitmap == null) {
            v.image.setVisibility(4);
            return;
        }
        v.image.setVisibility(0);
        v.image.setImageBitmap(bitmap);
        v.image.setColorFilter((ColorFilter) null);
    }

    private Bitmap getContactImageFromCache(String id) {
        return ContactImageCache.getImage(id);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ViewHolder {
        private TextView displayName;
        private CircleImageView image;

        ViewHolder() {
        }
    }
}
