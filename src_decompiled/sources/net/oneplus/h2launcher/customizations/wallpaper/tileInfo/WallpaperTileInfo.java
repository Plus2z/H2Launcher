package net.oneplus.h2launcher.customizations.wallpaper.tileInfo;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.v7.graphics.Palette;
import android.text.TextUtils;
import android.view.View;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import net.oneplus.h2launcher.customizations.WallpaperCard;
import net.oneplus.h2launcher.migrate.MigrationManager;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.ColorUtils;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.WallpaperUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class WallpaperTileInfo {
    private static final String KEY_MASK_COLOR = "mask_color";
    public static final String KEY_NAME = "name";
    private static final String KEY_ORIENTATION = "orientation";
    private static final String KEY_OVERLAY_WALLPAPER = "overlay_wallpaper";
    public static final String KEY_TYPE = "type";
    private static final String KEY_WALLPAPER = "wallpaper";
    private static final String TAG = WallpaperTileInfo.class.getSimpleName();
    public static final int WALLPAPER_ORIENTATION_LANDSCAPE = 1;
    public static final int WALLPAPER_ORIENTATION_PORTRAIT = 0;
    public static final int WALLPAPER_ORIENTATION_UNKNOWN = -1;
    protected boolean mIsLive;
    protected boolean mIsThirdParty;
    protected String mName;
    protected String mOverlayWallpaper;
    private List<Palette.Swatch> mSwatches;
    public Drawable mThumb;
    protected View mView;
    protected String mWallpaper;
    protected Type mType = Type.UNDEFINED;
    protected int mMaskColor = Integer.MIN_VALUE;
    protected int mOrientation = 0;
    protected int mHomeScreenOrientation = 0;
    private boolean mShouldPerformClickOnBound = false;

    public static WallpaperTileInfo deserialize(Context context, String tileValue) {
        try {
            JSONObject tile = new JSONObject(tileValue);
            Type type = Type.fromString(tile.optString("type"));
            String name = tile.optString(KEY_NAME);
            String wallpaper = tile.optString("wallpaper");
            int maskColor = tile.optInt(KEY_MASK_COLOR);
            int orientation = tile.optInt(KEY_ORIENTATION, 0);
            String correctedWallpaper = MigrationManager.correctLauncherPackageName(context, wallpaper);
            if (Type.RESOURCE.equals(type)) {
                Resources res = context.getResources();
                int resId = res.getIdentifier(correctedWallpaper, null, null);
                if (resId == 0) {
                    Logger.e(TAG, "failed to find resId for res name: %s", correctedWallpaper);
                    return null;
                }
                ResourceWallpaperInfo info = new ResourceWallpaperInfo(res, name, resId, orientation);
                String overlayWallpaper = tile.optString(KEY_OVERLAY_WALLPAPER);
                if (!TextUtils.isEmpty(overlayWallpaper)) {
                    String correctedOverlayWallpaper = MigrationManager.correctLauncherPackageName(context, overlayWallpaper);
                    int overlayResId = res.getIdentifier(correctedOverlayWallpaper, null, null);
                    info.setOverlayResId(overlayResId);
                    return info;
                }
                return info;
            }
            if (Type.FILE.equals(type)) {
                return new FileWallpaperInfo(new File(correctedWallpaper), maskColor, orientation, name);
            }
            return null;
        } catch (JSONException e) {
            Logger.e(TAG, "cannot create wallpaper tile info from JSON, error=" + e);
            return null;
        }
    }

    public void setView(View v) {
        this.mView = v;
    }

    public void onClick(WallpaperCard card, int screen, boolean changed) {
    }

    public void onBeforeSave(int homeScreenOrientation) {
        this.mHomeScreenOrientation = homeScreenOrientation;
    }

    public void onSave(Context context, int screen) {
    }

    public void onDelete(WallpaperCard card) {
    }

    public boolean isSelectable() {
        return false;
    }

    public boolean isNamelessWallpaper() {
        return false;
    }

    public void onIndexUpdated(CharSequence label) {
        if (isNamelessWallpaper()) {
            this.mView.setContentDescription(label);
        }
    }

    public Type getType() {
        return this.mType;
    }

    public String getName() {
        return this.mName;
    }

    public String getWallpaper() {
        return this.mWallpaper;
    }

    public String getPreviewCacheKey(int screen) {
        return null;
    }

    public boolean isLive() {
        return this.mIsLive;
    }

    public boolean isThirdParty() {
        return this.mIsThirdParty;
    }

    public boolean isLandscape() {
        return this.mOrientation == 1;
    }

    public boolean shouldPerformClickOnBound() {
        return this.mShouldPerformClickOnBound;
    }

    public void setShouldPerformClickOnBound(boolean shouldPerformClickOnBound) {
        this.mShouldPerformClickOnBound = shouldPerformClickOnBound;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getMaskColor() {
        return this.mMaskColor;
    }

    public String serialize() {
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("type", this.mType.toString());
            jsonObject.put(KEY_NAME, this.mName);
            jsonObject.put("wallpaper", this.mWallpaper);
            jsonObject.put(KEY_OVERLAY_WALLPAPER, this.mOverlayWallpaper);
            jsonObject.put(KEY_MASK_COLOR, this.mMaskColor);
            jsonObject.put(KEY_ORIENTATION, this.mOrientation);
        } catch (JSONException e) {
            Logger.e(TAG, "cannot create wallpaper tile info JSON, error=" + e);
        }
        return jsonObject.toString();
    }

    public List<Palette.Swatch> loadSwatches(Context context) {
        List<Palette.Swatch> predefinedColors;
        if (this.mSwatches == null) {
            this.mSwatches = new ArrayList();
            if (Type.RESOURCE.equals(this.mType) && StyleManager.isSimplifiedLayout() && (predefinedColors = WallpaperUtils.loadWallpaperPredefinedColors(context, this.mName)) != null) {
                this.mSwatches.addAll(predefinedColors);
            }
            Bitmap wallpaper = getWallpaperBitmap(context, 1);
            List<Palette.Swatch> swatches = WallpaperUtils.loadWallpaperSwatches(wallpaper);
            if (swatches != null) {
                this.mSwatches.addAll(swatches);
            }
            addMaskColor();
        }
        return this.mSwatches;
    }

    protected Bitmap getWallpaperBitmap(Context context, int screen) {
        return null;
    }

    private void addMaskColor() {
        if (this.mSwatches != null && this.mMaskColor != Integer.MIN_VALUE) {
            int similarColorIndex = -1;
            for (int index = 0; index < this.mSwatches.size(); index++) {
                Palette.Swatch swatch = this.mSwatches.get(index);
                if (!ColorUtils.isColorDifferencePerceptible(swatch.getRgb(), this.mMaskColor)) {
                    similarColorIndex = index;
                }
            }
            if (similarColorIndex < 0) {
                this.mSwatches.add(0, new Palette.Swatch(this.mMaskColor, 0));
            } else {
                this.mSwatches.add(0, this.mSwatches.remove(similarColorIndex));
            }
        }
    }

    public int hashCode() {
        int hash = (this.mType == null ? 0 : this.mType.hashCode()) + 217;
        return (((hash * 31) + (this.mWallpaper == null ? 0 : this.mWallpaper.hashCode())) * 31) + (this.mOverlayWallpaper != null ? this.mOverlayWallpaper.hashCode() : 0);
    }

    public String toString() {
        return String.format(Locale.US, "type=%s, wallpaper=%s, overlayWallpaper=%s, orientation=%d", this.mType, this.mWallpaper, this.mOverlayWallpaper, Integer.valueOf(this.mOrientation));
    }

    public boolean equals(Object o) {
        if (!(o instanceof WallpaperTileInfo)) {
            return false;
        }
        if (o == this) {
            return true;
        }
        WallpaperTileInfo rhs = (WallpaperTileInfo) o;
        if (this.mType.equals(rhs.mType)) {
            if (this.mWallpaper == null && rhs.mWallpaper == null) {
                return true;
            }
            if (this.mWallpaper != null && this.mWallpaper.equals(rhs.mWallpaper)) {
                return true;
            }
        }
        return false;
    }

    /* loaded from: classes.dex */
    public enum Type {
        GALLERY("gallery"),
        ONEDAYONEPHOTO("onedayonephoto"),
        RESOURCE("resource"),
        FILE("file"),
        EXTERNAL("external"),
        UNDEFINED("");

        private String mValue;

        Type(String value) {
            this.mValue = value;
        }

        public static Type fromString(String value) {
            for (Type type : values()) {
                if (type.getValue().equalsIgnoreCase(value)) {
                    return type;
                }
            }
            return UNDEFINED;
        }

        public String getValue() {
            return this.mValue;
        }

        @Override // java.lang.Enum
        public String toString() {
            return getValue();
        }
    }
}
