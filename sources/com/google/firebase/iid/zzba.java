package com.google.firebase.iid;

import android.support.annotation.GuardedBy;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzba {

    @GuardedBy("itself")
    private final zzaw zzaj;

    @GuardedBy("this")
    private int zzdl = 0;

    @GuardedBy("this")
    private final Map<Integer, TaskCompletionSource<Void>> zzdm = new ArrayMap();

    zzba(zzaw zzawVar) {
        this.zzaj = zzawVar;
    }

    final synchronized Task<Void> zza(String str) {
        String strZzak;
        TaskCompletionSource<Void> taskCompletionSource;
        synchronized (this.zzaj) {
            strZzak = this.zzaj.zzak();
            zzaw zzawVar = this.zzaj;
            StringBuilder sb = new StringBuilder(String.valueOf(strZzak).length() + 1 + String.valueOf(str).length());
            sb.append(strZzak);
            sb.append(",");
            sb.append(str);
            zzawVar.zzf(sb.toString());
        }
        taskCompletionSource = new TaskCompletionSource<>();
        this.zzdm.put(Integer.valueOf(this.zzdl + (TextUtils.isEmpty(strZzak) ? 0 : strZzak.split(",").length - 1)), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    final synchronized boolean zzaq() {
        return zzar() != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000c, code lost:
    
        if (com.google.firebase.iid.FirebaseInstanceId.zzl() == false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
    
        android.util.Log.d("FirebaseInstanceId", "topic sync succeeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
    
        return true;
     */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final boolean zzc(com.google.firebase.iid.FirebaseInstanceId r5) {
        /*
            r4 = this;
        L0:
            monitor-enter(r4)
            java.lang.String r0 = r4.zzar()     // Catch: java.lang.Throwable -> L43
            r1 = 1
            if (r0 != 0) goto L18
            boolean r5 = com.google.firebase.iid.FirebaseInstanceId.zzl()     // Catch: java.lang.Throwable -> L43
            if (r5 == 0) goto L16
            java.lang.String r5 = "FirebaseInstanceId"
            java.lang.String r0 = "topic sync succeeded"
            android.util.Log.d(r5, r0)     // Catch: java.lang.Throwable -> L43
        L16:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L43
            return r1
        L18:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L43
            boolean r2 = zza(r5, r0)
            if (r2 != 0) goto L21
            r5 = 0
            return r5
        L21:
            monitor-enter(r4)
            java.util.Map<java.lang.Integer, com.google.android.gms.tasks.TaskCompletionSource<java.lang.Void>> r2 = r4.zzdm     // Catch: java.lang.Throwable -> L40
            int r3 = r4.zzdl     // Catch: java.lang.Throwable -> L40
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L40
            java.lang.Object r2 = r2.remove(r3)     // Catch: java.lang.Throwable -> L40
            com.google.android.gms.tasks.TaskCompletionSource r2 = (com.google.android.gms.tasks.TaskCompletionSource) r2     // Catch: java.lang.Throwable -> L40
            r4.zzk(r0)     // Catch: java.lang.Throwable -> L40
            int r0 = r4.zzdl     // Catch: java.lang.Throwable -> L40
            int r0 = r0 + r1
            r4.zzdl = r0     // Catch: java.lang.Throwable -> L40
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L40
            if (r2 == 0) goto L3f
            r0 = 0
            r2.setResult(r0)
        L3f:
            goto L0
        L40:
            r5 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L40
            throw r5
        L43:
            r5 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L43
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzba.zzc(com.google.firebase.iid.FirebaseInstanceId):boolean");
    }

    @GuardedBy("this")
    @Nullable
    private final String zzar() {
        String strZzak;
        synchronized (this.zzaj) {
            strZzak = this.zzaj.zzak();
        }
        if (!TextUtils.isEmpty(strZzak)) {
            String[] strArrSplit = strZzak.split(",");
            if (strArrSplit.length > 1 && !TextUtils.isEmpty(strArrSplit[1])) {
                return strArrSplit[1];
            }
            return null;
        }
        return null;
    }

    private final synchronized boolean zzk(String str) {
        synchronized (this.zzaj) {
            String strZzak = this.zzaj.zzak();
            String strValueOf = String.valueOf(",");
            String strValueOf2 = String.valueOf(str);
            if (strZzak.startsWith(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf))) {
                String strValueOf3 = String.valueOf(",");
                String strValueOf4 = String.valueOf(str);
                this.zzaj.zzf(strZzak.substring((strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3)).length()));
                return true;
            }
            return false;
        }
    }

    @WorkerThread
    private static boolean zza(FirebaseInstanceId firebaseInstanceId, String str) {
        String[] strArrSplit = str.split("!");
        if (strArrSplit.length == 2) {
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[1];
            byte b = -1;
            try {
                int iHashCode = str2.hashCode();
                if (iHashCode != 83) {
                    if (iHashCode == 85 && str2.equals("U")) {
                        b = 1;
                    }
                } else if (str2.equals("S")) {
                    b = 0;
                }
                switch (b) {
                    case 0:
                        firebaseInstanceId.zzb(str3);
                        if (FirebaseInstanceId.zzl()) {
                            Log.d("FirebaseInstanceId", "subscribe operation succeeded");
                        }
                        break;
                    case 1:
                        firebaseInstanceId.zzc(str3);
                        if (FirebaseInstanceId.zzl()) {
                            Log.d("FirebaseInstanceId", "unsubscribe operation succeeded");
                        }
                        break;
                }
            } catch (IOException e) {
                String strValueOf = String.valueOf(e.getMessage());
                Log.e("FirebaseInstanceId", strValueOf.length() != 0 ? "Topic sync failed: ".concat(strValueOf) : new String("Topic sync failed: "));
                return false;
            }
        }
        return true;
    }
}
