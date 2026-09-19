###### Class com.journeyapps.barcodescanner.DecoderThread (com.journeyapps.barcodescanner.DecoderThread)
.class public Lcom/journeyapps/barcodescanner/DecoderThread;
.super Ljava/lang/Object;
.source "DecoderThread.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private final callback:Landroid/os/Handler$Callback;

.field private cameraInstance:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field private cropRect:Landroid/graphics/Rect;

.field private decoder:Lcom/journeyapps/barcodescanner/Decoder;

.field private handler:Landroid/os/Handler;

.field private final previewCallback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

.field private resultHandler:Landroid/os/Handler;

.field private running:Z

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/DecoderThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/Decoder;Landroid/os/Handler;)V
    .registers 5
    .param p1, "cameraInstance"    # Lcom/journeyapps/barcodescanner/camera/CameraInstance;
    .param p2, "decoder"    # Lcom/journeyapps/barcodescanner/Decoder;
    .param p3, "resultHandler"    # Landroid/os/Handler;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->LOCK:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderThread$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/DecoderThread$1;-><init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->callback:Landroid/os/Handler$Callback;

    .line 101
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderThread$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/DecoderThread$2;-><init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->previewCallback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    .line 48
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 50
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cameraInstance:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 51
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    .line 52
    iput-object p3, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/journeyapps/barcodescanner/DecoderThread;Lcom/journeyapps/barcodescanner/SourceData;)V
    .registers 2
    .param p0, "x0"    # Lcom/journeyapps/barcodescanner/DecoderThread;
    .param p1, "x1"    # Lcom/journeyapps/barcodescanner/SourceData;

    .line 22
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->decode(Lcom/journeyapps/barcodescanner/SourceData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/journeyapps/barcodescanner/DecoderThread;)V
    .registers 1
    .param p0, "x0"    # Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 22
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->requestNextPreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 22
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/journeyapps/barcodescanner/DecoderThread;)Z
    .registers 2
    .param p0, "x0"    # Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 22
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    return v0
.end method

