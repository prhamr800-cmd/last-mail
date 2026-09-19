package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzai extends com.google.android.gms.internal.measurement.zzr implements zzah {
    public zzai() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.zzr
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zza((zzae) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzae.CREATOR), (zzi) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzi.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                zza((zzfr) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzfr.CREATOR), (zzi) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzi.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                zza((zzi) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzi.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                zza((zzae) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzae.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                zzb((zzi) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzi.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                List<zzfr> listZza = zza((zzi) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzi.CREATOR), com.google.android.gms.internal.measurement.zzs.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza);
                return true;
            case 9:
                byte[] bArrZza = zza((zzae) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzae.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrZza);
                return true;
            case 10:
                zza(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String strZzc = zzc((zzi) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzi.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(strZzc);
                return true;
            case 12:
                zza((zzm) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzm.CREATOR), (zzi) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzi.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                zzb((zzm) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                List<zzfr> listZza2 = zza(parcel.readString(), parcel.readString(), com.google.android.gms.internal.measurement.zzs.zza(parcel), (zzi) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzi.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza2);
                return true;
            case 15:
                List<zzfr> listZza3 = zza(parcel.readString(), parcel.readString(), parcel.readString(), com.google.android.gms.internal.measurement.zzs.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza3);
                return true;
            case 16:
                List<zzm> listZza4 = zza(parcel.readString(), parcel.readString(), (zzi) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzi.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(listZza4);
                return true;
            case 17:
                List<zzm> listZze = zze(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(listZze);
                return true;
            case 18:
                zzd((zzi) com.google.android.gms.internal.measurement.zzs.zza(parcel, zzi.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
