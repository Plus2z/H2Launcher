package net.oneplus.h2launcher.wallpaper;

import android.app.job.JobParameters;
import android.app.job.JobService;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public abstract class SetWallpaperService extends JobService {
    private JobParameters mJobParameters;
    private String mName;

    protected abstract void onSetWallpaper();

    public SetWallpaperService(String name) {
        this.mName = name;
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        Logger.d(this.mName, "onStartJob#");
        this.mJobParameters = jobParameters;
        if (!SetWallpaperServiceMutex.getInstance().acquire(this.mName)) {
            Logger.i(this.mName, "failed to acquire right for execution, skip execution", this.mName);
        } else {
            try {
                onSetWallpaper();
            } finally {
                SetWallpaperServiceMutex.getInstance().release(this.mName);
            }
        }
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        Logger.d(this.mName, "onStopJob#");
        SetWallpaperServiceMutex.getInstance().release(this.mName);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JobParameters getJobParameters() {
        return this.mJobParameters;
    }
}
