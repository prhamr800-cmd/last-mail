package com.google.firebase.components;

import com.google.firebase.inject.Provider;

/* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zza implements ComponentContainer {
    zza() {
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> T get(Class<T> anInterface) {
        Provider<T> provider = getProvider(anInterface);
        if (provider == null) {
            return null;
        }
        return provider.get();
    }
}
