package com.google.android.gms.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Properties;

/* JADX INFO: loaded from: classes2.dex */
final class zzn {
    zzn() {
    }

    @Nullable
    private static zzo zzd(SharedPreferences sharedPreferences, String str) throws zzp {
        String string = sharedPreferences.getString(zzak.zzh(str, "|P|"), null);
        String string2 = sharedPreferences.getString(zzak.zzh(str, "|K|"), null);
        if (string == null || string2 == null) {
            return null;
        }
        return new zzo(zzg(string, string2), zze(sharedPreferences, str));
    }

    @Nullable
    private static zzo zzd(File file) throws zzp, IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            Properties properties = new Properties();
            properties.load(fileInputStream);
            String property = properties.getProperty("pub");
            String property2 = properties.getProperty("pri");
            if (property != null && property2 != null) {
                try {
                    return new zzo(zzg(property, property2), Long.parseLong(properties.getProperty("cre")));
                } catch (NumberFormatException e) {
                    throw new zzp(e);
                }
            }
            return null;
        } finally {
            zzd((Throwable) null, fileInputStream);
        }
    }

    private static void zzd(Context context, String str, zzo zzoVar) {
        try {
            if (Log.isLoggable("InstanceID", 3)) {
                Log.d("InstanceID", "Writing key to properties file");
            }
            File fileZzj = zzj(context, str);
            fileZzj.createNewFile();
            Properties properties = new Properties();
            properties.setProperty("pub", zzoVar.zzo());
            properties.setProperty("pri", zzoVar.zzp());
            properties.setProperty("cre", String.valueOf(zzoVar.zzbx));
            FileOutputStream fileOutputStream = new FileOutputStream(fileZzj);
            Throwable th = null;
            try {
                properties.store(fileOutputStream, (String) null);
            } finally {
                zzd(th, fileOutputStream);
            }
        } catch (IOException e) {
            String strValueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 21);
            sb.append("Failed to write key: ");
            sb.append(strValueOf);
            Log.w("InstanceID", sb.toString());
        }
    }

    private static /* synthetic */ void zzd(Throwable th, FileInputStream fileInputStream) throws IOException {
        if (th == null) {
            fileInputStream.close();
            return;
        }
        try {
            fileInputStream.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.gcm.zzf.zzd(th, th2);
        }
    }

    private static /* synthetic */ void zzd(Throwable th, FileOutputStream fileOutputStream) throws IOException {
        if (th == null) {
            fileOutputStream.close();
            return;
        }
        try {
            fileOutputStream.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.gcm.zzf.zzd(th, th2);
        }
    }

    private static long zze(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(zzak.zzh(str, "cre"), null);
        if (string == null) {
            return 0L;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    private final void zze(Context context, String str, zzo zzoVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        try {
            if (zzoVar.equals(zzd(sharedPreferences, str))) {
                return;
            }
        } catch (zzp e) {
        }
        if (Log.isLoggable("InstanceID", 3)) {
            Log.d("InstanceID", "Writing key to shared preferences");
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(zzak.zzh(str, "|P|"), zzoVar.zzo());
        editorEdit.putString(zzak.zzh(str, "|K|"), zzoVar.zzp());
        editorEdit.putString(zzak.zzh(str, "cre"), String.valueOf(zzoVar.zzbx));
        editorEdit.commit();
    }

    private static KeyPair zzg(String str, String str2) throws zzp {
        try {
            byte[] bArrDecode = Base64.decode(str, 8);
            byte[] bArrDecode2 = Base64.decode(str2, 8);
            try {
                KeyFactory keyFactory = KeyFactory.getInstance("RSA");
                return new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(bArrDecode)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(bArrDecode2)));
            } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
                String strValueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 19);
                sb.append("Invalid key stored ");
                sb.append(strValueOf);
                Log.w("InstanceID", sb.toString());
                throw new zzp(e);
            }
        } catch (IllegalArgumentException e2) {
            throw new zzp(e2);
        }
    }

    static void zzg(Context context, String str) {
        File fileZzj = zzj(context, str);
        if (fileZzj.exists()) {
            fileZzj.delete();
        }
    }

    @Nullable
    private final zzo zzh(Context context, String str) throws zzp {
        try {
            zzo zzoVarZzi = zzi(context, str);
            if (zzoVarZzi != null) {
                zze(context, str, zzoVarZzi);
                return zzoVarZzi;
            }
            e = null;
        } catch (zzp e) {
            e = e;
        }
        try {
            zzo zzoVarZzd = zzd(context.getSharedPreferences("com.google.android.gms.appid", 0), str);
            if (zzoVarZzd != null) {
                zzd(context, str, zzoVarZzd);
                return zzoVarZzd;
            }
        } catch (zzp e2) {
            e = e2;
        }
        if (e == null) {
            return null;
        }
        throw e;
    }

    @Nullable
    private final zzo zzi(Context context, String str) throws zzp {
        File fileZzj = zzj(context, str);
        if (!fileZzj.exists()) {
            return null;
        }
        try {
            return zzd(fileZzj);
        } catch (IOException e) {
            if (Log.isLoggable("InstanceID", 3)) {
                String strValueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 40);
                sb.append("Failed to read key from file, retrying: ");
                sb.append(strValueOf);
                Log.d("InstanceID", sb.toString());
            }
            try {
                return zzd(fileZzj);
            } catch (IOException e2) {
                String strValueOf2 = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 45);
                sb2.append("IID file exists, but failed to read from it: ");
                sb2.append(strValueOf2);
                Log.w("InstanceID", sb2.toString());
                throw new zzp(e2);
            }
        }
    }

    static void zzi(Context context) {
        for (File file : zzj(context).listFiles()) {
            if (file.getName().startsWith("com.google.InstanceId")) {
                file.delete();
            }
        }
    }

    private static File zzj(Context context) {
        File noBackupFilesDir = ContextCompat.getNoBackupFilesDir(context);
        if (noBackupFilesDir != null && noBackupFilesDir.isDirectory()) {
            return noBackupFilesDir;
        }
        Log.w("InstanceID", "noBackupFilesDir doesn't exist, using regular files directory instead");
        return context.getFilesDir();
    }

    private static File zzj(Context context, String str) {
        String string;
        if (TextUtils.isEmpty(str)) {
            string = "com.google.InstanceId.properties";
        } else {
            try {
                String strEncodeToString = Base64.encodeToString(str.getBytes(HttpRequest.CHARSET_UTF8), 11);
                StringBuilder sb = new StringBuilder(String.valueOf(strEncodeToString).length() + 33);
                sb.append("com.google.InstanceId_");
                sb.append(strEncodeToString);
                sb.append(".properties");
                string = sb.toString();
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
        return new File(zzj(context), string);
    }

    @WorkerThread
    final zzo zze(Context context, String str) throws zzp {
        zzo zzoVarZzh = zzh(context, str);
        return zzoVarZzh != null ? zzoVarZzh : zzf(context, str);
    }

    @WorkerThread
    final zzo zzf(Context context, String str) {
        zzo zzoVar = new zzo(zzd.zzk(), System.currentTimeMillis());
        try {
            zzo zzoVarZzh = zzh(context, str);
            if (zzoVarZzh != null) {
                if (Log.isLoggable("InstanceID", 3)) {
                    Log.d("InstanceID", "Loaded key after generating new one, using loaded one");
                }
                return zzoVarZzh;
            }
        } catch (zzp e) {
        }
        if (Log.isLoggable("InstanceID", 3)) {
            Log.d("InstanceID", "Generated new key");
        }
        zzd(context, str, zzoVar);
        zze(context, str, zzoVar);
        return zzoVar;
    }
}
