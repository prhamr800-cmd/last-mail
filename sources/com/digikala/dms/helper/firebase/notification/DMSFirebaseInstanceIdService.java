package com.digikala.dms.helper.firebase.notification;

import android.util.Log;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;

/* JADX INFO: loaded from: classes2.dex */
public class DMSFirebaseInstanceIdService extends FirebaseInstanceIdService {
    private static final String TAG = DMSFirebaseInstanceIdService.class.getName();

    @Override // com.google.firebase.iid.FirebaseInstanceIdService
    public void onTokenRefresh() {
        super.onTokenRefresh();
        String refreshedToken = FirebaseInstanceId.getInstance().getToken();
        Log.e(TAG, "Refreshed token: " + refreshedToken);
        sendRegistrationToServer(refreshedToken);
    }

    private void sendRegistrationToServer(String refreshedToken) {
        Log.i(TAG, "sendRegistrationToServer: " + refreshedToken);
    }
}
