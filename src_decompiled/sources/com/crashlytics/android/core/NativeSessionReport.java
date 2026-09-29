package com.crashlytics.android.core;

import com.crashlytics.android.core.Report;
import io.fabric.sdk.android.Fabric;
import java.io.File;
import java.util.Map;

/* loaded from: classes.dex */
class NativeSessionReport implements Report {
    private final File reportDirectory;

    public NativeSessionReport(File reportDirectory) {
        this.reportDirectory = reportDirectory;
    }

    @Override // com.crashlytics.android.core.Report
    public void remove() {
        for (File file : getFiles()) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Removing native report file at " + file.getPath());
            file.delete();
        }
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Removing native report directory at " + this.reportDirectory);
        this.reportDirectory.delete();
    }

    @Override // com.crashlytics.android.core.Report
    public String getFileName() {
        return null;
    }

    @Override // com.crashlytics.android.core.Report
    public String getIdentifier() {
        return this.reportDirectory.getName();
    }

    @Override // com.crashlytics.android.core.Report
    public File getFile() {
        return null;
    }

    @Override // com.crashlytics.android.core.Report
    public File[] getFiles() {
        return this.reportDirectory.listFiles();
    }

    @Override // com.crashlytics.android.core.Report
    public Map<String, String> getCustomHeaders() {
        return null;
    }

    @Override // com.crashlytics.android.core.Report
    public Report.Type getType() {
        return Report.Type.NATIVE;
    }
}
