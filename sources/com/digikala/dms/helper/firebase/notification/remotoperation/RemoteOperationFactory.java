package com.digikala.dms.helper.firebase.notification.remotoperation;

import com.digikala.dms.helper.firebase.notification.remotoperation.task.CancelShipmentRemoteOperationTask;
import com.digikala.dms.helper.firebase.notification.remotoperation.task.IRemoteOperationTask;
import com.digikala.dms.helper.firebase.notification.remotoperation.task.MessageRemoteOperationTask;
import com.digikala.dms.helper.firebase.notification.remotoperation.task.UpdatePriorityRemoteOperationTask;
import com.digikala.dms.helper.firebase.notification.remotoperation.task.UpdateShipmentRemoteOperationTask;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteOperationFactory {
    public static IRemoteOperationTask create(String type) {
        if (type.equalsIgnoreCase(RemotServerOperationStatus.Message.name())) {
            IRemoteOperationTask task = new MessageRemoteOperationTask();
            return task;
        }
        if (type.equalsIgnoreCase(RemotServerOperationStatus.UpdateShipment.name())) {
            IRemoteOperationTask task2 = new UpdateShipmentRemoteOperationTask();
            return task2;
        }
        if (type.equalsIgnoreCase(RemotServerOperationStatus.UpdatePriority.name())) {
            IRemoteOperationTask task3 = new UpdatePriorityRemoteOperationTask();
            return task3;
        }
        if (!type.equalsIgnoreCase(RemotServerOperationStatus.CancelShipment.name())) {
            return null;
        }
        IRemoteOperationTask task4 = new CancelShipmentRemoteOperationTask();
        return task4;
    }
}
