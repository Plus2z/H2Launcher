package com.crashlytics.android.core;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.BackgroundPriorityRunnable;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ReportUploader {
    static final Map<String, String> HEADER_INVALID_CLS_FILE = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
    private static final short[] RETRY_INTERVALS = {10, 20, 30, 60, 120, 300};
    private final String apiKey;
    private final CreateReportSpiCall createReportCall;
    private final Object fileAccessLock = new Object();
    private final HandlingExceptionCheck handlingExceptionCheck;
    private final ReportFilesProvider reportFilesProvider;
    private Thread uploadThread;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface HandlingExceptionCheck {
        boolean isHandlingException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface ReportFilesProvider {
        File[] getCompleteSessionFiles();

        File[] getInvalidSessionFiles();

        File[] getNativeReportFiles();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface SendCheck {
        boolean canSendReports();
    }

    /* loaded from: classes.dex */
    static final class AlwaysSendCheck implements SendCheck {
        @Override // com.crashlytics.android.core.ReportUploader.SendCheck
        public boolean canSendReports() {
            return true;
        }
    }

    public ReportUploader(String apiKey, CreateReportSpiCall createReportCall, ReportFilesProvider reportFilesProvider, HandlingExceptionCheck handlingExceptionCheck) {
        if (createReportCall == null) {
            throw new IllegalArgumentException("createReportCall must not be null.");
        }
        this.createReportCall = createReportCall;
        this.apiKey = apiKey;
        this.reportFilesProvider = reportFilesProvider;
        this.handlingExceptionCheck = handlingExceptionCheck;
    }

    public synchronized void uploadReports(float delay, SendCheck sendCheck) {
        if (this.uploadThread != null) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Report upload has already been started.");
        } else {
            Worker uploadWorker = new Worker(delay, sendCheck);
            this.uploadThread = new Thread(uploadWorker, "Crashlytics Report Uploader");
            this.uploadThread.start();
        }
    }

    boolean isUploading() {
        return this.uploadThread != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean forceUpload(Report report) {
        boolean removed = false;
        synchronized (this.fileAccessLock) {
            try {
                CreateReportRequest requestData = new CreateReportRequest(this.apiKey, report);
                boolean sent = this.createReportCall.invoke(requestData);
                Fabric.getLogger().i(CrashlyticsCore.TAG, "Crashlytics report upload " + (sent ? "complete: " : "FAILED: ") + report.getIdentifier());
                if (sent) {
                    report.remove();
                    removed = true;
                }
            } catch (Exception e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Error occurred sending report " + report, e);
            }
        }
        return removed;
    }

    List<Report> findReports() {
        File[] clsFiles;
        File[] invalidClsFiles;
        File[] nativeReportFiles;
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Checking for crash reports...");
        synchronized (this.fileAccessLock) {
            clsFiles = this.reportFilesProvider.getCompleteSessionFiles();
            invalidClsFiles = this.reportFilesProvider.getInvalidSessionFiles();
            nativeReportFiles = this.reportFilesProvider.getNativeReportFiles();
        }
        List<Report> reports = new LinkedList<>();
        if (clsFiles != null) {
            for (File file : clsFiles) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Found crash report " + file.getPath());
                reports.add(new SessionReport(file));
            }
        }
        Map<String, List<File>> invalidSessionFiles = new HashMap<>();
        if (invalidClsFiles != null) {
            for (File invalidFile : invalidClsFiles) {
                String sessionId = CrashlyticsController.getSessionIdFromSessionFile(invalidFile);
                if (!invalidSessionFiles.containsKey(sessionId)) {
                    invalidSessionFiles.put(sessionId, new LinkedList<>());
                }
                invalidSessionFiles.get(sessionId).add(invalidFile);
            }
        }
        for (String key : invalidSessionFiles.keySet()) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Found invalid session: " + key);
            List<File> invalidFiles = invalidSessionFiles.get(key);
            reports.add(new InvalidSessionReport(key, (File[]) invalidFiles.toArray(new File[invalidFiles.size()])));
        }
        if (nativeReportFiles != null) {
            for (File dir : nativeReportFiles) {
                reports.add(new NativeSessionReport(dir));
            }
        }
        if (reports.isEmpty()) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "No reports found.");
        }
        return reports;
    }

    /* loaded from: classes.dex */
    private class Worker extends BackgroundPriorityRunnable {
        private final float delay;
        private final SendCheck sendCheck;

        Worker(float delay, SendCheck sendCheck) {
            this.delay = delay;
            this.sendCheck = sendCheck;
        }

        @Override // io.fabric.sdk.android.services.common.BackgroundPriorityRunnable
        public void onRun() {
            try {
                attemptUploadWithRetry();
            } catch (Exception e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "An unexpected error occurred while attempting to upload crash reports.", e);
            }
            ReportUploader.this.uploadThread = null;
        }

        private void attemptUploadWithRetry() {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Starting report processing in " + this.delay + " second(s)...");
            if (this.delay > 0.0f) {
                try {
                    Thread.sleep(this.delay * 1000.0f);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            List<Report> reports = ReportUploader.this.findReports();
            if (!ReportUploader.this.handlingExceptionCheck.isHandlingException()) {
                if (!reports.isEmpty() && !this.sendCheck.canSendReports()) {
                    Fabric.getLogger().d(CrashlyticsCore.TAG, "User declined to send. Removing " + reports.size() + " Report(s).");
                    for (Report report : reports) {
                        report.remove();
                    }
                    return;
                }
                int retryCount = 0;
                while (!reports.isEmpty() && !ReportUploader.this.handlingExceptionCheck.isHandlingException()) {
                    Fabric.getLogger().d(CrashlyticsCore.TAG, "Attempting to send " + reports.size() + " report(s)");
                    for (Report report2 : reports) {
                        ReportUploader.this.forceUpload(report2);
                    }
                    reports = ReportUploader.this.findReports();
                    if (!reports.isEmpty()) {
                        int retryCount2 = retryCount + 1;
                        long interval = ReportUploader.RETRY_INTERVALS[Math.min(retryCount, ReportUploader.RETRY_INTERVALS.length - 1)];
                        Fabric.getLogger().d(CrashlyticsCore.TAG, "Report submisson: scheduling delayed retry in " + interval + " seconds");
                        try {
                            Thread.sleep(1000 * interval);
                            retryCount = retryCount2;
                        } catch (InterruptedException e2) {
                            Thread.currentThread().interrupt();
                            return;
                        }
                    }
                }
            }
        }
    }
}
