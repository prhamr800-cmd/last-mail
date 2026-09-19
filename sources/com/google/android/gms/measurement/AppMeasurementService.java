package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.MainThread;
import com.google.android.gms.measurement.internal.zzeu;
import com.google.android.gms.measurement.internal.zzey;

/* JADX INFO: loaded from: classes2.dex */
public final class AppMeasurementService extends Service implements zzey {
    private zzeu<AppMeasurementService> zzadr;

    private final zzeu<AppMeasurementService> zzfz() {
        if (this.zzadr == null) {
            this.zzadr = new zzeu<>(this);
        }
        return this.zzadr;
    }

    @Override // android.app.Service
    @MainThread
    public final void onCreate() {
        super.onCreate();
        zzfz().onCreate();
    }

    @Override // android.app.Service
    @MainThread
    public final void onDestroy() {
        zzfz().onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Service
    @MainThread
    public final int onStartCommand(Intent intent, int i, int i2) {
        return zzfz().onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    @MainThread
    public final IBinder onBind(Intent intent) {
        return zzfz().onBind(intent);
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(Intent intent) {
        return zzfz().onUnbind(intent);
    }

    @Override // android.app.Service
    @MainThread
    public final void onRebind(Intent intent) {
        zzfz().onRebind(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzey
    public final boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
    }

    @Override // com.google.android.gms.measurement.internal.zzey
    public final void zza(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.zzey
    public final void zzb(Intent intent) {
        AppMeasurementReceiver.completeWakefulIntent(intent);
    }
}
