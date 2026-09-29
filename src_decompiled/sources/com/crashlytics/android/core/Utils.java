package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
final class Utils {
    private static final FilenameFilter ALL_FILES_FILTER = new FilenameFilter() { // from class: com.crashlytics.android.core.Utils.1
        @Override // java.io.FilenameFilter
        public boolean accept(File dir, String filename) {
            return true;
        }
    };

    private Utils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int capFileCount(File directory, int maxAllowed, Comparator<File> sortComparator) {
        return capFileCount(directory, ALL_FILES_FILTER, maxAllowed, sortComparator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int capFileCount(File directory, FilenameFilter filter, int maxAllowed, Comparator<File> sortComparator) {
        File[] sessionFiles = directory.listFiles(filter);
        if (sessionFiles == null) {
            return 0;
        }
        int numRetained = sessionFiles.length;
        Arrays.sort(sessionFiles, sortComparator);
        for (File file : sessionFiles) {
            if (numRetained > maxAllowed) {
                file.delete();
                numRetained--;
            } else {
                return numRetained;
            }
        }
        return numRetained;
    }
}
