package com.digikala.dms.model.design;

import com.crashlytics.android.answers.Answers;
import com.google.gson.annotations.SerializedName;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;
import io.realm.com_digikala_dms_model_design_QuestionRealmProxy;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class QuestionAnswer extends RealmObject implements com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface {

    @SerializedName(Answers.TAG)
    private RealmList<Answer> Answers;

    @SerializedName(com_digikala_dms_model_design_QuestionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME)
    private Question question;

    @Override // io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface
    public RealmList realmGet$Answers() {
        return this.Answers;
    }

    @Override // io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface
    public Question realmGet$question() {
        return this.question;
    }

    @Override // io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface
    public void realmSet$Answers(RealmList realmList) {
        this.Answers = realmList;
    }

    @Override // io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface
    public void realmSet$question(Question question) {
        this.question = question;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public QuestionAnswer() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public Question getQuestion() {
        return realmGet$question();
    }

    public void setQuestion(Question question) {
        realmSet$question(question);
    }

    public RealmList<Answer> getAnswers() {
        return realmGet$Answers();
    }

    public void setAnswers(RealmList<Answer> answers) {
        realmSet$Answers(answers);
    }
}
