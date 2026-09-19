###### Class com.google.zxing.client.android.camera.open.OpenCameraInterface (com.google.zxing.client.android.camera.open.OpenCameraInterface)
.class public final Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;
.super Ljava/lang/Object;
.source "OpenCameraInterface.java"


# static fields
.field public static final NO_REQUESTED_CAMERA:I = -0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getCameraId(I)I
    .registers 9
    .param p0, "requestedId"    # I

    .line 35
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 36
    .local v0, "numCameras":I
    const/4 v1, -0x1

    if-nez v0, :cond_f

    .line 37
    sget-object v2, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->TAG:Ljava/lang/String;

    const-string v3, "No cameras!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return v1

    .line 41
    :cond_f
    move v2, p0

    .line 43
    .local v2, "cameraId":I
    const/4 v3, 0x0

    if-ltz v2, :cond_15

    const/4 v4, 0x1

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    .line 45
    .local v4, "explicitRequest":Z
    :goto_16
    if-nez v4, :cond_2c

    .line 47
    const/4 v5, 0x0

    .line 48
    .local v5, "index":I
    :goto_19
    if-ge v5, v0, :cond_2b

    .line 49
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 50
    .local v6, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v5, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 51
    iget v7, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v7, :cond_28

    .line 52
    goto :goto_2b

    .line 54
    :cond_28
    add-int/lit8 v5, v5, 0x1

    .line 55
    .end local v6    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    goto :goto_19

    .line 57
    :cond_2b
    :goto_2b
    move v2, v5

    .line 60
    .end local v5    # "index":I
    :cond_2c
    if-ge v2, v0, :cond_2f

    .line 61
    return v2

    .line 63
    :cond_2f
    if-eqz v4, :cond_32

    .line 64
    return v1

    .line 66
    :cond_32
    return v3
.end method

.method public static open(I)Landroid/hardware/Camera;
    .registers 3
    .param p0, "requestedId"    # I

    .line 79
    invoke-static {p0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->getCameraId(I)I

    move-result v0

    .line 80
    .local v0, "cameraId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 81
    const/4 v1, 0x0

    return-object v1

    .line 83
    :cond_9
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    return-object v1
.end method
