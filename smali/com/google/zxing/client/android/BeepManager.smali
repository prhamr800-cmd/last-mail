###### Class com.google.zxing.client.android.BeepManager (com.google.zxing.client.android.BeepManager)
.class public final Lcom/google/zxing/client/android/BeepManager;
.super Ljava/lang/Object;
.source "BeepManager.java"


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final TAG:Ljava/lang/String;

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private beepEnabled:Z

.field private final context:Landroid/content/Context;

.field private vibrateEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/BeepManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/BeepManager;->beepEnabled:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/BeepManager;->vibrateEnabled:Z

    .line 46
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/BeepManager;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object v0, Lcom/google/zxing/client/android/BeepManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public isBeepEnabled()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcom/google/zxing/client/android/BeepManager;->beepEnabled:Z

    return v0
.end method

.method public isVibrateEnabled()Z
    .registers 2

    .line 68
    iget-boolean v0, p0, Lcom/google/zxing/client/android/BeepManager;->vibrateEnabled:Z

    return v0
.end method

.method public playBeepSound()Landroid/media/MediaPlayer;
    .registers 9

    .line 92
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 93
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 94
    new-instance v1, Lcom/google/zxing/client/android/BeepManager$1;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/BeepManager$1;-><init>(Lcom/google/zxing/client/android/BeepManager;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 101
    new-instance v1, Lcom/google/zxing/client/android/BeepManager$2;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/BeepManager$2;-><init>(Lcom/google/zxing/client/android/BeepManager;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 112
    :try_start_19
    iget-object v1, p0, Lcom/google/zxing/client/android/BeepManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/zxing/client/android/R$raw;->zxing_beep:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_25} :catch_4c

    move-object v7, v1

    .line 114
    .local v7, "file":Landroid/content/res/AssetFileDescriptor;
    :try_start_26
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_47

    .line 116
    :try_start_36
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 117
    nop

    .line 118
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 119
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 120
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 121
    return-object v0

    .line 116
    :catchall_47
    move-exception v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v1
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4c} :catch_4c

    .line 122
    .end local v7    # "file":Landroid/content/res/AssetFileDescriptor;
    :catch_4c
    move-exception v1

    .line 123
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lcom/google/zxing/client/android/BeepManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 125
    const/4 v2, 0x0

    return-object v2
.end method

.method public declared-synchronized playBeepSoundAndVibrate()V
    .registers 4

    monitor-enter p0

    .line 81
    :try_start_1
    iget-boolean v0, p0, Lcom/google/zxing/client/android/BeepManager;->beepEnabled:Z

    if-eqz v0, :cond_8

    .line 82
    invoke-virtual {p0}, Lcom/google/zxing/client/android/BeepManager;->playBeepSound()Landroid/media/MediaPlayer;

    .line 84
    :cond_8
    iget-boolean v0, p0, Lcom/google/zxing/client/android/BeepManager;->vibrateEnabled:Z

    if-eqz v0, :cond_1c

    .line 85
    iget-object v0, p0, Lcom/google/zxing/client/android/BeepManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 86
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 88
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_1c
    monitor-exit p0

    return-void

    .line 80
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBeepEnabled(Z)V
    .registers 2
    .param p1, "beepEnabled"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/google/zxing/client/android/BeepManager;->beepEnabled:Z

    .line 65
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .registers 2
    .param p1, "vibrateEnabled"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/google/zxing/client/android/BeepManager;->vibrateEnabled:Z

    .line 78
    return-void
.end method

###### Class com.google.zxing.client.android.BeepManager.AnonymousClass1 (com.google.zxing.client.android.BeepManager$1)
.class Lcom/google/zxing/client/android/BeepManager$1;
.super Ljava/lang/Object;
.source "BeepManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/client/android/BeepManager;->playBeepSound()Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/BeepManager;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/BeepManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/zxing/client/android/BeepManager;

    .line 94
    iput-object p1, p0, Lcom/google/zxing/client/android/BeepManager$1;->this$0:Lcom/google/zxing/client/android/BeepManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 97
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 98
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 99
    return-void
.end method

###### Class com.google.zxing.client.android.BeepManager.AnonymousClass2 (com.google.zxing.client.android.BeepManager$2)
.class Lcom/google/zxing/client/android/BeepManager$2;
.super Ljava/lang/Object;
.source "BeepManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/client/android/BeepManager;->playBeepSound()Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/BeepManager;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/BeepManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/zxing/client/android/BeepManager;

    .line 101
    iput-object p1, p0, Lcom/google/zxing/client/android/BeepManager$2;->this$0:Lcom/google/zxing/client/android/BeepManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 104
    invoke-static {}, Lcom/google/zxing/client/android/BeepManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to beep "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 107
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 108
    const/4 v0, 0x1

    return v0
.end method
