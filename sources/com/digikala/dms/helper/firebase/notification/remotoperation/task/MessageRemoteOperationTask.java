package com.digikala.dms.helper.firebase.notification.remotoperation.task;

import android.util.Log;
import com.digikala.dms.model.domain.ServerMessages;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.realm.Realm;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class MessageRemoteOperationTask implements IRemoteOperationTask {
    @Override // com.digikala.dms.helper.firebase.notification.remotoperation.task.IRemoteOperationTask
    public void execute(Map<String, String> dataPayLoad) throws Exception {
        Log.i(IRemoteOperationTask.TAG, "execute: Message");
        ServerMessages message = new ServerMessages();
        message.setId(dataPayLoad.get("id"));
        message.setTitle(dataPayLoad.get(SettingsJsonConstants.PROMPT_TITLE_KEY));
        message.setMessage(dataPayLoad.get("message"));
        message.setDate(Long.parseLong(dataPayLoad.get("date")));
        if (message.getId() == null || message.getTitle() == null || message.getMessage() == null) {
            throw new Exception("Some fields of Message are null");
        }
        Realm realm = Realm.getDefaultInstance();
        realm.beginTransaction();
        ServerMessages realmMessage = (ServerMessages) realm.createObject(ServerMessages.class);
        realmMessage.setId(message.getId());
        realmMessage.setTitle(message.getTitle());
        realmMessage.setMessage(message.getMessage());
        realmMessage.setDate(message.getDate());
        realm.commitTransaction();
    }
}
