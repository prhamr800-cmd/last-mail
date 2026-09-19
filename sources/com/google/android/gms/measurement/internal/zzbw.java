package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.support.annotation.BinderThread;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbw extends zzai {
    private final zzfk zzang;
    private Boolean zzaqt;

    @Nullable
    private String zzaqu;

    public zzbw(zzfk zzfkVar) {
        this(zzfkVar, null);
    }

    private zzbw(zzfk zzfkVar, @Nullable String str) {
        Preconditions.checkNotNull(zzfkVar);
        this.zzang = zzfkVar;
        this.zzaqu = null;
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final void zzb(zzi zziVar) {
        zzb(zziVar, false);
        zze(new zzbx(this, zziVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final void zza(zzae zzaeVar, zzi zziVar) {
        Preconditions.checkNotNull(zzaeVar);
        zzb(zziVar, false);
        zze(new zzch(this, zzaeVar, zziVar));
    }

    @VisibleForTesting
    final zzae zzb(zzae zzaeVar, zzi zziVar) {
        boolean z = false;
        if ("_cmp".equals(zzaeVar.name) && zzaeVar.zzaig != null && zzaeVar.zzaig.size() != 0) {
            String string = zzaeVar.zzaig.getString("_cis");
            if (!TextUtils.isEmpty(string) && (("referrer broadcast".equals(string) || "referrer API".equals(string)) && this.zzang.zzgv().zzbg(zziVar.packageName))) {
                z = true;
            }
        }
        if (z) {
            this.zzang.zzgt().zzjm().zzg("Event has been filtered ", zzaeVar.toString());
            return new zzae("_cmpx", zzaeVar.zzaig, zzaeVar.origin, zzaeVar.zzais);
        }
        return zzaeVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final void zza(zzae zzaeVar, String str, String str2) {
        Preconditions.checkNotNull(zzaeVar);
        Preconditions.checkNotEmpty(str);
        zzc(str, true);
        zze(new zzci(this, zzaeVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final byte[] zza(zzae zzaeVar, String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzaeVar);
        zzc(str, true);
        this.zzang.zzgt().zzjn().zzg("Log and bundle. event", this.zzang.zzgq().zzbv(zzaeVar.name));
        long jNanoTime = this.zzang.zzbx().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.zzang.zzgs().zzc(new zzcj(this, zzaeVar, str)).get();
            if (bArr == null) {
                this.zzang.zzgt().zzjg().zzg("Log and bundle returned null. appId", zzaq.zzby(str));
                bArr = new byte[0];
            }
            this.zzang.zzgt().zzjn().zzd("Log and bundle processed. event, size, time_ms", this.zzang.zzgq().zzbv(zzaeVar.name), Integer.valueOf(bArr.length), Long.valueOf((this.zzang.zzbx().nanoTime() / 1000000) - jNanoTime));
            return bArr;
        } catch (InterruptedException | ExecutionException e) {
            this.zzang.zzgt().zzjg().zzd("Failed to log and bundle. appId, event, error", zzaq.zzby(str), this.zzang.zzgq().zzbv(zzaeVar.name), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final void zza(zzfr zzfrVar, zzi zziVar) {
        Preconditions.checkNotNull(zzfrVar);
        zzb(zziVar, false);
        if (zzfrVar.getValue() == null) {
            zze(new zzck(this, zzfrVar, zziVar));
        } else {
            zze(new zzcl(this, zzfrVar, zziVar));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final List<zzfr> zza(zzi zziVar, boolean z) {
        zzb(zziVar, false);
        try {
            List<zzft> list = (List) this.zzang.zzgs().zzb(new zzcm(this, zziVar)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzft zzftVar : list) {
                if (z || !zzfu.zzda(zzftVar.name)) {
                    arrayList.add(new zzfr(zzftVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zzang.zzgt().zzjg().zze("Failed to get user attributes. appId", zzaq.zzby(zziVar.packageName), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final void zza(zzi zziVar) {
        zzb(zziVar, false);
        zze(new zzcn(this, zziVar));
    }

    @BinderThread
    private final void zzb(zzi zziVar, boolean z) {
        Preconditions.checkNotNull(zziVar);
        zzc(zziVar.packageName, false);
        this.zzang.zzgr().zzu(zziVar.zzafx, zziVar.zzagk);
    }

    @BinderThread
    private final void zzc(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            this.zzang.zzgt().zzjg().zzca("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.zzaqt == null) {
                    this.zzaqt = Boolean.valueOf("com.google.android.gms".equals(this.zzaqu) || UidVerifier.isGooglePlayServicesUid(this.zzang.getContext(), Binder.getCallingUid()) || GoogleSignatureVerifier.getInstance(this.zzang.getContext()).isUidGoogleSigned(Binder.getCallingUid()));
                }
                if (this.zzaqt.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                this.zzang.zzgt().zzjg().zzg("Measurement Service called with invalid calling package. appId", zzaq.zzby(str));
                throw e;
            }
        }
        if (this.zzaqu == null && GooglePlayServicesUtilLight.uidHasPackageName(this.zzang.getContext(), Binder.getCallingUid(), str)) {
            this.zzaqu = str;
        }
        if (!str.equals(this.zzaqu)) {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final void zza(long j, String str, String str2, String str3) {
        zze(new zzco(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final String zzc(zzi zziVar) {
        zzb(zziVar, false);
        return this.zzang.zzh(zziVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final void zza(zzm zzmVar, zzi zziVar) {
        Preconditions.checkNotNull(zzmVar);
        Preconditions.checkNotNull(zzmVar.zzahe);
        zzb(zziVar, false);
        zzm zzmVar2 = new zzm(zzmVar);
        zzmVar2.packageName = zziVar.packageName;
        if (zzmVar.zzahe.getValue() == null) {
            zze(new zzby(this, zzmVar2, zziVar));
        } else {
            zze(new zzbz(this, zzmVar2, zziVar));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final void zzb(zzm zzmVar) {
        Preconditions.checkNotNull(zzmVar);
        Preconditions.checkNotNull(zzmVar.zzahe);
        zzc(zzmVar.packageName, true);
        zzm zzmVar2 = new zzm(zzmVar);
        if (zzmVar.zzahe.getValue() == null) {
            zze(new zzca(this, zzmVar2));
        } else {
            zze(new zzcb(this, zzmVar2));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final List<zzfr> zza(String str, String str2, boolean z, zzi zziVar) {
        zzb(zziVar, false);
        try {
            List<zzft> list = (List) this.zzang.zzgs().zzb(new zzcc(this, zziVar, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzft zzftVar : list) {
                if (z || !zzfu.zzda(zzftVar.name)) {
                    arrayList.add(new zzfr(zzftVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zzang.zzgt().zzjg().zze("Failed to get user attributes. appId", zzaq.zzby(zziVar.packageName), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final List<zzfr> zza(String str, String str2, String str3, boolean z) {
        zzc(str, true);
        try {
            List<zzft> list = (List) this.zzang.zzgs().zzb(new zzcd(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzft zzftVar : list) {
                if (z || !zzfu.zzda(zzftVar.name)) {
                    arrayList.add(new zzfr(zzftVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zzang.zzgt().zzjg().zze("Failed to get user attributes. appId", zzaq.zzby(str), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final List<zzm> zza(String str, String str2, zzi zziVar) {
        zzb(zziVar, false);
        try {
            return (List) this.zzang.zzgs().zzb(new zzce(this, zziVar, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zzang.zzgt().zzjg().zzg("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final List<zzm> zze(String str, String str2, String str3) {
        zzc(str, true);
        try {
            return (List) this.zzang.zzgs().zzb(new zzcf(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zzang.zzgt().zzjg().zzg("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzah
    @BinderThread
    public final void zzd(zzi zziVar) {
        zzc(zziVar.packageName, false);
        zze(new zzcg(this, zziVar));
    }

    @VisibleForTesting
    private final void zze(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        if (zzag.zzakz.get().booleanValue() && this.zzang.zzgs().zzkf()) {
            runnable.run();
        } else {
            this.zzang.zzgs().zzc(runnable);
        }
    }
}
