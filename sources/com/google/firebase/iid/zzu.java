package com.google.firebase.iid;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final class zzu implements Continuation<Bundle, String> {
    private final /* synthetic */ zzr zzbn;

    zzu(zzr zzrVar) {
        this.zzbn = zzrVar;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ String then(@NonNull Task<Bundle> task) throws Exception {
        Bundle result = task.getResult(IOException.class);
        zzr zzrVar = this.zzbn;
        return zzr.zza(result);
    }
}
