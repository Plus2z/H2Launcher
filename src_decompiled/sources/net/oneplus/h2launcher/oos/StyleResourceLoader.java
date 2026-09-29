package net.oneplus.h2launcher.oos;

import android.content.Context;
import java.util.HashMap;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class StyleResourceLoader extends BaseLoader {
    /* JADX INFO: Access modifiers changed from: package-private */
    public StyleResourceLoader(Context context) {
        super(context);
    }

    @Override // net.oneplus.h2launcher.oos.BaseLoader
    public void load(StyleLoaderCallback styleLoaderCallback) {
        int i = R.drawable.ic_oxygen_logo;
        StyleResourceInfo styleResourceInfo = new StyleResourceInfo();
        HashMap<String, Integer> resourceMap = new HashMap<>();
        String device = Utilities.getDeviceTag();
        if (StyleManager.isSimplifiedLayout()) {
            resourceMap.put(StyleConstant.LAUNCHER_LAYOUT, Integer.valueOf(R.layout.launcher_h2));
            resourceMap.put(StyleConstant.WORKSPACE_XML, Integer.valueOf(R.xml.default_workspace_3x5_no_all_apps));
            resourceMap.put(StyleConstant.WORKSPACE_SCREEN_OPTIONS_TRANSLATION_Y, Integer.valueOf(R.dimen.customization_cell_layout_translation_y_h2));
            if (!StyleManager.isO2Device()) {
                i = R.drawable.ic_hydrogen_logo;
            }
            resourceMap.put(StyleConstant.SYSTEM_DEFAULT_ICONS_LOGO, Integer.valueOf(i));
            resourceMap.put(StyleConstant.LANDSCAPE_WALLPAPERS, Integer.valueOf(getLandscapeWallpaper(device)));
            resourceMap.put(StyleConstant.PORTRAIT_WALLPAPERS, Integer.valueOf(getPortraitWallpapers(device, 1)));
            resourceMap.put(StyleConstant.PORTRAIT_OVERLAY_WALLPAPERS, Integer.valueOf(getPortraitOverlayWallpapers(device)));
            resourceMap.put(StyleConstant.WALLPAPER_NAMES, Integer.valueOf(getWallpaperNames(device, 1)));
            resourceMap.put(StyleConstant.WALLPAPER_THUMBNAILS, Integer.valueOf(getWallpaperThumbs(device, 1)));
            resourceMap.put(StyleConstant.DEFAULT_WALLPAPERS, Integer.valueOf(getLandscapeWallpaper(device)));
            resourceMap.put(StyleConstant.DEFAULT_WALLPAPER_INDEX, Integer.valueOf(getDefaultWallpaperIndex(device, 1, 1)));
            resourceMap.put(StyleConstant.DEFAULT_LOCK_WALLPAPERS, Integer.valueOf(getPortraitWallpapers(device, 1)));
            resourceMap.put(StyleConstant.DEFAULT_LOCK_WALLPAPER_INDEX, Integer.valueOf(getDefaultWallpaperIndex(device, 0, 1)));
        } else if (StyleManager.isStandardLayout()) {
            resourceMap.put(StyleConstant.LAUNCHER_LAYOUT, Integer.valueOf(R.layout.launcher_o2));
            resourceMap.put(StyleConstant.WORKSPACE_XML, Integer.valueOf(R.xml.default_workspace_4x5));
            resourceMap.put(StyleConstant.WORKSPACE_SCREEN_OPTIONS_TRANSLATION_Y, Integer.valueOf(R.dimen.customization_cell_layout_translation_y_o2));
            if (!StyleManager.isO2Device()) {
                i = R.drawable.ic_hydrogen_logo;
            }
            resourceMap.put(StyleConstant.SYSTEM_DEFAULT_ICONS_LOGO, Integer.valueOf(i));
            resourceMap.put(StyleConstant.LANDSCAPE_WALLPAPERS, Integer.valueOf(getLandscapeWallpaper(device)));
            resourceMap.put(StyleConstant.PORTRAIT_WALLPAPERS, Integer.valueOf(getPortraitWallpapers(device, 0)));
            resourceMap.put(StyleConstant.WALLPAPER_NAMES, Integer.valueOf(getWallpaperNames(device, 0)));
            resourceMap.put(StyleConstant.WALLPAPER_THUMBNAILS, Integer.valueOf(getWallpaperThumbs(device, 0)));
            resourceMap.put(StyleConstant.DEFAULT_WALLPAPERS, Integer.valueOf(getPortraitWallpapers(device, 0)));
            resourceMap.put(StyleConstant.DEFAULT_WALLPAPER_INDEX, Integer.valueOf(getDefaultWallpaperIndex(device, 1, 0)));
            resourceMap.put(StyleConstant.DEFAULT_LOCK_WALLPAPERS, Integer.valueOf(getPortraitWallpapers(device, 0)));
            resourceMap.put(StyleConstant.DEFAULT_LOCK_WALLPAPER_INDEX, Integer.valueOf(getDefaultWallpaperIndex(device, 0, 0)));
        }
        resourceMap.put(StyleConstant.DEFAULT_SIMPLIFIED_WALLPAPER, Integer.valueOf(getDefaultWallpaper(device, 1)));
        resourceMap.put(StyleConstant.DEFAULT_STANDARD_WALLPAPER, Integer.valueOf(getDefaultWallpaper(device, 0)));
        resourceMap.put(StyleConstant.DEFAULT_WALLPAPER_COLOR, Integer.valueOf(getDefaultWallpaperColor(device)));
        styleResourceInfo.fillStyleResourceInfo(resourceMap);
        styleLoaderCallback.onStyleResourceLoaded(styleResourceInfo);
    }

    @Override // net.oneplus.h2launcher.oos.BaseLoader
    protected void reload() {
    }

    private int getLandscapeWallpaper(String device) {
        char c = 65535;
        switch (device.hashCode()) {
            case 46886805:
                if (device.equals(Utilities.DEVICE_15801)) {
                    c = 0;
                    break;
                }
                break;
            case 46886836:
                if (device.equals(Utilities.DEVICE_15811)) {
                    c = 1;
                    break;
                }
                break;
            case 46916759:
                if (device.equals(Utilities.DEVICE_16859)) {
                    c = 2;
                    break;
                }
                break;
            case 46946387:
                if (device.equals(Utilities.DEVICE_17801)) {
                    c = 3;
                    break;
                }
                break;
            case 46946426:
                if (device.equals(Utilities.DEVICE_17819)) {
                    c = 4;
                    break;
                }
                break;
            case 46976178:
                if (device.equals(Utilities.DEVICE_18801)) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
                return R.array.wallpapers_landscape_8996;
            case 2:
                return R.array.wallpapers_simplified_landscape_16859;
            case 3:
                return R.array.wallpapers_landscape_17801;
            case 4:
            case 5:
                return R.array.wallpapers_landscape_e;
            default:
                return R.array.wallpapers_landscape_18821;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x001d, code lost:
    
        if (r6.equals(net.oneplus.h2launcher.Utilities.DEVICE_15801) != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getPortraitWallpapers(java.lang.String r6, int r7) {
        /*
            r5 = this;
            r2 = 0
            r1 = 1
            if (r7 != r1) goto L15
            r0 = r1
        L5:
            r3 = -1
            int r4 = r6.hashCode()
            switch(r4) {
                case 46886805: goto L17;
                case 46886836: goto L20;
                case 46916759: goto L2a;
                case 46946387: goto L34;
                case 46946426: goto L3e;
                case 46976178: goto L48;
                default: goto Ld;
            }
        Ld:
            r2 = r3
        Le:
            switch(r2) {
                case 0: goto L52;
                case 1: goto L52;
                case 2: goto L56;
                case 3: goto L60;
                case 4: goto L64;
                case 5: goto L64;
                default: goto L11;
            }
        L11:
            r1 = 2131558469(0x7f0d0045, float:1.8742255E38)
        L14:
            return r1
        L15:
            r0 = r2
            goto L5
        L17:
            java.lang.String r1 = "15801"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            goto Le
        L20:
            java.lang.String r2 = "15811"
            boolean r2 = r6.equals(r2)
            if (r2 == 0) goto Ld
            r2 = r1
            goto Le
        L2a:
            java.lang.String r1 = "16859"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            r2 = 2
            goto Le
        L34:
            java.lang.String r1 = "17801"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            r2 = 3
            goto Le
        L3e:
            java.lang.String r1 = "17819"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            r2 = 4
            goto Le
        L48:
            java.lang.String r1 = "18801"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            r2 = 5
            goto Le
        L52:
            r1 = 2131558470(0x7f0d0046, float:1.8742257E38)
            goto L14
        L56:
            if (r0 == 0) goto L5c
            r1 = 2131558477(0x7f0d004d, float:1.874227E38)
            goto L14
        L5c:
            r1 = 2131558479(0x7f0d004f, float:1.8742275E38)
            goto L14
        L60:
            r1 = 2131558468(0x7f0d0044, float:1.8742253E38)
            goto L14
        L64:
            r1 = 2131558471(0x7f0d0047, float:1.8742259E38)
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.oos.StyleResourceLoader.getPortraitWallpapers(java.lang.String, int):int");
    }

    private int getPortraitOverlayWallpapers(String device) {
        char c = 65535;
        switch (device.hashCode()) {
            case 46886805:
                if (device.equals(Utilities.DEVICE_15801)) {
                    c = 0;
                    break;
                }
                break;
            case 46886836:
                if (device.equals(Utilities.DEVICE_15811)) {
                    c = 1;
                    break;
                }
                break;
            case 46916759:
                if (device.equals(Utilities.DEVICE_16859)) {
                    c = 2;
                    break;
                }
                break;
            case 46946387:
                if (device.equals(Utilities.DEVICE_17801)) {
                    c = 3;
                    break;
                }
                break;
            case 46946426:
                if (device.equals(Utilities.DEVICE_17819)) {
                    c = 4;
                    break;
                }
                break;
            case 46976178:
                if (device.equals(Utilities.DEVICE_18801)) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
                return R.array.wallpapers_portrait_overlay_8996;
            case 2:
                return R.array.wallpapers_simplified_portrait_overlay_16859;
            case 3:
                return R.array.wallpapers_portrait_overlay_17801;
            case 4:
            case 5:
                return R.array.wallpapers_portrait_overlay_e;
            default:
                return R.array.wallpapers_portrait_overlay_18821;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x001d, code lost:
    
        if (r6.equals(net.oneplus.h2launcher.Utilities.DEVICE_15801) != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getWallpaperNames(java.lang.String r6, int r7) {
        /*
            r5 = this;
            r2 = 0
            r1 = 1
            if (r7 != r1) goto L15
            r0 = r1
        L5:
            r3 = -1
            int r4 = r6.hashCode()
            switch(r4) {
                case 46886805: goto L17;
                case 46886836: goto L20;
                case 46916759: goto L2a;
                case 46946387: goto L34;
                case 46946426: goto L3e;
                case 46976178: goto L48;
                default: goto Ld;
            }
        Ld:
            r2 = r3
        Le:
            switch(r2) {
                case 0: goto L52;
                case 1: goto L52;
                case 2: goto L56;
                case 3: goto L60;
                case 4: goto L64;
                case 5: goto L64;
                default: goto L11;
            }
        L11:
            r1 = 2131558453(0x7f0d0035, float:1.8742222E38)
        L14:
            return r1
        L15:
            r0 = r2
            goto L5
        L17:
            java.lang.String r1 = "15801"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            goto Le
        L20:
            java.lang.String r2 = "15811"
            boolean r2 = r6.equals(r2)
            if (r2 == 0) goto Ld
            r2 = r1
            goto Le
        L2a:
            java.lang.String r1 = "16859"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            r2 = 2
            goto Le
        L34:
            java.lang.String r1 = "17801"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            r2 = 3
            goto Le
        L3e:
            java.lang.String r1 = "17819"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            r2 = 4
            goto Le
        L48:
            java.lang.String r1 = "18801"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            r2 = 5
            goto Le
        L52:
            r1 = 2131558454(0x7f0d0036, float:1.8742224E38)
            goto L14
        L56:
            if (r0 == 0) goto L5c
            r1 = 2131558456(0x7f0d0038, float:1.8742228E38)
            goto L14
        L5c:
            r1 = 2131558457(0x7f0d0039, float:1.874223E38)
            goto L14
        L60:
            r1 = 2131558452(0x7f0d0034, float:1.874222E38)
            goto L14
        L64:
            r1 = 2131558455(0x7f0d0037, float:1.8742226E38)
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.oos.StyleResourceLoader.getWallpaperNames(java.lang.String, int):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x001d, code lost:
    
        if (r6.equals(net.oneplus.h2launcher.Utilities.DEVICE_15801) != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getWallpaperThumbs(java.lang.String r6, int r7) {
        /*
            r5 = this;
            r2 = 0
            r1 = 1
            if (r7 != r1) goto L15
            r0 = r1
        L5:
            r3 = -1
            int r4 = r6.hashCode()
            switch(r4) {
                case 46886805: goto L17;
                case 46886836: goto L20;
                case 46916759: goto L2a;
                case 46946387: goto L34;
                case 46946426: goto L3e;
                case 46976178: goto L48;
                default: goto Ld;
            }
        Ld:
            r2 = r3
        Le:
            switch(r2) {
                case 0: goto L52;
                case 1: goto L52;
                case 2: goto L56;
                case 3: goto L60;
                case 4: goto L64;
                case 5: goto L64;
                default: goto L11;
            }
        L11:
            r1 = 2131558459(0x7f0d003b, float:1.8742234E38)
        L14:
            return r1
        L15:
            r0 = r2
            goto L5
        L17:
            java.lang.String r1 = "15801"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            goto Le
        L20:
            java.lang.String r2 = "15811"
            boolean r2 = r6.equals(r2)
            if (r2 == 0) goto Ld
            r2 = r1
            goto Le
        L2a:
            java.lang.String r1 = "16859"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            r2 = 2
            goto Le
        L34:
            java.lang.String r1 = "17801"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            r2 = 3
            goto Le
        L3e:
            java.lang.String r1 = "17819"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            r2 = 4
            goto Le
        L48:
            java.lang.String r1 = "18801"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Ld
            r2 = 5
            goto Le
        L52:
            r1 = 2131558460(0x7f0d003c, float:1.8742236E38)
            goto L14
        L56:
            if (r0 == 0) goto L5c
            r1 = 2131558462(0x7f0d003e, float:1.874224E38)
            goto L14
        L5c:
            r1 = 2131558463(0x7f0d003f, float:1.8742243E38)
            goto L14
        L60:
            r1 = 2131558458(0x7f0d003a, float:1.8742232E38)
            goto L14
        L64:
            r1 = 2131558461(0x7f0d003d, float:1.8742238E38)
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.oos.StyleResourceLoader.getWallpaperThumbs(java.lang.String, int):int");
    }

    private int getDefaultWallpaperColor(String device) {
        char c = 65535;
        switch (device.hashCode()) {
            case 46916759:
                if (device.equals(Utilities.DEVICE_16859)) {
                    c = 0;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return R.color.default_wallpaper_color_16859;
            default:
                return getDefaultWallpaperColor(Utilities.DEVICE_16859);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x001f, code lost:
    
        if (r5.equals(net.oneplus.h2launcher.Utilities.DEVICE_16859) != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getDefaultWallpaperIndex(java.lang.String r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = 1
            r1 = 0
            if (r7 != r0) goto L17
        L4:
            r2 = -1
            int r3 = r5.hashCode()
            switch(r3) {
                case 46916759: goto L19;
                default: goto Lc;
            }
        Lc:
            r1 = r2
        Ld:
            switch(r1) {
                case 0: goto L22;
                default: goto L10;
            }
        L10:
            java.lang.String r1 = "16859"
            int r1 = r4.getDefaultWallpaperIndex(r1, r6, r7)
        L16:
            return r1
        L17:
            r0 = r1
            goto L4
        L19:
            java.lang.String r3 = "16859"
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto Lc
            goto Ld
        L22:
            if (r6 != 0) goto L2d
            if (r0 == 0) goto L29
            r1 = 2131689472(0x7f0f0000, float:1.900796E38)
            goto L16
        L29:
            r1 = 2131689476(0x7f0f0004, float:1.9007968E38)
            goto L16
        L2d:
            if (r0 == 0) goto L33
            r1 = 2131689480(0x7f0f0008, float:1.9007977E38)
            goto L16
        L33:
            r1 = 2131689484(0x7f0f000c, float:1.9007985E38)
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.oos.StyleResourceLoader.getDefaultWallpaperIndex(java.lang.String, int, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001f, code lost:
    
        if (r5.equals(net.oneplus.h2launcher.Utilities.DEVICE_16859) != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getDefaultWallpaper(java.lang.String r5, int r6) {
        /*
            r4 = this;
            r0 = 1
            r1 = 0
            if (r6 != r0) goto L17
        L4:
            r2 = -1
            int r3 = r5.hashCode()
            switch(r3) {
                case 46916759: goto L19;
                default: goto Lc;
            }
        Lc:
            r1 = r2
        Ld:
            switch(r1) {
                case 0: goto L22;
                default: goto L10;
            }
        L10:
            java.lang.String r1 = "16859"
            int r1 = r4.getDefaultWallpaper(r1, r6)
        L16:
            return r1
        L17:
            r0 = r1
            goto L4
        L19:
            java.lang.String r3 = "16859"
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto Lc
            goto Ld
        L22:
            if (r0 == 0) goto L28
            r1 = 2130838121(0x7f020269, float:1.7281215E38)
            goto L16
        L28:
            r1 = 2130838125(0x7f02026d, float:1.7281223E38)
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.oos.StyleResourceLoader.getDefaultWallpaper(java.lang.String, int):int");
    }
}
