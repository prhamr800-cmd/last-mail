###### Class com.huxq17.download.utils.LogUtil (com.huxq17.download.utils.LogUtil)
.class public Lcom/huxq17/download/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static mEnableLog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    const-string v0, "Pump"

    sput-object v0, Lcom/huxq17/download/utils/LogUtil;->TAG:Ljava/lang/String;

    .line 7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huxq17/download/utils/LogUtil;->mEnableLog:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 4
    .param p0, "content"    # Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/huxq17/download/utils/LogUtil;->mEnableLog:Z

    if-eqz v0, :cond_1a

    .line 23
    sget-object v0, Lcom/huxq17/download/utils/LogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_1a
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 4
    .param p0, "content"    # Ljava/lang/String;

    .line 10
    sget-boolean v0, Lcom/huxq17/download/utils/LogUtil;->mEnableLog:Z

    if-eqz v0, :cond_1a

    .line 11
    sget-object v0, Lcom/huxq17/download/utils/LogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_1a
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 4
    .param p0, "content"    # Ljava/lang/String;

    .line 16
    sget-boolean v0, Lcom/huxq17/download/utils/LogUtil;->mEnableLog:Z

    if-eqz v0, :cond_1a

    .line 17
    sget-object v0, Lcom/huxq17/download/utils/LogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_1a
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 4
    .param p0, "content"    # Ljava/lang/String;

    .line 28
    sget-boolean v0, Lcom/huxq17/download/utils/LogUtil;->mEnableLog:Z

    if-eqz v0, :cond_1a

    .line 29
    sget-object v0, Lcom/huxq17/download/utils/LogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_1a
    return-void
.end method
