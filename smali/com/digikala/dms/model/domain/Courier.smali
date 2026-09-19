###### Class com.digikala.dms.model.domain.Courier (com.digikala.dms.model.domain.Courier)
.class public Lcom/digikala/dms/model/domain/Courier;
.super Lio/realm/RealmObject;
.source "Courier.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_CourierRealmProxyInterface;


# static fields
.field public static final COLUMN_AVATAR_URL:Ljava/lang/String; = "avatarUrl"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_IS_LOGGED_IN:Ljava/lang/String; = "isLoggedIn"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NOTIFICATION_TOKEN:Ljava/lang/String; = "notificationToken"

.field public static final COLUMN_SHIPMENTS:Ljava/lang/String; = "shipments"


# instance fields
.field private avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AvatarUrl"
    .end annotation
.end field

.field private batch:Lcom/digikala/dms/model/domain/Batch;

.field private distributionCenter:Lcom/digikala/dms/model/domain/DistributionCenter;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Dc"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field private isBatchFinalized:Z

.field private isLoggedIn:Z

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Name"
    .end annotation
.end field

.field private notificationToken:Ljava/lang/String;

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 35
    :cond_d
    new-instance v0, Lcom/digikala/dms/model/domain/Batch;

    invoke-direct {v0}, Lcom/digikala/dms/model/domain/Batch;-><init>()V

    invoke-virtual {p0, v0}, Lcom/digikala/dms/model/domain/Courier;->realmSet$batch(Lcom/digikala/dms/model/domain/Batch;)V

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .registers 2

    .line 57
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->realmGet$avatarUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatch()Lcom/digikala/dms/model/domain/Batch;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->realmGet$batch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v0

    return-object v0
.end method

.method public getDistributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;
    .registers 2

    .line 65
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->realmGet$distributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationToken()Ljava/lang/String;
    .registers 2

    .line 97
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->realmGet$notificationToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 105
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->realmGet$userName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBatchFinalized()Z
    .registers 2

    .line 89
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->realmGet$isBatchFinalized()Z

    move-result v0

    return v0
.end method

.method public isLoggedIn()Z
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->realmGet$isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public realmGet$avatarUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Courier;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$batch()Lcom/digikala/dms/model/domain/Batch;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Courier;->batch:Lcom/digikala/dms/model/domain/Batch;

    return-object v0
.end method

.method public realmGet$distributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Courier;->distributionCenter:Lcom/digikala/dms/model/domain/DistributionCenter;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Courier;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$isBatchFinalized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/digikala/dms/model/domain/Courier;->isBatchFinalized:Z

    return v0
.end method

.method public realmGet$isLoggedIn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/digikala/dms/model/domain/Courier;->isLoggedIn:Z

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Courier;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$notificationToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Courier;->notificationToken:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$userName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Courier;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$avatarUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Courier;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$batch(Lcom/digikala/dms/model/domain/Batch;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Courier;->batch:Lcom/digikala/dms/model/domain/Batch;

    return-void
.end method

.method public realmSet$distributionCenter(Lcom/digikala/dms/model/domain/DistributionCenter;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Courier;->distributionCenter:Lcom/digikala/dms/model/domain/DistributionCenter;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Courier;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$isBatchFinalized(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/digikala/dms/model/domain/Courier;->isBatchFinalized:Z

    return-void
.end method

.method public realmSet$isLoggedIn(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/digikala/dms/model/domain/Courier;->isLoggedIn:Z

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Courier;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$notificationToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Courier;->notificationToken:Ljava/lang/String;

    return-void
.end method

.method public realmSet$userName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Courier;->userName:Ljava/lang/String;

    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "avatarUrl"    # Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Courier;->realmSet$avatarUrl(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setBatch(Lcom/digikala/dms/model/domain/Batch;)V
    .registers 2
    .param p1, "batch"    # Lcom/digikala/dms/model/domain/Batch;

    .line 77
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Courier;->realmSet$batch(Lcom/digikala/dms/model/domain/Batch;)V

    .line 78
    return-void
.end method

.method public setBatchFinalized(Z)V
    .registers 2
    .param p1, "synced"    # Z

    .line 93
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Courier;->realmSet$isBatchFinalized(Z)V

    .line 94
    return-void
.end method

.method public setDistributionCenter(Lcom/digikala/dms/model/domain/DistributionCenter;)V
    .registers 2
    .param p1, "distributionCenter"    # Lcom/digikala/dms/model/domain/DistributionCenter;

    .line 69
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Courier;->realmSet$distributionCenter(Lcom/digikala/dms/model/domain/DistributionCenter;)V

    .line 70
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Courier;->realmSet$id(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public setIsLoggedIn(Z)V
    .registers 2
    .param p1, "isLoggedIn"    # Z

    .line 85
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Courier;->realmSet$isLoggedIn(Z)V

    .line 86
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Courier;->realmSet$name(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setNotificationToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "notificationToken"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Courier;->realmSet$notificationToken(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .param p1, "userName"    # Ljava/lang/String;

    .line 109
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Courier;->realmSet$userName(Ljava/lang/String;)V

    .line 110
    return-void
.end method
