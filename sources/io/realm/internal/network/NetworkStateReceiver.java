package io.realm.internal.network;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import io.realm.SyncManager;
import io.realm.internal.Util;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkStateReceiver extends BroadcastReceiver {
    private static List<ConnectionListener> listeners = new CopyOnWriteArrayList();

    public interface ConnectionListener {
        void onChange(boolean z);
    }

    public static void addListener(ConnectionListener listener) {
        listeners.add(listener);
    }

    public static synchronized void removeListener(ConnectionListener listener) {
        listeners.remove(listener);
    }

    public static boolean isOnline(Context context) {
        if (SyncManager.Debug.skipOnlineChecking) {
            return true;
        }
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo networkInfo = cm.getActiveNetworkInfo();
        return (networkInfo != null && networkInfo.isConnectedOrConnecting()) || Util.isEmulator();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean connected = isOnline(context);
        for (ConnectionListener listener : listeners) {
            listener.onChange(connected);
        }
    }
}
