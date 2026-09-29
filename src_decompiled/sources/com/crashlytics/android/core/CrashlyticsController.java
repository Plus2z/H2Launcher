package com.crashlytics.android.core;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.EventLogger;
import com.crashlytics.android.core.CrashPromptDialog;
import com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler;
import com.crashlytics.android.core.LogFileManager;
import com.crashlytics.android.core.ReportUploader;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.Crash;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.persistence.FileStore;
import io.fabric.sdk.android.services.settings.FeaturesSettingsData;
import io.fabric.sdk.android.services.settings.PromptSettingsData;
import io.fabric.sdk.android.services.settings.SessionSettingsData;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.SettingsData;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CrashlyticsController {
    private static final int ANALYZER_VERSION = 1;
    private static final String COLLECT_CUSTOM_KEYS = "com.crashlytics.CollectCustomKeys";
    private static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private static final String EVENT_TYPE_CRASH = "crash";
    private static final String EVENT_TYPE_LOGGED = "error";
    static final String FATAL_SESSION_DIR = "fatal-sessions";
    static final String FIREBASE_ANALYTICS_ORIGIN_CRASHLYTICS = "clx";
    static final String FIREBASE_APPLICATION_EXCEPTION = "_ae";
    static final String FIREBASE_CRASH_TYPE = "fatal";
    static final int FIREBASE_CRASH_TYPE_FATAL = 1;
    static final String FIREBASE_REALTIME = "_r";
    static final String FIREBASE_TIMESTAMP = "timestamp";
    private static final String GENERATOR_FORMAT = "Crashlytics Android SDK/%s";
    static final String INVALID_CLS_CACHE_DIR = "invalidClsFiles";
    static final int MAX_INVALID_SESSIONS = 4;
    private static final int MAX_LOCAL_LOGGED_EXCEPTIONS = 64;
    static final int MAX_OPEN_SESSIONS = 8;
    static final int MAX_STACK_SIZE = 1024;
    static final String NONFATAL_SESSION_DIR = "nonfatal-sessions";
    static final int NUM_STACK_REPETITIONS_ALLOWED = 10;
    static final String SESSION_EVENT_MISSING_BINARY_IMGS_TAG = "SessionMissingBinaryImages";
    static final String SESSION_FATAL_TAG = "SessionCrash";
    private static final int SESSION_ID_LENGTH = 35;
    static final String SESSION_JSON_SUFFIX = ".json";
    static final String SESSION_NON_FATAL_TAG = "SessionEvent";
    private static final boolean SHOULD_PROMPT_BEFORE_SENDING_REPORTS_DEFAULT = false;
    private final AppData appData;
    private final AppMeasurementEventListenerRegistrar appMeasurementEventListenerRegistrar;
    private final CrashlyticsBackgroundWorker backgroundWorker;
    private CrashlyticsUncaughtExceptionHandler crashHandler;
    private final CrashlyticsCore crashlyticsCore;
    private final DevicePowerStateListener devicePowerStateListener;
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    private final FileStore fileStore;
    private final EventLogger firebaseAnalyticsLogger;
    private final ReportUploader.HandlingExceptionCheck handlingExceptionCheck;
    private final HttpRequestFactory httpRequestFactory;
    private final IdManager idManager;
    private final LogFileDirectoryProvider logFileDirectoryProvider;
    private final LogFileManager logFileManager;
    private final PreferenceManager preferenceManager;
    private final ReportUploader.ReportFilesProvider reportFilesProvider;
    private final StackTraceTrimmingStrategy stackTraceTrimmingStrategy;
    private final String unityVersion;
    static final String SESSION_BEGIN_TAG = "BeginSession";
    static final FilenameFilter SESSION_BEGIN_FILE_FILTER = new FileNameContainsFilter(SESSION_BEGIN_TAG) { // from class: com.crashlytics.android.core.CrashlyticsController.1
        @Override // com.crashlytics.android.core.CrashlyticsController.FileNameContainsFilter, java.io.FilenameFilter
        public boolean accept(File dir, String filename) {
            return super.accept(dir, filename) && filename.endsWith(ClsFileOutputStream.SESSION_FILE_EXTENSION);
        }
    };
    static final FilenameFilter SESSION_FILE_FILTER = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsController.2
        @Override // java.io.FilenameFilter
        public boolean accept(File dir, String filename) {
            return filename.length() == ClsFileOutputStream.SESSION_FILE_EXTENSION.length() + 35 && filename.endsWith(ClsFileOutputStream.SESSION_FILE_EXTENSION);
        }
    };
    static final FileFilter SESSION_DIRECTORY_FILTER = new FileFilter() { // from class: com.crashlytics.android.core.CrashlyticsController.3
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return file.isDirectory() && file.getName().length() == 35;
        }
    };
    static final Comparator<File> LARGEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.crashlytics.android.core.CrashlyticsController.4
        @Override // java.util.Comparator
        public int compare(File file1, File file2) {
            return file2.getName().compareTo(file1.getName());
        }
    };
    static final Comparator<File> SMALLEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.crashlytics.android.core.CrashlyticsController.5
        @Override // java.util.Comparator
        public int compare(File file1, File file2) {
            return file1.getName().compareTo(file2.getName());
        }
    };
    private static final Pattern SESSION_FILE_PATTERN = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
    private static final Map<String, String> SEND_AT_CRASHTIME_HEADER = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
    static final String SESSION_USER_TAG = "SessionUser";
    static final String SESSION_APP_TAG = "SessionApp";
    static final String SESSION_OS_TAG = "SessionOS";
    static final String SESSION_DEVICE_TAG = "SessionDevice";
    private static final String[] INITIAL_SESSION_PART_TAGS = {SESSION_USER_TAG, SESSION_APP_TAG, SESSION_OS_TAG, SESSION_DEVICE_TAG};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface CodedOutputStreamWriteAction {
        void writeTo(CodedOutputStream codedOutputStream) throws Exception;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface FileOutputStreamWriteAction {
        void writeTo(FileOutputStream fileOutputStream) throws Exception;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class FileNameContainsFilter implements FilenameFilter {
        private final String string;

        public FileNameContainsFilter(String s) {
            this.string = s;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File dir, String filename) {
            return filename.contains(this.string) && !filename.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SessionPartFileFilter implements FilenameFilter {
        private final String sessionId;

        public SessionPartFileFilter(String sessionId) {
            this.sessionId = sessionId;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String fileName) {
            return (fileName.equals(new StringBuilder().append(this.sessionId).append(ClsFileOutputStream.SESSION_FILE_EXTENSION).toString()) || !fileName.contains(this.sessionId) || fileName.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION)) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AnySessionPartFileFilter implements FilenameFilter {
        private AnySessionPartFileFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String fileName) {
            return !CrashlyticsController.SESSION_FILE_FILTER.accept(file, fileName) && CrashlyticsController.SESSION_FILE_PATTERN.matcher(fileName).matches();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class InvalidPartFileFilter implements FilenameFilter {
        InvalidPartFileFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String fileName) {
            return ClsFileOutputStream.TEMP_FILENAME_FILTER.accept(file, fileName) || fileName.contains(CrashlyticsController.SESSION_EVENT_MISSING_BINARY_IMGS_TAG);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CrashlyticsController(CrashlyticsCore crashlyticsCore, CrashlyticsBackgroundWorker backgroundWorker, HttpRequestFactory httpRequestFactory, IdManager idManager, PreferenceManager preferenceManager, FileStore fileStore, AppData appData, UnityVersionProvider unityVersionProvider, AppMeasurementEventListenerRegistrar appMeasurementEventListenerRegistrar, EventLogger firebaseAnalyticsLogger) {
        this.crashlyticsCore = crashlyticsCore;
        this.backgroundWorker = backgroundWorker;
        this.httpRequestFactory = httpRequestFactory;
        this.idManager = idManager;
        this.preferenceManager = preferenceManager;
        this.fileStore = fileStore;
        this.appData = appData;
        this.unityVersion = unityVersionProvider.getUnityVersion();
        this.appMeasurementEventListenerRegistrar = appMeasurementEventListenerRegistrar;
        this.firebaseAnalyticsLogger = firebaseAnalyticsLogger;
        Context context = crashlyticsCore.getContext();
        this.logFileDirectoryProvider = new LogFileDirectoryProvider(fileStore);
        this.logFileManager = new LogFileManager(context, this.logFileDirectoryProvider);
        this.reportFilesProvider = new ReportUploaderFilesProvider();
        this.handlingExceptionCheck = new ReportUploaderHandlingExceptionCheck();
        this.devicePowerStateListener = new DevicePowerStateListener(context);
        this.stackTraceTrimmingStrategy = new MiddleOutFallbackStrategy(1024, new RemoveRepeatsStrategy(10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enableExceptionHandling(Thread.UncaughtExceptionHandler defaultHandler, boolean firebaseCrashlyticsClientFlag) {
        openSession();
        CrashlyticsUncaughtExceptionHandler.CrashListener crashListener = new CrashlyticsUncaughtExceptionHandler.CrashListener() { // from class: com.crashlytics.android.core.CrashlyticsController.6
            @Override // com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.CrashListener
            public void onUncaughtException(CrashlyticsUncaughtExceptionHandler.SettingsDataProvider settingsDataProvider, Thread thread, Throwable ex, boolean firebaseCrashlyticsClientFlag2) {
                CrashlyticsController.this.handleUncaughtException(settingsDataProvider, thread, ex, firebaseCrashlyticsClientFlag2);
            }
        };
        this.crashHandler = new CrashlyticsUncaughtExceptionHandler(crashListener, new DefaultSettingsDataProvider(), firebaseCrashlyticsClientFlag, defaultHandler);
        Thread.setDefaultUncaughtExceptionHandler(this.crashHandler);
    }

    synchronized void handleUncaughtException(final CrashlyticsUncaughtExceptionHandler.SettingsDataProvider settingsDataProvider, final Thread thread, final Throwable ex, final boolean firebaseCrashlyticsClientFlag) {
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Crashlytics is handling uncaught exception \"" + ex + "\" from thread " + thread.getName());
        this.devicePowerStateListener.dispose();
        final Date time = new Date();
        this.backgroundWorker.submitAndWait(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.7
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                CrashlyticsController.this.crashlyticsCore.createCrashMarker();
                CrashlyticsController.this.writeFatal(time, thread, ex);
                SettingsData settingsData = settingsDataProvider.getSettingsData();
                SessionSettingsData sessionSettings = null;
                FeaturesSettingsData featuresSettings = null;
                if (settingsData != null) {
                    sessionSettings = settingsData.sessionData;
                    featuresSettings = settingsData.featuresData;
                }
                boolean firebaseCrashlyticsEnabledSetting = featuresSettings == null || featuresSettings.firebaseCrashlyticsEnabled;
                if (firebaseCrashlyticsEnabledSetting || firebaseCrashlyticsClientFlag) {
                    CrashlyticsController.this.recordFatalFirebaseEvent(time.getTime());
                }
                CrashlyticsController.this.doCloseSessions(sessionSettings);
                CrashlyticsController.this.doOpenSession();
                if (sessionSettings != null) {
                    CrashlyticsController.this.trimSessionFiles(sessionSettings.maxCompleteSessionsCount);
                }
                if (!CrashlyticsController.this.shouldPromptUserBeforeSendingCrashReports(settingsData)) {
                    CrashlyticsController.this.sendSessionReports(settingsData);
                    return null;
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void submitAllReports(float delay, SettingsData settingsData) {
        if (settingsData == null) {
            Fabric.getLogger().w(CrashlyticsCore.TAG, "Could not send reports. Settings are not available.");
            return;
        }
        String reportsUrl = settingsData.appData.reportsUrl;
        String ndkReportsUrl = settingsData.appData.ndkReportsUrl;
        CreateReportSpiCall call = getCreateReportSpiCall(reportsUrl, ndkReportsUrl);
        ReportUploader.SendCheck approvalCheck = shouldPromptUserBeforeSendingCrashReports(settingsData) ? new PrivacyDialogCheck(this.crashlyticsCore, this.preferenceManager, settingsData.promptData) : new ReportUploader.AlwaysSendCheck();
        new ReportUploader(this.appData.apiKey, call, this.reportFilesProvider, this.handlingExceptionCheck).uploadReports(delay, approvalCheck);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeToLog(final long timestamp, final String msg) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.8
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (!CrashlyticsController.this.isHandlingException()) {
                    CrashlyticsController.this.logFileManager.writeToLog(timestamp, msg);
                    return null;
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeNonFatalException(final Thread thread, final Throwable ex) {
        final Date now = new Date();
        this.backgroundWorker.submit(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsController.9
            @Override // java.lang.Runnable
            public void run() {
                if (!CrashlyticsController.this.isHandlingException()) {
                    CrashlyticsController.this.doWriteNonFatal(now, thread, ex);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cacheUserData(final String userId, final String userName, final String userEmail) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.10
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                String currentSessionId = CrashlyticsController.this.getCurrentSessionId();
                new MetaDataStore(CrashlyticsController.this.getFilesDir()).writeUserData(currentSessionId, new UserMetaData(userId, userName, userEmail));
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cacheKeyData(final Map<String, String> keyData) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.11
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                String currentSessionId = CrashlyticsController.this.getCurrentSessionId();
                new MetaDataStore(CrashlyticsController.this.getFilesDir()).writeKeyData(currentSessionId, keyData);
                return null;
            }
        });
    }

    void openSession() {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.12
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                CrashlyticsController.this.doOpenSession();
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCurrentSessionId() {
        File[] sessionBeginFiles = listSortedSessionBeginFiles();
        if (sessionBeginFiles.length > 0) {
            return getSessionIdFromSessionFile(sessionBeginFiles[0]);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPreviousSessionId() {
        File[] sessionBeginFiles = listSortedSessionBeginFiles();
        if (sessionBeginFiles.length > 1) {
            return getSessionIdFromSessionFile(sessionBeginFiles[1]);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getSessionIdFromSessionFile(File sessionFile) {
        return sessionFile.getName().substring(0, 35);
    }

    boolean hasOpenSession() {
        return listSessionBeginFiles().length > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean finalizeSessions(final SessionSettingsData sessionSettingsData) {
        return ((Boolean) this.backgroundWorker.submitAndWait(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsController.13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws Exception {
                if (CrashlyticsController.this.isHandlingException()) {
                    Fabric.getLogger().d(CrashlyticsCore.TAG, "Skipping session finalization because a crash has already occurred.");
                    return Boolean.FALSE;
                }
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Finalizing previously open sessions.");
                CrashlyticsController.this.doCloseSessions(sessionSettingsData, true);
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Closed all previously open sessions");
                return Boolean.TRUE;
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doOpenSession() throws Exception {
        Date startedAt = new Date();
        String sessionIdentifier = new CLSUUID(this.idManager).toString();
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Opening a new session with ID " + sessionIdentifier);
        writeBeginSession(sessionIdentifier, startedAt);
        writeSessionApp(sessionIdentifier);
        writeSessionOS(sessionIdentifier);
        writeSessionDevice(sessionIdentifier);
        this.logFileManager.setCurrentSession(sessionIdentifier);
    }

    void doCloseSessions(SessionSettingsData sessionSettingsData) throws Exception {
        doCloseSessions(sessionSettingsData, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doCloseSessions(SessionSettingsData sessionSettingsData, boolean excludeCurrent) throws Exception {
        int offset = excludeCurrent ? 1 : 0;
        trimOpenSessions(offset + 8);
        File[] sessionBeginFiles = listSortedSessionBeginFiles();
        if (sessionBeginFiles.length <= offset) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "No open sessions to be closed.");
            return;
        }
        String mostRecentSessionIdToClose = getSessionIdFromSessionFile(sessionBeginFiles[offset]);
        writeSessionUser(mostRecentSessionIdToClose);
        if (sessionSettingsData == null) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Unable to close session. Settings are not loaded.");
        } else {
            closeOpenSessions(sessionBeginFiles, offset, sessionSettingsData.maxCustomExceptionEvents);
        }
    }

    private void closeOpenSessions(File[] sessionBeginFiles, int beginIndex, int maxLoggedExceptionsCount) {
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Closing open sessions.");
        for (int i = beginIndex; i < sessionBeginFiles.length; i++) {
            File sessionBeginFile = sessionBeginFiles[i];
            String sessionIdentifier = getSessionIdFromSessionFile(sessionBeginFile);
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Closing session: " + sessionIdentifier);
            writeSessionPartsToSessionFile(sessionBeginFile, sessionIdentifier, maxLoggedExceptionsCount);
        }
    }

    private void closeWithoutRenamingOrLog(ClsFileOutputStream fos) {
        if (fos != null) {
            try {
                fos.closeInProgressStream();
            } catch (IOException ex) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Error closing session file stream in the presence of an exception", ex);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recursiveDelete(Set<File> files) {
        for (File f : files) {
            recursiveDelete(f);
        }
    }

    private void recursiveDelete(File f) {
        if (f.isDirectory()) {
            for (File s : f.listFiles()) {
                recursiveDelete(s);
            }
        }
        f.delete();
    }

    private void deleteSessionPartFilesFor(String sessionId) {
        for (File file : listSessionPartFilesFor(sessionId)) {
            file.delete();
        }
    }

    private File[] listSessionPartFilesFor(String sessionId) {
        return listFilesMatching(new SessionPartFileFilter(sessionId));
    }

    File[] listCompleteSessionFiles() {
        List<File> completeSessionFiles = new LinkedList<>();
        Collections.addAll(completeSessionFiles, listFilesMatching(getFatalSessionFilesDir(), SESSION_FILE_FILTER));
        Collections.addAll(completeSessionFiles, listFilesMatching(getNonFatalSessionFilesDir(), SESSION_FILE_FILTER));
        Collections.addAll(completeSessionFiles, listFilesMatching(getFilesDir(), SESSION_FILE_FILTER));
        return (File[]) completeSessionFiles.toArray(new File[completeSessionFiles.size()]);
    }

    File[] listNativeSessionFileDirectories() {
        return listFilesMatching(SESSION_DIRECTORY_FILTER);
    }

    File[] listSessionBeginFiles() {
        return listFilesMatching(SESSION_BEGIN_FILE_FILTER);
    }

    private File[] listSortedSessionBeginFiles() {
        File[] sessionBeginFiles = listSessionBeginFiles();
        Arrays.sort(sessionBeginFiles, LARGEST_FILE_NAME_FIRST);
        return sessionBeginFiles;
    }

    private File[] listFilesMatching(FileFilter filter) {
        return ensureFileArrayNotNull(getFilesDir().listFiles(filter));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File[] listFilesMatching(FilenameFilter filter) {
        return listFilesMatching(getFilesDir(), filter);
    }

    private File[] listFilesMatching(File directory, FilenameFilter filter) {
        return ensureFileArrayNotNull(directory.listFiles(filter));
    }

    private File[] listFiles(File directory) {
        return ensureFileArrayNotNull(directory.listFiles());
    }

    private File[] ensureFileArrayNotNull(File[] files) {
        return files == null ? new File[0] : files;
    }

    private void trimSessionEventFiles(String sessionId, int limit) {
        Utils.capFileCount(getFilesDir(), new FileNameContainsFilter(sessionId + SESSION_NON_FATAL_TAG), limit, SMALLEST_FILE_NAME_FIRST);
    }

    void trimSessionFiles(int maxCompleteSessionsCount) {
        int remaining = maxCompleteSessionsCount - Utils.capFileCount(getFatalSessionFilesDir(), maxCompleteSessionsCount, SMALLEST_FILE_NAME_FIRST);
        Utils.capFileCount(getFilesDir(), SESSION_FILE_FILTER, remaining - Utils.capFileCount(getNonFatalSessionFilesDir(), remaining, SMALLEST_FILE_NAME_FIRST), SMALLEST_FILE_NAME_FIRST);
    }

    private void trimOpenSessions(int maxOpenSessionCount) {
        Set<String> sessionIdsToKeep = new HashSet<>();
        File[] beginSessionFiles = listSortedSessionBeginFiles();
        int count = Math.min(maxOpenSessionCount, beginSessionFiles.length);
        for (int i = 0; i < count; i++) {
            String sessionId = getSessionIdFromSessionFile(beginSessionFiles[i]);
            sessionIdsToKeep.add(sessionId);
        }
        this.logFileManager.discardOldLogFiles(sessionIdsToKeep);
        retainSessions(listFilesMatching(new AnySessionPartFileFilter()), sessionIdsToKeep);
    }

    private void retainSessions(File[] files, Set<String> sessionIdsToKeep) {
        for (File sessionPartFile : files) {
            String fileName = sessionPartFile.getName();
            Matcher matcher = SESSION_FILE_PATTERN.matcher(fileName);
            if (!matcher.matches()) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Deleting unknown file: " + fileName);
                sessionPartFile.delete();
            } else {
                String sessionId = matcher.group(1);
                if (!sessionIdsToKeep.contains(sessionId)) {
                    Fabric.getLogger().d(CrashlyticsCore.TAG, "Trimming session file: " + fileName);
                    sessionPartFile.delete();
                }
            }
        }
    }

    private File[] getTrimmedNonFatalFiles(String sessionId, File[] nonFatalFiles, int maxLoggedExceptionsCount) {
        if (nonFatalFiles.length > maxLoggedExceptionsCount) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, String.format(Locale.US, "Trimming down to %d logged exceptions.", Integer.valueOf(maxLoggedExceptionsCount)));
            trimSessionEventFiles(sessionId, maxLoggedExceptionsCount);
            return listFilesMatching(new FileNameContainsFilter(sessionId + SESSION_NON_FATAL_TAG));
        }
        return nonFatalFiles;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cleanInvalidTempFiles() {
        this.backgroundWorker.submit(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsController.14
            @Override // java.lang.Runnable
            public void run() {
                CrashlyticsController.this.doCleanInvalidTempFiles(CrashlyticsController.this.listFilesMatching(new InvalidPartFileFilter()));
            }
        });
    }

    void doCleanInvalidTempFiles(File[] invalidFiles) {
        final Set<String> invalidSessionIds = new HashSet<>();
        for (File invalidFile : invalidFiles) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Found invalid session part file: " + invalidFile);
            invalidSessionIds.add(getSessionIdFromSessionFile(invalidFile));
        }
        if (!invalidSessionIds.isEmpty()) {
            File invalidFilesDir = getInvalidFilesDir();
            if (!invalidFilesDir.exists()) {
                invalidFilesDir.mkdir();
            }
            FilenameFilter invalidSessionFilter = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsController.15
                @Override // java.io.FilenameFilter
                public boolean accept(File dir, String filename) {
                    if (filename.length() < 35) {
                        return false;
                    }
                    return invalidSessionIds.contains(filename.substring(0, 35));
                }
            };
            for (File sessionFile : listFilesMatching(invalidSessionFilter)) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Moving session file: " + sessionFile);
                if (!sessionFile.renameTo(new File(invalidFilesDir, sessionFile.getName()))) {
                    Fabric.getLogger().d(CrashlyticsCore.TAG, "Could not move session file. Deleting " + sessionFile);
                    sessionFile.delete();
                }
            }
            trimInvalidSessionFiles();
        }
    }

    private void trimInvalidSessionFiles() {
        File invalidFilesDir = getInvalidFilesDir();
        if (invalidFilesDir.exists()) {
            File[] oldInvalidFiles = listFilesMatching(invalidFilesDir, new InvalidPartFileFilter());
            Arrays.sort(oldInvalidFiles, Collections.reverseOrder());
            Set<String> sessionIdsToKeep = new HashSet<>();
            for (int i = 0; i < oldInvalidFiles.length && sessionIdsToKeep.size() < 4; i++) {
                sessionIdsToKeep.add(getSessionIdFromSessionFile(oldInvalidFiles[i]));
            }
            retainSessions(listFiles(invalidFilesDir), sessionIdsToKeep);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finalizeMostRecentNativeCrash(Context context, File latestDir, String previousSessionId) throws IOException {
        byte[] minidump = NativeFileUtils.minidumpFromDirectory(latestDir);
        byte[] metadata = NativeFileUtils.metadataJsonFromDirectory(latestDir);
        byte[] binaryImages = NativeFileUtils.binaryImagesJsonFromDirectory(latestDir, context);
        if (minidump == null || minidump.length == 0) {
            Fabric.getLogger().w(CrashlyticsCore.TAG, "No minidump data found in directory " + latestDir);
            return;
        }
        recordFatalExceptionAnswersEvent(previousSessionId, "<native-crash: minidump>");
        byte[] sessionMetadata = readFile(previousSessionId, "BeginSession.json");
        byte[] appMetadata = readFile(previousSessionId, "SessionApp.json");
        byte[] deviceMetadata = readFile(previousSessionId, "SessionDevice.json");
        byte[] osMetadata = readFile(previousSessionId, "SessionOS.json");
        byte[] userMetadata = NativeFileUtils.readFile(new MetaDataStore(getFilesDir()).getUserDataFileForSession(previousSessionId));
        LogFileManager previousSessionLogManager = new LogFileManager(this.crashlyticsCore.getContext(), this.logFileDirectoryProvider, previousSessionId);
        byte[] logs = previousSessionLogManager.getBytesForLog();
        previousSessionLogManager.clearLog();
        byte[] keys = NativeFileUtils.readFile(new MetaDataStore(getFilesDir()).getKeysFileForSession(previousSessionId));
        File nativeSessionDirectory = new File(this.fileStore.getFilesDir(), previousSessionId);
        if (!nativeSessionDirectory.mkdir()) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Couldn't create native sessions directory");
            return;
        }
        gzipIfNotEmpty(minidump, new File(nativeSessionDirectory, "minidump"));
        gzipIfNotEmpty(metadata, new File(nativeSessionDirectory, "metadata"));
        gzipIfNotEmpty(binaryImages, new File(nativeSessionDirectory, "binaryImages"));
        gzipIfNotEmpty(sessionMetadata, new File(nativeSessionDirectory, SettingsJsonConstants.SESSION_KEY));
        gzipIfNotEmpty(appMetadata, new File(nativeSessionDirectory, "app"));
        gzipIfNotEmpty(deviceMetadata, new File(nativeSessionDirectory, "device"));
        gzipIfNotEmpty(osMetadata, new File(nativeSessionDirectory, "os"));
        gzipIfNotEmpty(userMetadata, new File(nativeSessionDirectory, "user"));
        gzipIfNotEmpty(logs, new File(nativeSessionDirectory, "logs"));
        gzipIfNotEmpty(keys, new File(nativeSessionDirectory, "keys"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean finalizeNativeReport(final CrashlyticsNdkData ndkData) {
        if (ndkData == null) {
            return true;
        }
        return ((Boolean) this.backgroundWorker.submitAndWait(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsController.16
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws Exception {
                File latestDir;
                TreeSet<File> timestampedNativeDirectories = ndkData.timestampedDirectories;
                String previousSessionId = CrashlyticsController.this.getPreviousSessionId();
                if (previousSessionId != null && !timestampedNativeDirectories.isEmpty() && (latestDir = timestampedNativeDirectories.first()) != null) {
                    CrashlyticsController.this.finalizeMostRecentNativeCrash(CrashlyticsController.this.crashlyticsCore.getContext(), latestDir, previousSessionId);
                }
                CrashlyticsController.this.recursiveDelete(timestampedNativeDirectories);
                return Boolean.TRUE;
            }
        })).booleanValue();
    }

    private void gzipIfNotEmpty(byte[] content, File path) throws IOException {
        if (content != null && content.length > 0) {
            gzip(content, path);
        }
    }

    private void gzip(byte[] bytes, File path) throws IOException {
        GZIPOutputStream gos;
        GZIPOutputStream gos2 = null;
        try {
            gos = new GZIPOutputStream(new FileOutputStream(path));
        } catch (Throwable th) {
            th = th;
        }
        try {
            gos.write(bytes);
            gos.finish();
            CommonUtils.closeQuietly(gos);
        } catch (Throwable th2) {
            th = th2;
            gos2 = gos;
            CommonUtils.closeQuietly(gos2);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeFatal(Date time, Thread thread, Throwable ex) {
        ClsFileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            try {
                String currentSessionId = getCurrentSessionId();
                if (currentSessionId == null) {
                    Fabric.getLogger().e(CrashlyticsCore.TAG, "Tried to write a fatal exception while no session was open.", null);
                    CommonUtils.flushOrLog(null, "Failed to flush to session begin file.");
                    CommonUtils.closeOrLog(null, "Failed to close fatal exception file output stream.");
                } else {
                    recordFatalExceptionAnswersEvent(currentSessionId, ex.getClass().getName());
                    ClsFileOutputStream fos2 = new ClsFileOutputStream(getFilesDir(), currentSessionId + SESSION_FATAL_TAG);
                    try {
                        cos = CodedOutputStream.newInstance(fos2);
                        writeSessionEvent(cos, time, thread, ex, EVENT_TYPE_CRASH, true);
                        CommonUtils.flushOrLog(cos, "Failed to flush to session begin file.");
                        CommonUtils.closeOrLog(fos2, "Failed to close fatal exception file output stream.");
                        fos = fos2;
                    } catch (Exception e) {
                        e = e;
                        fos = fos2;
                        Fabric.getLogger().e(CrashlyticsCore.TAG, "An error occurred in the fatal exception logger", e);
                        CommonUtils.flushOrLog(cos, "Failed to flush to session begin file.");
                        CommonUtils.closeOrLog(fos, "Failed to close fatal exception file output stream.");
                    } catch (Throwable th) {
                        th = th;
                        fos = fos2;
                        CommonUtils.flushOrLog(cos, "Failed to flush to session begin file.");
                        CommonUtils.closeOrLog(fos, "Failed to close fatal exception file output stream.");
                        throw th;
                    }
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doWriteNonFatal(Date time, Thread thread, Throwable ex) {
        ClsFileOutputStream fos;
        String currentSessionId = getCurrentSessionId();
        if (currentSessionId == null) {
            Fabric.getLogger().e(CrashlyticsCore.TAG, "Tried to write a non-fatal exception while no session was open.", null);
            return;
        }
        recordLoggedExceptionAnswersEvent(currentSessionId, ex.getClass().getName());
        ClsFileOutputStream fos2 = null;
        CodedOutputStream cos = null;
        try {
            try {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Crashlytics is logging non-fatal exception \"" + ex + "\" from thread " + thread.getName());
                String counterString = CommonUtils.padWithZerosToMaxIntWidth(this.eventCounter.getAndIncrement());
                String nonFatalFileName = currentSessionId + SESSION_NON_FATAL_TAG + counterString;
                fos = new ClsFileOutputStream(getFilesDir(), nonFatalFileName);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            try {
                cos = CodedOutputStream.newInstance(fos);
                writeSessionEvent(cos, time, thread, ex, EVENT_TYPE_LOGGED, false);
                CommonUtils.flushOrLog(cos, "Failed to flush to non-fatal file.");
                CommonUtils.closeOrLog(fos, "Failed to close non-fatal file output stream.");
            } catch (Exception e2) {
                e = e2;
                fos2 = fos;
                Fabric.getLogger().e(CrashlyticsCore.TAG, "An error occurred in the non-fatal exception logger", e);
                CommonUtils.flushOrLog(cos, "Failed to flush to non-fatal file.");
                CommonUtils.closeOrLog(fos2, "Failed to close non-fatal file output stream.");
                trimSessionEventFiles(currentSessionId, 64);
            } catch (Throwable th2) {
                th = th2;
                fos2 = fos;
                CommonUtils.flushOrLog(cos, "Failed to flush to non-fatal file.");
                CommonUtils.closeOrLog(fos2, "Failed to close non-fatal file output stream.");
                throw th;
            }
            trimSessionEventFiles(currentSessionId, 64);
        } catch (Exception e3) {
            Fabric.getLogger().e(CrashlyticsCore.TAG, "An error occurred when trimming non-fatal files.", e3);
        }
    }

    private void writeSessionPartFile(String sessionId, String tag, CodedOutputStreamWriteAction writeAction) throws Exception {
        FileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            FileOutputStream fos2 = new ClsFileOutputStream(getFilesDir(), sessionId + tag);
            try {
                cos = CodedOutputStream.newInstance(fos2);
                writeAction.writeTo(cos);
                CommonUtils.flushOrLog(cos, "Failed to flush to session " + tag + " file.");
                CommonUtils.closeOrLog(fos2, "Failed to close session " + tag + " file.");
            } catch (Throwable th) {
                th = th;
                fos = fos2;
                CommonUtils.flushOrLog(cos, "Failed to flush to session " + tag + " file.");
                CommonUtils.closeOrLog(fos, "Failed to close session " + tag + " file.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void writeFile(String sessionId, String tag, FileOutputStreamWriteAction writeAction) throws Exception {
        FileOutputStream fos;
        FileOutputStream fos2 = null;
        try {
            fos = new FileOutputStream(new File(getFilesDir(), sessionId + tag));
        } catch (Throwable th) {
            th = th;
        }
        try {
            writeAction.writeTo(fos);
            CommonUtils.closeOrLog(fos, "Failed to close " + tag + " file.");
        } catch (Throwable th2) {
            th = th2;
            fos2 = fos;
            CommonUtils.closeOrLog(fos2, "Failed to close " + tag + " file.");
            throw th;
        }
    }

    private byte[] readFile(String sessionId, String tag) {
        return NativeFileUtils.readFile(new File(getFilesDir(), sessionId + tag));
    }

    private void writeBeginSession(final String sessionId, Date startedAt) throws Exception {
        final String generator = String.format(Locale.US, GENERATOR_FORMAT, this.crashlyticsCore.getVersion());
        final long startedAtSeconds = startedAt.getTime() / 1000;
        writeSessionPartFile(sessionId, SESSION_BEGIN_TAG, new CodedOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.17
            @Override // com.crashlytics.android.core.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream arg) throws Exception {
                SessionProtobufHelper.writeBeginSession(arg, sessionId, generator, startedAtSeconds);
            }
        });
        writeFile(sessionId, "BeginSession.json", new FileOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.18
            @Override // com.crashlytics.android.core.CrashlyticsController.FileOutputStreamWriteAction
            public void writeTo(FileOutputStream arg) throws Exception {
                arg.write(new JSONObject(new HashMap<String, Object>() { // from class: com.crashlytics.android.core.CrashlyticsController.18.1
                    {
                        put("session_id", sessionId);
                        put("generator", generator);
                        put("started_at_seconds", Long.valueOf(startedAtSeconds));
                    }
                }).toString().getBytes());
            }
        });
    }

    private void writeSessionApp(String sessionId) throws Exception {
        final String appIdentifier = this.idManager.getAppIdentifier();
        final String versionCode = this.appData.versionCode;
        final String versionName = this.appData.versionName;
        final String installUuid = this.idManager.getAppInstallIdentifier();
        final int deliveryMechanism = DeliveryMechanism.determineFrom(this.appData.installerPackageName).getId();
        writeSessionPartFile(sessionId, SESSION_APP_TAG, new CodedOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.19
            @Override // com.crashlytics.android.core.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream arg) throws Exception {
                SessionProtobufHelper.writeSessionApp(arg, appIdentifier, CrashlyticsController.this.appData.apiKey, versionCode, versionName, installUuid, deliveryMechanism, CrashlyticsController.this.unityVersion);
            }
        });
        writeFile(sessionId, "SessionApp.json", new FileOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.20
            @Override // com.crashlytics.android.core.CrashlyticsController.FileOutputStreamWriteAction
            public void writeTo(FileOutputStream arg) throws Exception {
                arg.write(new JSONObject(new HashMap<String, Object>() { // from class: com.crashlytics.android.core.CrashlyticsController.20.1
                    {
                        put("app_identifier", appIdentifier);
                        put("api_key", CrashlyticsController.this.appData.apiKey);
                        put("version_code", versionCode);
                        put("version_name", versionName);
                        put("install_uuid", installUuid);
                        put("delivery_mechanism", Integer.valueOf(deliveryMechanism));
                        put("unity_version", TextUtils.isEmpty(CrashlyticsController.this.unityVersion) ? "" : CrashlyticsController.this.unityVersion);
                    }
                }).toString().getBytes());
            }
        });
    }

    private void writeSessionOS(String sessionId) throws Exception {
        final boolean isRooted = CommonUtils.isRooted(this.crashlyticsCore.getContext());
        writeSessionPartFile(sessionId, SESSION_OS_TAG, new CodedOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.21
            @Override // com.crashlytics.android.core.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream arg) throws Exception {
                SessionProtobufHelper.writeSessionOS(arg, Build.VERSION.RELEASE, Build.VERSION.CODENAME, isRooted);
            }
        });
        writeFile(sessionId, "SessionOS.json", new FileOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.22
            @Override // com.crashlytics.android.core.CrashlyticsController.FileOutputStreamWriteAction
            public void writeTo(FileOutputStream arg) throws Exception {
                arg.write(new JSONObject(new HashMap<String, Object>() { // from class: com.crashlytics.android.core.CrashlyticsController.22.1
                    {
                        put("version", Build.VERSION.RELEASE);
                        put("build_version", Build.VERSION.CODENAME);
                        put("is_rooted", Boolean.valueOf(isRooted));
                    }
                }).toString().getBytes());
            }
        });
    }

    private void writeSessionDevice(String sessionId) throws Exception {
        Context context = this.crashlyticsCore.getContext();
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        final int arch = CommonUtils.getCpuArchitectureInt();
        final int availableProcessors = Runtime.getRuntime().availableProcessors();
        final long totalRam = CommonUtils.getTotalRamInBytes();
        final long diskSpace = statFs.getBlockCount() * statFs.getBlockSize();
        final boolean isEmulator = CommonUtils.isEmulator(context);
        final Map<IdManager.DeviceIdentifierType, String> ids = this.idManager.getDeviceIdentifiers();
        final int state = CommonUtils.getDeviceState(context);
        writeSessionPartFile(sessionId, SESSION_DEVICE_TAG, new CodedOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.23
            @Override // com.crashlytics.android.core.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream arg) throws Exception {
                SessionProtobufHelper.writeSessionDevice(arg, arch, Build.MODEL, availableProcessors, totalRam, diskSpace, isEmulator, ids, state, Build.MANUFACTURER, Build.PRODUCT);
            }
        });
        writeFile(sessionId, "SessionDevice.json", new FileOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.24
            @Override // com.crashlytics.android.core.CrashlyticsController.FileOutputStreamWriteAction
            public void writeTo(FileOutputStream arg) throws Exception {
                arg.write(new JSONObject(new HashMap<String, Object>() { // from class: com.crashlytics.android.core.CrashlyticsController.24.1
                    {
                        put("arch", Integer.valueOf(arch));
                        put("build_model", Build.MODEL);
                        put("available_processors", Integer.valueOf(availableProcessors));
                        put("total_ram", Long.valueOf(totalRam));
                        put("disk_space", Long.valueOf(diskSpace));
                        put("is_emulator", Boolean.valueOf(isEmulator));
                        put("ids", ids);
                        put("state", Integer.valueOf(state));
                        put("build_manufacturer", Build.MANUFACTURER);
                        put("build_product", Build.PRODUCT);
                    }
                }).toString().getBytes());
            }
        });
    }

    private void writeSessionUser(String sessionId) throws Exception {
        final UserMetaData userMetaData = getUserMetaData(sessionId);
        writeSessionPartFile(sessionId, SESSION_USER_TAG, new CodedOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.25
            @Override // com.crashlytics.android.core.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream arg) throws Exception {
                SessionProtobufHelper.writeSessionUser(arg, userMetaData.id, userMetaData.name, userMetaData.email);
            }
        });
    }

    private void writeSessionEvent(CodedOutputStream cos, Date time, Thread thread, Throwable ex, String eventType, boolean includeAllThreads) throws Exception {
        Thread[] threads;
        Map<String, String> attributes;
        TrimmedThrowableData trimmedEx = new TrimmedThrowableData(ex, this.stackTraceTrimmingStrategy);
        Context context = this.crashlyticsCore.getContext();
        long eventTime = time.getTime() / 1000;
        Float batteryLevel = CommonUtils.getBatteryLevel(context);
        int batteryVelocity = CommonUtils.getBatteryVelocity(context, this.devicePowerStateListener.isPowerConnected());
        boolean proximityEnabled = CommonUtils.getProximitySensorEnabled(context);
        int orientation = context.getResources().getConfiguration().orientation;
        long usedRamBytes = CommonUtils.getTotalRamInBytes() - CommonUtils.calculateFreeRamInBytes(context);
        long diskUsedBytes = CommonUtils.calculateUsedDiskSpaceInBytes(Environment.getDataDirectory().getPath());
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = CommonUtils.getAppProcessInfo(context.getPackageName(), context);
        List<StackTraceElement[]> stacks = new LinkedList<>();
        StackTraceElement[] exceptionStack = trimmedEx.stacktrace;
        String buildId = this.appData.buildId;
        String appIdentifier = this.idManager.getAppIdentifier();
        if (includeAllThreads) {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            threads = new Thread[allStackTraces.size()];
            int i = 0;
            for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                threads[i] = entry.getKey();
                stacks.add(this.stackTraceTrimmingStrategy.getTrimmedStackTrace(entry.getValue()));
                i++;
            }
        } else {
            threads = new Thread[0];
        }
        if (!CommonUtils.getBooleanResourceValue(context, COLLECT_CUSTOM_KEYS, true)) {
            attributes = new TreeMap<>();
        } else {
            attributes = this.crashlyticsCore.getAttributes();
            if (attributes != null && attributes.size() > 1) {
                attributes = new TreeMap<>(attributes);
            }
        }
        SessionProtobufHelper.writeSessionEvent(cos, eventTime, eventType, trimmedEx, thread, exceptionStack, threads, stacks, attributes, this.logFileManager, runningAppProcessInfo, orientation, appIdentifier, buildId, batteryLevel, batteryVelocity, proximityEnabled, usedRamBytes, diskUsedBytes);
    }

    private void writeSessionPartsToSessionFile(File sessionBeginFile, String sessionId, int maxLoggedExceptionsCount) {
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Collecting session parts for ID " + sessionId);
        File[] fatalFiles = listFilesMatching(new FileNameContainsFilter(sessionId + SESSION_FATAL_TAG));
        boolean hasFatal = fatalFiles != null && fatalFiles.length > 0;
        Fabric.getLogger().d(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has fatal exception: %s", sessionId, Boolean.valueOf(hasFatal)));
        File[] nonFatalFiles = listFilesMatching(new FileNameContainsFilter(sessionId + SESSION_NON_FATAL_TAG));
        boolean hasNonFatal = nonFatalFiles != null && nonFatalFiles.length > 0;
        Fabric.getLogger().d(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has non-fatal exceptions: %s", sessionId, Boolean.valueOf(hasNonFatal)));
        if (hasFatal || hasNonFatal) {
            File[] trimmedNonFatalFiles = getTrimmedNonFatalFiles(sessionId, nonFatalFiles, maxLoggedExceptionsCount);
            File fatalFile = hasFatal ? fatalFiles[0] : null;
            synthesizeSessionFile(sessionBeginFile, sessionId, trimmedNonFatalFiles, fatalFile);
        } else {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "No events present for session ID " + sessionId);
        }
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Removing session part files for ID " + sessionId);
        deleteSessionPartFilesFor(sessionId);
    }

    private void synthesizeSessionFile(File sessionBeginFile, String sessionId, File[] nonFatalFiles, File fatalFile) {
        ClsFileOutputStream fos;
        boolean hasFatal = fatalFile != null;
        File outputDir = hasFatal ? getFatalSessionFilesDir() : getNonFatalSessionFilesDir();
        if (!outputDir.exists()) {
            outputDir.mkdirs();
        }
        ClsFileOutputStream fos2 = null;
        CodedOutputStream cos = null;
        try {
            try {
                fos = new ClsFileOutputStream(outputDir, sessionId);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            cos = CodedOutputStream.newInstance(fos);
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Collecting SessionStart data for session ID " + sessionId);
            writeToCosFromFile(cos, sessionBeginFile);
            cos.writeUInt64(4, new Date().getTime() / 1000);
            cos.writeBool(5, hasFatal);
            cos.writeUInt32(11, 1);
            cos.writeEnum(12, 3);
            writeInitialPartsTo(cos, sessionId);
            writeNonFatalEventsTo(cos, nonFatalFiles, sessionId);
            if (hasFatal) {
                writeToCosFromFile(cos, fatalFile);
            }
            CommonUtils.flushOrLog(cos, "Error flushing session file stream");
            if (0 != 0) {
                closeWithoutRenamingOrLog(fos);
            } else {
                CommonUtils.closeOrLog(fos, "Failed to close CLS file");
            }
        } catch (Exception e2) {
            e = e2;
            fos2 = fos;
            Fabric.getLogger().e(CrashlyticsCore.TAG, "Failed to write session file for session ID: " + sessionId, e);
            CommonUtils.flushOrLog(cos, "Error flushing session file stream");
            if (1 != 0) {
                closeWithoutRenamingOrLog(fos2);
            } else {
                CommonUtils.closeOrLog(fos2, "Failed to close CLS file");
            }
        } catch (Throwable th2) {
            th = th2;
            fos2 = fos;
            CommonUtils.flushOrLog(cos, "Error flushing session file stream");
            if (0 != 0) {
                closeWithoutRenamingOrLog(fos2);
            } else {
                CommonUtils.closeOrLog(fos2, "Failed to close CLS file");
            }
            throw th;
        }
    }

    private static void writeNonFatalEventsTo(CodedOutputStream cos, File[] nonFatalFiles, String sessionId) {
        Arrays.sort(nonFatalFiles, CommonUtils.FILE_MODIFIED_COMPARATOR);
        for (File nonFatalFile : nonFatalFiles) {
            try {
                Fabric.getLogger().d(CrashlyticsCore.TAG, String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", sessionId, nonFatalFile.getName()));
                writeToCosFromFile(cos, nonFatalFile);
            } catch (Exception e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Error writting non-fatal to session.", e);
            }
        }
    }

    private void writeInitialPartsTo(CodedOutputStream cos, String sessionId) throws IOException {
        for (String tag : INITIAL_SESSION_PART_TAGS) {
            File[] sessionPartFiles = listFilesMatching(new FileNameContainsFilter(sessionId + tag + ClsFileOutputStream.SESSION_FILE_EXTENSION));
            if (sessionPartFiles.length == 0) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Can't find " + tag + " data for session ID " + sessionId, null);
            } else {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Collecting " + tag + " data for session ID " + sessionId);
                writeToCosFromFile(cos, sessionPartFiles[0]);
            }
        }
    }

    private static void writeToCosFromFile(CodedOutputStream cos, File file) throws IOException {
        if (!file.exists()) {
            Fabric.getLogger().e(CrashlyticsCore.TAG, "Tried to include a file that doesn't exist: " + file.getName(), null);
            return;
        }
        FileInputStream fis = null;
        try {
            FileInputStream fis2 = new FileInputStream(file);
            try {
                copyToCodedOutputStream(fis2, cos, (int) file.length());
                CommonUtils.closeOrLog(fis2, "Failed to close file input stream.");
            } catch (Throwable th) {
                th = th;
                fis = fis2;
                CommonUtils.closeOrLog(fis, "Failed to close file input stream.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void copyToCodedOutputStream(InputStream inStream, CodedOutputStream cos, int bufferLength) throws IOException {
        int numRead;
        byte[] buffer = new byte[bufferLength];
        int offset = 0;
        while (offset < buffer.length && (numRead = inStream.read(buffer, offset, buffer.length - offset)) >= 0) {
            offset += numRead;
        }
        cos.writeRawBytes(buffer);
    }

    private UserMetaData getUserMetaData(String sessionId) {
        return isHandlingException() ? new UserMetaData(this.crashlyticsCore.getUserIdentifier(), this.crashlyticsCore.getUserName(), this.crashlyticsCore.getUserEmail()) : new MetaDataStore(getFilesDir()).readUserData(sessionId);
    }

    boolean isHandlingException() {
        return this.crashHandler != null && this.crashHandler.isHandlingException();
    }

    File getFilesDir() {
        return this.fileStore.getFilesDir();
    }

    File getFatalSessionFilesDir() {
        return new File(getFilesDir(), FATAL_SESSION_DIR);
    }

    File getNonFatalSessionFilesDir() {
        return new File(getFilesDir(), NONFATAL_SESSION_DIR);
    }

    File getInvalidFilesDir() {
        return new File(getFilesDir(), INVALID_CLS_CACHE_DIR);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void registerAnalyticsEventListener(SettingsData settingsData) {
        if (settingsData.featuresData.firebaseCrashlyticsEnabled) {
            this.appMeasurementEventListenerRegistrar.register();
            Fabric.getLogger().i(CrashlyticsCore.TAG, "Registered Firebase Analytics event listener");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldPromptUserBeforeSendingCrashReports(SettingsData settingsData) {
        return (settingsData == null || !settingsData.featuresData.promptEnabled || this.preferenceManager.shouldAlwaysSendReports()) ? false : true;
    }

    private CreateReportSpiCall getCreateReportSpiCall(String reportsUrl, String ndkReportsUrl) {
        Context context = this.crashlyticsCore.getContext();
        String overriddenHost = CommonUtils.getStringsFileValue(context, CRASHLYTICS_API_ENDPOINT);
        DefaultCreateReportSpiCall defaultCreateReportSpiCall = new DefaultCreateReportSpiCall(this.crashlyticsCore, overriddenHost, reportsUrl, this.httpRequestFactory);
        NativeCreateReportSpiCall nativeCreateReportSpiCall = new NativeCreateReportSpiCall(this.crashlyticsCore, overriddenHost, ndkReportsUrl, this.httpRequestFactory);
        return new CompositeCreateReportSpiCall(defaultCreateReportSpiCall, nativeCreateReportSpiCall);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSessionReports(SettingsData settingsData) {
        if (settingsData == null) {
            Fabric.getLogger().w(CrashlyticsCore.TAG, "Cannot send reports. Settings are unavailable.");
            return;
        }
        Context context = this.crashlyticsCore.getContext();
        CreateReportSpiCall call = getCreateReportSpiCall(settingsData.appData.reportsUrl, settingsData.appData.ndkReportsUrl);
        ReportUploader reportUploader = new ReportUploader(this.appData.apiKey, call, this.reportFilesProvider, this.handlingExceptionCheck);
        for (File finishedSessionFile : listCompleteSessionFiles()) {
            Report report = new SessionReport(finishedSessionFile, SEND_AT_CRASHTIME_HEADER);
            this.backgroundWorker.submit(new SendReportRunnable(context, report, reportUploader));
        }
    }

    private static void recordLoggedExceptionAnswersEvent(String sessionId, String exceptionName) {
        Answers answers = (Answers) Fabric.getKit(Answers.class);
        if (answers == null) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Answers is not available");
        } else {
            answers.onException(new Crash.LoggedException(sessionId, exceptionName));
        }
    }

    private static void recordFatalExceptionAnswersEvent(String sessionId, String exceptionName) {
        Answers answers = (Answers) Fabric.getKit(Answers.class);
        if (answers == null) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Answers is not available");
        } else {
            answers.onException(new Crash.FatalException(sessionId, exceptionName));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recordFatalFirebaseEvent(long timestamp) {
        if (firebaseCrashExists()) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
            return;
        }
        if (this.firebaseAnalyticsLogger != null) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Logging Crashlytics event to Firebase");
            Bundle params = new Bundle();
            params.putInt(FIREBASE_REALTIME, 1);
            params.putInt(FIREBASE_CRASH_TYPE, 1);
            params.putLong(FIREBASE_TIMESTAMP, timestamp);
            this.firebaseAnalyticsLogger.logEvent(FIREBASE_ANALYTICS_ORIGIN_CRASHLYTICS, FIREBASE_APPLICATION_EXCEPTION, params);
            return;
        }
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Skipping logging Crashlytics event to Firebase, no Firebase Analytics");
    }

    private boolean firebaseCrashExists() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    private final class ReportUploaderHandlingExceptionCheck implements ReportUploader.HandlingExceptionCheck {
        private ReportUploaderHandlingExceptionCheck() {
        }

        @Override // com.crashlytics.android.core.ReportUploader.HandlingExceptionCheck
        public boolean isHandlingException() {
            return CrashlyticsController.this.isHandlingException();
        }
    }

    /* loaded from: classes.dex */
    private final class ReportUploaderFilesProvider implements ReportUploader.ReportFilesProvider {
        private ReportUploaderFilesProvider() {
        }

        @Override // com.crashlytics.android.core.ReportUploader.ReportFilesProvider
        public File[] getCompleteSessionFiles() {
            return CrashlyticsController.this.listCompleteSessionFiles();
        }

        @Override // com.crashlytics.android.core.ReportUploader.ReportFilesProvider
        public File[] getInvalidSessionFiles() {
            return CrashlyticsController.this.getInvalidFilesDir().listFiles();
        }

        @Override // com.crashlytics.android.core.ReportUploader.ReportFilesProvider
        public File[] getNativeReportFiles() {
            return CrashlyticsController.this.listNativeSessionFileDirectories();
        }
    }

    /* loaded from: classes.dex */
    private static final class PrivacyDialogCheck implements ReportUploader.SendCheck {
        private final Kit kit;
        private final PreferenceManager preferenceManager;
        private final PromptSettingsData promptData;

        public PrivacyDialogCheck(Kit kit, PreferenceManager preferenceManager, PromptSettingsData promptData) {
            this.kit = kit;
            this.preferenceManager = preferenceManager;
            this.promptData = promptData;
        }

        @Override // com.crashlytics.android.core.ReportUploader.SendCheck
        public boolean canSendReports() {
            Activity activity = this.kit.getFabric().getCurrentActivity();
            if (activity == null || activity.isFinishing()) {
                return true;
            }
            CrashPromptDialog.AlwaysSendCallback alwaysSendCallback = new CrashPromptDialog.AlwaysSendCallback() { // from class: com.crashlytics.android.core.CrashlyticsController.PrivacyDialogCheck.1
                @Override // com.crashlytics.android.core.CrashPromptDialog.AlwaysSendCallback
                public void sendUserReportsWithoutPrompting(boolean send) {
                    PrivacyDialogCheck.this.preferenceManager.setShouldAlwaysSendReports(send);
                }
            };
            final CrashPromptDialog dialog = CrashPromptDialog.create(activity, this.promptData, alwaysSendCallback);
            activity.runOnUiThread(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsController.PrivacyDialogCheck.2
                @Override // java.lang.Runnable
                public void run() {
                    dialog.show();
                }
            });
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Waiting for user opt-in.");
            dialog.await();
            return dialog.getOptIn();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class SendReportRunnable implements Runnable {
        private final Context context;
        private final Report report;
        private final ReportUploader reportUploader;

        public SendReportRunnable(Context context, Report report, ReportUploader reportUploader) {
            this.context = context;
            this.report = report;
            this.reportUploader = reportUploader;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CommonUtils.canTryConnection(this.context)) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Attempting to send crash report at time of crash...");
                this.reportUploader.forceUpload(this.report);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class LogFileDirectoryProvider implements LogFileManager.DirectoryProvider {
        private static final String LOG_FILES_DIR = "log-files";
        private final FileStore rootFileStore;

        public LogFileDirectoryProvider(FileStore rootFileStore) {
            this.rootFileStore = rootFileStore;
        }

        @Override // com.crashlytics.android.core.LogFileManager.DirectoryProvider
        public File getLogFileDir() {
            File logFileDir = new File(this.rootFileStore.getFilesDir(), LOG_FILES_DIR);
            if (!logFileDir.exists()) {
                logFileDir.mkdirs();
            }
            return logFileDir;
        }
    }

    /* loaded from: classes.dex */
    private static final class DefaultSettingsDataProvider implements CrashlyticsUncaughtExceptionHandler.SettingsDataProvider {
        private DefaultSettingsDataProvider() {
        }

        @Override // com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.SettingsDataProvider
        public SettingsData getSettingsData() {
            return Settings.getInstance().awaitSettingsData();
        }
    }
}
