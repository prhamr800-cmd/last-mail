###### Class com.huxq17.download.ErrorCode (com.huxq17.download.ErrorCode)
.class public final enum Lcom/huxq17/download/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huxq17/download/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huxq17/download/ErrorCode;

.field public static final enum ERROR_CONTENT_LENGTH_NOT_FOUND:Lcom/huxq17/download/ErrorCode;

.field public static final enum ERROR_CREATE_FILE_FAILED:Lcom/huxq17/download/ErrorCode;

.field public static final enum ERROR_DOWNLOAD_FAILED:Lcom/huxq17/download/ErrorCode;

.field public static final enum ERROR_FILE_NOT_FOUND:Lcom/huxq17/download/ErrorCode;

.field public static final enum ERROR_FILE_OUT_LIMIT:Lcom/huxq17/download/ErrorCode;

.field public static final enum ERROR_MERGE_FILE_FAILED:Lcom/huxq17/download/ErrorCode;

.field public static final enum ERROR_NETWORK_UNAVAILABLE:Lcom/huxq17/download/ErrorCode;

.field public static final enum ERROR_UNKNOWN_SERVER_ERROR:Lcom/huxq17/download/ErrorCode;

.field public static final enum ERROR_USABLE_SPACE_NOT_ENOUGH:Lcom/huxq17/download/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 8
    new-instance v0, Lcom/huxq17/download/ErrorCode;

    const-string v1, "ERROR_NETWORK_UNAVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huxq17/download/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/ErrorCode;->ERROR_NETWORK_UNAVAILABLE:Lcom/huxq17/download/ErrorCode;

    .line 12
    new-instance v0, Lcom/huxq17/download/ErrorCode;

    const-string v1, "ERROR_CREATE_FILE_FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huxq17/download/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/ErrorCode;->ERROR_CREATE_FILE_FAILED:Lcom/huxq17/download/ErrorCode;

    .line 16
    new-instance v0, Lcom/huxq17/download/ErrorCode;

    const-string v1, "ERROR_FILE_NOT_FOUND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huxq17/download/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/ErrorCode;->ERROR_FILE_NOT_FOUND:Lcom/huxq17/download/ErrorCode;

    .line 20
    new-instance v0, Lcom/huxq17/download/ErrorCode;

    const-string v1, "ERROR_UNKNOWN_SERVER_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huxq17/download/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/ErrorCode;->ERROR_UNKNOWN_SERVER_ERROR:Lcom/huxq17/download/ErrorCode;

    .line 24
    new-instance v0, Lcom/huxq17/download/ErrorCode;

    const-string v1, "ERROR_USABLE_SPACE_NOT_ENOUGH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/huxq17/download/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/ErrorCode;->ERROR_USABLE_SPACE_NOT_ENOUGH:Lcom/huxq17/download/ErrorCode;

    .line 28
    new-instance v0, Lcom/huxq17/download/ErrorCode;

    const-string v1, "ERROR_MERGE_FILE_FAILED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/huxq17/download/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/ErrorCode;->ERROR_MERGE_FILE_FAILED:Lcom/huxq17/download/ErrorCode;

    .line 32
    new-instance v0, Lcom/huxq17/download/ErrorCode;

    const-string v1, "ERROR_CONTENT_LENGTH_NOT_FOUND"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/huxq17/download/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/ErrorCode;->ERROR_CONTENT_LENGTH_NOT_FOUND:Lcom/huxq17/download/ErrorCode;

    .line 36
    new-instance v0, Lcom/huxq17/download/ErrorCode;

    const-string v1, "ERROR_DOWNLOAD_FAILED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/huxq17/download/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/ErrorCode;->ERROR_DOWNLOAD_FAILED:Lcom/huxq17/download/ErrorCode;

    .line 40
    new-instance v0, Lcom/huxq17/download/ErrorCode;

    const-string v1, "ERROR_FILE_OUT_LIMIT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/huxq17/download/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/ErrorCode;->ERROR_FILE_OUT_LIMIT:Lcom/huxq17/download/ErrorCode;

    .line 3
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/huxq17/download/ErrorCode;

    sget-object v1, Lcom/huxq17/download/ErrorCode;->ERROR_NETWORK_UNAVAILABLE:Lcom/huxq17/download/ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huxq17/download/ErrorCode;->ERROR_CREATE_FILE_FAILED:Lcom/huxq17/download/ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huxq17/download/ErrorCode;->ERROR_FILE_NOT_FOUND:Lcom/huxq17/download/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huxq17/download/ErrorCode;->ERROR_UNKNOWN_SERVER_ERROR:Lcom/huxq17/download/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huxq17/download/ErrorCode;->ERROR_USABLE_SPACE_NOT_ENOUGH:Lcom/huxq17/download/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huxq17/download/ErrorCode;->ERROR_MERGE_FILE_FAILED:Lcom/huxq17/download/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huxq17/download/ErrorCode;->ERROR_CONTENT_LENGTH_NOT_FOUND:Lcom/huxq17/download/ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/huxq17/download/ErrorCode;->ERROR_DOWNLOAD_FAILED:Lcom/huxq17/download/ErrorCode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/huxq17/download/ErrorCode;->ERROR_FILE_OUT_LIMIT:Lcom/huxq17/download/ErrorCode;

    aput-object v1, v0, v10

    sput-object v0, Lcom/huxq17/download/ErrorCode;->$VALUES:[Lcom/huxq17/download/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huxq17/download/ErrorCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/huxq17/download/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/huxq17/download/ErrorCode;
    .registers 1

    .line 3
    sget-object v0, Lcom/huxq17/download/ErrorCode;->$VALUES:[Lcom/huxq17/download/ErrorCode;

    invoke-virtual {v0}, [Lcom/huxq17/download/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huxq17/download/ErrorCode;

    return-object v0
.end method
