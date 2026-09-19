package com.google.android.gms.stats;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.providers.PooledExecutorsProvider;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.WorkSourceUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes2.dex */
@ShowFirstParty
@ThreadSafe
@KeepForSdk
public class WakeLock {
    private static ScheduledExecutorService zzn;
    private static volatile zza zzo = new com.google.android.gms.stats.zza();
    private final Object zza;
    private final PowerManager.WakeLock zzb;
    private WorkSource zzc;
    private final int zzd;
    private final String zze;
    private final String zzf;
    private final String zzg;
    private final Context zzh;
    private boolean zzi;
    private final Map<String, Integer[]> zzj;
    private final Set<Future<?>> zzk;
    private int zzl;
    private AtomicInteger zzm;

    public interface zza {
    }

    @KeepForSdk
    public WakeLock(@NonNull Context context, int i, @NonNull String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    private WakeLock(@NonNull Context context, int i, @NonNull String str, @Nullable String str2, @NonNull String str3) {
        this(context, i, str, null, str3, null);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    private WakeLock(@NonNull Context context, int i, @NonNull String str, @Nullable String str2, @NonNull String str3, @Nullable String str4) {
        this.zza = this;
        this.zzi = true;
        this.zzj = new HashMap();
        this.zzk = Collections.synchronizedSet(new HashSet());
        this.zzm = new AtomicInteger(0);
        Preconditions.checkNotNull(context, "WakeLock: context must not be null");
        Preconditions.checkNotEmpty(str, "WakeLock: wakeLockName must not be empty");
        this.zzd = i;
        this.zzf = null;
        this.zzg = null;
        this.zzh = context.getApplicationContext();
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String strValueOf = String.valueOf("*gcore*:");
            String strValueOf2 = String.valueOf(str);
            this.zze = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
        } else {
            this.zze = str;
        }
        this.zzb = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (WorkSourceUtil.hasWorkSourcePermission(context)) {
            this.zzc = WorkSourceUtil.fromPackage(context, Strings.isEmptyOrWhitespace(str3) ? context.getPackageName() : str3);
            WorkSource workSource = this.zzc;
            if (workSource != null && WorkSourceUtil.hasWorkSourcePermission(this.zzh)) {
                if (this.zzc != null) {
                    this.zzc.add(workSource);
                } else {
                    this.zzc = workSource;
                }
                try {
                    this.zzb.setWorkSource(this.zzc);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
                    Log.wtf("WakeLock", e.toString());
                }
            }
        }
        if (zzn == null) {
            zzn = PooledExecutorsProvider.getInstance().newSingleThreadScheduledExecutor();
        }
    }

    private final List<String> zza() {
        return WorkSourceUtil.getNames(this.zzc);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005b A[Catch: all -> 0x009c, TryCatch #0 {, blocks: (B:4:0x0010, B:6:0x0019, B:11:0x002c, B:13:0x0031, B:15:0x003b, B:22:0x0063, B:23:0x0082, B:16:0x004b, B:18:0x005b, B:20:0x005f, B:8:0x001d, B:10:0x0025), top: B:31:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0063 A[Catch: all -> 0x009c, TryCatch #0 {, blocks: (B:4:0x0010, B:6:0x0019, B:11:0x002c, B:13:0x0031, B:15:0x003b, B:22:0x0063, B:23:0x0082, B:16:0x004b, B:18:0x005b, B:20:0x005f, B:8:0x001d, B:10:0x0025), top: B:31:0x0010 }] */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void acquire(long r14) {
        /*
            r13 = this;
            java.util.concurrent.atomic.AtomicInteger r0 = r13.zzm
            r0.incrementAndGet()
            r0 = 0
            java.lang.String r6 = r13.zza(r0)
            java.lang.Object r0 = r13.zza
            monitor-enter(r0)
            java.util.Map<java.lang.String, java.lang.Integer[]> r1 = r13.zzj     // Catch: java.lang.Throwable -> L9c
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L9c
            r2 = 0
            if (r1 == 0) goto L1d
            int r1 = r13.zzl     // Catch: java.lang.Throwable -> L9c
            if (r1 <= 0) goto L2c
        L1d:
            android.os.PowerManager$WakeLock r1 = r13.zzb     // Catch: java.lang.Throwable -> L9c
            boolean r1 = r1.isHeld()     // Catch: java.lang.Throwable -> L9c
            if (r1 != 0) goto L2c
            java.util.Map<java.lang.String, java.lang.Integer[]> r1 = r13.zzj     // Catch: java.lang.Throwable -> L9c
            r1.clear()     // Catch: java.lang.Throwable -> L9c
            r13.zzl = r2     // Catch: java.lang.Throwable -> L9c
        L2c:
            boolean r1 = r13.zzi     // Catch: java.lang.Throwable -> L9c
            r12 = 1
            if (r1 == 0) goto L5b
            java.util.Map<java.lang.String, java.lang.Integer[]> r1 = r13.zzj     // Catch: java.lang.Throwable -> L9c
            java.lang.Object r1 = r1.get(r6)     // Catch: java.lang.Throwable -> L9c
            java.lang.Integer[] r1 = (java.lang.Integer[]) r1     // Catch: java.lang.Throwable -> L9c
            if (r1 != 0) goto L4b
            java.util.Map<java.lang.String, java.lang.Integer[]> r1 = r13.zzj     // Catch: java.lang.Throwable -> L9c
            java.lang.Integer[] r3 = new java.lang.Integer[r12]     // Catch: java.lang.Throwable -> L9c
            java.lang.Integer r4 = java.lang.Integer.valueOf(r12)     // Catch: java.lang.Throwable -> L9c
            r3[r2] = r4     // Catch: java.lang.Throwable -> L9c
            r1.put(r6, r3)     // Catch: java.lang.Throwable -> L9c
            r2 = 1
            goto L59
        L4b:
            r3 = r1[r2]     // Catch: java.lang.Throwable -> L9c
            int r3 = r3.intValue()     // Catch: java.lang.Throwable -> L9c
            int r3 = r3 + r12
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L9c
            r1[r2] = r3     // Catch: java.lang.Throwable -> L9c
        L59:
            if (r2 != 0) goto L63
        L5b:
            boolean r1 = r13.zzi     // Catch: java.lang.Throwable -> L9c
            if (r1 != 0) goto L82
            int r1 = r13.zzl     // Catch: java.lang.Throwable -> L9c
            if (r1 != 0) goto L82
        L63:
            com.google.android.gms.common.stats.WakeLockTracker r1 = com.google.android.gms.common.stats.WakeLockTracker.getInstance()     // Catch: java.lang.Throwable -> L9c
            android.content.Context r2 = r13.zzh     // Catch: java.lang.Throwable -> L9c
            android.os.PowerManager$WakeLock r3 = r13.zzb     // Catch: java.lang.Throwable -> L9c
            java.lang.String r3 = com.google.android.gms.common.stats.StatsUtils.getEventKey(r3, r6)     // Catch: java.lang.Throwable -> L9c
            r4 = 7
            java.lang.String r5 = r13.zze     // Catch: java.lang.Throwable -> L9c
            r7 = 0
            int r8 = r13.zzd     // Catch: java.lang.Throwable -> L9c
            java.util.List r9 = r13.zza()     // Catch: java.lang.Throwable -> L9c
            r10 = r14
            r1.registerEvent(r2, r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L9c
            int r1 = r13.zzl     // Catch: java.lang.Throwable -> L9c
            int r1 = r1 + r12
            r13.zzl = r1     // Catch: java.lang.Throwable -> L9c
        L82:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9c
            android.os.PowerManager$WakeLock r0 = r13.zzb
            r0.acquire()
            r0 = 0
            int r2 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r2 <= 0) goto L9b
        L8f:
            java.util.concurrent.ScheduledExecutorService r0 = com.google.android.gms.stats.WakeLock.zzn
            com.google.android.gms.stats.zzb r1 = new com.google.android.gms.stats.zzb
            r1.<init>(r13)
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.MILLISECONDS
            r0.schedule(r1, r14, r2)
        L9b:
            return
        L9c:
            r14 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9c
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.WakeLock.acquire(long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0057 A[Catch: all -> 0x0083, TryCatch #0 {, blocks: (B:7:0x0024, B:9:0x002a, B:21:0x005f, B:22:0x007e, B:12:0x0037, B:14:0x003f, B:15:0x0047, B:17:0x0057, B:19:0x005b), top: B:28:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005f A[Catch: all -> 0x0083, TryCatch #0 {, blocks: (B:7:0x0024, B:9:0x002a, B:21:0x005f, B:22:0x007e, B:12:0x0037, B:14:0x003f, B:15:0x0047, B:17:0x0057, B:19:0x005b), top: B:28:0x0024 }] */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void release() {
        /*
            r12 = this;
            java.util.concurrent.atomic.AtomicInteger r0 = r12.zzm
            int r0 = r0.decrementAndGet()
            if (r0 >= 0) goto L1a
            java.lang.String r0 = "WakeLock"
            java.lang.String r1 = r12.zze
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r2 = " release without a matched acquire!"
            java.lang.String r1 = r1.concat(r2)
            android.util.Log.e(r0, r1)
        L1a:
            r0 = 0
            java.lang.String r6 = r12.zza(r0)
            java.lang.Object r0 = r12.zza
            monitor-enter(r0)
            boolean r1 = r12.zzi     // Catch: java.lang.Throwable -> L83
            r10 = 1
            r11 = 0
            if (r1 == 0) goto L57
            java.util.Map<java.lang.String, java.lang.Integer[]> r1 = r12.zzj     // Catch: java.lang.Throwable -> L83
            java.lang.Object r1 = r1.get(r6)     // Catch: java.lang.Throwable -> L83
            java.lang.Integer[] r1 = (java.lang.Integer[]) r1     // Catch: java.lang.Throwable -> L83
            if (r1 != 0) goto L37
        L35:
            r1 = 0
            goto L55
        L37:
            r2 = r1[r11]     // Catch: java.lang.Throwable -> L83
            int r2 = r2.intValue()     // Catch: java.lang.Throwable -> L83
            if (r2 != r10) goto L47
            java.util.Map<java.lang.String, java.lang.Integer[]> r1 = r12.zzj     // Catch: java.lang.Throwable -> L83
            r1.remove(r6)     // Catch: java.lang.Throwable -> L83
            r1 = 1
            goto L55
        L47:
            r2 = r1[r11]     // Catch: java.lang.Throwable -> L83
            int r2 = r2.intValue()     // Catch: java.lang.Throwable -> L83
            int r2 = r2 - r10
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L83
            r1[r11] = r2     // Catch: java.lang.Throwable -> L83
            goto L35
        L55:
            if (r1 != 0) goto L5f
        L57:
            boolean r1 = r12.zzi     // Catch: java.lang.Throwable -> L83
            if (r1 != 0) goto L7e
            int r1 = r12.zzl     // Catch: java.lang.Throwable -> L83
            if (r1 != r10) goto L7e
        L5f:
            com.google.android.gms.common.stats.WakeLockTracker r1 = com.google.android.gms.common.stats.WakeLockTracker.getInstance()     // Catch: java.lang.Throwable -> L83
            android.content.Context r2 = r12.zzh     // Catch: java.lang.Throwable -> L83
            android.os.PowerManager$WakeLock r3 = r12.zzb     // Catch: java.lang.Throwable -> L83
            java.lang.String r3 = com.google.android.gms.common.stats.StatsUtils.getEventKey(r3, r6)     // Catch: java.lang.Throwable -> L83
            r4 = 8
            java.lang.String r5 = r12.zze     // Catch: java.lang.Throwable -> L83
            r7 = 0
            int r8 = r12.zzd     // Catch: java.lang.Throwable -> L83
            java.util.List r9 = r12.zza()     // Catch: java.lang.Throwable -> L83
            r1.registerEvent(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L83
            int r1 = r12.zzl     // Catch: java.lang.Throwable -> L83
            int r1 = r1 - r10
            r12.zzl = r1     // Catch: java.lang.Throwable -> L83
        L7e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L83
            r12.zza(r11)
            return
        L83:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L83
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.WakeLock.release():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(int i) {
        if (this.zzb.isHeld()) {
            try {
                this.zzb.release();
            } catch (RuntimeException e) {
                if (e.getClass().equals(RuntimeException.class)) {
                    Log.e("WakeLock", String.valueOf(this.zze).concat(" was already released!"), e);
                } else {
                    throw e;
                }
            }
            this.zzb.isHeld();
        }
    }

    private final String zza(String str) {
        return (!this.zzi || TextUtils.isEmpty(str)) ? this.zzf : str;
    }

    @KeepForSdk
    public void setReferenceCounted(boolean z) {
        this.zzb.setReferenceCounted(z);
        this.zzi = z;
    }

    @KeepForSdk
    public boolean isHeld() {
        return this.zzb.isHeld();
    }
}
