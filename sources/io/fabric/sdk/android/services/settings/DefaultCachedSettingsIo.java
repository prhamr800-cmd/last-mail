package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.persistence.FileStoreImpl;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class DefaultCachedSettingsIo implements CachedSettingsIo {
    private final Kit kit;

    public DefaultCachedSettingsIo(Kit kit) {
        this.kit = kit;
    }

    @Override // io.fabric.sdk.android.services.settings.CachedSettingsIo
    public JSONObject readCachedSettings() {
        Fabric.getLogger().d(Fabric.TAG, "Reading cached settings...");
        FileInputStream fis = null;
        JSONObject toReturn = null;
        try {
            try {
                File settingsFile = new File(new FileStoreImpl(this.kit).getFilesDir(), Settings.SETTINGS_CACHE_FILENAME);
                if (settingsFile.exists()) {
                    fis = new FileInputStream(settingsFile);
                    String settingsStr = CommonUtils.streamToString(fis);
                    toReturn = new JSONObject(settingsStr);
                } else {
                    Fabric.getLogger().d(Fabric.TAG, "No cached settings found.");
                }
            } catch (Exception e) {
                Fabric.getLogger().e(Fabric.TAG, "Failed to fetch cached settings", e);
            }
            return toReturn;
        } finally {
            CommonUtils.closeOrLog(fis, "Error while closing settings cache file.");
        }
    }

    @Override // io.fabric.sdk.android.services.settings.CachedSettingsIo
    public void writeCachedSettings(long expiresAtMillis, JSONObject settingsJson) {
        Fabric.getLogger().d(Fabric.TAG, "Writing settings to cache file...");
        if (settingsJson != null) {
            FileWriter writer = null;
            try {
                try {
                    settingsJson.put(SettingsJsonConstants.EXPIRES_AT_KEY, expiresAtMillis);
                    writer = new FileWriter(new File(new FileStoreImpl(this.kit).getFilesDir(), Settings.SETTINGS_CACHE_FILENAME));
                    writer.write(settingsJson.toString());
                    writer.flush();
                } catch (Exception e) {
                    Fabric.getLogger().e(Fabric.TAG, "Failed to cache settings", e);
                }
            } finally {
                CommonUtils.closeOrLog(writer, "Failed to close settings writer.");
            }
        }
    }
}
