package com.digikala.dms.model.design;

import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class Question extends RealmObject implements com_digikala_dms_model_design_QuestionRealmProxyInterface {
    private Boolean IsRequired;
    private String Question;
    private String Type;
    private int id;

    @Override // io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public Boolean realmGet$IsRequired() {
        return this.IsRequired;
    }

    @Override // io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public String realmGet$Question() {
        return this.Question;
    }

    @Override // io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public String realmGet$Type() {
        return this.Type;
    }

    @Override // io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public int realmGet$id() {
        return this.id;
    }

    @Override // io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public void realmSet$IsRequired(Boolean bool) {
        this.IsRequired = bool;
    }

    @Override // io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public void realmSet$Question(String str) {
        this.Question = str;
    }

    @Override // io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public void realmSet$Type(String str) {
        this.Type = str;
    }

    @Override // io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public void realmSet$id(int i) {
        this.id = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Question() {
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

    public String getQuestion() {
        return realmGet$Question();
    }

    public void setQuestion(String question) {
        realmSet$Question(question);
    }

    public String getType() {
        return realmGet$Type();
    }

    public void setType(String type) {
        realmSet$Type(type);
    }

    public Boolean getRequired() {
        return realmGet$IsRequired();
    }

    public void setRequired(Boolean required) {
        realmSet$IsRequired(required);
    }
}
