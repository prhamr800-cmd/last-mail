package com.google.firebase.iid;

import android.os.Bundle;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;

/* JADX INFO: loaded from: classes2.dex */
final class zzam extends zzak<Bundle> {
    zzam(int i, int i2, Bundle bundle) {
        super(i, 1, bundle);
    }

    @Override // com.google.firebase.iid.zzak
    final boolean zzab() {
        return false;
    }

    @Override // com.google.firebase.iid.zzak
    final void zzb(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(Parameters.DATA);
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        finish(bundle2);
    }
}
