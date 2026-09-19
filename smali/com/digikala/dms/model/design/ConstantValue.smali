###### Class com.digikala.dms.model.design.ConstantValue (com.digikala.dms.model.design.ConstantValue)
.class public Lcom/digikala/dms/model/design/ConstantValue;
.super Ljava/lang/Object;
.source "ConstantValue.java"


# instance fields
.field private answersPerQuestion:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AnswersPerQuestion"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/design/QuestionAnswer;",
            ">;"
        }
    .end annotation
.end field

.field private cancellationReasons:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CancellationReasons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            ">;"
        }
    .end annotation
.end field

.field private credentials:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Credentials"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/CardType;",
            ">;"
        }
    .end annotation
.end field

.field private tracking:Lcom/digikala/dms/model/design/TrackingType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Tracking"
    .end annotation
.end field

.field private unprocessedReasons:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UnprocessedReasons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/UnprocessedReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/digikala/dms/model/design/ConstantValue;->answersPerQuestion:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/digikala/dms/model/design/ConstantValue;->credentials:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/digikala/dms/model/design/ConstantValue;->cancellationReasons:Ljava/util/List;

    .line 27
    iput-object v0, p0, Lcom/digikala/dms/model/design/ConstantValue;->unprocessedReasons:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAnswersPerQuestion()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/design/QuestionAnswer;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/digikala/dms/model/design/ConstantValue;->answersPerQuestion:Ljava/util/List;

    return-object v0
.end method

.method public getCancellationReasons()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/digikala/dms/model/design/ConstantValue;->cancellationReasons:Ljava/util/List;

    return-object v0
.end method

.method public getCredentials()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/CardType;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/digikala/dms/model/design/ConstantValue;->credentials:Ljava/util/List;

    return-object v0
.end method

.method public getTracking()Lcom/digikala/dms/model/design/TrackingType;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/digikala/dms/model/design/ConstantValue;->tracking:Lcom/digikala/dms/model/design/TrackingType;

    return-object v0
.end method

.method public getUnprocessedReasons()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/UnprocessedReason;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/digikala/dms/model/design/ConstantValue;->unprocessedReasons:Ljava/util/List;

    return-object v0
.end method

.method public setAnswersPerQuestion(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/design/QuestionAnswer;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "answersPerQuestion":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/design/QuestionAnswer;>;"
    iput-object p1, p0, Lcom/digikala/dms/model/design/ConstantValue;->answersPerQuestion:Ljava/util/List;

    .line 68
    return-void
.end method

.method public setCancellationReasons(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "cancellationReasons":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/RejectReason;>;"
    iput-object p1, p0, Lcom/digikala/dms/model/design/ConstantValue;->cancellationReasons:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setCredentials(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/CardType;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "credentials":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/CardType;>;"
    iput-object p1, p0, Lcom/digikala/dms/model/design/ConstantValue;->credentials:Ljava/util/List;

    .line 36
    return-void
.end method

.method public setTracking(Lcom/digikala/dms/model/design/TrackingType;)V
    .registers 2
    .param p1, "tracking"    # Lcom/digikala/dms/model/design/TrackingType;

    .line 43
    iput-object p1, p0, Lcom/digikala/dms/model/design/ConstantValue;->tracking:Lcom/digikala/dms/model/design/TrackingType;

    .line 44
    return-void
.end method

.method public setUnprocessedReasons(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/UnprocessedReason;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p1, "unprocessedReasons":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/UnprocessedReason;>;"
    iput-object p1, p0, Lcom/digikala/dms/model/design/ConstantValue;->unprocessedReasons:Ljava/util/List;

    .line 60
    return-void
.end method
