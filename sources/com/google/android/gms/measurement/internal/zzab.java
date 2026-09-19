package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class(creator = "EventParamsCreator")
@SafeParcelable.Reserved({1})
public final class zzab extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzab> CREATOR = new zzad();

    @SafeParcelable.Field(getter = "z", id = 2)
    private final Bundle zzaip;

    @SafeParcelable.Constructor
    zzab(@SafeParcelable.Param(id = 2) Bundle bundle) {
        this.zzaip = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, zziy(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    final Object get(String str) {
        return this.zzaip.get(str);
    }

    final Long getLong(String str) {
        return Long.valueOf(this.zzaip.getLong(str));
    }

    final Double zzbt(String str) {
        return Double.valueOf(this.zzaip.getDouble(str));
    }

    final String getString(String str) {
        return this.zzaip.getString(str);
    }

    public final int size() {
        return this.zzaip.size();
    }

    public final String toString() {
        return this.zzaip.toString();
    }

    public final Bundle zziy() {
        return new Bundle(this.zzaip);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new zzac(this);
    }
}
