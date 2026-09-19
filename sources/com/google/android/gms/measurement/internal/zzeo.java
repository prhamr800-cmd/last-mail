package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
public final class zzeo implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzdz zzasv;
    private volatile boolean zzatb;
    private volatile zzap zzatc;

    protected zzeo(zzdz zzdzVar) {
        this.zzasv = zzdzVar;
    }

    @WorkerThread
    public final void zzc(Intent intent) {
        this.zzasv.zzaf();
        Context context = this.zzasv.getContext();
        ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
        synchronized (this) {
            if (this.zzatb) {
                this.zzasv.zzgt().zzjo().zzca("Connection attempt already in progress");
                return;
            }
            this.zzasv.zzgt().zzjo().zzca("Using local app measurement service");
            this.zzatb = true;
            connectionTracker.bindService(context, intent, this.zzasv.zzaso, 129);
        }
    }

    @WorkerThread
    public final void zzlk() {
        if (this.zzatc != null && (this.zzatc.isConnected() || this.zzatc.isConnecting())) {
            this.zzatc.disconnect();
        }
        this.zzatc = null;
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzah zzajVar;
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.zzatb = false;
                this.zzasv.zzgt().zzjg().zzca("Service connected with null binder");
                return;
            }
            zzah zzahVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    if (iBinder != null) {
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                        if (iInterfaceQueryLocalInterface instanceof zzah) {
                            zzajVar = (zzah) iInterfaceQueryLocalInterface;
                        } else {
                            zzajVar = new zzaj(iBinder);
                        }
                        zzahVar = zzajVar;
                    }
                    this.zzasv.zzgt().zzjo().zzca("Bound to IMeasurementService interface");
                } else {
                    this.zzasv.zzgt().zzjg().zzg("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException e) {
                this.zzasv.zzgt().zzjg().zzca("Service connect failed to get IMeasurementService");
            }
            if (zzahVar == null) {
                this.zzatb = false;
                try {
                    ConnectionTracker.getInstance().unbindService(this.zzasv.getContext(), this.zzasv.zzaso);
                } catch (IllegalArgumentException e2) {
                }
            } else {
                this.zzasv.zzgs().zzc(new zzep(this, zzahVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceDisconnected");
        this.zzasv.zzgt().zzjn().zzca("Service disconnected");
        this.zzasv.zzgs().zzc(new zzeq(this, componentName));
    }

    @WorkerThread
    public final void zzll() {
        this.zzasv.zzaf();
        Context context = this.zzasv.getContext();
        synchronized (this) {
            if (this.zzatb) {
                this.zzasv.zzgt().zzjo().zzca("Connection attempt already in progress");
                return;
            }
            if (this.zzatc != null && (this.zzatc.isConnecting() || this.zzatc.isConnected())) {
                this.zzasv.zzgt().zzjo().zzca("Already awaiting connection attempt");
                return;
            }
            this.zzatc = new zzap(context, Looper.getMainLooper(), this, this);
            this.zzasv.zzgt().zzjo().zzca("Connecting to remote service");
            this.zzatb = true;
            this.zzatc.checkAvailabilityAndConnect();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    @MainThread
    public final void onConnected(@Nullable Bundle bundle) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                this.zzasv.zzgs().zzc(new zzer(this, this.zzatc.getService()));
            } catch (DeadObjectException | IllegalStateException e) {
                this.zzatc = null;
                this.zzatb = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    @MainThread
    public final void onConnectionSuspended(int i) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionSuspended");
        this.zzasv.zzgt().zzjn().zzca("Service connection suspended");
        this.zzasv.zzgs().zzc(new zzes(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    @MainThread
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionFailed");
        zzaq zzaqVarZzkj = this.zzasv.zzadp.zzkj();
        if (zzaqVarZzkj != null) {
            zzaqVarZzkj.zzjj().zzg("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.zzatb = false;
            this.zzatc = null;
        }
        this.zzasv.zzgs().zzc(new zzet(this));
    }

    static /* synthetic */ boolean zza(zzeo zzeoVar, boolean z) {
        zzeoVar.zzatb = false;
        return false;
    }
}
