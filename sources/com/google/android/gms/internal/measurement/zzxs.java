package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;

/* JADX INFO: loaded from: classes2.dex */
final class zzxs implements zzxc {
    private final int flags;
    private final String info;
    private final Object[] zzcbv;
    private final zzxe zzcby;

    zzxs(zzxe zzxeVar, String str, Object[] objArr) {
        this.zzcby = zzxeVar;
        this.info = str;
        this.zzcbv = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.flags = cCharAt;
            return;
        }
        int i = cCharAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 < 55296) {
                this.flags = i | (cCharAt2 << i2);
                return;
            } else {
                i |= (cCharAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    final String zzyc() {
        return this.info;
    }

    final Object[] zzyd() {
        return this.zzcbv;
    }

    @Override // com.google.android.gms.internal.measurement.zzxc
    public final zzxe zzxv() {
        return this.zzcby;
    }

    @Override // com.google.android.gms.internal.measurement.zzxc
    public final int zzxt() {
        return (this.flags & 1) == 1 ? zzvx.zze.zzbzw : zzvx.zze.zzbzx;
    }

    @Override // com.google.android.gms.internal.measurement.zzxc
    public final boolean zzxu() {
        return (this.flags & 2) == 2;
    }
}
