package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzsx;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class zzbu implements zzcr {
    private static volatile zzbu zzapr;
    private final boolean zzadv;
    private final String zzadx;
    private final long zzaha;
    private final zzl zzait;
    private final String zzaps;
    private final String zzapt;
    private final zzo zzapu;
    private final zzbb zzapv;
    private final zzaq zzapw;
    private final zzbp zzapx;
    private final zzez zzapy;
    private final AppMeasurement zzapz;
    private final zzfu zzaqa;
    private final zzao zzaqb;
    private final zzdw zzaqc;
    private final zzcy zzaqd;
    private final zza zzaqe;
    private zzam zzaqf;
    private zzdz zzaqg;
    private zzy zzaqh;
    private zzak zzaqi;
    private zzbh zzaqj;
    private Boolean zzaqk;
    private long zzaql;
    private volatile Boolean zzaqm;

    @VisibleForTesting
    private Boolean zzaqn;

    @VisibleForTesting
    private Boolean zzaqo;
    private int zzaqp;
    private final Context zzri;
    private final Clock zzrz;
    private boolean zzvz = false;
    private AtomicInteger zzaqq = new AtomicInteger(0);

    private zzbu(zzcx zzcxVar) {
        Preconditions.checkNotNull(zzcxVar);
        this.zzait = new zzl(zzcxVar.zzri);
        zzag.zza(this.zzait);
        this.zzri = zzcxVar.zzri;
        this.zzadx = zzcxVar.zzadx;
        this.zzaps = zzcxVar.zzaps;
        this.zzapt = zzcxVar.zzapt;
        this.zzadv = zzcxVar.zzadv;
        this.zzaqm = zzcxVar.zzaqm;
        zzal zzalVar = zzcxVar.zzarj;
        if (zzalVar != null && zzalVar.zzady != null) {
            Object obj = zzalVar.zzady.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.zzaqn = (Boolean) obj;
            }
            Object obj2 = zzalVar.zzady.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.zzaqo = (Boolean) obj2;
            }
        }
        zzsx.zzae(this.zzri);
        this.zzrz = DefaultClock.getInstance();
        this.zzaha = this.zzrz.currentTimeMillis();
        this.zzapu = new zzo(this);
        zzbb zzbbVar = new zzbb(this);
        zzbbVar.zzq();
        this.zzapv = zzbbVar;
        zzaq zzaqVar = new zzaq(this);
        zzaqVar.zzq();
        this.zzapw = zzaqVar;
        zzfu zzfuVar = new zzfu(this);
        zzfuVar.zzq();
        this.zzaqa = zzfuVar;
        zzao zzaoVar = new zzao(this);
        zzaoVar.zzq();
        this.zzaqb = zzaoVar;
        this.zzaqe = new zza(this);
        zzdw zzdwVar = new zzdw(this);
        zzdwVar.zzq();
        this.zzaqc = zzdwVar;
        zzcy zzcyVar = new zzcy(this);
        zzcyVar.zzq();
        this.zzaqd = zzcyVar;
        this.zzapz = new AppMeasurement(this);
        zzez zzezVar = new zzez(this);
        zzezVar.zzq();
        this.zzapy = zzezVar;
        zzbp zzbpVar = new zzbp(this);
        zzbpVar.zzq();
        this.zzapx = zzbpVar;
        zzl zzlVar = this.zzait;
        if (this.zzri.getApplicationContext() instanceof Application) {
            zzcy zzcyVarZzgj = zzgj();
            if (zzcyVarZzgj.getContext().getApplicationContext() instanceof Application) {
                Application application = (Application) zzcyVarZzgj.getContext().getApplicationContext();
                if (zzcyVarZzgj.zzark == null) {
                    zzcyVarZzgj.zzark = new zzds(zzcyVarZzgj, null);
                }
                application.unregisterActivityLifecycleCallbacks(zzcyVarZzgj.zzark);
                application.registerActivityLifecycleCallbacks(zzcyVarZzgj.zzark);
                zzcyVarZzgj.zzgt().zzjo().zzca("Registered activity lifecycle callback");
            }
        } else {
            zzgt().zzjj().zzca("Application context is not an Application");
        }
        this.zzapx.zzc(new zzbv(this, zzcxVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zza(zzcx zzcxVar) {
        zzas zzasVarZzjm;
        String strConcat;
        zzgs().zzaf();
        zzo.zzhy();
        zzy zzyVar = new zzy(this);
        zzyVar.zzq();
        this.zzaqh = zzyVar;
        zzak zzakVar = new zzak(this);
        zzakVar.zzq();
        this.zzaqi = zzakVar;
        zzam zzamVar = new zzam(this);
        zzamVar.zzq();
        this.zzaqf = zzamVar;
        zzdz zzdzVar = new zzdz(this);
        zzdzVar.zzq();
        this.zzaqg = zzdzVar;
        this.zzaqa.zzgx();
        this.zzapv.zzgx();
        this.zzaqj = new zzbh(this);
        this.zzaqi.zzgx();
        zzgt().zzjm().zzg("App measurement is starting up, version", Long.valueOf(this.zzapu.zzhh()));
        zzl zzlVar = this.zzait;
        zzgt().zzjm().zzca("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        zzl zzlVar2 = this.zzait;
        String strZzal = zzakVar.zzal();
        if (TextUtils.isEmpty(this.zzadx)) {
            if (zzgr().zzdb(strZzal)) {
                zzasVarZzjm = zzgt().zzjm();
                strConcat = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
            } else {
                zzasVarZzjm = zzgt().zzjm();
                String strValueOf = String.valueOf(strZzal);
                strConcat = strValueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(strValueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
            }
            zzasVarZzjm.zzca(strConcat);
        }
        zzgt().zzjn().zzca("Debug-level message logging enabled");
        if (this.zzaqp != this.zzaqq.get()) {
            zzgt().zzjg().zze("Not all components initialized", Integer.valueOf(this.zzaqp), Integer.valueOf(this.zzaqq.get()));
        }
        this.zzvz = true;
    }

    @WorkerThread
    protected final void start() {
        zzgs().zzaf();
        if (zzgu().zzanl.get() == 0) {
            zzgu().zzanl.set(this.zzrz.currentTimeMillis());
        }
        if (Long.valueOf(zzgu().zzanq.get()).longValue() == 0) {
            zzgt().zzjo().zzg("Persisting first open", Long.valueOf(this.zzaha));
            zzgu().zzanq.set(this.zzaha);
        }
        if (!zzkv()) {
            if (isEnabled()) {
                if (!zzgr().zzx("android.permission.INTERNET")) {
                    zzgt().zzjg().zzca("App is missing INTERNET permission");
                }
                if (!zzgr().zzx("android.permission.ACCESS_NETWORK_STATE")) {
                    zzgt().zzjg().zzca("App is missing ACCESS_NETWORK_STATE permission");
                }
                zzl zzlVar = this.zzait;
                if (!Wrappers.packageManager(this.zzri).isCallerInstantApp() && !this.zzapu.zzif()) {
                    if (!zzbk.zza(this.zzri)) {
                        zzgt().zzjg().zzca("AppMeasurementReceiver not registered/enabled");
                    }
                    if (!zzfu.zza(this.zzri, false)) {
                        zzgt().zzjg().zzca("AppMeasurementService not registered/enabled");
                    }
                }
                zzgt().zzjg().zzca("Uploading is not possible. App measurement disabled");
                return;
            }
            return;
        }
        zzl zzlVar2 = this.zzait;
        if (!TextUtils.isEmpty(zzgk().getGmpAppId()) || !TextUtils.isEmpty(zzgk().zzhb())) {
            zzgr();
            if (zzfu.zza(zzgk().getGmpAppId(), zzgu().zzjv(), zzgk().zzhb(), zzgu().zzjw())) {
                zzgt().zzjm().zzca("Rechecking which service to use due to a GMP App Id change");
                zzgu().zzjy();
                zzgn().resetAnalyticsData();
                this.zzaqg.disconnect();
                this.zzaqg.zzdj();
                zzgu().zzanq.set(this.zzaha);
                zzgu().zzans.zzcf(null);
            }
            zzgu().zzcd(zzgk().getGmpAppId());
            zzgu().zzce(zzgk().zzhb());
            if (this.zzapu.zzbk(zzgk().zzal())) {
                this.zzapy.zzan(this.zzaha);
            }
        }
        zzgj().zzcr(zzgu().zzans.zzkd());
        zzl zzlVar3 = this.zzait;
        if (!TextUtils.isEmpty(zzgk().getGmpAppId()) || !TextUtils.isEmpty(zzgk().zzhb())) {
            boolean zIsEnabled = isEnabled();
            if (!zzgu().zzkc() && !this.zzapu.zzhz()) {
                zzgu().zzi(!zIsEnabled);
            }
            if (!this.zzapu.zzbc(zzgk().zzal()) || zIsEnabled) {
                zzgj().zzld();
            }
            zzgl().zza(new AtomicReference<>());
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public final zzl zzgw() {
        return this.zzait;
    }

    public final zzo zzgv() {
        return this.zzapu;
    }

    public final zzbb zzgu() {
        zza((zzcp) this.zzapv);
        return this.zzapv;
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public final zzaq zzgt() {
        zza((zzcq) this.zzapw);
        return this.zzapw;
    }

    public final zzaq zzkj() {
        if (this.zzapw == null || !this.zzapw.isInitialized()) {
            return null;
        }
        return this.zzapw;
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public final zzbp zzgs() {
        zza((zzcq) this.zzapx);
        return this.zzapx;
    }

    public final zzez zzgo() {
        zza((zzf) this.zzapy);
        return this.zzapy;
    }

    public final zzbh zzkk() {
        return this.zzaqj;
    }

    final zzbp zzkl() {
        return this.zzapx;
    }

    public final zzcy zzgj() {
        zza((zzf) this.zzaqd);
        return this.zzaqd;
    }

    public final AppMeasurement zzkm() {
        return this.zzapz;
    }

    public final zzfu zzgr() {
        zza((zzcp) this.zzaqa);
        return this.zzaqa;
    }

    public final zzao zzgq() {
        zza((zzcp) this.zzaqb);
        return this.zzaqb;
    }

    public final zzam zzgn() {
        zza((zzf) this.zzaqf);
        return this.zzaqf;
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public final Context getContext() {
        return this.zzri;
    }

    public final boolean zzkn() {
        return TextUtils.isEmpty(this.zzadx);
    }

    public final String zzko() {
        return this.zzadx;
    }

    public final String zzkp() {
        return this.zzaps;
    }

    public final String zzkq() {
        return this.zzapt;
    }

    public final boolean zzkr() {
        return this.zzadv;
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public final Clock zzbx() {
        return this.zzrz;
    }

    public final zzdw zzgm() {
        zza((zzf) this.zzaqc);
        return this.zzaqc;
    }

    public final zzdz zzgl() {
        zza((zzf) this.zzaqg);
        return this.zzaqg;
    }

    public final zzy zzgp() {
        zza((zzcq) this.zzaqh);
        return this.zzaqh;
    }

    public final zzak zzgk() {
        zza((zzf) this.zzaqi);
        return this.zzaqi;
    }

    public final zza zzgi() {
        if (this.zzaqe == null) {
            throw new IllegalStateException("Component not created");
        }
        return this.zzaqe;
    }

    public static zzbu zza(Context context, zzal zzalVar) {
        if (zzalVar != null && (zzalVar.origin == null || zzalVar.zzadx == null)) {
            zzalVar = new zzal(zzalVar.zzadt, zzalVar.zzadu, zzalVar.zzadv, zzalVar.zzadw, null, null, zzalVar.zzady);
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzapr == null) {
            synchronized (zzbu.class) {
                if (zzapr == null) {
                    zzapr = new zzbu(new zzcx(context, zzalVar));
                }
            }
        } else if (zzalVar != null && zzalVar.zzady != null && zzalVar.zzady.containsKey("dataCollectionDefaultEnabled")) {
            zzapr.zzd(zzalVar.zzady.getBoolean("dataCollectionDefaultEnabled"));
        }
        return zzapr;
    }

    private final void zzcl() {
        if (!this.zzvz) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
    }

    private static void zza(zzcq zzcqVar) {
        if (zzcqVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!zzcqVar.isInitialized()) {
            String strValueOf = String.valueOf(zzcqVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(strValueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    private static void zza(zzf zzfVar) {
        if (zzfVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!zzfVar.isInitialized()) {
            String strValueOf = String.valueOf(zzfVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(strValueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    private static void zza(zzcp zzcpVar) {
        if (zzcpVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    @WorkerThread
    final void zzd(boolean z) {
        this.zzaqm = Boolean.valueOf(z);
    }

    @WorkerThread
    public final boolean zzks() {
        return this.zzaqm != null && this.zzaqm.booleanValue();
    }

    @WorkerThread
    public final boolean isEnabled() {
        boolean zBooleanValue;
        zzgs().zzaf();
        zzcl();
        if (this.zzapu.zza(zzag.zzalo)) {
            if (this.zzapu.zzhz()) {
                return false;
            }
            if (this.zzaqo != null && this.zzaqo.booleanValue()) {
                return false;
            }
            Boolean boolZzjz = zzgu().zzjz();
            if (boolZzjz != null) {
                return boolZzjz.booleanValue();
            }
            Boolean boolZzia = this.zzapu.zzia();
            if (boolZzia != null) {
                return boolZzia.booleanValue();
            }
            if (this.zzaqn != null) {
                return this.zzaqn.booleanValue();
            }
            if (GoogleServices.isMeasurementExplicitlyDisabled()) {
                return false;
            }
            if (!this.zzapu.zza(zzag.zzalk) || this.zzaqm == null) {
                return true;
            }
            return this.zzaqm.booleanValue();
        }
        if (this.zzapu.zzhz()) {
            return false;
        }
        Boolean boolZzia2 = this.zzapu.zzia();
        if (boolZzia2 != null) {
            zBooleanValue = boolZzia2.booleanValue();
        } else {
            zBooleanValue = !GoogleServices.isMeasurementExplicitlyDisabled();
            if (zBooleanValue && this.zzaqm != null && zzag.zzalk.get().booleanValue()) {
                zBooleanValue = this.zzaqm.booleanValue();
            }
        }
        return zzgu().zzh(zBooleanValue);
    }

    final long zzkt() {
        Long lValueOf = Long.valueOf(zzgu().zzanq.get());
        if (lValueOf.longValue() == 0) {
            return this.zzaha;
        }
        return Math.min(this.zzaha, lValueOf.longValue());
    }

    final void zzgg() {
        zzl zzlVar = this.zzait;
    }

    final void zzgf() {
        zzl zzlVar = this.zzait;
        throw new IllegalStateException("Unexpected call on client side");
    }

    final void zzb(zzcq zzcqVar) {
        this.zzaqp++;
    }

    final void zzb(zzf zzfVar) {
        this.zzaqp++;
    }

    final void zzku() {
        this.zzaqq.incrementAndGet();
    }

    @WorkerThread
    protected final boolean zzkv() {
        zzcl();
        zzgs().zzaf();
        if (this.zzaqk == null || this.zzaql == 0 || (this.zzaqk != null && !this.zzaqk.booleanValue() && Math.abs(this.zzrz.elapsedRealtime() - this.zzaql) > 1000)) {
            this.zzaql = this.zzrz.elapsedRealtime();
            zzl zzlVar = this.zzait;
            boolean z = true;
            this.zzaqk = Boolean.valueOf(zzgr().zzx("android.permission.INTERNET") && zzgr().zzx("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.packageManager(this.zzri).isCallerInstantApp() || this.zzapu.zzif() || (zzbk.zza(this.zzri) && zzfu.zza(this.zzri, false))));
            if (this.zzaqk.booleanValue()) {
                if (!zzgr().zzu(zzgk().getGmpAppId(), zzgk().zzhb()) && TextUtils.isEmpty(zzgk().zzhb())) {
                    z = false;
                }
                this.zzaqk = Boolean.valueOf(z);
            }
        }
        return this.zzaqk.booleanValue();
    }
}
