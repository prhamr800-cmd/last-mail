###### Class io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface (io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface)
.class public interface abstract Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface.java"


# virtual methods
.method public abstract realmGet$Answers()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/Answer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$question()Lcom/digikala/dms/model/design/Question;
.end method

.method public abstract realmSet$Answers(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/Answer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract realmSet$question(Lcom/digikala/dms/model/design/Question;)V
.end method
