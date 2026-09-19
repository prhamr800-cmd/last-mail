package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
final class zzaa {
    final String name;
    final long zzaih;
    final long zzaii;
    final long zzaij;
    final long zzaik;
    final Long zzail;
    final Long zzaim;
    final Long zzain;
    final Boolean zzaio;
    final String zztt;

    zzaa(String str, String str2, long j, long j2, long j3, long j4, Long l, Long l2, Long l3, Boolean bool) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkArgument(j >= 0);
        Preconditions.checkArgument(j2 >= 0);
        Preconditions.checkArgument(j4 >= 0);
        this.zztt = str;
        this.name = str2;
        this.zzaih = j;
        this.zzaii = j2;
        this.zzaij = j3;
        this.zzaik = j4;
        this.zzail = l;
        this.zzaim = l2;
        this.zzain = l3;
        this.zzaio = bool;
    }

    final zzaa zzai(long j) {
        return new zzaa(this.zztt, this.name, this.zzaih, this.zzaii, j, this.zzaik, this.zzail, this.zzaim, this.zzain, this.zzaio);
    }

    final zzaa zza(long j, long j2) {
        return new zzaa(this.zztt, this.name, this.zzaih, this.zzaii, this.zzaij, j, Long.valueOf(j2), this.zzaim, this.zzain, this.zzaio);
    }

    final zzaa zza(Long l, Long l2, Boolean bool) {
        return new zzaa(this.zztt, this.name, this.zzaih, this.zzaii, this.zzaij, this.zzaik, this.zzail, l, l2, (bool == null || bool.booleanValue()) ? bool : null);
    }
}
