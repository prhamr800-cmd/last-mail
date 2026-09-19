package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import android.support.v4.app.NotificationCompat;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfg extends zzfj {
    private final zzw zzatr;
    private final AlarmManager zzyt;
    private Integer zzyu;

    protected zzfg(zzfk zzfkVar) {
        super(zzfkVar);
        this.zzyt = (AlarmManager) getContext().getSystemService(NotificationCompat.CATEGORY_ALARM);
        this.zzatr = new zzfh(this, zzfkVar.zzmh(), zzfkVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzfj
    protected final boolean zzgy() {
        this.zzyt.cancel(zzeo());
        if (Build.VERSION.SDK_INT >= 24) {
            zzlr();
            return false;
        }
        return false;
    }

    @TargetApi(24)
    private final void zzlr() {
        JobScheduler jobScheduler = (JobScheduler) getContext().getSystemService("jobscheduler");
        int jobId = getJobId();
        zzgt().zzjo().zzg("Cancelling job. JobID", Integer.valueOf(jobId));
        jobScheduler.cancel(jobId);
    }

    public final void zzh(long j) {
        zzcl();
        zzgw();
        Context context = getContext();
        if (!zzbk.zza(context)) {
            zzgt().zzjn().zzca("Receiver not registered/enabled");
        }
        if (!zzfu.zza(context, false)) {
            zzgt().zzjn().zzca("Service not registered/enabled");
        }
        cancel();
        long jElapsedRealtime = zzbx().elapsedRealtime() + j;
        if (j < Math.max(0L, zzag.zzakd.get().longValue()) && !this.zzatr.zzej()) {
            zzgt().zzjo().zzca("Scheduling upload with DelayedRunnable");
            this.zzatr.zzh(j);
        }
        zzgw();
        if (Build.VERSION.SDK_INT >= 24) {
            zzgt().zzjo().zzca("Scheduling upload with JobScheduler");
            Context context2 = getContext();
            ComponentName componentName = new ComponentName(context2, "com.google.android.gms.measurement.AppMeasurementJobService");
            int jobId = getJobId();
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
            JobInfo jobInfoBuild = new JobInfo.Builder(jobId, componentName).setMinimumLatency(j).setOverrideDeadline(j << 1).setExtras(persistableBundle).build();
            zzgt().zzjo().zzg("Scheduling job. JobID", Integer.valueOf(jobId));
            com.google.android.gms.internal.measurement.zzdx.zza(context2, jobInfoBuild, "com.google.android.gms", "UploadAlarm");
            return;
        }
        zzgt().zzjo().zzca("Scheduling upload with AlarmManager");
        this.zzyt.setInexactRepeating(2, jElapsedRealtime, Math.max(zzag.zzajy.get().longValue(), j), zzeo());
    }

    private final int getJobId() {
        if (this.zzyu == null) {
            String strValueOf = String.valueOf(getContext().getPackageName());
            this.zzyu = Integer.valueOf((strValueOf.length() != 0 ? "measurement".concat(strValueOf) : new String("measurement")).hashCode());
        }
        return this.zzyu.intValue();
    }

    public final void cancel() {
        zzcl();
        this.zzyt.cancel(zzeo());
        this.zzatr.cancel();
        if (Build.VERSION.SDK_INT >= 24) {
            zzlr();
        }
    }

    private final PendingIntent zzeo() {
        Context context = getContext();
        return PendingIntent.getBroadcast(context, 0, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), 0);
    }

    @Override // com.google.android.gms.measurement.internal.zzfi
    public final /* bridge */ /* synthetic */ zzfq zzjr() {
        return super.zzjr();
    }

    @Override // com.google.android.gms.measurement.internal.zzfi
    public final /* bridge */ /* synthetic */ zzk zzjs() {
        return super.zzjs();
    }

    @Override // com.google.android.gms.measurement.internal.zzfi
    public final /* bridge */ /* synthetic */ zzr zzjt() {
        return super.zzjt();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgf() {
        super.zzgf();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgg() {
        super.zzgg();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgh() {
        super.zzgh();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzy zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzao zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzfu zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzbp zzgs() {
        return super.zzgs();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzaq zzgt() {
        return super.zzgt();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzbb zzgu() {
        return super.zzgu();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzo zzgv() {
        return super.zzgv();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzl zzgw() {
        return super.zzgw();
    }
}
