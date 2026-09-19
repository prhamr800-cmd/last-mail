package com.digikala.dms.helper.firebase.notification.remotoperation.task;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface IRemoteOperationTask {
    public static final String TAG = "RemoteOperationTask";

    void execute(Map<String, String> map) throws Exception;
}
