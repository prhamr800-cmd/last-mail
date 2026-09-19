package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class(creator = "UserAttributeParcelCreator")
public final class zzfr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfr> CREATOR = new zzfs();

    @SafeParcelable.Field(id = 2)
    public final String name;

    @SafeParcelable.Field(id = 7)
    public final String origin;

    @SafeParcelable.Field(id = 1)
    private final int versionCode;

    @SafeParcelable.Field(id = 6)
    private final String zzamw;

    @SafeParcelable.Field(id = 3)
    public final long zzaux;

    @SafeParcelable.Field(id = 4)
    private final Long zzauy;

    @SafeParcelable.Field(id = 5)
    private final Float zzauz;

    @SafeParcelable.Field(id = 8)
    private final Double zzava;

    zzfr(zzft zzftVar) {
        this(zzftVar.name, zzftVar.zzaux, zzftVar.value, zzftVar.origin);
    }

    zzfr(String str, long j, Object obj, String str2) {
        Preconditions.checkNotEmpty(str);
        this.versionCode = 2;
        this.name = str;
        this.zzaux = j;
        this.origin = str2;
        if (obj == null) {
            this.zzauy = null;
            this.zzauz = null;
            this.zzava = null;
            this.zzamw = null;
            return;
        }
        if (obj instanceof Long) {
            this.zzauy = (Long) obj;
            this.zzauz = null;
            this.zzava = null;
            this.zzamw = null;
            return;
        }
        if (obj instanceof String) {
            this.zzauy = null;
            this.zzauz = null;
            this.zzava = null;
            this.zzamw = (String) obj;
            return;
        }
        if (obj instanceof Double) {
            this.zzauy = null;
            this.zzauz = null;
            this.zzava = (Double) obj;
            this.zzamw = null;
            return;
        }
        throw new IllegalArgumentException("User attribute given of un-supported type");
    }

    @SafeParcelable.Constructor
    zzfr(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) Long l, @SafeParcelable.Param(id = 5) Float f, @SafeParcelable.Param(id = 6) String str2, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) Double d) {
        this.versionCode = i;
        this.name = str;
        this.zzaux = j;
        this.zzauy = l;
        this.zzauz = null;
        if (i == 1) {
            this.zzava = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.zzava = d;
        }
        this.zzamw = str2;
        this.origin = str3;
    }

    public final Object getValue() {
        if (this.zzauy != null) {
            return this.zzauy;
        }
        if (this.zzava != null) {
            return this.zzava;
        }
        if (this.zzamw != null) {
            return this.zzamw;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeString(parcel, 2, this.name, false);
        SafeParcelWriter.writeLong(parcel, 3, this.zzaux);
        SafeParcelWriter.writeLongObject(parcel, 4, this.zzauy, false);
        SafeParcelWriter.writeFloatObject(parcel, 5, null, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzamw, false);
        SafeParcelWriter.writeString(parcel, 7, this.origin, false);
        SafeParcelWriter.writeDoubleObject(parcel, 8, this.zzava, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
