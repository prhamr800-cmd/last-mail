###### Class com.digikala.dms.model.domain.Question (com.digikala.dms.model.domain.Question)
.class public Lcom/digikala/dms/model/domain/Question;
.super Ljava/lang/Object;
.source "Question.java"


# instance fields
.field private context:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Content"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/String;
    .param p3, "rateRange"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/digikala/dms/model/domain/Question;->id:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/digikala/dms/model/domain/Question;->context:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/digikala/dms/model/domain/Question;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/digikala/dms/model/domain/Question;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Ljava/lang/String;)V
    .registers 2
    .param p1, "context"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/digikala/dms/model/domain/Question;->context:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/digikala/dms/model/domain/Question;->id:Ljava/lang/String;

    .line 33
    return-void
.end method
