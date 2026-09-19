###### Class com.digikala.dms.helper.firebase.notification.remotoperation.RemotServerOperationStatus (com.digikala.dms.helper.firebase.notification.remotoperation.RemotServerOperationStatus)
.class public final enum Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;
.super Ljava/lang/Enum;
.source "RemotServerOperationStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

.field public static final enum CancelShipment:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

.field public static final enum Message:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

.field public static final enum RefreshAssignmentShipment:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

.field public static final enum UpdatePriority:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

.field public static final enum UpdateShipment:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 9
    new-instance v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    const-string v1, "RefreshAssignmentShipment"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->RefreshAssignmentShipment:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    .line 10
    new-instance v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    const-string v1, "CancelShipment"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->CancelShipment:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    .line 11
    new-instance v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    const-string v1, "UpdateShipment"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->UpdateShipment:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    .line 12
    new-instance v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    const-string v1, "UpdatePriority"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->UpdatePriority:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    .line 13
    new-instance v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    const-string v1, "Message"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->Message:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    sget-object v1, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->RefreshAssignmentShipment:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->CancelShipment:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->UpdateShipment:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->UpdatePriority:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->Message:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->$VALUES:[Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    return-object v0
.end method

.method public static values()[Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;
    .registers 1

    .line 7
    sget-object v0, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->$VALUES:[Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    invoke-virtual {v0}, [Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    return-object v0
.end method
