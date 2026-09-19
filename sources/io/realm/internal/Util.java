package io.realm.internal;

import android.os.Build;
import android.support.v4.os.EnvironmentCompat;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.realm.RealmModel;
import io.realm.RealmObject;
import io.realm.log.RealmLog;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Locale;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class Util {
    static native String nativeGetTablePrefix();

    public static String getTablePrefix() {
        return nativeGetTablePrefix();
    }

    public static Class<? extends RealmModel> getOriginalModelClass(Class<? extends RealmModel> clazz) {
        if (clazz.equals(RealmModel.class) || clazz.equals(RealmObject.class)) {
            throw new IllegalArgumentException("RealmModel or RealmObject was passed as an argument. Only subclasses of these can be used as arguments to methods that accept a Realm model class.");
        }
        Class superclass = clazz.getSuperclass();
        if (!superclass.equals(Object.class) && !superclass.equals(RealmObject.class)) {
            return superclass;
        }
        return clazz;
    }

    public static String getStackTrace(Throwable throwable) {
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter((Writer) sw, true);
        throwable.printStackTrace(pw);
        return sw.getBuffer().toString();
    }

    public static boolean isEmulator() {
        return Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith(EnvironmentCompat.MEDIA_UNKNOWN) || Build.MODEL.contains(CommonUtils.GOOGLE_SDK) || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || CommonUtils.GOOGLE_SDK.equals(Build.PRODUCT);
    }

    public static boolean isEmptyString(@Nullable String str) {
        return str == null || str.length() == 0;
    }

    public static boolean deleteRealm(String canonicalPath, File realmFolder, String realmFileName) {
        File managementFolder = new File(realmFolder, realmFileName + ".management");
        File realmFile = new File(canonicalPath);
        File[] files = managementFolder.listFiles();
        if (files != null) {
            for (File file : files) {
                boolean deleteResult = file.delete();
                if (!deleteResult) {
                    RealmLog.warn(String.format(Locale.ENGLISH, "Realm temporary file at %s cannot be deleted", file.getAbsolutePath()), new Object[0]);
                }
            }
        }
        if (managementFolder.exists() && !managementFolder.delete()) {
            RealmLog.warn(String.format(Locale.ENGLISH, "Realm temporary folder at %s cannot be deleted", managementFolder.getAbsolutePath()), new Object[0]);
        }
        if (!realmFile.exists()) {
            return true;
        }
        boolean realmDeleted = realmFile.delete();
        if (!realmDeleted) {
            RealmLog.warn(String.format(Locale.ENGLISH, "Realm file at %s cannot be deleted", realmFile.getAbsolutePath()), new Object[0]);
        }
        return realmDeleted;
    }
}
