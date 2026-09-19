package com.google.firebase.iid;

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
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Properties;

/* JADX INFO: loaded from: classes2.dex */
final class zzy {
    zzy() {
    }

    @WorkerThread
    final zzz zzb(Context context, String str) throws Throwable {
        zzz zzzVarZzd = zzd(context, str);
        return zzzVarZzd != null ? zzzVarZzd : zzc(context, str);
    }

    @WorkerThread
    final zzz zzc(Context context, String str) throws Throwable {
        zzz zzzVar = new zzz(zza.zzb(), System.currentTimeMillis());
        zzz zzzVarZza = zza(context, str, zzzVar, true);
        if (zzzVarZza == null || zzzVarZza.equals(zzzVar)) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Generated new key");
            }
            zza(context, str, zzzVar);
            return zzzVar;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Loaded key after generating new one, using loaded one");
        }
        return zzzVarZza;
    }

    static void zza(Context context) {
        for (File file : zzb(context).listFiles()) {
            if (file.getName().startsWith("com.google.InstanceId")) {
                file.delete();
            }
        }
    }

    @Nullable
    private final zzz zzd(Context context, String str) throws Throwable {
        try {
            zzz zzzVarZze = zze(context, str);
            if (zzzVarZze != null) {
                zza(context, str, zzzVarZze);
                return zzzVarZze;
            }
            e = null;
        } catch (zzaa e) {
            e = e;
        }
        try {
            zzz zzzVarZza = zza(context.getSharedPreferences("com.google.android.gms.appid", 0), str);
            if (zzzVarZza != null) {
                zza(context, str, zzzVarZza, false);
                return zzzVarZza;
            }
        } catch (zzaa e2) {
            e = e2;
        }
        if (e == null) {
            return null;
        }
        throw e;
    }

    private static KeyPair zzc(String str, String str2) throws zzaa {
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
                Log.w("FirebaseInstanceId", sb.toString());
                throw new zzaa(e);
            }
        } catch (IllegalArgumentException e2) {
            throw new zzaa(e2);
        }
    }

    @Nullable
    private final zzz zze(Context context, String str) throws zzaa {
        File fileZzf = zzf(context, str);
        if (!fileZzf.exists()) {
            return null;
        }
        try {
            return zza(fileZzf);
        } catch (zzaa | IOException e) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String strValueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 40);
                sb.append("Failed to read key from file, retrying: ");
                sb.append(strValueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            try {
                return zza(fileZzf);
            } catch (IOException e2) {
                String strValueOf2 = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 45);
                sb2.append("IID file exists, but failed to read from it: ");
                sb2.append(strValueOf2);
                Log.w("FirebaseInstanceId", sb2.toString());
                throw new zzaa(e2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00b3 A[Catch: all -> 0x00b7, Throwable -> 0x00ba, TRY_ENTER, TryCatch #7 {Throwable -> 0x00ba, all -> 0x00b7, blocks: (B:7:0x0043, B:15:0x0060, B:24:0x00a1, B:34:0x00b3, B:35:0x00b6), top: B:56:0x0043 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[Catch: all -> 0x00b7, Throwable -> 0x00ba, SYNTHETIC, TRY_LEAVE, TryCatch #7 {Throwable -> 0x00ba, all -> 0x00b7, blocks: (B:7:0x0043, B:15:0x0060, B:24:0x00a1, B:34:0x00b3, B:35:0x00b6), top: B:56:0x0043 }] */
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.google.firebase.iid.zzz zza(android.content.Context r9, java.lang.String r10, com.google.firebase.iid.zzz r11, boolean r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzy.zza(android.content.Context, java.lang.String, com.google.firebase.iid.zzz, boolean):com.google.firebase.iid.zzz");
    }

    private static File zzb(Context context) {
        File noBackupFilesDir = ContextCompat.getNoBackupFilesDir(context);
        if (noBackupFilesDir != null && noBackupFilesDir.isDirectory()) {
            return noBackupFilesDir;
        }
        Log.w("FirebaseInstanceId", "noBackupFilesDir doesn't exist, using regular files directory instead");
        return context.getFilesDir();
    }

    private static File zzf(Context context, String str) {
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
        return new File(zzb(context), string);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002f A[Catch: all -> 0x0033, Throwable -> 0x0035, TRY_ENTER, TryCatch #3 {, blocks: (B:3:0x0006, B:7:0x001d, B:17:0x002f, B:18:0x0032), top: B:25:0x0006, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[Catch: all -> 0x0033, Throwable -> 0x0035, SYNTHETIC, TRY_LEAVE, TryCatch #3 {, blocks: (B:3:0x0006, B:7:0x001d, B:17:0x002f, B:18:0x0032), top: B:25:0x0006, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.google.firebase.iid.zzz zza(java.io.File r10) throws java.io.IOException, com.google.firebase.iid.zzaa {
        /*
            r9 = this;
            java.io.FileInputStream r0 = new java.io.FileInputStream
            r0.<init>(r10)
            r10 = 0
            java.nio.channels.FileChannel r7 = r0.getChannel()     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> L35
            r2 = 0
            r4 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r6 = 1
            r1 = r7
            r1.lock(r2, r4, r6)     // Catch: java.lang.Throwable -> L24 java.lang.Throwable -> L27
            com.google.firebase.iid.zzz r1 = zza(r7)     // Catch: java.lang.Throwable -> L24 java.lang.Throwable -> L27
            if (r7 == 0) goto L20
            zza(r10, r7)     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> L35
        L20:
            zza(r10, r0)
            return r1
        L24:
            r1 = move-exception
            r2 = r10
            goto L2d
        L27:
            r1 = move-exception
            throw r1     // Catch: java.lang.Throwable -> L29
        L29:
            r2 = move-exception
            r8 = r2
            r2 = r1
            r1 = r8
        L2d:
            if (r7 == 0) goto L32
            zza(r2, r7)     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> L35
        L32:
            throw r1     // Catch: java.lang.Throwable -> L33 java.lang.Throwable -> L35
        L33:
            r1 = move-exception
            goto L37
        L35:
            r10 = move-exception
            throw r10     // Catch: java.lang.Throwable -> L33
        L37:
            zza(r10, r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzy.zza(java.io.File):com.google.firebase.iid.zzz");
    }

    private static zzz zza(FileChannel fileChannel) throws IOException, zzaa {
        Properties properties = new Properties();
        properties.load(Channels.newInputStream(fileChannel));
        String property = properties.getProperty("pub");
        String property2 = properties.getProperty("pri");
        if (property == null || property2 == null) {
            throw new zzaa("Invalid properties file");
        }
        try {
            return new zzz(zzc(property, property2), Long.parseLong(properties.getProperty("cre")));
        } catch (NumberFormatException e) {
            throw new zzaa(e);
        }
    }

    @Nullable
    private static zzz zza(SharedPreferences sharedPreferences, String str) throws zzaa {
        String string = sharedPreferences.getString(zzaw.zzd(str, "|P|"), null);
        String string2 = sharedPreferences.getString(zzaw.zzd(str, "|K|"), null);
        if (string == null || string2 == null) {
            return null;
        }
        return new zzz(zzc(string, string2), zzb(sharedPreferences, str));
    }

    private final void zza(Context context, String str, zzz zzzVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        try {
            if (zzzVar.equals(zza(sharedPreferences, str))) {
                return;
            }
        } catch (zzaa e) {
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Writing key to shared preferences");
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(zzaw.zzd(str, "|P|"), zzzVar.zzv());
        editorEdit.putString(zzaw.zzd(str, "|K|"), zzzVar.zzw());
        editorEdit.putString(zzaw.zzd(str, "cre"), String.valueOf(zzzVar.zzbs));
        editorEdit.commit();
    }

    private static long zzb(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(zzaw.zzd(str, "cre"), null);
        if (string != null) {
            try {
                return Long.parseLong(string);
            } catch (NumberFormatException e) {
                return 0L;
            }
        }
        return 0L;
    }

    private static /* synthetic */ void zza(Throwable th, FileChannel fileChannel) {
        if (th == null) {
            fileChannel.close();
            return;
        }
        try {
            fileChannel.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.firebase_messaging.zzc.zza(th, th2);
        }
    }

    private static /* synthetic */ void zza(Throwable th, RandomAccessFile randomAccessFile) throws IOException {
        if (th == null) {
            randomAccessFile.close();
            return;
        }
        try {
            randomAccessFile.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.firebase_messaging.zzc.zza(th, th2);
        }
    }

    private static /* synthetic */ void zza(Throwable th, FileInputStream fileInputStream) throws IOException {
        if (th == null) {
            fileInputStream.close();
            return;
        }
        try {
            fileInputStream.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.firebase_messaging.zzc.zza(th, th2);
        }
    }
}
