package com.digikala.dms.model.design;

import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_design_AnswerRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class Answer extends RealmObject implements com_digikala_dms_model_design_AnswerRealmProxyInterface {
    private String Answer;
    private int id;

    @Override // io.realm.com_digikala_dms_model_design_AnswerRealmProxyInterface
    public String realmGet$Answer() {
        return this.Answer;
    }

    @Override // io.realm.com_digikala_dms_model_design_AnswerRealmProxyInterface
    public int realmGet$id() {
        return this.id;
    }

    @Override // io.realm.com_digikala_dms_model_design_AnswerRealmProxyInterface
    public void realmSet$Answer(String str) {
        this.Answer = str;
    }

    @Override // io.realm.com_digikala_dms_model_design_AnswerRealmProxyInterface
    public void realmSet$id(int i) {
        this.id = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Answer() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public int getId() {
        return realmGet$id();
    }

    public void setId(int id) {
        realmSet$id(id);
    }

    public String getAnswer() {
        return realmGet$Answer();
    }

    public void setAnswer(String answer) {
        realmSet$Answer(answer);
    }
}
