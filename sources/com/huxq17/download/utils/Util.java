package com.huxq17.download.utils;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.webkit.MimeTypeMap;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.huxq17.download.DownloadProvider;
import com.huxq17.download.core.task.DownloadTask;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class Util {
    public static final String BIN = "bin";
    private static final Pattern CONTENT_DISPOSITION_PATTERN = Pattern.compile("attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$", 2);
    public static final int CONTENT_LENGTH_NOT_FOUND = -1;
    public static final String DOWNLOAD_PART = "DOWNLOAD_PART-";
    public static final String TRANSFER_ENCODING_CHUNKED = "chunked";

    private Util() {
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException rethrown) {
                throw rethrown;
            } catch (Exception e) {
            }
        }
    }

    public static boolean hasStoragePermission(Context context) {
        return ContextCompat.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public static String getCachePath(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if (Environment.getExternalStorageState().equals("mounted")) {
            if (externalCacheDir != null) {
                return externalCacheDir.getAbsolutePath();
            }
            if (hasStoragePermission(context)) {
                File cacheFile = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + context.getPackageName() + "/cache/");
                if (!cacheFile.exists()) {
                    cacheFile.mkdirs();
                }
                return cacheFile.getAbsolutePath();
            }
            return context.getCacheDir().getAbsolutePath();
        }
        return context.getCacheDir().getAbsolutePath();
    }

    public static File getTempDir(String filePath) {
        File file = new File(filePath);
        File parentFile = file.getParentFile();
        return new File(parentFile, "." + file.getName() + ".temp" + File.separatorChar);
    }

    public static long getUsableSpace(File file) {
        if (file == null) {
            return 0L;
        }
        return getUsableSpaceBeforeO(file);
    }

    @RequiresApi(api = 26)
    private static long getUsableSpaceAfterO(Context context, File file) {
        StorageManager sm = (StorageManager) context.getSystemService("storage");
        try {
            UUID uuid = sm.getUuidForPath(file);
            sm.getAllocatableBytes(uuid);
            return 0L;
        } catch (IOException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    private static long getUsableSpaceBeforeO(File file) {
        if (file.isDirectory()) {
            return file.getUsableSpace();
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            return 0L;
        }
        if (!parentFile.exists()) {
            if (parentFile.mkdirs()) {
                return parentFile.getUsableSpace();
            }
            return 0L;
        }
        return parentFile.getUsableSpace();
    }

    public static long parseContentLength(@Nullable String contentLength) {
        if (contentLength == null) {
            return -1L;
        }
        try {
            return Long.parseLong(contentLength);
        } catch (NumberFormatException e) {
            return -1L;
        }
    }

    public static String guessFileName(String url, @Nullable String contentDisposition, @Nullable String mimeType) {
        String urlExt;
        String typeFromExt;
        String decodedUrl;
        int index;
        int index2;
        String filename = null;
        String extension = null;
        if (contentDisposition != null && (filename = parseContentDisposition(contentDisposition)) != null && (index2 = filename.lastIndexOf(47) + 1) > 0) {
            filename = filename.substring(index2);
        }
        if (filename == null && (decodedUrl = Uri.decode(url)) != null) {
            int queryIndex = decodedUrl.indexOf(63);
            if (queryIndex > 0) {
                decodedUrl = decodedUrl.substring(0, queryIndex);
            }
            if (!decodedUrl.endsWith("/") && (index = decodedUrl.lastIndexOf(47) + 1) > 0) {
                filename = decodedUrl.substring(index);
            }
        }
        if (filename == null) {
            filename = MD5Util.getMD5ByStr(url);
        }
        int dotIndex = filename.lastIndexOf(46);
        if (dotIndex >= 0 && mimeType != null && (typeFromExt = MimeTypeMap.getSingleton().getMimeTypeFromExtension((urlExt = filename.substring(dotIndex + 1)))) != null && !typeFromExt.equalsIgnoreCase(mimeType)) {
            String extension2 = MimeTypeMap.getSingleton().getExtensionFromMimeType(mimeType);
            if (extension2 != null && !extension2.equalsIgnoreCase(BIN)) {
                extension = "." + extension2;
            } else {
                extension = "." + urlExt;
            }
        }
        if (extension == null) {
            if (mimeType != null) {
                int index3 = mimeType.indexOf(";");
                if (index3 >= 0) {
                    mimeType = mimeType.substring(0, index3);
                }
                extension = MimeTypeMap.getSingleton().getExtensionFromMimeType(mimeType);
                if (extension != null) {
                    extension = "." + extension;
                }
            }
            if (extension == null && mimeType != null && mimeType.toLowerCase(Locale.ROOT).startsWith("text/")) {
                if (mimeType.equalsIgnoreCase("text/html")) {
                    extension = ".html";
                } else {
                    extension = ".txt";
                }
            }
        }
        if (dotIndex >= 0) {
            if (extension == null) {
                extension = filename.substring(dotIndex);
            }
            filename = filename.substring(0, dotIndex);
        }
        if (extension != null) {
            return filename + extension;
        }
        return filename;
    }

    static String parseContentDisposition(String contentDisposition) {
        try {
            Matcher m = CONTENT_DISPOSITION_PATTERN.matcher(contentDisposition);
            if (m.find()) {
                return m.group(2);
            }
            return null;
        } catch (IllegalStateException e) {
            return null;
        }
    }

    public static void setFilePathIfNeed(DownloadTask downloadTask, Response response) {
        if (downloadTask.getDownloadInfo().getFilePath() == null) {
            String contentDisposition = response.header("Content-Disposition");
            String contentType = response.header(HttpRequest.HEADER_CONTENT_TYPE);
            String fileName = guessFileName(response.request().url().toString(), contentDisposition, contentType);
            downloadTask.getRequest().setFilePath(getCachePath(DownloadProvider.context) + "/" + fileName);
            downloadTask.updateInfo();
        }
    }
}
