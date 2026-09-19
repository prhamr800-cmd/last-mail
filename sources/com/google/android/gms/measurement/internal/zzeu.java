package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.MainThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzey;

/* JADX INFO: loaded from: classes2.dex */
public final class zzeu<T extends Context & zzey> {
    private final T zzaby;

    public zzeu(T t) {
        Preconditions.checkNotNull(t);
        this.zzaby = t;
    }

    @MainThread
    public final void onCreate() {
        zzbu zzbuVarZza = zzbu.zza(this.zzaby, (zzal) null);
        zzaq zzaqVarZzgt = zzbuVarZza.zzgt();
        zzbuVarZza.zzgw();
        zzaqVarZzgt.zzjo().zzca("Local AppMeasurementService is starting up");
    }

    @MainThread
    public final void onDestroy() {
        zzbu zzbuVarZza = zzbu.zza(this.zzaby, (zzal) null);
        zzaq zzaqVarZzgt = zzbuVarZza.zzgt();
        zzbuVarZza.zzgw();
        zzaqVarZzgt.zzjo().zzca("Local AppMeasurementService is shutting down");
    }

    @MainThread
    public final int onStartCommand(final Intent intent, int i, final int i2) {
        zzbu zzbuVarZza = zzbu.zza(this.zzaby, (zzal) null);
        final zzaq zzaqVarZzgt = zzbuVarZza.zzgt();
        if (intent == null) {
            zzaqVarZzgt.zzjj().zzca("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzbuVarZza.zzgw();
        zzaqVarZzgt.zzjo().zze("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            zzb(new Runnable(this, i2, zzaqVarZzgt, intent) { // from class: com.google.android.gms.measurement.internal.zzev
                private final int zzacb;
                private final zzeu zzatg;
                private final zzaq zzath;
                private final Intent zzati;

                {
                    this.zzatg = this;
                    this.zzacb = i2;
                    this.zzath = zzaqVarZzgt;
                    this.zzati = intent;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzatg.zza(this.zzacb, this.zzath, this.zzati);
                }
            });
        }
        return 2;
    }

    private final void zzb(Runnable runnable) {
        zzfk zzfkVarZzn = zzfk.zzn(this.zzaby);
        zzfkVarZzn.zzgs().zzc(new zzex(this, zzfkVarZzn, runnable));
    }

    @MainThread
    public final IBinder onBind(Intent intent) {
        if (intent == null) {
            zzgt().zzjg().zzca("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzbw(zzfk.zzn(this.zzaby));
        }
        zzgt().zzjj().zzg("onBind received unknown action", action);
        return null;
    }

    @MainThread
    public final boolean onUnbind(Intent intent) {
        if (intent == null) {
            zzgt().zzjg().zzca("onUnbind called with null intent");
            return true;
        }
        zzgt().zzjo().zzg("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    @TargetApi(24)
    @MainThread
    public final boolean onStartJob(final JobParameters jobParameters) {
        zzbu zzbuVarZza = zzbu.zza(this.zzaby, (zzal) null);
        final zzaq zzaqVarZzgt = zzbuVarZza.zzgt();
        String string = jobParameters.getExtras().getString("action");
        zzbuVarZza.zzgw();
        zzaqVarZzgt.zzjo().zzg("Local AppMeasurementJobService called. action", string);
        if ("com.google.android.gms.measurement.UPLOAD".equals(string)) {
            zzb(new Runnable(this, zzaqVarZzgt, jobParameters) { // from class: com.google.android.gms.measurement.internal.zzew
                private final JobParameters zzace;
                private final zzeu zzatg;
                private final zzaq zzatj;

                {
                    this.zzatg = this;
                    this.zzatj = zzaqVarZzgt;
                    this.zzace = jobParameters;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzatg.zza(this.zzatj, this.zzace);
                }
            });
            return true;
        }
        return true;
    }

    @MainThread
    public final void onRebind(Intent intent) {
        if (intent == null) {
            zzgt().zzjg().zzca("onRebind called with null intent");
        } else {
            zzgt().zzjo().zzg("onRebind called. action", intent.getAction());
        }
    }

    private final zzaq zzgt() {
        return zzbu.zza(this.zzaby, (zzal) null).zzgt();
    }

    final /* synthetic */ void zza(zzaq zzaqVar, JobParameters jobParameters) {
        zzaqVar.zzjo().zzca("AppMeasurementJobService processed last upload request.");
        this.zzaby.zza(jobParameters, false);
    }

    final /* synthetic */ void zza(int i, zzaq zzaqVar, Intent intent) {
        if (this.zzaby.callServiceStopSelfResult(i)) {
            zzaqVar.zzjo().zzg("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            zzgt().zzjo().zzca("Completed wakeful intent.");
            this.zzaby.zzb(intent);
        }
    }
}
