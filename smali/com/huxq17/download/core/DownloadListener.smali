###### Class com.huxq17.download.core.DownloadListener (com.huxq17.download.core.DownloadListener)
.class public Lcom/huxq17/download/core/DownloadListener;
.super Ljava/lang/Object;
.source "DownloadListener.java"


# instance fields
.field private downloadInfo:Lcom/huxq17/download/core/DownloadInfo;

.field private enable:Z

.field private id:Ljava/lang/String;

.field private status:Lcom/huxq17/download/core/DownloadInfo$Status;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/huxq17/download/android/ViewLifecycleHandler;->handleLifecycleForFragment(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle;Lcom/huxq17/download/core/DownloadListener;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3
    .param p1, "activity"    # Landroidx/fragment/app/FragmentActivity;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/huxq17/download/android/ViewLifecycleHandler;->handleLifecycle(Landroidx/lifecycle/Lifecycle;Lcom/huxq17/download/core/DownloadListener;)V

    .line 21
    return-void
.end method

.method private unSubscribe()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadListener;->id:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadListener;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/huxq17/download/Pump;->unSubscribe(Ljava/lang/String;)V

    .line 84
    :cond_9
    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 1

    .line 31
    invoke-static {p0}, Lcom/huxq17/download/Pump;->unSubscribe(Lcom/huxq17/download/core/DownloadListener;)V

    .line 32
    return-void
.end method

.method final downloading(Lcom/huxq17/download/core/DownloadInfo;)V
    .registers 6
    .param p1, "downloadInfo"    # Lcom/huxq17/download/core/DownloadInfo;

    .line 66
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadInfo;->getStatus()Lcom/huxq17/download/core/DownloadInfo$Status;

    move-result-object v0

    .line 67
    .local v0, "status":Lcom/huxq17/download/core/DownloadInfo$Status;
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadListener;->downloadInfo:Lcom/huxq17/download/core/DownloadInfo;

    .line 68
    iput-object v0, p0, Lcom/huxq17/download/core/DownloadListener;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    .line 69
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadInfo;->getProgress()I

    move-result v1

    .line 70
    .local v1, "progress":I
    invoke-virtual {p0, v1}, Lcom/huxq17/download/core/DownloadListener;->onProgress(I)V

    .line 71
    sget-object v2, Lcom/huxq17/download/core/DownloadInfo$Status;->FAILED:Lcom/huxq17/download/core/DownloadInfo$Status;

    if-ne v0, v2, :cond_1a

    .line 72
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadListener;->onFailed()V

    .line 73
    invoke-direct {p0}, Lcom/huxq17/download/core/DownloadListener;->unSubscribe()V

    goto :goto_28

    .line 74
    :cond_1a
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadInfo;->getStatus()Lcom/huxq17/download/core/DownloadInfo$Status;

    move-result-object v2

    sget-object v3, Lcom/huxq17/download/core/DownloadInfo$Status;->FINISHED:Lcom/huxq17/download/core/DownloadInfo$Status;

    if-ne v2, v3, :cond_28

    .line 75
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadListener;->onSuccess()V

    .line 76
    invoke-direct {p0}, Lcom/huxq17/download/core/DownloadListener;->unSubscribe()V

    .line 78
    :cond_28
    :goto_28
    return-void
.end method

.method public final enable()V
    .registers 2

    .line 46
    iget-boolean v0, p0, Lcom/huxq17/download/core/DownloadListener;->enable:Z

    if-nez v0, :cond_7

    .line 47
    invoke-static {p0}, Lcom/huxq17/download/Pump;->subscribe(Lcom/huxq17/download/core/DownloadListener;)V

    .line 49
    :cond_7
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 127
    const-class v0, Lcom/huxq17/download/core/DownloadListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 128
    move-object v0, p1

    check-cast v0, Lcom/huxq17/download/core/DownloadListener;

    .line 129
    .local v0, "that":Lcom/huxq17/download/core/DownloadListener;
    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadListener;->getId()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "thatId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadListener;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 131
    const/4 v2, 0x1

    return v2

    .line 134
    .end local v0    # "that":Lcom/huxq17/download/core/DownloadListener;
    .end local v1    # "thatId":Ljava/lang/String;
    :cond_25
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public filter(Lcom/huxq17/download/core/DownloadInfo;)Z
    .registers 4
    .param p1, "downloadInfo"    # Lcom/huxq17/download/core/DownloadInfo;

    .line 97
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadListener;->id:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/huxq17/download/core/DownloadListener;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public final getDownloadInfo()Lcom/huxq17/download/core/DownloadInfo;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadListener;->downloadInfo:Lcom/huxq17/download/core/DownloadInfo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadListener;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/huxq17/download/core/DownloadInfo$Status;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadListener;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadListener;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 113
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadListener;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 115
    :cond_f
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEnable()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/huxq17/download/core/DownloadListener;->enable:Z

    return v0
.end method

.method public onFailed()V
    .registers 1

    .line 108
    return-void
.end method

.method public onProgress(I)V
    .registers 2
    .param p1, "progress"    # I

    .line 101
    return-void
.end method

.method public onSuccess()V
    .registers 1

    .line 105
    return-void
.end method

.method setEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/huxq17/download/core/DownloadListener;->enable:Z

    .line 36
    return-void
.end method

.method setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadListener;->id:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadListener{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huxq17/download/core/DownloadListener;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
