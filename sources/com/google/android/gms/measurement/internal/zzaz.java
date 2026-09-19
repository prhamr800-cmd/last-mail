package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.MainThread;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes2.dex */
class zzaz extends BroadcastReceiver {

    @VisibleForTesting
    private static final String zzabi = zzaz.class.getName();
    private boolean zzabj;
    private boolean zzabk;
    private final zzfk zzang;

    zzaz(zzfk zzfkVar) {
        Preconditions.checkNotNull(zzfkVar);
        this.zzang = zzfkVar;
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public void onReceive(Context context, Intent intent) {
        this.zzang.zzlx();
        String action = intent.getAction();
        this.zzang.zzgt().zzjo().zzg("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean zZzfb = this.zzang.zzlt().zzfb();
            if (this.zzabk != zZzfb) {
                this.zzabk = zZzfb;
                this.zzang.zzgs().zzc(new zzba(this, zZzfb));
                return;
            }
            return;
        }
        this.zzang.zzgt().zzjj().zzg("NetworkBroadcastReceiver received unknown action", action);
    }

    @WorkerThread
    public final void zzey() {
        this.zzang.zzlx();
        this.zzang.zzgs().zzaf();
        if (this.zzabj) {
            return;
        }
        this.zzang.getContext().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.zzabk = this.zzang.zzlt().zzfb();
        this.zzang.zzgt().zzjo().zzg("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.zzabk));
        this.zzabj = true;
    }

    @WorkerThread
    public final void unregister() {
        this.zzang.zzlx();
        this.zzang.zzgs().zzaf();
        this.zzang.zzgs().zzaf();
        if (!this.zzabj) {
            return;
        }
        this.zzang.zzgt().zzjo().zzca("Unregistering connectivity change receiver");
        this.zzabj = false;
        this.zzabk = false;
        try {
            this.zzang.getContext().unregisterReceiver(this);
        } catch (IllegalArgumentException e) {
            this.zzang.zzgt().zzjg().zzg("Failed to unregister the network broadcast receiver", e);
        }
    }
}
