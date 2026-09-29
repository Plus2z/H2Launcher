package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v4.content.LocalBroadcastManager;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.oneplus.h2launcher.IconPackHelper;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.Workspace;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.customizations.BaseCustomizationCard;
import net.oneplus.h2launcher.oos.StyleConstant;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.AnalyticHelper;

/* loaded from: classes.dex */
public class IconCustomizationCard extends BaseCustomizationCard implements View.OnClickListener, AdapterView.OnItemClickListener, LauncherAppsCompat.OnAppsChangedCallbackCompat {
    public static final int GRID_VIEW_NUM_COLUMNS = 3;
    public static final int ICON_SIZE_LARGE = 3;
    public static final float ICON_SIZE_SCALE_LARGE = 1.13f;
    public static final float ICON_SIZE_SCALE_SMALL = 0.8f;
    public static final float ICON_SIZE_SCALE_STANDARD = 1.0f;
    public static final int ICON_SIZE_SMALL = 1;
    public static final int ICON_SIZE_STANDARD = 2;
    public static final int ICON_SIZE_UNKNOWN = -1;
    private static final int INVALID_SELECTED_POSITION = -1;
    private static final String KEY_CURRENT_ICON_PACK = "icon_pack_saved";
    private static final String KEY_CURRENT_ICON_SIZE = "current_icon_size";
    private static final String KEY_TEMP_ICON_PACK = "current_icon_pack";
    private String mCurrentIconPackValue;
    private GridView mGridView;
    private IconPackAdapter mIconPackAdapter;
    private boolean mIconPackChanged;
    private SharedPreferences mIconPackSharedPrefs;
    private boolean mIconSizeChanged;
    private OptionButton mLargeIconButton;
    private OptionButton mSelectedIconButton;
    private int mSelectedIconSize;
    private OptionButton mSmallIconButton;
    private OptionButton mStandardIconButton;
    private String mTempIconPackValue;
    private int mTempSelection;
    private static final String TAG = IconCustomizationCard.class.getSimpleName();
    private static final String DEFAULT_SYSTEM_ICON_PACK = IconPackHelper.CUSTOM_SYSTEM_DEFAULT_ICONS;

    public IconCustomizationCard(Context context) {
        this(context, null, 0);
    }

