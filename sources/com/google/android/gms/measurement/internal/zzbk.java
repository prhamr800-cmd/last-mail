package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.MainThread;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbk {
    private final zzbn zzaoo;

    public zzbk(zzbn zzbnVar) {
        Preconditions.checkNotNull(zzbnVar);
        this.zzaoo = zzbnVar;
    }

    public static boolean zza(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.checkNotNull(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return false;
    }

    @MainThread
    public final void onReceive(Context context, Intent intent) {
        zzbu zzbuVarZza = zzbu.zza(context, (zzal) null);
        zzaq zzaqVarZzgt = zzbuVarZza.zzgt();
        if (intent == null) {
            zzaqVarZzgt.zzjj().zzca("Receiver called with null intent");
            return;
        }
        zzbuVarZza.zzgw();
        String action = intent.getAction();
        zzaqVarZzgt.zzjo().zzg("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            zzaqVarZzgt.zzjo().zzca("Starting wakeful intent.");
            this.zzaoo.doStartService(context, className);
            return;
        }
        if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            try {
                zzbuVarZza.zzgs().zzc(new zzbl(this, zzbuVarZza, zzaqVarZzgt));
            } catch (Exception e) {
                zzaqVarZzgt.zzjj().zzg("Install Referrer Reporter encountered a problem", e);
            }
            BroadcastReceiver.PendingResult pendingResultDoGoAsync = this.zzaoo.doGoAsync();
            String stringExtra = intent.getStringExtra("referrer");
            if (stringExtra == null) {
                zzaqVarZzgt.zzjo().zzca("Install referrer extras are null");
                if (pendingResultDoGoAsync != null) {
                    pendingResultDoGoAsync.finish();
                    return;
                }
                return;
            }
            zzaqVarZzgt.zzjm().zzg("Install referrer extras are", stringExtra);
            if (!stringExtra.contains("?")) {
                String strValueOf = String.valueOf(stringExtra);
                stringExtra = strValueOf.length() != 0 ? "?".concat(strValueOf) : new String("?");
            }
            Bundle bundleZza = zzbuVarZza.zzgr().zza(Uri.parse(stringExtra));
            if (bundleZza == null) {
                zzaqVarZzgt.zzjo().zzca("No campaign defined in install referrer broadcast");
                if (pendingResultDoGoAsync != null) {
                    pendingResultDoGoAsync.finish();
                    return;
                }
                return;
            }
            long longExtra = intent.getLongExtra("referrer_timestamp_seconds", 0L) * 1000;
            if (longExtra == 0) {
                zzaqVarZzgt.zzjj().zzca("Install referrer is missing timestamp");
            }
            zzbuVarZza.zzgs().zzc(new zzbm(this, zzbuVarZza, longExtra, bundleZza, context, zzaqVarZzgt, pendingResultDoGoAsync));
        }
    }
}
