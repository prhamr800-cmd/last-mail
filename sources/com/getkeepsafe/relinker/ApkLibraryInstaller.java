package com.getkeepsafe.relinker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.getkeepsafe.relinker.ReLinker;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes2.dex */
public class ApkLibraryInstaller implements ReLinker.LibraryInstaller {
    private static final int COPY_BUFFER_SIZE = 4096;
    private static final int MAX_TRIES = 5;

    @Override // com.getkeepsafe.relinker.ReLinker.LibraryInstaller
    public void installLibrary(Context context, String[] abis, String mappedLibraryName, File destination, ReLinkerInstance instance) {
        int i;
        Object obj;
        ZipFile zipFile = null;
        try {
            ApplicationInfo appInfo = context.getApplicationInfo();
            int tries = 0;
            while (true) {
                int tries2 = tries + 1;
                i = 5;
                if (tries >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(appInfo.sourceDir), 1);
                    break;
                } catch (IOException e) {
                    tries = tries2;
                }
            }
            if (zipFile == null) {
                instance.log("FATAL! Couldn't find application APK!");
                if (zipFile != null) {
                    try {
                        zipFile.close();
                        return;
                    } catch (IOException e2) {
                        return;
                    }
                }
                return;
            }
            int tries3 = 0;
            while (true) {
                int tries4 = tries3 + 1;
                if (tries3 >= i) {
                    instance.log("FATAL! Couldn't extract the library from the APK!");
                    if (zipFile != null) {
                        try {
                            zipFile.close();
                            return;
                        } catch (IOException e3) {
                            return;
                        }
                    }
                    return;
                }
                ZipEntry libraryEntry = null;
                String jniNameInApk = null;
                for (String abi : abis) {
                    jniNameInApk = "lib" + File.separatorChar + abi + File.separatorChar + mappedLibraryName;
                    libraryEntry = zipFile.getEntry(jniNameInApk);
                    if (libraryEntry != null) {
                        break;
                    }
                }
                if (jniNameInApk != null) {
                    instance.log("Looking for %s in APK...", jniNameInApk);
                }
                if (libraryEntry == null) {
                    if (jniNameInApk == null) {
                        throw new MissingLibraryException(mappedLibraryName);
                    }
                    throw new MissingLibraryException(jniNameInApk);
                }
                instance.log("Found %s! Extracting...", jniNameInApk);
                try {
                    if (destination.exists() || destination.createNewFile()) {
                        InputStream inputStream = null;
                        obj = null;
                        FileOutputStream fileOut = null;
                        try {
                            try {
                                inputStream = zipFile.getInputStream(libraryEntry);
                                fileOut = new FileOutputStream(destination);
                                long written = copy(inputStream, fileOut);
                                fileOut.getFD().sync();
                                if (written == destination.length()) {
                                    closeSilently(inputStream);
                                    closeSilently(fileOut);
                                    destination.setReadable(true, false);
                                    destination.setExecutable(true, false);
                                    destination.setWritable(true);
                                    if (zipFile != null) {
                                        try {
                                            zipFile.close();
                                            return;
                                        } catch (IOException e4) {
                                            return;
                                        }
                                    }
                                    return;
                                }
                                closeSilently(inputStream);
                                closeSilently(fileOut);
                            } catch (FileNotFoundException e5) {
                                closeSilently(inputStream);
                                closeSilently(fileOut);
                                tries3 = tries4;
                                i = 5;
                            }
                        } catch (IOException e6) {
                            closeSilently(inputStream);
                            closeSilently(fileOut);
                            tries3 = tries4;
                            i = 5;
                        } catch (Throwable th) {
                            closeSilently(inputStream);
                            closeSilently(fileOut);
                            throw th;
                        }
                    } else {
                        obj = null;
                    }
                } catch (IOException e7) {
                    obj = null;
                }
                tries3 = tries4;
                i = 5;
            }
        } finally {
        }
    }

    private long copy(InputStream in, OutputStream out) throws IOException {
        long copied = 0;
        byte[] buf = new byte[4096];
        while (true) {
            int read = in.read(buf);
            if (read != -1) {
                out.write(buf, 0, read);
                copied += (long) read;
            } else {
                out.flush();
                return copied;
            }
        }
    }

    private void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
