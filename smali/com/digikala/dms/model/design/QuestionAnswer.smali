###### Class com.digikala.dms.model.design.QuestionAnswer (com.digikala.dms.model.design.QuestionAnswer)
.class public Lcom/digikala/dms/model/design/QuestionAnswer;
.super Lio/realm/RealmObject;
.source "QuestionAnswer.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;


# instance fields
.field private Answers:Lio/realm/RealmList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Answers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/Answer;",
            ">;"
        }
    .end annotation
.end field

.field private question:Lcom/digikala/dms/model/design/Question;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Question"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 15
    :cond_d
    return-void
.end method


# virtual methods
.method public getAnswers()Lio/realm/RealmList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/Answer;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/QuestionAnswer;->realmGet$Answers()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getQuestion()Lcom/digikala/dms/model/design/Question;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/QuestionAnswer;->realmGet$question()Lcom/digikala/dms/model/design/Question;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$Answers()Lio/realm/RealmList;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/QuestionAnswer;->Answers:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$question()Lcom/digikala/dms/model/design/Question;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/QuestionAnswer;->question:Lcom/digikala/dms/model/design/Question;

    return-object v0
.end method

.method public realmSet$Answers(Lio/realm/RealmList;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/QuestionAnswer;->Answers:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$question(Lcom/digikala/dms/model/design/Question;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/QuestionAnswer;->question:Lcom/digikala/dms/model/design/Question;

    return-void
.end method

.method public setAnswers(Lio/realm/RealmList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/Answer;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "answers":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/QuestionAnswer;->realmSet$Answers(Lio/realm/RealmList;)V

    .line 32
    return-void
.end method

.method public setQuestion(Lcom/digikala/dms/model/design/Question;)V
    .registers 2
    .param p1, "question"    # Lcom/digikala/dms/model/design/Question;

    .line 23
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/QuestionAnswer;->realmSet$question(Lcom/digikala/dms/model/design/Question;)V

    .line 24
    return-void
.end method
