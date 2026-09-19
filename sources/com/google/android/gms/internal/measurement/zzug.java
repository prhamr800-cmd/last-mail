package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzug;
import com.google.android.gms.internal.measurement.zzuh;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzug<MessageType extends zzug<MessageType, BuilderType>, BuilderType extends zzuh<MessageType, BuilderType>> implements zzxe {
    private static boolean zzbun = false;
    protected int zzbum = 0;

    @Override // com.google.android.gms.internal.measurement.zzxe
    public final zzun zzud() {
        try {
            zzuv zzuvVarZzan = zzun.zzan(zzwe());
            zzb(zzuvVarZzan.zzup());
            return zzuvVarZzan.zzuo();
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + String.valueOf("ByteString").length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    int zzue() {
        throw new UnsupportedOperationException();
    }

    void zzah(int i) {
        throw new UnsupportedOperationException();
    }
}
