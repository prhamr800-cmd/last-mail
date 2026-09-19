###### Class com.digikala.dms.model.design.LoginResult (com.digikala.dms.model.design.LoginResult)
.class public Lcom/digikala/dms/model/design/LoginResult;
.super Ljava/lang/Object;
.source "LoginResult.java"


# instance fields
.field private DateTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DateTime"
    .end annotation
.end field

.field private authToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Token"
    .end annotation
.end field

.field private cardTypes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CardType"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/CardType;",
            ">;"
        }
    .end annotation
.end field

.field private courier:Lcom/digikala/dms/model/domain/Courier;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Account"
    .end annotation
.end field

.field private question:Lcom/digikala/dms/model/domain/Question;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Question"
    .end annotation
.end field

.field private trackingType:Lcom/digikala/dms/model/design/TrackingType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TrackingType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/digikala/dms/model/design/LoginResult;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCardTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/CardType;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/digikala/dms/model/design/LoginResult;->cardTypes:Ljava/util/List;

    return-object v0
.end method

.method public getCourier()Lcom/digikala/dms/model/domain/Courier;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/digikala/dms/model/design/LoginResult;->courier:Lcom/digikala/dms/model/domain/Courier;

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/digikala/dms/model/design/LoginResult;->DateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion()Lcom/digikala/dms/model/domain/Question;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/digikala/dms/model/design/LoginResult;->question:Lcom/digikala/dms/model/domain/Question;

    return-object v0
.end method

.method public getTrackingType()Lcom/digikala/dms/model/design/TrackingType;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/digikala/dms/model/design/LoginResult;->trackingType:Lcom/digikala/dms/model/design/TrackingType;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "authToken"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/digikala/dms/model/design/LoginResult;->authToken:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setCardTypes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/CardType;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "cardTypes":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/CardType;>;"
    iput-object p1, p0, Lcom/digikala/dms/model/design/LoginResult;->cardTypes:Ljava/util/List;

    .line 64
    return-void
.end method

.method public setCourier(Lcom/digikala/dms/model/domain/Courier;)V
    .registers 2
    .param p1, "courier"    # Lcom/digikala/dms/model/domain/Courier;

    .line 47
    iput-object p1, p0, Lcom/digikala/dms/model/design/LoginResult;->courier:Lcom/digikala/dms/model/domain/Courier;

    .line 48
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "dateTime"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/digikala/dms/model/design/LoginResult;->DateTime:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setQuestion(Lcom/digikala/dms/model/domain/Question;)V
    .registers 2
    .param p1, "question"    # Lcom/digikala/dms/model/domain/Question;

    .line 55
    iput-object p1, p0, Lcom/digikala/dms/model/design/LoginResult;->question:Lcom/digikala/dms/model/domain/Question;

    .line 56
    return-void
.end method

.method public setTrackingType(Lcom/digikala/dms/model/design/TrackingType;)V
    .registers 2
    .param p1, "trackingType"    # Lcom/digikala/dms/model/design/TrackingType;

    .line 71
    iput-object p1, p0, Lcom/digikala/dms/model/design/LoginResult;->trackingType:Lcom/digikala/dms/model/design/TrackingType;

    .line 72
    return-void
.end method
