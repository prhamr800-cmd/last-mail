package com.google.android.gms.measurement.internal;

import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface zzah extends IInterface {
    List<zzfr> zza(zzi zziVar, boolean z) throws RemoteException;

    List<zzm> zza(String str, String str2, zzi zziVar) throws RemoteException;

    List<zzfr> zza(String str, String str2, String str3, boolean z) throws RemoteException;

    List<zzfr> zza(String str, String str2, boolean z, zzi zziVar) throws RemoteException;

    void zza(long j, String str, String str2, String str3) throws RemoteException;

    void zza(zzae zzaeVar, zzi zziVar) throws RemoteException;

    void zza(zzae zzaeVar, String str, String str2) throws RemoteException;

    void zza(zzfr zzfrVar, zzi zziVar) throws RemoteException;

    void zza(zzi zziVar) throws RemoteException;

    void zza(zzm zzmVar, zzi zziVar) throws RemoteException;

    byte[] zza(zzae zzaeVar, String str) throws RemoteException;

    void zzb(zzi zziVar) throws RemoteException;

    void zzb(zzm zzmVar) throws RemoteException;

    String zzc(zzi zziVar) throws RemoteException;

    void zzd(zzi zziVar) throws RemoteException;

    List<zzm> zze(String str, String str2, String str3) throws RemoteException;
}
