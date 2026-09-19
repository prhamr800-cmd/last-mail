package com.huxq17.download.utils;

import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;

/* JADX INFO: loaded from: classes2.dex */
public class FileUtil {
    private FileUtil() {
    }

    public static boolean deleteDir(File dirFile) {
        if (!dirFile.exists()) {
            return false;
        }
        if (dirFile.isFile()) {
            return dirFile.delete();
        }
        File[] children = dirFile.listFiles();
        if (children != null) {
            for (File file : children) {
                deleteDir(file);
            }
        }
        return dirFile.delete();
    }

    public static boolean renameTo(File source, File dest) {
        if (dest.exists()) {
            if (dest.delete()) {
                return source.renameTo(dest);
            }
            return false;
        }
        return source.renameTo(dest);
    }

    public static void copyFile(File sourceFile, File destFile) {
        if (destFile.getParentFile() != null && !destFile.getParentFile().exists()) {
            destFile.getParentFile().mkdirs();
        }
        BufferedSource bufferedSource = null;
        BufferedSink bufferedSink = null;
        try {
            try {
                bufferedSource = Okio.buffer(Okio.source(sourceFile));
                bufferedSink = Okio.buffer(Okio.sink(destFile));
                bufferedSink.writeAll(bufferedSource);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } finally {
            Util.closeQuietly(bufferedSink);
            Util.closeQuietly(bufferedSource);
        }
    }

    public static boolean rename(String filePathName, String newPathName) {
        if (TextUtils.isEmpty(filePathName) || TextUtils.isEmpty(newPathName)) {
            return false;
        }
        delete(newPathName);
        File file = new File(filePathName);
        File newFile = new File(newPathName);
        if (!file.exists()) {
            return false;
        }
        File parentFile = newFile.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        return file.renameTo(newFile);
    }

    public static boolean delete(String filePathName) {
        if (TextUtils.isEmpty(filePathName)) {
            return false;
        }
        File file = new File(filePathName);
        return deleteFile(file);
    }

    public static boolean deleteFile(File file) {
        if (file == null) {
            return false;
        }
        File to = new File(file.getAbsolutePath() + System.currentTimeMillis());
        return file.renameTo(to) && to.delete();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v16, types: [int] */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.io.Closeable] */
    public static boolean mergeFiles(File[] sources, File dest) throws Throwable {
        ?? LastIndexOf;
        BufferedSource bufferedSource;
        IOException e;
        FileNotFoundException e2;
        File[] sortedFiles = new File[sources.length];
        for (File partFile : sources) {
            ?? name = partFile.getName();
            LastIndexOf = name.lastIndexOf("-") + 1;
            int id = Integer.parseInt(name.substring(LastIndexOf));
            if (id >= sortedFiles.length) {
                return false;
            }
            sortedFiles[id] = partFile;
        }
        BufferedSink bufferedSink = null;
        try {
            try {
                byte[] buffer = new byte[8092];
                bufferedSink = Okio.buffer(Okio.appendingSink(sortedFiles[0]));
                bufferedSource = null;
                for (int i = 1; i < sortedFiles.length; i++) {
                    try {
                        File file = sortedFiles[i];
                        bufferedSource = Okio.buffer(Okio.source(file));
                        while (true) {
                            int len = bufferedSource.read(buffer);
                            if (len != -1) {
                                bufferedSink.write(buffer, 0, len);
                            }
                        }
                        Util.closeQuietly(bufferedSource);
                    } catch (FileNotFoundException e3) {
                        e2 = e3;
                        e2.printStackTrace();
                        Util.closeQuietly(bufferedSink);
                        Util.closeQuietly(bufferedSource);
                        return false;
                    } catch (IOException e4) {
                        e = e4;
                        e.printStackTrace();
                        Util.closeQuietly(bufferedSink);
                        Util.closeQuietly(bufferedSource);
                        return false;
                    }
                }
                bufferedSink.flush();
                renameTo(sortedFiles[0], dest);
                Util.closeQuietly(bufferedSink);
                Util.closeQuietly(bufferedSource);
                return true;
            } catch (Throwable th) {
                th = th;
                Util.closeQuietly(null);
                Util.closeQuietly(LastIndexOf);
                throw th;
            }
        } catch (FileNotFoundException e5) {
            bufferedSource = null;
            e2 = e5;
        } catch (IOException e6) {
            bufferedSource = null;
            e = e6;
        } catch (Throwable th2) {
            th = th2;
            LastIndexOf = 0;
            Util.closeQuietly(null);
            Util.closeQuietly(LastIndexOf);
            throw th;
        }
    }
}