    public IconCustomizationCard(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public IconCustomizationCard(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mCurrentIconPackValue = "";
        this.mTempIconPackValue = "";
        this.mTempSelection = -1;
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(context);
        launcherApps.addOnAppsChangedCallback(this);
        this.mIconPackSharedPrefs = context.getSharedPreferences(IconPackHelper.SHARED_PREFERENCES, 0);
        setupContentView(this.mContent);
        reloadCustomizationSettings();
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    protected View getContentView() {
        LayoutInflater inflater = LayoutInflater.from(getContext());
        return inflater.inflate(R.layout.icon_settings, (ViewGroup) this, false);
    }

    private void setupContentView(View content) {
        this.mSmallIconButton = (OptionButton) content.findViewById(R.id.small);
        this.mStandardIconButton = (OptionButton) content.findViewById(R.id.standard);
        this.mLargeIconButton = (OptionButton) content.findViewById(R.id.large);
        setupIconButton(this.mSmallIconButton, 1);
        setupIconButton(this.mStandardIconButton, 2);
        setupIconButton(this.mLargeIconButton, 3);
        setupGridView(content);
    }

    private void setupIconButton(Button iconSizeButton, int sizeType) {
        if (iconSizeButton != null) {
            iconSizeButton.setSelected(false);
            iconSizeButton.setTag(Integer.valueOf(sizeType));
            iconSizeButton.setOnClickListener(this);
        }
    }

    private void setupGridView(View view) {
        this.mGridView = (GridView) view.findViewById(R.id.icon_pack_list);
        this.mIconPackAdapter = new IconPackAdapter(getContext(), R.layout.grid_item);
        if (this.mGridView != null) {
            this.mGridView.setNumColumns(3);
            this.mGridView.setFocusable(false);
            this.mGridView.setOnItemClickListener(this);
            this.mGridView.setAdapter((ListAdapter) this.mIconPackAdapter);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mSelectedIconButton != null) {
            this.mSelectedIconButton.setSelected(false);
        }
        this.mSelectedIconButton = (OptionButton) view;
        this.mSelectedIconButton.setSelected(true);
        this.mSelectedIconSize = ((Integer) view.getTag()).intValue();
        updateIconSize(true);
    }

    private void updateIconSize(boolean preview) {
        Context context = getContext();
        Utilities.setSelectedIconSize(this.mSelectedIconSize);
        Utilities.setFolderScaledLayoutParams(context, this.mLauncher.getDeviceProfile());
        Workspace workspace = this.mLauncher.getWorkspace();
        float iconSizeScale = Utilities.getIconScaleValue(context);
        if (preview) {
            int pageIndex = this.mLauncher.getWorkspace().getCurrentPage();
            workspace.updateShortcutIconSizeInPage(pageIndex, iconSizeScale, null);
        } else {
            workspace.updateAllShortcutIconSize(iconSizeScale, null);
            if (StyleManager.getInstance().showHotSeat() && this.mLauncher.getHotseat() != null) {
                this.mLauncher.getHotseat().updateAllAppsButtonIconSize();
            }
            if (StyleManager.getInstance().showAllApps() && this.mLauncher.getAppsView() != null) {
                int appsViewColNum = Utilities.getAppsViewNumCols(context);
                this.mLauncher.getDeviceProfile().updateAppsViewNumCols(appsViewColNum);
                this.mLauncher.getAppsView().updateAllAppsFromCustomizations();
                this.mLauncher.getAppsView().getAdapter().setIconSizeScale(iconSizeScale);
            }
        }
        workspace.updateIconSize(iconSizeScale);
    }

    private OptionButton getSelectedButton() {
        switch (this.mSelectedIconSize) {
            case 1:
                return this.mSmallIconButton;
            case 2:
                return this.mStandardIconButton;
            case 3:
                return this.mLargeIconButton;
            default:
                return this.mStandardIconButton;
        }
    }

    private void setDefaultIconPackValue() {
        this.mTempIconPackValue = IconPackHelper.CUSTOM_SYSTEM_DEFAULT_ICONS;
        this.mCurrentIconPackValue = IconPackHelper.CUSTOM_SYSTEM_DEFAULT_ICONS;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        if (position != this.mTempSelection) {
            int count = parent.getChildCount();
            int index = 0;
            while (true) {
                if (index >= count) {
                    break;
                }
                View child = parent.getChildAt(index);
                View selection = child.findViewById(R.id.selection);
                if (selection == null || ((Integer) selection.getTag()).intValue() != this.mTempSelection) {
                    index++;
                } else {
                    selection.setSelected(false);
                    break;
                }
            }
            Selection selection2 = (Selection) view.findViewById(R.id.selection);
            if (selection2 != null) {
                selection2.setSelected(true);
            }
            this.mTempSelection = position;
            this.mTempIconPackValue = ((IconPackAdapter.IconPack) this.mIconPackAdapter.getItem(position)).value;
            this.mIconPackSharedPrefs.edit().putString("current_icon_pack", this.mTempIconPackValue).apply();
            notifyIconPackChanged(true);
            if (StyleManager.getInstance().showAllApps()) {
                this.mLauncher.getAllAppsViewController().setAppsAdapter(null);
                this.mLauncher.getAllAppsViewController().setUpdateIconsInBackground(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public void reloadCustomizationSettings() {
        this.mTempIconPackValue = this.mIconPackSharedPrefs.getString("current_icon_pack", DEFAULT_SYSTEM_ICON_PACK);
        this.mCurrentIconPackValue = this.mIconPackSharedPrefs.getString("icon_pack_saved", DEFAULT_SYSTEM_ICON_PACK);
        if (!this.mTempIconPackValue.equals(this.mCurrentIconPackValue) || this.mIconPackChanged) {
            this.mTempIconPackValue = this.mCurrentIconPackValue;
            this.mIconPackSharedPrefs.edit().putString("current_icon_pack", this.mCurrentIconPackValue).apply();
            notifyIconPackChanged(false);
            this.mIconPackChanged = false;
        }
        if (this.mTempIconPackValue.equals(this.mCurrentIconPackValue)) {
            LauncherAppState.getInstance().getAssetCache().updateDbIconsForIconPackChanged();
        }
        int savedIconSize = this.mIconPackSharedPrefs.getInt("current_icon_size", 2);
        if (this.mSelectedIconButton == null) {
            this.mSelectedIconSize = savedIconSize;
            this.mSelectedIconButton = getSelectedButton();
            this.mSelectedIconButton.setSelected(true);
        } else if (this.mSelectedIconSize != savedIconSize || this.mIconSizeChanged) {
            this.mSelectedIconButton.setSelected(false);
            this.mSelectedIconSize = savedIconSize;
            this.mSelectedIconButton = getSelectedButton();
            this.mSelectedIconButton.setSelected(true);
            updateIconSize(false);
            this.mIconSizeChanged = false;
        }
        if (this.mIconPackAdapter != null) {
            this.mIconPackAdapter.notifyDataSetChanged();
        }
        if (this.mGridView != null) {
            this.mGridView.smoothScrollToPosition(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public BaseCustomizationCard.SaveCustomizationTask getSaveCustomizationTask() {
        this.mIconPackChanged = !this.mCurrentIconPackValue.equals(this.mTempIconPackValue);
        this.mIconSizeChanged = this.mSelectedIconSize != this.mIconPackSharedPrefs.getInt("current_icon_size", 2);
        if (!this.mIconPackChanged && !this.mIconSizeChanged) {
            return null;
        }
        return new BaseCustomizationCard.SaveCustomizationTask(TAG) { // from class: net.oneplus.h2launcher.customizations.IconCustomizationCard.1
            @Override // java.lang.Runnable
            public void run() {
                SharedPreferences.Editor editor = IconCustomizationCard.this.mIconPackSharedPrefs.edit();
                Map<String, String> data = new HashMap<>();
                if (IconCustomizationCard.this.mIconPackChanged) {
                    IconCustomizationCard.this.mCurrentIconPackValue = IconCustomizationCard.this.mTempIconPackValue;
                    editor.putString("icon_pack_saved", IconCustomizationCard.this.mCurrentIconPackValue);
                    editor.apply();
                    String packType = IconCustomizationCard.DEFAULT_SYSTEM_ICON_PACK.equalsIgnoreCase(IconCustomizationCard.this.mCurrentIconPackValue) ? "0" : "1";
                    data.put(AnalyticHelper.Label.MDM_OPTIONS_GESTURE_ICON_PACK, packType);
                }
                if (IconCustomizationCard.this.mIconSizeChanged) {
                    editor.putInt("current_icon_size", IconCustomizationCard.this.mSelectedIconSize);
                    editor.apply();
                    data.put(AnalyticHelper.Label.MDM_OPTIONS_GESTURE_ICON_SIZE, String.valueOf(IconCustomizationCard.this.mSelectedIconSize));
                }
                AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_OPTIONS_TAG, data);
            }
        };
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageRemoved(String packageName, UserHandleCompat user) {
        if (packageName != null && this.mLauncher.isIconPackNeedChangeToDefault()) {
            setDefaultIconPackValue();
            SharedPreferences.Editor editor = this.mIconPackSharedPrefs.edit();
            editor.putString("current_icon_pack", this.mTempIconPackValue);
            editor.putString("icon_pack_saved", this.mCurrentIconPackValue);
            editor.apply();
            notifyIconPackChanged(false);
            this.mLauncher.setIconPackNeedChangeToDefault(false);
        }
        if (this.mIconPackAdapter != null) {
            this.mIconPackAdapter.loadIconPackList();
            this.mIconPackAdapter.notifyDataSetChanged();
        }
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageAdded(String packageName, UserHandleCompat user) {
        if (this.mIconPackAdapter != null) {
            this.mIconPackAdapter.loadIconPackList();
            this.mIconPackAdapter.notifyDataSetChanged();
        }
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageChanged(String packageName, UserHandleCompat user) {
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesAvailable(String[] packageNames, UserHandleCompat user, boolean replacing) {
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesUnavailable(String[] packageNames, UserHandleCompat user, boolean replacing) {
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesSuspended(String[] packageNames, UserHandleCompat user) {
    }

    @Override // net.oneplus.h2launcher.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesUnsuspended(String[] packageNames, UserHandleCompat user) {
    }

    public void removeOnAppsChangedCallback() {
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(getContext());
        launcherApps.removeOnAppsChangedCallback(this);
    }

    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    protected View getScrollableView() {
        return this.mGridView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.customizations.BaseCustomizationCard
    public View getBottommostViewInScrollableView() {
        int childCount;
        return (this.mGridView == null || (childCount = this.mGridView.getChildCount()) <= 0) ? super.getBottommostViewInScrollableView() : this.mGridView.getChildAt(childCount - 1);
    }

    /* loaded from: classes.dex */
    public class IconPackAdapter extends BaseAdapter {
        private final LayoutInflater mInflater;
        private final int mLayoutResourceId;
        private final PackageManager mPackageManager;
        private List<IconPack> mIconPacks = new ArrayList();
        private Set<String> mIconPackValueSet = new HashSet();
        private final StyleManager mStyleManager = StyleManager.getInstance();

        public IconPackAdapter(Context context, int layoutResourceId) {
            this.mInflater = LayoutInflater.from(context);
            this.mLayoutResourceId = layoutResourceId;
            this.mPackageManager = context.getPackageManager();
            loadIconPackList();
        }

        public void loadIconPackList() {
            if (this.mIconPacks != null && this.mIconPackValueSet != null) {
                this.mIconPacks.clear();
                this.mIconPackValueSet.clear();
            }
            CharSequence[][] iconPackList = IconPackHelper.getIconPackList(IconCustomizationCard.this.getContext(), true);
            for (int i = 0; i < iconPackList[1].length; i++) {
                String name = iconPackList[0][i].toString();
                String value = iconPackList[1][i].toString();
                if (!this.mIconPackValueSet.contains(value)) {
                    this.mIconPackValueSet.add(value);
                    this.mIconPacks.add(new IconPack(name, value));
                }
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mIconPacks.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return this.mIconPacks.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            ViewHolder holder;
            if (convertView == null) {
                convertView = this.mInflater.inflate(this.mLayoutResourceId, parent, false);
                holder = new ViewHolder();
                holder.selection = (Selection) convertView.findViewById(R.id.selection);
                holder.icon = (ImageView) convertView.findViewById(R.id.icon_pack_image);
                holder.title = (TextView) convertView.findViewById(R.id.icon_pack_name);
                convertView.setTag(holder);
            } else {
                holder = (ViewHolder) convertView.getTag();
            }
            IconPack item = (IconPack) getItem(position);
            holder.icon.setImageDrawable(item.icon);
            holder.title.setText(item.name);
            if (holder.selection != null) {
                boolean isSelected = item.value.equals(IconCustomizationCard.this.mTempIconPackValue);
                holder.selection.setSelected(isSelected, 0);
                holder.selection.setTag(Integer.valueOf(position));
                if (isSelected) {
                    IconCustomizationCard.this.mTempSelection = position;
                }
            }
            return convertView;
        }

        /* loaded from: classes.dex */
        private class ViewHolder {
            ImageView icon;
            Selection selection;
            TextView title;

            private ViewHolder() {
                this.selection = null;
                this.icon = null;
                this.title = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class IconPack {
            Drawable icon;
            String name;
            String value;

            public IconPack(String name, String value) {
                this.name = name;
                this.value = value;
                try {
                    this.icon = IconPackAdapter.this.mPackageManager.getApplicationIcon(value);
                } catch (PackageManager.NameNotFoundException e) {
                    Log.w(IconCustomizationCard.TAG, "IconPackName " + value + " not found");
                }
                if (this.icon == null) {
                    int iconResId = IconPackAdapter.this.mStyleManager.getResourceId(StyleConstant.SYSTEM_DEFAULT_ICONS_LOGO);
                    this.icon = IconCustomizationCard.this.getContext().getDrawable(iconResId);
                }
            }
        }
    }

    private void notifyIconPackChanged(boolean preview) {
        this.mLauncher.cancelApplyingIconPack();
        Intent intent = new Intent(Launcher.INTENT_ICON_PACK_CHANGED);
        if (preview) {
            intent.putExtra(Launcher.INTENT_EXTRA_PREVIEW_ONLY, true);
        }
        LocalBroadcastManager.getInstance(getContext()).sendBroadcast(intent);
    }
}
