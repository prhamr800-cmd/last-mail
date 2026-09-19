###### Class com.digikala.dms.model.design.Answer (com.digikala.dms.model.design.Answer)
.class public Lcom/digikala/dms/model/design/Answer;
.super Lio/realm/RealmObject;
.source "Answer.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;


# instance fields
.field private Answer:Ljava/lang/String;

.field private id:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 11
    :cond_d
    return-void
.end method


# virtual methods
.method public getAnswer()Ljava/lang/String;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/Answer;->realmGet$Answer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/Answer;->realmGet$id()I

    move-result v0

    return v0
.end method

.method public realmGet$Answer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/Answer;->Answer:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/design/Answer;->id:I

    return v0
.end method

.method public realmSet$Answer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/Answer;->Answer:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/design/Answer;->id:I

    return-void
.end method

.method public setAnswer(Ljava/lang/String;)V
    .registers 2
    .param p1, "answer"    # Ljava/lang/String;

    .line 26
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/Answer;->realmSet$Answer(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 18
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/Answer;->realmSet$id(I)V

    .line 19
    return-void
.end method
