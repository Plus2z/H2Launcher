package net.oneplus.h2launcher;

import android.app.job.JobInfo;
import android.app.job.JobService;
import android.content.ComponentName;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import net.oneplus.h2launcher.dynamicui.ColorExtractionService;
import net.oneplus.h2launcher.migrate.MigrateHydrogenWallpaperService;
import net.oneplus.h2launcher.migrate.MigrateOxygenWallpaperService;
import net.oneplus.h2launcher.wallpaper.SetupWallpaperService;

/* loaded from: classes.dex */
public class JobBuilderWrapper {
    private static final Map<Class<? extends JobService>, Integer> sJobServiceList = new HashMap();

    static {
        sJobServiceList.put(SetupWallpaperService.class, 1);
        sJobServiceList.put(MigrateHydrogenWallpaperService.class, 2);
        sJobServiceList.put(MigrateOxygenWallpaperService.class, 3);
        sJobServiceList.put(ColorExtractionService.class, 4);
    }

    private static int getJobId(ComponentName name) {
        for (Class<? extends JobService> clazz : sJobServiceList.keySet()) {
            if (TextUtils.equals(clazz.getName(), name.getClassName())) {
                return sJobServiceList.get(clazz).intValue();
            }
        }
        return 0;
    }

    public static JobInfo.Builder create(ComponentName name) {
        return new JobInfo.Builder(getJobId(name), name).setOverrideDeadline(0L).setRequiredNetworkType(0);
    }
}
