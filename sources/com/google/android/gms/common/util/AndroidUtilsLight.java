package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.wrappers.Wrappers;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
@KeepForSdk
public class AndroidUtilsLight {
    private static volatile int zzgd = -1;

    @KeepForSdk
    public static byte[] getPackageCertificateHashBytes(Context context, String str) throws PackageManager.NameNotFoundException {
        MessageDigest messageDigestZzi;
        PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 64);
        if (packageInfo.signatures == null || packageInfo.signatures.length != 1 || (messageDigestZzi = zzi("SHA1")) == null) {
            return null;
        }
        return messageDigestZzi.digest(packageInfo.signatures[0].toByteArray());
    }

    public static MessageDigest zzi(String str) {
        MessageDigest messageDigest;
        for (int i = 0; i < 2; i++) {
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException e) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    @KeepForSdk
    @TargetApi(24)
    public static Context getDeviceProtectedStorageContext(Context context) {
        if (PlatformVersion.isAtLeastN() && !context.isDeviceProtectedStorage()) {
            return context.createDeviceProtectedStorageContext();
        }
        return context;
    }
}
