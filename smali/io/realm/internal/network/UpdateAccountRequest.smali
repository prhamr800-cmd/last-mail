###### Class io.realm.internal.network.UpdateAccountRequest (io.realm.internal.network.UpdateAccountRequest)
.class public Lio/realm/internal/network/UpdateAccountRequest;
.super Ljava/lang/Object;
.source "UpdateAccountRequest.java"


# static fields
.field private static final NO_DATA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final action:Ljava/lang/String;

.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final providerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/realm/internal/network/UpdateAccountRequest;->NO_DATA:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p3, "providerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/realm/internal/network/UpdateAccountRequest;->action:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lio/realm/internal/network/UpdateAccountRequest;->data:Ljava/util/Map;

    .line 63
    iput-object p3, p0, Lio/realm/internal/network/UpdateAccountRequest;->providerId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lio/realm/internal/network/UpdateAccountRequest;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lio/realm/internal/network/UpdateAccountRequest;

    .line 31
    iget-object v0, p0, Lio/realm/internal/network/UpdateAccountRequest;->providerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lio/realm/internal/network/UpdateAccountRequest;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lio/realm/internal/network/UpdateAccountRequest;

    .line 31
    iget-object v0, p0, Lio/realm/internal/network/UpdateAccountRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lio/realm/internal/network/UpdateAccountRequest;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lio/realm/internal/network/UpdateAccountRequest;

    .line 31
    iget-object v0, p0, Lio/realm/internal/network/UpdateAccountRequest;->data:Ljava/util/Map;

    return-object v0
.end method

.method public static completeEmailConfirmation(Ljava/lang/String;)Lio/realm/internal/network/UpdateAccountRequest;
    .registers 5
    .param p0, "confirmEmailToken"    # Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "token"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v1, Lio/realm/internal/network/UpdateAccountRequest;

    const-string v2, "confirm_email"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lio/realm/internal/network/UpdateAccountRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method

.method public static completePasswordReset(Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/network/UpdateAccountRequest;
    .registers 6
    .param p0, "resetPasswordToken"    # Ljava/lang/String;
    .param p1, "newPassword"    # Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "token"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "new_password"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Lio/realm/internal/network/UpdateAccountRequest;

    const-string v2, "complete_reset"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lio/realm/internal/network/UpdateAccountRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method

.method public static requestEmailConfirmation(Ljava/lang/String;)Lio/realm/internal/network/UpdateAccountRequest;
    .registers 4
    .param p0, "email"    # Ljava/lang/String;

    .line 51
    new-instance v0, Lio/realm/internal/network/UpdateAccountRequest;

    const-string v1, "request_email_confirmation"

    sget-object v2, Lio/realm/internal/network/UpdateAccountRequest;->NO_DATA:Ljava/util/Map;

    invoke-direct {v0, v1, v2, p0}, Lio/realm/internal/network/UpdateAccountRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public static requestPasswordReset(Ljava/lang/String;)Lio/realm/internal/network/UpdateAccountRequest;
    .registers 4
    .param p0, "email"    # Ljava/lang/String;

    .line 40
    new-instance v0, Lio/realm/internal/network/UpdateAccountRequest;

    const-string v1, "reset_password"

    sget-object v2, Lio/realm/internal/network/UpdateAccountRequest;->NO_DATA:Ljava/util/Map;

    invoke-direct {v0, v1, v2, p0}, Lio/realm/internal/network/UpdateAccountRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .registers 3

    .line 70
    new-instance v0, Lio/realm/internal/network/UpdateAccountRequest$1;

    invoke-direct {v0, p0}, Lio/realm/internal/network/UpdateAccountRequest$1;-><init>(Lio/realm/internal/network/UpdateAccountRequest;)V

    .line 78
    .local v0, "payload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.internal.network.UpdateAccountRequest.AnonymousClass1 (io.realm.internal.network.UpdateAccountRequest$1)
.class Lio/realm/internal/network/UpdateAccountRequest$1;
.super Ljava/util/HashMap;
.source "UpdateAccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/network/UpdateAccountRequest;->toJson()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/internal/network/UpdateAccountRequest;


# direct methods
.method constructor <init>(Lio/realm/internal/network/UpdateAccountRequest;)V
    .registers 5
    .param p1, "this$0"    # Lio/realm/internal/network/UpdateAccountRequest;

    .line 70
    iput-object p1, p0, Lio/realm/internal/network/UpdateAccountRequest$1;->this$0:Lio/realm/internal/network/UpdateAccountRequest;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 71
    iget-object v0, p0, Lio/realm/internal/network/UpdateAccountRequest$1;->this$0:Lio/realm/internal/network/UpdateAccountRequest;

    invoke-static {v0}, Lio/realm/internal/network/UpdateAccountRequest;->access$000(Lio/realm/internal/network/UpdateAccountRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 72
    const-string v0, "provider_id"

    iget-object v1, p0, Lio/realm/internal/network/UpdateAccountRequest$1;->this$0:Lio/realm/internal/network/UpdateAccountRequest;

    invoke-static {v1}, Lio/realm/internal/network/UpdateAccountRequest;->access$000(Lio/realm/internal/network/UpdateAccountRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/network/UpdateAccountRequest$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1c
    iget-object v0, p0, Lio/realm/internal/network/UpdateAccountRequest$1;->this$0:Lio/realm/internal/network/UpdateAccountRequest;

    invoke-static {v0}, Lio/realm/internal/network/UpdateAccountRequest;->access$200(Lio/realm/internal/network/UpdateAccountRequest;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    iget-object v2, p0, Lio/realm/internal/network/UpdateAccountRequest$1;->this$0:Lio/realm/internal/network/UpdateAccountRequest;

    invoke-static {v2}, Lio/realm/internal/network/UpdateAccountRequest;->access$100(Lio/realm/internal/network/UpdateAccountRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "data"

    iget-object v1, p0, Lio/realm/internal/network/UpdateAccountRequest$1;->this$0:Lio/realm/internal/network/UpdateAccountRequest;

    invoke-static {v1}, Lio/realm/internal/network/UpdateAccountRequest;->access$200(Lio/realm/internal/network/UpdateAccountRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/network/UpdateAccountRequest$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method
