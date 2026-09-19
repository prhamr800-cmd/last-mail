package io.realm;

import com.digikala.dms.model.design.Answer;
import com.digikala.dms.model.design.Question;

/* JADX INFO: loaded from: classes2.dex */
public interface com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface {
    RealmList<Answer> realmGet$Answers();

    Question realmGet$question();

    void realmSet$Answers(RealmList<Answer> realmList);

    void realmSet$question(Question question);
}