.method static synthetic access$400(Lcom/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 22
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private decode(Lcom/journeyapps/barcodescanner/SourceData;)V
    .registers 12
    .param p1, "sourceData"    # Lcom/journeyapps/barcodescanner/SourceData;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 143
    .local v0, "start":J
    const/4 v2, 0x0

    .line 144
    .local v2, "rawResult":Lcom/google/zxing/Result;
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Lcom/journeyapps/barcodescanner/SourceData;->setCropRect(Landroid/graphics/Rect;)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->createSource(Lcom/journeyapps/barcodescanner/SourceData;)Lcom/google/zxing/LuminanceSource;

    move-result-object v3

    .line 147
    .local v3, "source":Lcom/google/zxing/LuminanceSource;
    if-eqz v3, :cond_16

    .line 148
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    invoke-virtual {v4, v3}, Lcom/journeyapps/barcodescanner/Decoder;->decode(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    move-result-object v2

    .line 151
    :cond_16
    if-eqz v2, :cond_56

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 154
    .local v4, "end":J
    sget-object v6, Lcom/journeyapps/barcodescanner/DecoderThread;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found barcode in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v4, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v6, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    if-eqz v6, :cond_55

    .line 156
    new-instance v6, Lcom/journeyapps/barcodescanner/BarcodeResult;

    invoke-direct {v6, v2, p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;-><init>(Lcom/google/zxing/Result;Lcom/journeyapps/barcodescanner/SourceData;)V

    .line 157
    .local v6, "barcodeResult":Lcom/journeyapps/barcodescanner/BarcodeResult;
    iget-object v7, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    sget v8, Lcom/google/zxing/client/android/R$id;->zxing_decode_succeeded:I

    invoke-static {v7, v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 158
    .local v7, "message":Landroid/os/Message;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v8, "bundle":Landroid/os/Bundle;
    invoke-virtual {v7, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 162
    .end local v4    # "end":J
    .end local v6    # "barcodeResult":Lcom/journeyapps/barcodescanner/BarcodeResult;
    .end local v7    # "message":Landroid/os/Message;
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_55
    goto :goto_65

    .line 163
    :cond_56
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    if-eqz v4, :cond_65

    .line 164
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    sget v5, Lcom/google/zxing/client/android/R$id;->zxing_decode_failed:I

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 165
    .local v4, "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 168
    .end local v4    # "message":Landroid/os/Message;
    :cond_65
    :goto_65
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    if-eqz v4, :cond_7a

    .line 169
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    invoke-virtual {v4}, Lcom/journeyapps/barcodescanner/Decoder;->getPossibleResultPoints()Ljava/util/List;

    move-result-object v4

    .line 170
    .local v4, "resultPoints":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    iget-object v5, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->resultHandler:Landroid/os/Handler;

    sget v6, Lcom/google/zxing/client/android/R$id;->zxing_possible_result_points:I

    invoke-static {v5, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 171
    .local v5, "message":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 173
    .end local v4    # "resultPoints":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    .end local v5    # "message":Landroid/os/Message;
    :cond_7a
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->requestNextPreview()V

    .line 174
    return-void
.end method

.method private requestNextPreview()V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cameraInstance:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 129
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cameraInstance:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->previewCallback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->requestPreview(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    .line 131
    :cond_f
    return-void
.end method


# virtual methods
.method protected createSource(Lcom/journeyapps/barcodescanner/SourceData;)Lcom/google/zxing/LuminanceSource;
    .registers 3
    .param p1, "sourceData"    # Lcom/journeyapps/barcodescanner/SourceData;

    .line 134
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_6

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_6
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/SourceData;->createSource()Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v0

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDecoder()Lcom/journeyapps/barcodescanner/Decoder;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    return-object v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .line 68
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->cropRect:Landroid/graphics/Rect;

    .line 69
    return-void
.end method

.method public setDecoder(Lcom/journeyapps/barcodescanner/Decoder;)V
    .registers 2
    .param p1, "decoder"    # Lcom/journeyapps/barcodescanner/Decoder;

    .line 60
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->decoder:Lcom/journeyapps/barcodescanner/Decoder;

    .line 61
    return-void
.end method

.method public start()V
    .registers 4

    .line 77
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/journeyapps/barcodescanner/DecoderThread;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->thread:Landroid/os/HandlerThread;

    .line 80
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->callback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->handler:Landroid/os/Handler;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    .line 83
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->requestNextPreview()V

    .line 84
    return-void
.end method

.method public stop()V
    .registers 4

    .line 92
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 94
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    const/4 v1, 0x0

    :try_start_7
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->running:Z

    .line 96
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 98
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method

###### Class com.journeyapps.barcodescanner.DecoderThread.AnonymousClass1 (com.journeyapps.barcodescanner.DecoderThread$1)
.class Lcom/journeyapps/barcodescanner/DecoderThread$1;
.super Ljava/lang/Object;
.source "DecoderThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/DecoderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/DecoderThread;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V
    .registers 2
    .param p1, "this$0"    # Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 34
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$1;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_decode:I

    if-ne v0, v1, :cond_10

    .line 38
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$1;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/journeyapps/barcodescanner/SourceData;

    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$000(Lcom/journeyapps/barcodescanner/DecoderThread;Lcom/journeyapps/barcodescanner/SourceData;)V

    goto :goto_1b

    .line 39
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_preview_failed:I

    if-ne v0, v1, :cond_1b

    .line 41
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$1;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$100(Lcom/journeyapps/barcodescanner/DecoderThread;)V

    .line 43
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method

###### Class com.journeyapps.barcodescanner.DecoderThread.AnonymousClass2 (com.journeyapps.barcodescanner.DecoderThread$2)
.class Lcom/journeyapps/barcodescanner/DecoderThread$2;
.super Ljava/lang/Object;
.source "DecoderThread.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/camera/PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/DecoderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/DecoderThread;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V
    .registers 2
    .param p1, "this$0"    # Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 101
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreview(Lcom/journeyapps/barcodescanner/SourceData;)V
    .registers 5
    .param p1, "sourceData"    # Lcom/journeyapps/barcodescanner/SourceData;

    .line 108
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$200(Lcom/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 109
    :try_start_7
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$300(Lcom/journeyapps/barcodescanner/DecoderThread;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 111
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$400(Lcom/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_decode:I

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 113
    :cond_1e
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public onPreviewError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .line 118
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$200(Lcom/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 119
    :try_start_7
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$300(Lcom/journeyapps/barcodescanner/DecoderThread;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 121
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->this$0:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/DecoderThread;->access$400(Lcom/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_preview_failed:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 123
    :cond_1e
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method
