package com.crashlytics.android.core;

/* loaded from: classes.dex */
interface FileLogStore {
    void closeLogFile();

    void deleteLogFile();

    ByteString getLogAsByteString();

    byte[] getLogAsBytes();

    void writeToLog(long j, String str);
}
