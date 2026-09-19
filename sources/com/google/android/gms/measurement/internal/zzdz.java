package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
public final class zzdz extends zzf {
    private final zzeo zzaso;
    private zzah zzasp;
    private volatile Boolean zzasq;
    private final zzw zzasr;
    private final zzff zzass;
    private final List<Runnable> zzast;
    private final zzw zzasu;

    protected zzdz(zzbu zzbuVar) {
        super(zzbuVar);
        this.zzast = new ArrayList();
        this.zzass = new zzff(zzbuVar.zzbx());
        this.zzaso = new zzeo(this);
        this.zzasr = new zzea(this, zzbuVar);
        this.zzasu = new zzeg(this, zzbuVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzgy() {
        return false;
    }

    @WorkerThread
    public final boolean isConnected() {
        zzaf();
        zzcl();
        return this.zzasp != null;
    }

    @WorkerThread
    protected final void zzlg() {
        zzaf();
        zzcl();
        zzf(new zzeh(this, zzl(true)));
    }

    @WorkerThread
    @VisibleForTesting
    final void zza(zzah zzahVar, AbstractSafeParcelable abstractSafeParcelable, zzi zziVar) {
        int size;
        List<AbstractSafeParcelable> listZzr;
        zzaf();
        zzgg();
        zzcl();
        boolean zZzlh = zzlh();
        int i = 0;
        int i2 = 100;
        while (i < 1001 && i2 == 100) {
            ArrayList arrayList = new ArrayList();
            if (zZzlh && (listZzr = zzgn().zzr(100)) != null) {
                arrayList.addAll(listZzr);
                size = listZzr.size();
            } else {
                size = 0;
            }
            if (abstractSafeParcelable != null && size < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            ArrayList arrayList2 = arrayList;
            int size2 = arrayList2.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj = arrayList2.get(i3);
                i3++;
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) obj;
                if (abstractSafeParcelable2 instanceof zzae) {
                    try {
                        zzahVar.zza((zzae) abstractSafeParcelable2, zziVar);
                    } catch (RemoteException e) {
                        zzgt().zzjg().zzg("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzfr) {
                    try {
                        zzahVar.zza((zzfr) abstractSafeParcelable2, zziVar);
                    } catch (RemoteException e2) {
                        zzgt().zzjg().zzg("Failed to send attribute to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzm) {
                    try {
                        zzahVar.zza((zzm) abstractSafeParcelable2, zziVar);
                    } catch (RemoteException e3) {
                        zzgt().zzjg().zzg("Failed to send conditional property to the service", e3);
                    }
                } else {
                    zzgt().zzjg().zzca("Discarding data. Unrecognized parcel type.");
                }
            }
            i++;
            i2 = size;
        }
    }

    @WorkerThread
    protected final void zzc(zzae zzaeVar, String str) {
        Preconditions.checkNotNull(zzaeVar);
        zzaf();
        zzcl();
        boolean zZzlh = zzlh();
        zzf(new zzei(this, zZzlh, zZzlh && zzgn().zza(zzaeVar), zzaeVar, zzl(true), str));
    }

    @WorkerThread
    protected final void zzd(zzm zzmVar) {
        Preconditions.checkNotNull(zzmVar);
        zzaf();
        zzcl();
        zzgw();
        zzf(new zzej(this, true, zzgn().zzc(zzmVar), new zzm(zzmVar), zzl(true), zzmVar));
    }

    @WorkerThread
    protected final void zza(AtomicReference<List<zzm>> atomicReference, String str, String str2, String str3) {
        zzaf();
        zzcl();
        zzf(new zzek(this, atomicReference, str, str2, str3, zzl(false)));
    }

    @WorkerThread
    protected final void zza(AtomicReference<List<zzfr>> atomicReference, String str, String str2, String str3, boolean z) {
        zzaf();
        zzcl();
        zzf(new zzel(this, atomicReference, str, str2, str3, z, zzl(false)));
    }

    @WorkerThread
    protected final void zzb(zzfr zzfrVar) {
        boolean z;
        zzaf();
        zzcl();
        if (!zzlh() || !zzgn().zza(zzfrVar)) {
            z = false;
        } else {
            z = true;
        }
        zzf(new zzem(this, z, zzfrVar, zzl(true)));
    }

    @WorkerThread
    protected final void zza(AtomicReference<List<zzfr>> atomicReference, boolean z) {
        zzaf();
        zzcl();
        zzf(new zzen(this, atomicReference, zzl(false), z));
    }

    @WorkerThread
    protected final void resetAnalyticsData() {
        zzaf();
        zzgg();
        zzcl();
        zzi zziVarZzl = zzl(false);
        if (zzlh()) {
            zzgn().resetAnalyticsData();
        }
        zzf(new zzeb(this, zziVarZzl));
    }

    private final boolean zzlh() {
        zzgw();
        return true;
    }

    @WorkerThread
    public final void zza(AtomicReference<String> atomicReference) {
        zzaf();
        zzcl();
        zzf(new zzec(this, atomicReference, zzl(false)));
    }

    @WorkerThread
    public final void getAppInstanceId(com.google.android.gms.internal.measurement.zzef zzefVar) {
        zzaf();
        zzcl();
        zzf(new zzed(this, zzl(false), zzefVar));
    }

    @WorkerThread
    protected final void zzld() {
        zzaf();
        zzcl();
        zzf(new zzee(this, zzl(true)));
    }

    @WorkerThread
    protected final void zza(zzdv zzdvVar) {
        zzaf();
        zzcl();
        zzf(new zzef(this, zzdvVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzcy() {
        zzaf();
        this.zzass.start();
        this.zzasr.zzh(zzag.zzakm.get().longValue());
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x006a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:42:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0128  */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zzdj() {
        /*
            Method dump skipped, instruction units count: 438
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzdz.zzdj():void");
    }

    final Boolean zzli() {
        return this.zzasq;
    }

    @WorkerThread
    @VisibleForTesting
    protected final void zza(zzah zzahVar) {
        zzaf();
        Preconditions.checkNotNull(zzahVar);
        this.zzasp = zzahVar;
        zzcy();
        zzlj();
    }

    @WorkerThread
    public final void disconnect() {
        zzaf();
        zzcl();
        this.zzaso.zzlk();
        try {
            ConnectionTracker.getInstance().unbindService(getContext(), this.zzaso);
        } catch (IllegalArgumentException | IllegalStateException e) {
        }
        this.zzasp = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void onServiceDisconnected(ComponentName componentName) {
        zzaf();
        if (this.zzasp != null) {
            this.zzasp = null;
            zzgt().zzjo().zzg("Disconnected from device MeasurementService", componentName);
            zzaf();
            zzdj();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzcz() {
        zzaf();
        if (!isConnected()) {
            return;
        }
        zzgt().zzjo().zzca("Inactivity, disconnecting from the service");
        disconnect();
    }

    @WorkerThread
    private final void zzf(Runnable runnable) throws IllegalStateException {
        zzaf();
        if (isConnected()) {
            runnable.run();
        } else {
            if (this.zzast.size() >= 1000) {
                zzgt().zzjg().zzca("Discarding data. Max runnable queue size reached");
                return;
            }
            this.zzast.add(runnable);
            this.zzasu.zzh(60000L);
            zzdj();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzlj() {
        zzaf();
        zzgt().zzjo().zzg("Processing queued up service tasks", Integer.valueOf(this.zzast.size()));
        Iterator<Runnable> it = this.zzast.iterator();
        while (it.hasNext()) {
            try {
                it.next().run();
            } catch (Exception e) {
                zzgt().zzjg().zzg("Task exception while flushing queue", e);
            }
        }
        this.zzast.clear();
        this.zzasu.cancel();
    }

    @WorkerThread
    @Nullable
    private final zzi zzl(boolean z) {
        zzgw();
        return zzgk().zzbu(z ? zzgt().zzjq() : null);
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgf() {
        super.zzgf();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgg() {
        super.zzgg();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgh() {
        super.zzgh();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zza zzgi() {
        return super.zzgi();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzcy zzgj() {
        return super.zzgj();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzak zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdz zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdw zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzam zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzez zzgo() {
        return super.zzgo();
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

    static /* synthetic */ zzah zza(zzdz zzdzVar, zzah zzahVar) {
        zzdzVar.zzasp = null;
        return null;
    }
}
