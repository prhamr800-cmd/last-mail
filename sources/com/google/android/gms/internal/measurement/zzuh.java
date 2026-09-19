package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzug;
import com.google.android.gms.internal.measurement.zzuh;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzuh<MessageType extends zzug<MessageType, BuilderType>, BuilderType extends zzuh<MessageType, BuilderType>> implements zzxf {
    protected abstract BuilderType zza(MessageType messagetype);

    @Override // 
    /* JADX INFO: renamed from: zzuf, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();

    @Override // com.google.android.gms.internal.measurement.zzxf
    public final /* synthetic */ zzxf zza(zzxe zzxeVar) {
        if (!zzwq().getClass().isInstance(zzxeVar)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        return zza((zzug) zzxeVar);
    }
}
