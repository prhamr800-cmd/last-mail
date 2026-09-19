###### Class io.fabric.sdk.android.services.common.Crash (io.fabric.sdk.android.services.common.Crash)
.class public abstract Lio/fabric/sdk/android/services/common/Crash;
.super Ljava/lang/Object;
.source "Crash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/Crash$FatalException;,
        Lio/fabric/sdk/android/services/common/Crash$LoggedException;
    }
.end annotation


# static fields
.field private static final UNKNOWN_EXCEPTION:Ljava/lang/String; = "<unknown>"


# instance fields
.field private final exceptionName:Ljava/lang/String;

.field private final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 27
    const-string v0, "<unknown>"

    invoke-direct {p0, p1, v0}, Lio/fabric/sdk/android/services/common/Crash;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "exceptionName"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/Crash;->sessionId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lio/fabric/sdk/android/services/common/Crash;->exceptionName:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getExceptionName()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/Crash;->exceptionName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/Crash;->sessionId:Ljava/lang/String;

    return-object v0
.end method

###### Class io.fabric.sdk.android.services.common.Crash.FatalException (io.fabric.sdk.android.services.common.Crash$FatalException)
.class public Lio/fabric/sdk/android/services/common/Crash$FatalException;
.super Lio/fabric/sdk/android/services/common/Crash;
.source "Crash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/Crash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FatalException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/Crash;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "exceptionName"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1, p2}, Lio/fabric/sdk/android/services/common/Crash;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

###### Class io.fabric.sdk.android.services.common.Crash.LoggedException (io.fabric.sdk.android.services.common.Crash$LoggedException)
.class public Lio/fabric/sdk/android/services/common/Crash$LoggedException;
.super Lio/fabric/sdk/android/services/common/Crash;
.source "Crash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/Crash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoggedException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/Crash;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "exceptionName"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2}, Lio/fabric/sdk/android/services/common/Crash;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
