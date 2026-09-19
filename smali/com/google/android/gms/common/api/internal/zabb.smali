###### Class com.google.android.gms.common.api.internal.zabb (com.google.android.gms.common.api.internal.zabb)
.class final Lcom/google/android/gms/common/api/internal/zabb;
.super Lcom/google/android/gms/internal/base/zal;


# instance fields
.field private final synthetic zahg:Lcom/google/android/gms/common/api/internal/zaaw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaaw;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabb;->zahg:Lcom/google/android/gms/common/api/internal/zaaw;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/base/zal;-><init>(Landroid/os/Looper;)V

    .line 3
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 9
    const-string v0, "GoogleApiClientImpl"

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 7
    :pswitch_20
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabb;->zahg:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaw;->zaa(Lcom/google/android/gms/common/api/internal/zaaw;)V

    .line 8
    return-void

    .line 5
    :pswitch_26
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabb;->zahg:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaw;->zab(Lcom/google/android/gms/common/api/internal/zaaw;)V

    .line 6
    return-void

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_20
    .end packed-switch
.end method
