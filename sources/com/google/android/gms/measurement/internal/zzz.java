package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzz {
    final String name;
    private final String origin;
    final long timestamp;
    final long zzaif;
    final zzab zzaig;
    final String zztt;

    private zzz(zzbu zzbuVar, String str, String str2, String str3, long j, long j2, zzab zzabVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzabVar);
        this.zztt = str2;
        this.name = str3;
        this.origin = TextUtils.isEmpty(str) ? null : str;
        this.timestamp = j;
        this.zzaif = j2;
        if (this.zzaif != 0 && this.zzaif > this.timestamp) {
            zzbuVar.zzgt().zzjj().zze("Event created with reverse previous/current timestamps. appId, name", zzaq.zzby(str2), zzaq.zzby(str3));
        }
        this.zzaig = zzabVar;
    }

    zzz(zzbu zzbuVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzab zzabVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.zztt = str2;
        this.name = str3;
        this.origin = TextUtils.isEmpty(str) ? null : str;
        this.timestamp = j;
        this.zzaif = j2;
        if (this.zzaif != 0 && this.zzaif > this.timestamp) {
            zzbuVar.zzgt().zzjj().zzg("Event created with reverse previous/current timestamps. appId", zzaq.zzby(str2));
        }
        if (bundle != null && !bundle.isEmpty()) {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzbuVar.zzgt().zzjg().zzca("Param name can't be null");
                    it.remove();
                } else {
                    Object objZzh = zzbuVar.zzgr().zzh(next, bundle2.get(next));
                    if (objZzh == null) {
                        zzbuVar.zzgt().zzjj().zzg("Param value can't be null", zzbuVar.zzgq().zzbw(next));
                        it.remove();
                    } else {
                        zzbuVar.zzgr().zza(bundle2, next, objZzh);
                    }
                }
            }
            zzabVar = new zzab(bundle2);
        } else {
            zzabVar = new zzab(new Bundle());
        }
        this.zzaig = zzabVar;
    }

    final zzz zza(zzbu zzbuVar, long j) {
        return new zzz(zzbuVar, this.origin, this.zztt, this.name, this.timestamp, j, this.zzaig);
    }

    public final String toString() {
        String str = this.zztt;
        String str2 = this.name;
        String strValueOf = String.valueOf(this.zzaig);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(strValueOf).length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(strValueOf);
        sb.append('}');
        return sb.toString();
    }
}
