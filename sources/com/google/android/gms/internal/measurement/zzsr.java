package com.google.android.gms.internal.measurement;

import android.os.Binder;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzsr {
    public static <V> V zza(zzss<V> zzssVar) {
        try {
            return zzssVar.zzto();
        } catch (SecurityException e) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return zzssVar.zzto();
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }
}
