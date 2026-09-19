package com.google.android.gms.measurement.internal;

import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
final class zzg {
    private final zzbu zzadp;
    private long zzadt;
    private String zzafw;
    private String zzafx;
    private String zzafy;
    private String zzafz;
    private long zzaga;
    private long zzagb;
    private long zzagc;
    private long zzagd;
    private String zzage;
    private long zzagf;
    private boolean zzagg;
    private long zzagh;
    private boolean zzagi;
    private boolean zzagj;
    private String zzagk;
    private long zzagl;
    private long zzagm;
    private long zzagn;
    private long zzago;
    private long zzagp;
    private long zzagq;
    private String zzagr;
    private boolean zzags;
    private long zzagt;
    private long zzagu;
    private String zzts;
    private final String zztt;

    @WorkerThread
    zzg(zzbu zzbuVar, String str) {
        Preconditions.checkNotNull(zzbuVar);
        Preconditions.checkNotEmpty(str);
        this.zzadp = zzbuVar;
        this.zztt = str;
        this.zzadp.zzgs().zzaf();
    }

    @WorkerThread
    public final void zzha() {
        this.zzadp.zzgs().zzaf();
        this.zzags = false;
    }

    @WorkerThread
    public final String zzal() {
        this.zzadp.zzgs().zzaf();
        return this.zztt;
    }

    @WorkerThread
    public final String getAppInstanceId() {
        this.zzadp.zzgs().zzaf();
        return this.zzafw;
    }

