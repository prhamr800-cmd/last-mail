package com.digikala.dms.helper.firebase.notification;

import android.util.Log;
import com.digikala.dms.helper.firebase.notification.remotoperation.RemoteOperationFactory;
import com.digikala.dms.helper.firebase.notification.remotoperation.task.IRemoteOperationTask;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class DMSFirebaseMessagingService extends FirebaseMessagingService {
    private static final String TAG = DMSFirebaseMessagingService.class.getName();

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        super.onMessageReceived(remoteMessage);
        Map<String, String> dataPayLoad = remoteMessage.getData();
        if (dataPayLoad != null && dataPayLoad.size() > 0) {
            try {
                handleDataMessage(dataPayLoad);
            } catch (Exception e) {
                e.printStackTrace();
                Log.e(TAG, "onMessageReceived: " + e.getMessage());
            }
        }
        RemoteMessage.Notification notification = remoteMessage.getNotification();
        if (notification != null) {
            handleNotification(notification);
        }
    }

    private void handleDataMessage(Map<String, String> dataPayLoad) throws Exception {
        Log.i(TAG, "onMessageReceived: " + dataPayLoad);
        IRemoteOperationTask task = RemoteOperationFactory.create(dataPayLoad.get(AppMeasurement.Param.TYPE));
        if (task != null) {
            task.execute(dataPayLoad);
        }
    }

    private void handleNotification(RemoteMessage.Notification notification) {
        Log.i(TAG, "onMessageReceived: " + notification.getBody());
    }
}
