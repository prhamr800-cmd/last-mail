package com.crashlytics.android.beta;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.cache.ValueLoader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceTokenLoader implements ValueLoader<String> {
    private static final String BETA_APP_PACKAGE_NAME = "io.crash.air";
    private static final String DIRFACTOR_DEVICE_TOKEN_PREFIX = "assets/com.crashlytics.android.beta/dirfactor-device-token=";

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x001a -> B:35:0x005e). Please report as a decompilation issue!!! */
    @Override // io.fabric.sdk.android.services.cache.ValueLoader
    public String load(Context context) throws Exception {
        long start = System.nanoTime();
        String token = "";
        ZipInputStream zis = null;
        try {
            try {
                try {
                    try {
                        try {
                            zis = getZipInputStreamOfApkFrom(context, "io.crash.air");
                            token = determineDeviceToken(zis);
                            if (zis != null) {
                                zis.close();
                            }
                        } catch (IOException e) {
                            Fabric.getLogger().e(Beta.TAG, "Failed to read the APK file", e);
                            if (zis != null) {
                                zis.close();
                            }
                            long end = System.nanoTime();
                            double d = end - start;
                            Double.isNaN(d);
                            double millis = d / 1000000.0d;
                            Fabric.getLogger().d(Beta.TAG, "Beta device token load took " + millis + "ms");
                            return token;
                        }
                    } catch (PackageManager.NameNotFoundException e2) {
                        Fabric.getLogger().d(Beta.TAG, "Beta by Crashlytics app is not installed");
                        if (zis != null) {
                            zis.close();
                        }
                        long end2 = System.nanoTime();
                        double d2 = end2 - start;
                        Double.isNaN(d2);
                        double millis2 = d2 / 1000000.0d;
                        Fabric.getLogger().d(Beta.TAG, "Beta device token load took " + millis2 + "ms");
                        return token;
                    }
                } catch (FileNotFoundException e3) {
                    Fabric.getLogger().e(Beta.TAG, "Failed to find the APK file", e3);
                    if (zis != null) {
                        zis.close();
                    }
                    long end22 = System.nanoTime();
                    double d22 = end22 - start;
                    Double.isNaN(d22);
                    double millis22 = d22 / 1000000.0d;
                    Fabric.getLogger().d(Beta.TAG, "Beta device token load took " + millis22 + "ms");
                    return token;
                }
            } catch (IOException e4) {
                Fabric.getLogger().e(Beta.TAG, "Failed to close the APK file", e4);
            }
            long end222 = System.nanoTime();
            double d222 = end222 - start;
            Double.isNaN(d222);
            double millis222 = d222 / 1000000.0d;
            Fabric.getLogger().d(Beta.TAG, "Beta device token load took " + millis222 + "ms");
            return token;
        } catch (Throwable th) {
            if (zis != null) {
                try {
                    zis.close();
                } catch (IOException e5) {
                    Fabric.getLogger().e(Beta.TAG, "Failed to close the APK file", e5);
                }
            }
            throw th;
        }
    }

    ZipInputStream getZipInputStreamOfApkFrom(Context context, String packageName) throws PackageManager.NameNotFoundException, FileNotFoundException {
        PackageManager pm = context.getPackageManager();
        ApplicationInfo info = pm.getApplicationInfo(packageName, 0);
        return new ZipInputStream(new FileInputStream(info.sourceDir));
    }

    String determineDeviceToken(ZipInputStream zis) throws IOException {
        ZipEntry entry = zis.getNextEntry();
        if (entry != null) {
            String name = entry.getName();
            if (name.startsWith(DIRFACTOR_DEVICE_TOKEN_PREFIX)) {
                return name.substring(DIRFACTOR_DEVICE_TOKEN_PREFIX.length(), name.length() - 1);
            }
            return "";
        }
        return "";
    }
}