    @WorkerThread
    public final void zzal(String str) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= !zzfu.zzv(this.zzafw, str);
        this.zzafw = str;
    }

    @WorkerThread
    public final String getGmpAppId() {
        this.zzadp.zzgs().zzaf();
        return this.zzafx;
    }

    @WorkerThread
    public final void zzam(String str) {
        this.zzadp.zzgs().zzaf();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.zzags |= !zzfu.zzv(this.zzafx, str);
        this.zzafx = str;
    }

    @WorkerThread
    public final String zzhb() {
        this.zzadp.zzgs().zzaf();
        return this.zzagk;
    }

    @WorkerThread
    public final void zzan(String str) {
        this.zzadp.zzgs().zzaf();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.zzags |= !zzfu.zzv(this.zzagk, str);
        this.zzagk = str;
    }

    @WorkerThread
    public final String zzhc() {
        this.zzadp.zzgs().zzaf();
        return this.zzafy;
    }

    @WorkerThread
    public final void zzao(String str) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= !zzfu.zzv(this.zzafy, str);
        this.zzafy = str;
    }

    @WorkerThread
    public final String getFirebaseInstanceId() {
        this.zzadp.zzgs().zzaf();
        return this.zzafz;
    }

    @WorkerThread
    public final void zzap(String str) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= !zzfu.zzv(this.zzafz, str);
        this.zzafz = str;
    }

    @WorkerThread
    public final long zzhd() {
        this.zzadp.zzgs().zzaf();
        return this.zzagb;
    }

    @WorkerThread
    public final void zzs(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzagb != j;
        this.zzagb = j;
    }

    @WorkerThread
    public final long zzhe() {
        this.zzadp.zzgs().zzaf();
        return this.zzagc;
    }

    @WorkerThread
    public final void zzt(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzagc != j;
        this.zzagc = j;
    }

    @WorkerThread
    public final String zzak() {
        this.zzadp.zzgs().zzaf();
        return this.zzts;
    }

    @WorkerThread
    public final void setAppVersion(String str) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= !zzfu.zzv(this.zzts, str);
        this.zzts = str;
    }

    @WorkerThread
    public final long zzhf() {
        this.zzadp.zzgs().zzaf();
        return this.zzagd;
    }

    @WorkerThread
    public final void zzu(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzagd != j;
        this.zzagd = j;
    }

    @WorkerThread
    public final String zzhg() {
        this.zzadp.zzgs().zzaf();
        return this.zzage;
    }

    @WorkerThread
    public final void zzaq(String str) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= !zzfu.zzv(this.zzage, str);
        this.zzage = str;
    }

    @WorkerThread
    public final long zzhh() {
        this.zzadp.zzgs().zzaf();
        return this.zzadt;
    }

    @WorkerThread
    public final void zzv(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzadt != j;
        this.zzadt = j;
    }

    @WorkerThread
    public final long zzhi() {
        this.zzadp.zzgs().zzaf();
        return this.zzagf;
    }

    @WorkerThread
    public final void zzw(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzagf != j;
        this.zzagf = j;
    }

    @WorkerThread
    public final boolean isMeasurementEnabled() {
        this.zzadp.zzgs().zzaf();
        return this.zzagg;
    }

    @WorkerThread
    public final void setMeasurementEnabled(boolean z) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzagg != z;
        this.zzagg = z;
    }

    @WorkerThread
    public final void zzx(long j) {
        Preconditions.checkArgument(j >= 0);
        this.zzadp.zzgs().zzaf();
        this.zzags = (this.zzaga != j) | this.zzags;
        this.zzaga = j;
    }

    @WorkerThread
    public final long zzhj() {
        this.zzadp.zzgs().zzaf();
        return this.zzaga;
    }

    @WorkerThread
    public final long zzhk() {
        this.zzadp.zzgs().zzaf();
        return this.zzagt;
    }

    @WorkerThread
    public final void zzy(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzagt != j;
        this.zzagt = j;
    }

    @WorkerThread
    public final long zzhl() {
        this.zzadp.zzgs().zzaf();
        return this.zzagu;
    }

    @WorkerThread
    public final void zzz(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzagu != j;
        this.zzagu = j;
    }

    @WorkerThread
    public final void zzhm() {
        this.zzadp.zzgs().zzaf();
        long j = this.zzaga + 1;
        if (j > 2147483647L) {
            this.zzadp.zzgt().zzjj().zzg("Bundle index overflow. appId", zzaq.zzby(this.zztt));
            j = 0;
        }
        this.zzags = true;
        this.zzaga = j;
    }

    @WorkerThread
    public final long zzhn() {
        this.zzadp.zzgs().zzaf();
        return this.zzagl;
    }

    @WorkerThread
    public final void zzaa(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzagl != j;
        this.zzagl = j;
    }

    @WorkerThread
    public final long zzho() {
        this.zzadp.zzgs().zzaf();
        return this.zzagm;
    }

    @WorkerThread
    public final void zzab(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzagm != j;
        this.zzagm = j;
    }

    @WorkerThread
    public final long zzhp() {
        this.zzadp.zzgs().zzaf();
        return this.zzagn;
    }

    @WorkerThread
    public final void zzac(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzagn != j;
        this.zzagn = j;
    }

    @WorkerThread
    public final long zzhq() {
        this.zzadp.zzgs().zzaf();
        return this.zzago;
    }

    @WorkerThread
    public final void zzad(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzago != j;
        this.zzago = j;
    }

    @WorkerThread
    public final long zzhr() {
        this.zzadp.zzgs().zzaf();
        return this.zzagq;
    }

    @WorkerThread
    public final void zzae(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzagq != j;
        this.zzagq = j;
    }

    @WorkerThread
    public final long zzhs() {
        this.zzadp.zzgs().zzaf();
        return this.zzagp;
    }

    @WorkerThread
    public final void zzaf(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzagp != j;
        this.zzagp = j;
    }

    @WorkerThread
    public final String zzht() {
        this.zzadp.zzgs().zzaf();
        return this.zzagr;
    }

    @WorkerThread
    public final String zzhu() {
        this.zzadp.zzgs().zzaf();
        String str = this.zzagr;
        zzar(null);
        return str;
    }

    @WorkerThread
    public final void zzar(String str) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= !zzfu.zzv(this.zzagr, str);
        this.zzagr = str;
    }

    @WorkerThread
    public final long zzhv() {
        this.zzadp.zzgs().zzaf();
        return this.zzagh;
    }

    @WorkerThread
    public final void zzag(long j) {
        this.zzadp.zzgs().zzaf();
        this.zzags |= this.zzagh != j;
        this.zzagh = j;
    }

    @WorkerThread
    public final boolean zzhw() {
        this.zzadp.zzgs().zzaf();
        return this.zzagi;
    }

    @WorkerThread
    public final void zze(boolean z) {
        this.zzadp.zzgs().zzaf();
        this.zzags = this.zzagi != z;
        this.zzagi = z;
    }

    @WorkerThread
    public final boolean zzhx() {
        this.zzadp.zzgs().zzaf();
        return this.zzagj;
    }

    @WorkerThread
    public final void zzf(boolean z) {
        this.zzadp.zzgs().zzaf();
        this.zzags = this.zzagj != z;
        this.zzagj = z;
    }
}
