package com.crashlytics.android.core;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class MetaDataStore {
    private static final String KEYDATA_SUFFIX = "keys";
    private static final String KEY_USER_EMAIL = "userEmail";
    private static final String KEY_USER_ID = "userId";
    private static final String KEY_USER_NAME = "userName";
    private static final String METADATA_EXT = ".meta";
    private static final String USERDATA_SUFFIX = "user";
    private static final Charset UTF_8 = Charset.forName(HttpRequest.CHARSET_UTF8);
    private final File filesDir;

    public MetaDataStore(File filesDir) {
        this.filesDir = filesDir;
    }

    public void writeUserData(String sessionId, UserMetaData data) {
        File f = getUserDataFileForSession(sessionId);
        Writer writer = null;
        try {
            try {
                String userDataString = userDataToJson(data);
                writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(f), UTF_8));
                writer.write(userDataString);
                writer.flush();
            } catch (Exception e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Error serializing user metadata.", e);
            }
        } finally {
            CommonUtils.closeOrLog(writer, "Failed to close user metadata file.");
        }
    }

    public UserMetaData readUserData(String sessionId) {
        File f = getUserDataFileForSession(sessionId);
        if (!f.exists()) {
            return UserMetaData.EMPTY;
        }
        InputStream is = null;
        try {
            try {
                is = new FileInputStream(f);
                return jsonToUserData(CommonUtils.streamToString(is));
            } catch (Exception e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Error deserializing user metadata.", e);
                CommonUtils.closeOrLog(is, "Failed to close user metadata file.");
                return UserMetaData.EMPTY;
            }
        } finally {
            CommonUtils.closeOrLog(is, "Failed to close user metadata file.");
        }
    }

    public void writeKeyData(String sessionId, Map<String, String> keyData) {
        File f = getKeysFileForSession(sessionId);
        Writer writer = null;
        try {
            try {
                String keyDataString = keysDataToJson(keyData);
                writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(f), UTF_8));
                writer.write(keyDataString);
                writer.flush();
            } catch (Exception e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Error serializing key/value metadata.", e);
            }
        } finally {
            CommonUtils.closeOrLog(writer, "Failed to close key/value metadata file.");
        }
    }

    public Map<String, String> readKeyData(String sessionId) {
        File f = getKeysFileForSession(sessionId);
        if (!f.exists()) {
            return Collections.emptyMap();
        }
        InputStream is = null;
        try {
            try {
                is = new FileInputStream(f);
                return jsonToKeysData(CommonUtils.streamToString(is));
            } catch (Exception e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Error deserializing user metadata.", e);
                CommonUtils.closeOrLog(is, "Failed to close user metadata file.");
                return Collections.emptyMap();
            }
        } finally {
            CommonUtils.closeOrLog(is, "Failed to close user metadata file.");
        }
    }

    private File getUserDataFileForSession(String sessionId) {
        return new File(this.filesDir, sessionId + USERDATA_SUFFIX + METADATA_EXT);
    }

    private File getKeysFileForSession(String sessionId) {
        return new File(this.filesDir, sessionId + KEYDATA_SUFFIX + METADATA_EXT);
    }

    private static UserMetaData jsonToUserData(String json) throws JSONException {
        JSONObject dataObj = new JSONObject(json);
        String id = valueOrNull(dataObj, "userId");
        String name = valueOrNull(dataObj, KEY_USER_NAME);
        String email = valueOrNull(dataObj, KEY_USER_EMAIL);
        return new UserMetaData(id, name, email);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.crashlytics.android.core.MetaDataStore$1] */
    private static String userDataToJson(final UserMetaData userData) throws JSONException {
        return new JSONObject() { // from class: com.crashlytics.android.core.MetaDataStore.1
            {
                put("userId", userData.id);
                put(MetaDataStore.KEY_USER_NAME, userData.name);
                put(MetaDataStore.KEY_USER_EMAIL, userData.email);
            }
        }.toString();
    }

    private static Map<String, String> jsonToKeysData(String json) throws JSONException {
        JSONObject dataObj = new JSONObject(json);
        Map<String, String> keyData = new HashMap<>();
        Iterator<String> keyIter = dataObj.keys();
        while (keyIter.hasNext()) {
            String key = keyIter.next();
            keyData.put(key, valueOrNull(dataObj, key));
        }
        return keyData;
    }

    private static String keysDataToJson(Map<String, String> keyData) throws JSONException {
        return new JSONObject(keyData).toString();
    }

    private static String valueOrNull(JSONObject json, String key) {
        if (json.isNull(key)) {
            return null;
        }
        return json.optString(key, null);
    }
}
