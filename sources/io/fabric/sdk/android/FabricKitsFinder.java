package io.fabric.sdk.android;

import android.os.SystemClock;
import android.text.TextUtils;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes2.dex */
class FabricKitsFinder implements Callable<Map<String, KitInfo>> {
    private static final String FABRIC_BUILD_TYPE_KEY = "fabric-build-type";
    static final String FABRIC_DIR = "fabric/";
    private static final String FABRIC_IDENTIFIER_KEY = "fabric-identifier";
    private static final String FABRIC_VERSION_KEY = "fabric-version";
    final String apkFileName;

    FabricKitsFinder(String apkFileName) {
        this.apkFileName = apkFileName;
    }

    @Override // java.util.concurrent.Callable
    public Map<String, KitInfo> call() throws Exception {
        KitInfo kitInfo;
        Map<String, KitInfo> kitInfos = new HashMap<>();
        long startScan = SystemClock.elapsedRealtime();
        int count = 0;
        ZipFile apkFile = loadApkFile();
        Enumeration<? extends ZipEntry> entries = apkFile.entries();
        while (entries.hasMoreElements()) {
            count++;
            ZipEntry entry = entries.nextElement();
            if (entry.getName().startsWith(FABRIC_DIR) && entry.getName().length() > FABRIC_DIR.length() && (kitInfo = loadKitInfo(entry, apkFile)) != null) {
                kitInfos.put(kitInfo.getIdentifier(), kitInfo);
                Fabric.getLogger().v(Fabric.TAG, String.format("Found kit:[%s] version:[%s]", kitInfo.getIdentifier(), kitInfo.getVersion()));
            }
        }
        if (apkFile != null) {
            try {
                apkFile.close();
            } catch (IOException e) {
            }
        }
        Fabric.getLogger().v(Fabric.TAG, "finish scanning in " + (SystemClock.elapsedRealtime() - startScan) + " reading:" + count);
        return kitInfos;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private KitInfo loadKitInfo(ZipEntry zipEntry, ZipFile zipFile) {
        KitInfo kitInfo = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        try {
            InputStream inputStream = zipFile.getInputStream(zipEntry);
            Properties properties = new Properties();
            properties.load(inputStream);
            String property = properties.getProperty(FABRIC_IDENTIFIER_KEY);
            String property2 = properties.getProperty(FABRIC_VERSION_KEY);
            String property3 = properties.getProperty(FABRIC_BUILD_TYPE_KEY);
            if (!TextUtils.isEmpty(property) && !TextUtils.isEmpty(property2)) {
                return new KitInfo(property, property2, property3);
            }
            throw new IllegalStateException("Invalid format of fabric file," + zipEntry.getName());
        } catch (IOException e) {
            Fabric.getLogger().e(Fabric.TAG, "Error when parsing fabric properties " + zipEntry.getName(), e);
            return kitInfo;
        } finally {
            CommonUtils.closeQuietly(objArr == true ? 1 : 0);
        }
    }

    protected ZipFile loadApkFile() throws IOException {
        return new ZipFile(this.apkFileName);
    }
}
