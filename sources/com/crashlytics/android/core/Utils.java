package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
final class Utils {
    private Utils() {
    }

    public static void capFileCount(File directory, FilenameFilter filter, int maxAllowed, Comparator<File> fileComparator) {
        File[] sessionFiles = directory.listFiles(filter);
        if (sessionFiles != null && sessionFiles.length > maxAllowed) {
            Arrays.sort(sessionFiles, fileComparator);
            int i = sessionFiles.length;
            for (File file : sessionFiles) {
                if (i <= maxAllowed) {
                    return;
                }
                file.delete();
                i--;
            }
        }
    }
}
