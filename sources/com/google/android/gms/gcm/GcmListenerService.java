package com.google.android.gms.gcm;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class GcmListenerService extends com.google.android.gms.iid.zze {
    static void zzd(Bundle bundle) {
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next != null && next.startsWith("google.c.")) {
                it.remove();
            }
        }
    }

    @Override // com.google.android.gms.iid.zze
    public void handleIntent(Intent intent) {
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            String strValueOf = String.valueOf(intent.getAction());
            Log.w("GcmListenerService", strValueOf.length() != 0 ? "Unknown intent action: ".concat(strValueOf) : new String("Unknown intent action: "));
        }
        String stringExtra = intent.getStringExtra("message_type");
        if (stringExtra == null) {
            stringExtra = GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE;
        }
        byte b = -1;
        int iHashCode = stringExtra.hashCode();
        boolean z = false;
        if (iHashCode != -2062414158) {
            if (iHashCode != 102161) {
                if (iHashCode != 814694033) {
                    if (iHashCode == 814800675 && stringExtra.equals(GoogleCloudMessaging.MESSAGE_TYPE_SEND_EVENT)) {
                        b = 2;
                    }
                } else if (stringExtra.equals(GoogleCloudMessaging.MESSAGE_TYPE_SEND_ERROR)) {
                    b = 3;
                }
            } else if (stringExtra.equals(GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE)) {
                b = 0;
            }
        } else if (stringExtra.equals(GoogleCloudMessaging.MESSAGE_TYPE_DELETED)) {
            b = 1;
        }
        switch (b) {
            case 0:
                Bundle extras = intent.getExtras();
                extras.remove("message_type");
                extras.remove("android.support.content.wakelockid");
                if ("1".equals(zzd.zzd(extras, "gcm.n.e")) || zzd.zzd(extras, "gcm.n.icon") != null) {
                    if (!((KeyguardManager) getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
                        int iMyPid = Process.myPid();
                        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getSystemService("activity")).getRunningAppProcesses();
                        if (runningAppProcesses != null) {
                            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    ActivityManager.RunningAppProcessInfo next = it.next();
                                    if (next.pid == iMyPid) {
                                        if (next.importance == 100) {
                                            z = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (!z) {
                        zzd.zzd(this).zze(extras);
                    } else {
                        Bundle bundle = new Bundle();
                        Iterator<String> it2 = extras.keySet().iterator();
                        while (it2.hasNext()) {
                            String next2 = it2.next();
                            String string = extras.getString(next2);
                            if (next2.startsWith("gcm.notification.")) {
                                next2 = next2.replace("gcm.notification.", "gcm.n.");
                            }
                            if (next2.startsWith("gcm.n.")) {
                                if (!"gcm.n.e".equals(next2)) {
                                    bundle.putString(next2.substring(6), string);
                                }
                                it2.remove();
                            }
                        }
                        String string2 = bundle.getString("sound2");
                        if (string2 != null) {
                            bundle.remove("sound2");
                            bundle.putString("sound", string2);
                        }
                        if (!bundle.isEmpty()) {
                            extras.putBundle("notification", bundle);
                        }
                    }
                }
                String string3 = extras.getString("from");
                extras.remove("from");
                zzd(extras);
                onMessageReceived(string3, extras);
                break;
            case 1:
                onDeletedMessages();
                break;
            case 2:
                onMessageSent(intent.getStringExtra("google.message_id"));
                break;
            case 3:
                String stringExtra2 = intent.getStringExtra("google.message_id");
                if (stringExtra2 == null) {
                    stringExtra2 = intent.getStringExtra("message_id");
                }
                onSendError(stringExtra2, intent.getStringExtra("error"));
                break;
            default:
                String strValueOf2 = String.valueOf(stringExtra);
                Log.w("GcmListenerService", strValueOf2.length() != 0 ? "Received message with unknown type: ".concat(strValueOf2) : new String("Received message with unknown type: "));
                break;
        }
    }

    public void onDeletedMessages() {
    }

    public void onMessageReceived(String str, Bundle bundle) {
    }

    public void onMessageSent(String str) {
    }

    public void onSendError(String str, String str2) {
    }
}
