package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* JADX INFO: loaded from: classes2.dex */
final class zzxy<FieldDescriptorType> extends zzxx<FieldDescriptorType, Object> {
    zzxy(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzxx
    public final void zzsw() {
        if (!isImmutable()) {
            for (int i = 0; i < zzyj(); i++) {
                Map.Entry<FieldDescriptorType, Object> entryZzbw = zzbw(i);
                if (((zzvq) entryZzbw.getKey()).zzwi()) {
                    entryZzbw.setValue(Collections.unmodifiableList((List) entryZzbw.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : zzyk()) {
                if (((zzvq) entry.getKey()).zzwi()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzsw();
    }
}
