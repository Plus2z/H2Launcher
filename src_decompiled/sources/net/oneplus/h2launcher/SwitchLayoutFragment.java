package net.oneplus.h2launcher;

import android.app.Activity;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.graphics.Palette;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.crop.view.CropImageView;
import net.oneplus.h2launcher.customizations.WallpaperBackground;
import net.oneplus.h2launcher.oos.StyleConstant;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.AnalyticHelper;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.TaskWorker;
import net.oneplus.h2launcher.util.WallpaperUtils;

/* loaded from: classes.dex */
public class SwitchLayoutFragment extends Fragment {
    public static final String SHOW_SWITCHING_VIEW = "show_switching_view";
    private final String TAG = SwitchLayoutFragment.class.getSimpleName();
    private View mView = null;
    private SharedPreferences mSharedPrefs = null;
    private int mLayoutStyle = -1;
    private WallpaperBackground mWallpaperBackground = null;
    private ViewPager mViewPager = null;
    private ArrayList<Integer> mLayoutTypes = new ArrayList<>();
    private int[] mPreviewDefaultResource = {R.drawable.switch_layout_standard_default, R.drawable.switch_layout_simplified_default};
    private int[] mPreviewFocusResource = {R.drawable.switch_layout_standard_focus, R.drawable.switch_layout_simplified_focus};

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mSharedPrefs = getActivity().getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0);
        this.mLayoutStyle = StyleManager.getTableType();
        this.mLayoutTypes.add(0);
        this.mLayoutTypes.add(1);
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        this.mView = inflater.inflate(R.layout.fragment_switchlayout, container, false);
        this.mWallpaperBackground = (WallpaperBackground) this.mView.findViewById(R.id.background);
        updateWallpaperBackground();
        this.mViewPager = (ViewPager) this.mView.findViewById(R.id.viewpager);
        this.mViewPager.setAdapter(new LayoutTypePagerAdapter());
        this.mViewPager.addOnPageChangeListener(new PageChangeListener());
        this.mViewPager.setClipToPadding(false);
        int pageMargin = getResources().getDimensionPixelSize(R.dimen.switch_layout_page_margin);
        this.mViewPager.setPageMargin(pageMargin);
        this.mViewPager.setOverScrollMode(2);
        ImageView backButton = (ImageView) this.mView.findViewById(R.id.up);
        if (backButton != null) {
            backButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.SwitchLayoutFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    SwitchLayoutFragment.this.getActivity().onBackPressed();
                }
            });
        }
        TextView title = (TextView) this.mView.findViewById(R.id.title);
        if (title != null) {
            title.setText(R.string.settings_actionbar_title_switch_layout);
        }
        TextView saveButton = (TextView) this.mView.findViewById(R.id.menu_save);
        if (saveButton != null) {
            saveButton.setOnClickListener(new View.OnClickListener() { // from class: net.oneplus.h2launcher.SwitchLayoutFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (SwitchLayoutFragment.this.mLayoutStyle == SwitchLayoutFragment.this.mSharedPrefs.getInt(StyleManager.LAYOUT_STYLE, -1)) {
                        SwitchLayoutFragment.this.getActivity().finish();
                    } else {
                        SwitchLayoutDialogFragment dialogFragment = new SwitchLayoutDialogFragment(SwitchLayoutFragment.this);
                        dialogFragment.show(SwitchLayoutFragment.this.getFragmentManager(), SwitchLayoutFragment.this.TAG);
                    }
                }
            });
        }
        return this.mView;
    }

    protected void updateWallpaperBackground() {
        Runnable runnable = new Runnable() { // from class: net.oneplus.h2launcher.SwitchLayoutFragment.3
            @Override // java.lang.Runnable
            public void run() {
                Context context = SwitchLayoutFragment.this.getContext();
                if (context == null) {
                    Logger.w(SwitchLayoutFragment.this.TAG, "[updateWallpaperBackground] context is null.");
                    return;
                }
                WallpaperManager wallpaperManager = WallpaperManager.getInstance(context);
                Drawable d = wallpaperManager.getDrawable();
                Bitmap bitmap = d instanceof BitmapDrawable ? ((BitmapDrawable) d).getBitmap() : null;
                List<Palette.Swatch> swatches = WallpaperUtils.loadWallpaperSwatches(bitmap);
                if (swatches == null || swatches.isEmpty()) {
                    Logger.w(SwitchLayoutFragment.this.TAG, "cannot load wallpaper background color");
                    return;
                }
                final int color = swatches.get(0).getRgb();
                if (SwitchLayoutFragment.this.mWallpaperBackground != null) {
                    TaskWorker.get().postUI(new Runnable() { // from class: net.oneplus.h2launcher.SwitchLayoutFragment.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SwitchLayoutFragment.this.mWallpaperBackground.setColor(color, false);
                        }
                    });
                }
            }
        };
        TaskWorker.get().post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void saveSwitchLayoutSettings() {
        Logger.d(this.TAG, "saveSwitchLayoutSettings");
        SharedPreferences.Editor editor = this.mSharedPrefs.edit();
        editor.putInt(StyleManager.LAYOUT_STYLE, this.mLayoutStyle);
        editor.apply();
        StyleManager.sLayoutStyle = this.mLayoutStyle;
        StyleManager.saveLayoutStyle(this.mLayoutStyle);
        LauncherSettings.reloadTable();
        LauncherProvider provider = LauncherAppState.getLauncherProvider();
        provider.reloadOpenDatabaseHelper();
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        launcher.getModel().resetLoadedState(true, true);
        editor.putBoolean(SHOW_SWITCHING_VIEW, true);
        editor.apply();
        String layoutStyle = this.mLayoutStyle == 0 ? "O" : "H";
        AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_OPTIONS_TAG, AnalyticHelper.Label.MDM_OPTIONS_LAYOUT_SWITCH, layoutStyle);
        if (launcher instanceof Activity) {
            Logger.d(this.TAG, "reCreate launcher");
            launcher.recreate();
            Intent intentHome = new Intent("android.intent.action.MAIN");
            intentHome.addCategory("android.intent.category.HOME");
            intentHome.setFlags(32768);
            intentHome.setPackage(BuildConfig.APPLICATION_ID);
            startActivity(intentHome);
        }
        Activity activity = getActivity();
        if (activity != null) {
            activity.finish();
        } else {
            Logger.w(this.TAG, "[saveSwitchLayoutSettings] activity is null. Should not be here.");
        }
    }

    /* loaded from: classes.dex */
    public class LayoutTypePagerAdapter extends PagerAdapter {
        public LayoutTypePagerAdapter() {
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return SwitchLayoutFragment.this.mLayoutTypes.size();
        }

        @Override // android.support.v4.view.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }

        @Override // android.support.v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup container, int position) {
            View view = null;
            Context context = SwitchLayoutFragment.this.getContext();
            if (context == null) {
                Logger.w(SwitchLayoutFragment.this.TAG, "[instantiateItem] context is null.");
            } else {
                LayoutInflater inflater = LayoutInflater.from(context);
                view = inflater.inflate(R.layout.switch_layout_template_view, (ViewGroup) null);
                ImageView imageView = (ImageView) view.findViewById(R.id.template_view);
                ImageView checked = (ImageView) view.findViewById(R.id.checked);
                TextView title = (TextView) view.findViewById(R.id.layout_title);
                TextView subtitle = (TextView) view.findViewById(R.id.layout_subtitle);
                switch (position) {
                    case 0:
                        imageView.setImageResource(R.drawable.switch_layout_standard_focus);
                        imageView.setBackground(SwitchLayoutFragment.this.getDefaultWallpaper(true));
                        title.setText(R.string.standard_layout_title);
                        subtitle.setText(R.string.standard_layout_subtitle);
                        break;
                    case 1:
                        imageView.setImageResource(R.drawable.switch_layout_simplified_default);
                        imageView.setBackground(SwitchLayoutFragment.this.getDefaultWallpaper(false));
                        title.setText(R.string.simplified_layout_title);
                        subtitle.setText(R.string.simplified_layout_subtitle);
                        if (SwitchLayoutFragment.this.mLayoutStyle == 1) {
                            SwitchLayoutFragment.this.mViewPager.setCurrentItem(SwitchLayoutFragment.this.mLayoutStyle);
                            imageView.setImageResource(SwitchLayoutFragment.this.mPreviewFocusResource[1]);
                            view.setAlpha(1.0f);
                            break;
                        }
                        break;
                    default:
                        Logger.w(SwitchLayoutFragment.this.TAG, "Unknown type: " + position);
                        break;
                }
                if (position == SwitchLayoutFragment.this.mLayoutStyle) {
                    checked.setVisibility(0);
                } else {
                    checked.setVisibility(4);
                }
                if (view != null) {
                    container.addView(view);
                }
            }
            return view;
        }

        @Override // android.support.v4.view.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }
    }

    /* loaded from: classes.dex */
    public class PageChangeListener implements ViewPager.OnPageChangeListener {
        public PageChangeListener() {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            ImageView checked;
            TextView subtitle;
            ImageView imageView;
            if (SwitchLayoutFragment.this.mViewPager == null) {
                Logger.d(SwitchLayoutFragment.this.TAG, "[onPageSelected] view pager is null. Should not be here");
                return;
            }
            int count = SwitchLayoutFragment.this.mViewPager.getChildCount();
            for (int i = 0; i < count; i++) {
                View view = SwitchLayoutFragment.this.mViewPager.getChildAt(i);
                if (view != null && (checked = (ImageView) view.findViewById(R.id.checked)) != null && (subtitle = (TextView) view.findViewById(R.id.layout_subtitle)) != null && (imageView = (ImageView) view.findViewById(R.id.template_view)) != null) {
                    if (position == i) {
                        checked.setVisibility(0);
                        subtitle.setVisibility(0);
                        imageView.setImageResource(SwitchLayoutFragment.this.mPreviewFocusResource[i]);
                        view.setAlpha(1.0f);
                    } else {
                        checked.setVisibility(4);
                        subtitle.setVisibility(4);
                        imageView.setImageResource(SwitchLayoutFragment.this.mPreviewDefaultResource[i]);
                        view.setAlpha(0.5f);
                    }
                }
            }
            SwitchLayoutFragment.this.mLayoutStyle = position;
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable getDefaultWallpaper(boolean isStandard) {
        Resources resources = getResources();
        if (resources == null) {
            Logger.w(this.TAG, "[getDefaultWallpaper] resources is null");
            return null;
        }
        int wallpaperResId = StyleManager.getInstance().getResourceId(isStandard ? StyleConstant.DEFAULT_STANDARD_WALLPAPER : StyleConstant.DEFAULT_SIMPLIFIED_WALLPAPER);
        if (wallpaperResId == 0) {
            Logger.w(this.TAG, "[getDefaultWallpaper] can't find resource id for default wallpaper");
            return null;
        }
        Activity activity = getActivity();
        if (activity == null) {
            Logger.w(this.TAG, "[getDefaultWallpaper] activity is null");
            return null;
        }
        Resources.Theme theme = activity.getTheme();
        if (isStandard) {
            return resources.getDrawable(wallpaperResId, theme);
        }
        int defaultMaskColorResId = StyleManager.getInstance().getResourceId(StyleConstant.DEFAULT_WALLPAPER_COLOR);
        int defaultMaskColor = resources.getColor(defaultMaskColorResId, theme);
        int w = resources.getDimensionPixelSize(R.dimen.switch_layout_template_width);
        int h = resources.getDimensionPixelSize(R.dimen.switch_layout_template_height);
        Bitmap temp = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(temp);
        Bitmap landscape = BitmapFactory.decodeResource(resources, wallpaperResId);
        Rect srcRect = new Rect(0, 0, landscape.getWidth(), landscape.getHeight());
        Rect destRect = new Rect(0, 0, w, (int) (w / CropImageView.LANDSCAPE_IMAGE_ASPECT_RATIO));
        canvas.drawBitmap(landscape, srcRect, destRect, (Paint) null);
        Bitmap masked = WallpaperUtils.paintWallpaperColorMask(activity, temp, defaultMaskColor, 1);
        return new BitmapDrawable(resources, masked);
    }
}
