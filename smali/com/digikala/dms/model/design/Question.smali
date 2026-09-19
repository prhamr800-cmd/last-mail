###### Class com.digikala.dms.model.design.Question (com.digikala.dms.model.design.Question)
.class public Lcom/digikala/dms/model/design/Question;
.super Lio/realm/RealmObject;
.source "Question.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;


# instance fields
.field private IsRequired:Ljava/lang/Boolean;

.field private Question:Ljava/lang/String;

.field private Type:Ljava/lang/String;

.field private id:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_d
    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/Question;->realmGet$id()I

    move-result v0

    return v0
.end method

.method public getQuestion()Ljava/lang/String;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/Question;->realmGet$Question()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequired()Ljava/lang/Boolean;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/Question;->realmGet$IsRequired()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/Question;->realmGet$Type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$IsRequired()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/Question;->IsRequired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$Question()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/Question;->Question:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$Type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/Question;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/design/Question;->id:I

    return v0
.end method

.method public realmSet$IsRequired(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/Question;->IsRequired:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$Question(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/Question;->Question:Ljava/lang/String;

    return-void
.end method

.method public realmSet$Type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/Question;->Type:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/design/Question;->id:I

    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 17
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/Question;->realmSet$id(I)V

    .line 18
    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .registers 2
    .param p1, "question"    # Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/Question;->realmSet$Question(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public setRequired(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "required"    # Ljava/lang/Boolean;

    .line 41
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/Question;->realmSet$IsRequired(Ljava/lang/Boolean;)V

    .line 42
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 33
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/Question;->realmSet$Type(Ljava/lang/String;)V

    .line 34
    return-void
.end method
