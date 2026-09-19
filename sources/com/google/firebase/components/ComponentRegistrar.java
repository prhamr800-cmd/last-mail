package com.google.firebase.components;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
/* JADX INFO: loaded from: classes2.dex */
@KeepForSdk
public interface ComponentRegistrar {
    @KeepForSdk
    List<Component<?>> getComponents();
}
