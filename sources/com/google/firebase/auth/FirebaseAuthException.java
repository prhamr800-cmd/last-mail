package com.google.firebase.auth;

import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseException;
import com.google.firebase.annotations.PublicApi;

/* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
/* JADX INFO: loaded from: classes2.dex */
@PublicApi
public class FirebaseAuthException extends FirebaseException {
    private final String zza;

    @PublicApi
    public FirebaseAuthException(@NonNull String errorCode, @NonNull String detailMessage) {
        super(detailMessage);
        this.zza = Preconditions.checkNotEmpty(errorCode);
    }

    @NonNull
    @PublicApi
    public String getErrorCode() {
        return this.zza;
    }
}
