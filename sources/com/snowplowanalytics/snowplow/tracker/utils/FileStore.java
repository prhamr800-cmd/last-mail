package com.snowplowanalytics.snowplow.tracker.utils;

import android.content.Context;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class FileStore {
    private static final String TAG = FileStore.class.getSimpleName();

    public static boolean saveMapToFile(String filename, Map objects, Context context) {
        try {
            Logger.d(TAG, "Attempting to save: %s", objects);
            FileOutputStream fos = context.openFileOutput(filename, 0);
            ObjectOutputStream oos = new ObjectOutputStream(fos);
            oos.writeObject(objects);
            oos.close();
            Logger.d(TAG, " + Successfully saved KV Pairs to: %s", filename);
            return true;
        } catch (IOException | NullPointerException ioe) {
            Logger.e(TAG, " + Exception saving vars map: %s", ioe.getMessage());
            return false;
        }
    }

    public static Map getMapFromFile(String filename, Context context) {
        try {
            Logger.d(TAG, "Attempting to retrieve map from: %s", filename);
            FileInputStream fis = context.openFileInput(filename);
            ObjectInputStream ois = new ObjectInputStream(fis);
            Map varsMap = (HashMap) ois.readObject();
            ois.close();
            Logger.d(TAG, " + Retrieved map from file: %s", varsMap);
            return varsMap;
        } catch (IOException | ClassNotFoundException ioe) {
            Logger.e(TAG, " + Exception getting vars map: %s", ioe.getMessage());
            return null;
        }
    }

    public static boolean deleteFile(String filename, Context context) {
        boolean isSuccess = context.deleteFile(filename);
        Logger.d(TAG, "Deleted %s from internal storage: %s", filename, Boolean.valueOf(isSuccess));
        return isSuccess;
    }
}
