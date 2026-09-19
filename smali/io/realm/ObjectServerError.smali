###### Class io.realm.ObjectServerError (io.realm.ObjectServerError)
.class public Lio/realm/ObjectServerError;
.super Ljava/lang/RuntimeException;
.source "ObjectServerError.java"


# instance fields
.field private final error:Lio/realm/ErrorCode;

.field private final errorMessage:Ljava/lang/String;

.field private final exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/realm/ErrorCode;Ljava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # Lio/realm/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, p1, p2, v0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "errorCode"    # Lio/realm/ErrorCode;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "hint"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    if-eqz p3, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    move-object v0, p2

    :goto_18
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0, v1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "errorCode"    # Lio/realm/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "exception"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 67
    iput-object p1, p0, Lio/realm/ObjectServerError;->error:Lio/realm/ErrorCode;

    .line 68
    iput-object p2, p0, Lio/realm/ObjectServerError;->errorMessage:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lio/realm/ObjectServerError;->exception:Ljava/lang/Throwable;

    .line 70
    return-void
.end method

.method public constructor <init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "errorCode"    # Lio/realm/ErrorCode;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getCategory()Lio/realm/ErrorCode$Category;
    .registers 2

    .line 120
    iget-object v0, p0, Lio/realm/ObjectServerError;->error:Lio/realm/ErrorCode;

    invoke-virtual {v0}, Lio/realm/ErrorCode;->getCategory()Lio/realm/ErrorCode$Category;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()Lio/realm/ErrorCode;
    .registers 2

    .line 90
    iget-object v0, p0, Lio/realm/ObjectServerError;->error:Lio/realm/ErrorCode;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lio/realm/ObjectServerError;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .registers 2

    .line 108
    iget-object v0, p0, Lio/realm/ObjectServerError;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/realm/ObjectServerError;->errorMessage:Ljava/lang/String;

    const/16 v2, 0xa

    if-eqz v1, :cond_1b

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lio/realm/ObjectServerError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_1b
    iget-object v1, p0, Lio/realm/ObjectServerError;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2b

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    iget-object v1, p0, Lio/realm/ObjectServerError;->exception:Ljava/lang/Throwable;

    invoke-static {v1}, Lio/realm/internal/Util;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
