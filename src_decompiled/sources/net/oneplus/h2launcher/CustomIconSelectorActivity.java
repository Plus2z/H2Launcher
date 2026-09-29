package net.oneplus.h2launcher;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import net.oneplus.h2launcher.dynamicicon.DynamicIconDrawableConfig;
import net.oneplus.h2launcher.stickygridheaders.StickyGridHeadersBaseAdapter;
import net.oneplus.h2launcher.stickygridheaders.StickyGridHeadersGridView;

/* loaded from: classes.dex */
public class CustomIconSelectorActivity extends Activity {
    private static final String DRAWABLE_ASSETS = "drawable.xml";
    private static final String DRAWABLE_ATTR = "drawable";
    private static final String DRAWABLE_RESOURCES = "drawable";
    private static final String ITEM_TAG = "item";
    private static final int MIN_RES_NAME_LENGTH = 3;
    public static final String RESOURCE_NAME_EXTRA = "res_name";
    private SelectorAdapter mAllIconsAdapter;
    private StickyGridHeadersGridView mAllIconsGridView;
    private String mAppPackageName;
    private Context mContext;
    private String mFilteredLabel;
    private String mIconPackPackageName;
    private Resources mIconPackResources;
    private List<String> mMatchingResources;
    private PackageManager mPackageManager;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mContext = this;
        this.mMatchingResources = new ArrayList();
        setContentView(R.layout.icon_selector_layout);
        getActionBar().hide();
        getWindow().setStatusBarColor(getResources().getColor(R.color.icon_selector_status_bar_color));
        this.mPackageManager = getPackageManager();
        this.mAppPackageName = getIntent().getStringExtra(Launcher.INTENT_EXTRA_APP_PACKAGE);
        this.mIconPackPackageName = getIntent().getStringExtra(Launcher.INTENT_EXTRA_ICON_PACK_PACKAGE);
        this.mFilteredLabel = getFilteredLabel();
        this.mAllIconsGridView = (StickyGridHeadersGridView) findViewById(R.id.icons_grid);
        this.mAllIconsGridView.setAreHeadersSticky(false);
        try {
            this.mIconPackResources = this.mPackageManager.getResourcesForApplication(this.mIconPackPackageName);
        } catch (PackageManager.NameNotFoundException e) {
            Toast.makeText(this.mContext, R.string.icon_selector_error_loading, 0).show();
            finish();
        }
        new IconLoaderTask().execute(new Void[0]);
    }

    private String getFilteredLabel() {
        String label;
        try {
            ApplicationInfo appInfo = this.mPackageManager.getApplicationInfo(this.mAppPackageName, 128);
            if (appInfo != null) {
                Configuration config = new Configuration();
                config.locale = Locale.ENGLISH;
                Resources appRes = this.mPackageManager.getResourcesForApplication(this.mAppPackageName);
                appRes.updateConfiguration(config, getBaseContext().getResources().getDisplayMetrics());
                if (appInfo.labelRes != 0) {
                    label = appRes.getString(appInfo.labelRes);
                } else {
                    label = (String) this.mPackageManager.getApplicationLabel(appInfo);
                }
                if (label != null && !label.isEmpty()) {
                    String result = label.replaceAll("[^a-zA-Z]", "").toLowerCase();
                    if (result.isEmpty()) {
                        return null;
                    }
                    return result;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String findAssetsPath(AssetManager assets) throws IOException {
        String[] paths = getResources().getStringArray(R.array.icon_pack_asset_paths);
        for (String path : paths) {
            List<String> rootDir = Arrays.asList(assets.list(path));
            if (rootDir.contains(DRAWABLE_ASSETS)) {
                return path + ("".equals(path) ? "" : File.separator);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findResourcesPathId(Resources res) {
        int id = res.getIdentifier(DynamicIconDrawableConfig.TYPE, "xml", this.mIconPackPackageName);
        return id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[] getDrawableList(java.lang.Object r11, java.lang.String r12, int r13) {
        /*
            r10 = this;
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r2 = 0
            org.xmlpull.v1.XmlPullParserFactory r5 = org.xmlpull.v1.XmlPullParserFactory.newInstance()     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            r4 = 0
            boolean r8 = r11 instanceof android.content.res.AssetManager     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            if (r8 == 0) goto L6b
            if (r12 == 0) goto L33
            android.content.res.AssetManager r11 = (android.content.res.AssetManager) r11     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            r8.<init>()     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            java.lang.StringBuilder r8 = r8.append(r12)     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            java.lang.String r9 = "drawable.xml"
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            java.lang.String r8 = r8.toString()     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            java.io.InputStream r2 = r11.open(r8)     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            org.xmlpull.v1.XmlPullParser r4 = r5.newPullParser()     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            java.lang.String r8 = "UTF-8"
            r4.setInput(r2, r8)     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
        L33:
            if (r4 == 0) goto L8f
            int r7 = r4.getEventType()     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
        L39:
            r8 = 1
            if (r7 == r8) goto L8f
            r8 = 2
            if (r7 != r8) goto L66
            java.lang.String r6 = r4.getName()     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            java.lang.String r8 = "item"
            boolean r8 = r8.equals(r6)     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            if (r8 == 0) goto L66
            r8 = 0
            java.lang.String r9 = "drawable"
            java.lang.String r0 = r4.getAttributeValue(r8, r9)     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            boolean r8 = r10.isResourceDrawable(r0)     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            if (r8 == 0) goto L66
            r3.add(r0)     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            boolean r8 = r10.isResourceMatching(r0)     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            if (r8 == 0) goto L66
            java.util.List<java.lang.String> r8 = r10.mMatchingResources     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            r8.add(r0)     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
        L66:
            int r7 = r4.next()     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            goto L39
        L6b:
            boolean r8 = r11 instanceof android.content.res.Resources     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            if (r8 == 0) goto L33
            if (r13 != 0) goto L88
            int r8 = r3.size()     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            java.lang.String[] r8 = new java.lang.String[r8]     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            java.lang.Object[] r8 = r3.toArray(r8)     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            java.lang.String[] r8 = (java.lang.String[]) r8     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            if (r2 == 0) goto L82
            r2.close()     // Catch: java.io.IOException -> L83
        L82:
            return r8
        L83:
            r1 = move-exception
            r1.printStackTrace()
            goto L82
        L88:
            android.content.res.Resources r11 = (android.content.res.Resources) r11     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            android.content.res.XmlResourceParser r4 = r11.getXml(r13)     // Catch: org.xmlpull.v1.XmlPullParserException -> La6 java.lang.Throwable -> Lb6 java.io.IOException -> Lc2 android.content.res.Resources.NotFoundException -> Lc5
            goto L33
        L8f:
            if (r2 == 0) goto L94
            r2.close()     // Catch: java.io.IOException -> La1
        L94:
            int r8 = r3.size()
            java.lang.String[] r8 = new java.lang.String[r8]
            java.lang.Object[] r8 = r3.toArray(r8)
            java.lang.String[] r8 = (java.lang.String[]) r8
            goto L82
        La1:
            r1 = move-exception
            r1.printStackTrace()
            goto L94
        La6:
            r8 = move-exception
            r1 = r8
        La8:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> Lb6
            if (r2 == 0) goto L94
            r2.close()     // Catch: java.io.IOException -> Lb1
            goto L94
        Lb1:
            r1 = move-exception
            r1.printStackTrace()
            goto L94
        Lb6:
            r8 = move-exception
            if (r2 == 0) goto Lbc
            r2.close()     // Catch: java.io.IOException -> Lbd
        Lbc:
            throw r8
        Lbd:
            r1 = move-exception
            r1.printStackTrace()
            goto Lbc
        Lc2:
            r8 = move-exception
            r1 = r8
            goto La8
        Lc5:
            r8 = move-exception
            r1 = r8
            goto La8
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.CustomIconSelectorActivity.getDrawableList(java.lang.Object, java.lang.String, int):java.lang.String[]");
    }

    public boolean isResourceMatching(String resName) {
        String filteredResName = resName.replaceAll("[^a-zA-Z]", "").toLowerCase().trim();
        if (filteredResName.length() < 3) {
            return false;
        }
        if (this.mFilteredLabel != null && (this.mFilteredLabel.contains(filteredResName) || filteredResName.contains(this.mFilteredLabel))) {
            return true;
        }
        if (this.mAppPackageName != null) {
            return this.mAppPackageName.contains(filteredResName) || filteredResName.contains(this.mAppPackageName);
        }
        return false;
    }

    private boolean isResourceDrawable(String resName) {
        if (resName == null) {
            return false;
        }
        int resId = this.mIconPackResources.getIdentifier(resName, DynamicIconDrawableConfig.TYPE, this.mIconPackPackageName);
        return resId != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable getDrawableFromName(String resName) {
        Drawable drawable = null;
        synchronized (resName) {
            try {
                int resId = this.mIconPackResources.getIdentifier(resName, DynamicIconDrawableConfig.TYPE, this.mIconPackPackageName);
                if (resId != 0) {
                    drawable = this.mIconPackResources.getDrawable(resId, getTheme());
                }
            } catch (Resources.NotFoundException e) {
            }
        }
        return drawable;
    }

    /* loaded from: classes.dex */
    private class IconLoaderTask extends AsyncTask<Void, Void, Boolean> {
        private IconLoaderTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... params) {
            try {
                Resources iconPackRes = CustomIconSelectorActivity.this.mPackageManager.getResourcesForApplication(CustomIconSelectorActivity.this.mIconPackPackageName);
                AssetManager assets = iconPackRes.getAssets();
                String[] resourceList = CustomIconSelectorActivity.this.getDrawableList(assets, CustomIconSelectorActivity.this.findAssetsPath(assets), 0);
                if (resourceList.length == 0) {
                    resourceList = CustomIconSelectorActivity.this.getDrawableList(iconPackRes, null, CustomIconSelectorActivity.this.findResourcesPathId(iconPackRes));
                    if (resourceList.length == 0) {
                        return false;
                    }
                }
                if (CustomIconSelectorActivity.this.mMatchingResources.size() > 0) {
                    String[] matchingResources = (String[]) CustomIconSelectorActivity.this.mMatchingResources.toArray(new String[CustomIconSelectorActivity.this.mMatchingResources.size()]);
                    CustomIconSelectorActivity.this.mAllIconsAdapter = new SelectorAdapter(CustomIconSelectorActivity.this.mContext, resourceList, matchingResources);
                } else {
                    CustomIconSelectorActivity.this.mAllIconsAdapter = new SelectorAdapter(CustomIconSelectorActivity.this.mContext, resourceList);
                }
                return true;
            } catch (PackageManager.NameNotFoundException | IOException e) {
                e.printStackTrace();
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean success) {
            if (success.booleanValue()) {
                CustomIconSelectorActivity.this.mAllIconsGridView.setVisibility(0);
                CustomIconSelectorActivity.this.mAllIconsGridView.animate().alpha(1.0f);
                CustomIconSelectorActivity.this.mAllIconsGridView.setAdapter((ListAdapter) CustomIconSelectorActivity.this.mAllIconsAdapter);
            } else {
                Toast.makeText(CustomIconSelectorActivity.this.mContext, R.string.icon_selector_error_loading, 0).show();
                CustomIconSelectorActivity.this.finish();
            }
            super.onPostExecute((IconLoaderTask) success);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class SelectorAdapter implements StickyGridHeadersBaseAdapter {
        private List<String> mAllResources = new ArrayList();
        private int mExtraResourcesLength;
        private boolean mHasMatching;
        private LayoutInflater mInflater;
        private int mMatchingLength;

        public SelectorAdapter(Context context, String[]... resources) {
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
            if (resources.length > 1) {
                List<String> matching = Arrays.asList(resources[1]);
                this.mMatchingLength = matching.size();
                this.mAllResources.addAll(matching);
                this.mHasMatching = true;
            }
            List<String> extra = Arrays.asList(resources[0]);
            this.mExtraResourcesLength = extra.size();
            this.mAllResources.addAll(extra);
        }

        @Override // net.oneplus.h2launcher.stickygridheaders.StickyGridHeadersBaseAdapter
        public int getCountForHeader(int header) {
            return (this.mHasMatching && header == 0) ? this.mMatchingLength : this.mExtraResourcesLength;
        }

        @Override // net.oneplus.h2launcher.stickygridheaders.StickyGridHeadersBaseAdapter
        public int getNumHeaders() {
            return this.mHasMatching ? 2 : 1;
        }

        @Override // net.oneplus.h2launcher.stickygridheaders.StickyGridHeadersBaseAdapter
        public View getHeaderView(int position, View convertView, ViewGroup parent) {
            HeaderHolder holder;
            if (convertView == null) {
                convertView = this.mInflater.inflate(R.layout.icon_selector_header, (ViewGroup) null);
                holder = new HeaderHolder();
                holder.title = (TextView) convertView.findViewById(R.id.icon_selector_header);
                convertView.setTag(holder);
            } else {
                holder = (HeaderHolder) convertView.getTag();
            }
            holder.title.setText((this.mHasMatching && position == 0) ? R.string.icon_selector_matches : R.string.icon_selector_all_icons);
            return convertView;
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return true;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int position) {
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver observer) {
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver observer) {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (this.mHasMatching ? this.mMatchingLength : 0) + this.mExtraResourcesLength;
        }

        @Override // android.widget.Adapter
        public String getItem(int position) {
            return this.mAllResources.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return getItem(position).hashCode();
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [net.oneplus.h2launcher.CustomIconSelectorActivity$SelectorAdapter$1] */
        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            IconHolder holder;
            if (convertView == null) {
                convertView = this.mInflater.inflate(R.layout.icon_selector_item, (ViewGroup) null);
                holder = new IconHolder();
                holder.icon = (ImageView) convertView.findViewById(R.id.selector_app_icon);
                convertView.setTag(holder);
            } else {
                holder = (IconHolder) convertView.getTag();
            }
            final String item = getItem(position);
            holder.icon.setTag(item);
            final ImageView icon = holder.icon;
            new AsyncTask<Void, Void, Drawable>() { // from class: net.oneplus.h2launcher.CustomIconSelectorActivity.SelectorAdapter.1
                Drawable drawable;

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public Drawable doInBackground(Void[] params) {
                    synchronized (this) {
                        if (icon.getTag().equals(item)) {
                            this.drawable = CustomIconSelectorActivity.this.getDrawableFromName(item);
                        }
                    }
                    return this.drawable;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                public void onPostExecute(Drawable drawable) {
                    if (drawable != null) {
                        icon.setImageDrawable(drawable);
                    }
                    super.onPostExecute((AnonymousClass1) drawable);
                }
            }.execute(new Void[0]);
            convertView.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.CustomIconSelectorActivity.SelectorAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    Intent resultIntent = new Intent();
                    resultIntent.putExtra(CustomIconSelectorActivity.RESOURCE_NAME_EXTRA, item);
                    CustomIconSelectorActivity.this.setResult(-1, resultIntent);
                    CustomIconSelectorActivity.this.finish();
                }
            });
            return convertView;
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int position) {
            return 0;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return this.mAllResources.isEmpty();
        }

        /* loaded from: classes.dex */
        public class HeaderHolder {
            TextView title;

            public HeaderHolder() {
            }
        }

        /* loaded from: classes.dex */
        public class IconHolder {
            ImageView icon;

            public IconHolder() {
            }
        }
    }
}
