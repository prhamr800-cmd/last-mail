package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final class zzxj<T> implements zzxu<T> {
    private final zzxe zzcby;
    private final boolean zzcbz;
    private final zzym<?, ?> zzcci;
    private final zzvl<?> zzccj;

    private zzxj(zzym<?, ?> zzymVar, zzvl<?> zzvlVar, zzxe zzxeVar) {
        this.zzcci = zzymVar;
        this.zzcbz = zzvlVar.zze(zzxeVar);
        this.zzccj = zzvlVar;
        this.zzcby = zzxeVar;
    }

    static <T> zzxj<T> zza(zzym<?, ?> zzymVar, zzvl<?> zzvlVar, zzxe zzxeVar) {
        return new zzxj<>(zzymVar, zzvlVar, zzxeVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final T newInstance() {
        return (T) this.zzcby.zzwp().zzwu();
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final boolean equals(T t, T t2) {
        if (!this.zzcci.zzal(t).equals(this.zzcci.zzal(t2))) {
            return false;
        }
        if (this.zzcbz) {
            return this.zzccj.zzw(t).equals(this.zzccj.zzw(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final int hashCode(T t) {
        int iHashCode = this.zzcci.zzal(t).hashCode();
        if (this.zzcbz) {
            return (iHashCode * 53) + this.zzccj.zzw(t).hashCode();
        }
        return iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final void zzd(T t, T t2) {
        zzxw.zza(this.zzcci, t, t2);
        if (this.zzcbz) {
            zzxw.zza(this.zzccj, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final void zza(T t, zzzh zzzhVar) throws IOException {
        for (T t2 : this.zzccj.zzw(t)) {
            zzvq zzvqVar = (zzvq) t2.getKey();
            if (zzvqVar.zzwh() != zzzg.MESSAGE || zzvqVar.zzwi() || zzvqVar.zzwj()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (t2 instanceof zzwj) {
                zzzhVar.zza(zzvqVar.zzc(), (Object) ((zzwj) t2).zzxh().zzud());
            } else {
                zzzhVar.zza(zzvqVar.zzc(), t2.getValue());
            }
        }
        zzym<?, ?> zzymVar = this.zzcci;
        zzymVar.zzc(zzymVar.zzal(t), zzzhVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x008a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[LOOP:0: B:46:0x000c->B:54:?, LOOP_END, SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzxu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(T r11, com.google.android.gms.internal.measurement.zzxt r12, com.google.android.gms.internal.measurement.zzvk r13) throws java.io.IOException {
        /*
            r10 = this;
            com.google.android.gms.internal.measurement.zzym<?, ?> r0 = r10.zzcci
            com.google.android.gms.internal.measurement.zzvl<?> r1 = r10.zzccj
            java.lang.Object r2 = r0.zzam(r11)
            com.google.android.gms.internal.measurement.zzvo r3 = r1.zzx(r11)
        Lc:
            int r4 = r12.zzvo()     // Catch: java.lang.Throwable -> L93
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 != r5) goto L19
            r0.zzg(r11, r2)
            return
        L19:
            int r4 = r12.getTag()     // Catch: java.lang.Throwable -> L93
            r6 = 11
            if (r4 == r6) goto L40
        L23:
            r5 = r4 & 7
            r6 = 2
            if (r5 != r6) goto L3b
            com.google.android.gms.internal.measurement.zzxe r5 = r10.zzcby     // Catch: java.lang.Throwable -> L93
            int r4 = r4 >>> 3
            java.lang.Object r4 = r1.zza(r13, r5, r4)     // Catch: java.lang.Throwable -> L93
            if (r4 == 0) goto L36
            r1.zza(r12, r4, r13, r3)     // Catch: java.lang.Throwable -> L93
            goto L87
        L36:
            boolean r4 = r0.zza(r2, r12)     // Catch: java.lang.Throwable -> L93
            goto L88
        L3b:
            boolean r4 = r12.zzvp()     // Catch: java.lang.Throwable -> L93
            goto L88
        L40:
            r4 = 0
            r6 = 0
            r4 = r6
            r7 = 0
        L46:
            int r8 = r12.zzvo()     // Catch: java.lang.Throwable -> L93
            if (r8 == r5) goto L74
            int r8 = r12.getTag()     // Catch: java.lang.Throwable -> L93
            r9 = 16
            if (r8 != r9) goto L5f
            int r7 = r12.zzuz()     // Catch: java.lang.Throwable -> L93
            com.google.android.gms.internal.measurement.zzxe r6 = r10.zzcby     // Catch: java.lang.Throwable -> L93
            java.lang.Object r6 = r1.zza(r13, r6, r7)     // Catch: java.lang.Throwable -> L93
            goto L46
        L5f:
            r9 = 26
            if (r8 != r9) goto L6e
            if (r6 == 0) goto L69
            r1.zza(r12, r6, r13, r3)     // Catch: java.lang.Throwable -> L93
            goto L46
        L69:
            com.google.android.gms.internal.measurement.zzun r4 = r12.zzuy()     // Catch: java.lang.Throwable -> L93
            goto L46
        L6e:
            boolean r8 = r12.zzvp()     // Catch: java.lang.Throwable -> L93
            if (r8 != 0) goto L46
        L74:
            int r5 = r12.getTag()     // Catch: java.lang.Throwable -> L93
            r8 = 12
            if (r5 != r8) goto L8e
            if (r4 == 0) goto L87
            if (r6 == 0) goto L84
            r1.zza(r4, r6, r13, r3)     // Catch: java.lang.Throwable -> L93
            goto L87
        L84:
            r0.zza(r2, r7, r4)     // Catch: java.lang.Throwable -> L93
        L87:
            r4 = 1
        L88:
            if (r4 != 0) goto Lc
            r0.zzg(r11, r2)
            return
        L8e:
            com.google.android.gms.internal.measurement.zzwe r12 = com.google.android.gms.internal.measurement.zzwe.zzxa()     // Catch: java.lang.Throwable -> L93
            throw r12     // Catch: java.lang.Throwable -> L93
        L93:
            r12 = move-exception
            r0.zzg(r11, r2)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxj.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzxt, com.google.android.gms.internal.measurement.zzvk):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final void zzy(T t) {
        this.zzcci.zzy(t);
        this.zzccj.zzy(t);
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final boolean zzaj(T t) {
        return this.zzccj.zzw(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final int zzai(T t) {
        zzym<?, ?> zzymVar = this.zzcci;
        int iZzan = zzymVar.zzan(zzymVar.zzal(t)) + 0;
        if (this.zzcbz) {
            return iZzan + this.zzccj.zzw(t).zzwf();
        }
        return iZzan;
    }
}
