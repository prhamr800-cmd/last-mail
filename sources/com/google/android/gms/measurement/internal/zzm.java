package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class(creator = "ConditionalUserPropertyParcelCreator")
public final class zzm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzm> CREATOR = new zzn();

    @SafeParcelable.Field(id = 6)
    public boolean active;

    @SafeParcelable.Field(id = 5)
    public long creationTimestamp;

    @SafeParcelable.Field(id = 3)
    public String origin;

    @SafeParcelable.Field(id = 2)
    public String packageName;

    @SafeParcelable.Field(id = 11)
    public long timeToLive;

    @SafeParcelable.Field(id = 7)
    public String triggerEventName;

    @SafeParcelable.Field(id = 9)
    public long triggerTimeout;

    @SafeParcelable.Field(id = 4)
    public zzfr zzahe;

    @SafeParcelable.Field(id = 8)
    public zzae zzahf;

    @SafeParcelable.Field(id = 10)
    public zzae zzahg;

    @SafeParcelable.Field(id = 12)
    public zzae zzahh;

    zzm(zzm zzmVar) {
        Preconditions.checkNotNull(zzmVar);
        this.packageName = zzmVar.packageName;
        this.origin = zzmVar.origin;
        this.zzahe = zzmVar.zzahe;
        this.creationTimestamp = zzmVar.creationTimestamp;
        this.active = zzmVar.active;
        this.triggerEventName = zzmVar.triggerEventName;
        this.zzahf = zzmVar.zzahf;
        this.triggerTimeout = zzmVar.triggerTimeout;
        this.zzahg = zzmVar.zzahg;
        this.timeToLive = zzmVar.timeToLive;
        this.zzahh = zzmVar.zzahh;
    }

    @SafeParcelable.Constructor
    zzm(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) zzfr zzfrVar, @SafeParcelable.Param(id = 5) long j, @SafeParcelable.Param(id = 6) boolean z, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) zzae zzaeVar, @SafeParcelable.Param(id = 9) long j2, @SafeParcelable.Param(id = 10) zzae zzaeVar2, @SafeParcelable.Param(id = 11) long j3, @SafeParcelable.Param(id = 12) zzae zzaeVar3) {
        this.packageName = str;
        this.origin = str2;
        this.zzahe = zzfrVar;
        this.creationTimestamp = j;
        this.active = z;
        this.triggerEventName = str3;
        this.zzahf = zzaeVar;
        this.triggerTimeout = j2;
        this.zzahg = zzaeVar2;
        this.timeToLive = j3;
        this.zzahh = zzaeVar3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.packageName, false);
        SafeParcelWriter.writeString(parcel, 3, this.origin, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzahe, i, false);
        SafeParcelWriter.writeLong(parcel, 5, this.creationTimestamp);
        SafeParcelWriter.writeBoolean(parcel, 6, this.active);
        SafeParcelWriter.writeString(parcel, 7, this.triggerEventName, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.zzahf, i, false);
        SafeParcelWriter.writeLong(parcel, 9, this.triggerTimeout);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzahg, i, false);
        SafeParcelWriter.writeLong(parcel, 11, this.timeToLive);
        SafeParcelWriter.writeParcelable(parcel, 12, this.zzahh, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
