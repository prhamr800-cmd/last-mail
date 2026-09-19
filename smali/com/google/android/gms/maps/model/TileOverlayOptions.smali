###### Class com.google.android.gms.maps.model.TileOverlayOptions (com.google.android.gms.maps.model.TileOverlayOptions)
.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "TileOverlayOptionsCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/TileOverlayOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcs:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getZIndex"
        id = 0x4
    .end annotation
.end field

.field private zzct:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isVisible"
        id = 0x3
    .end annotation
.end field

.field private zzda:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTransparency"
        id = 0x6
    .end annotation
.end field

.field private zzei:Lcom/google/android/gms/internal/maps/zzaf;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTileProviderDelegate"
        id = 0x2
        type = "android.os.IBinder"
    .end annotation
.end field

.field private zzej:Lcom/google/android/gms/maps/model/TileProvider;

.field private zzek:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValue = "true"
        getter = "getFadeIn"
        id = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/google/android/gms/maps/model/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzct:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzek:Z

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzda:F

    .line 5
    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;ZFZF)V
    .registers 7
    .param p1    # Landroid/os/IBinder;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzct:Z

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzek:Z

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzda:F

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/maps/zzag;->zzk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzei:Lcom/google/android/gms/internal/maps/zzaf;

    .line 11
    nop

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzei:Lcom/google/android/gms/internal/maps/zzaf;

    if-nez p1, :cond_18

    .line 13
    const/4 p1, 0x0

    goto :goto_1d

    .line 14
    :cond_18
    new-instance p1, Lcom/google/android/gms/maps/model/zzs;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/zzs;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V

    :goto_1d
    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzej:Lcom/google/android/gms/maps/model/TileProvider;

    .line 15
    iput-boolean p2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzct:Z

    .line 16
    iput p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzcs:F

    .line 17
    iput-boolean p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzek:Z

    .line 18
    iput p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzda:F

    .line 19
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/internal/maps/zzaf;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzei:Lcom/google/android/gms/internal/maps/zzaf;

    return-object p0
.end method


# virtual methods
.method public final fadeIn(Z)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzek:Z

    .line 51
    return-object p0
.end method

.method public final getFadeIn()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzek:Z

    return v0
.end method

.method public final getTileProvider()Lcom/google/android/gms/maps/model/TileProvider;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzej:Lcom/google/android/gms/maps/model/TileProvider;

    return-object v0
.end method

.method public final getTransparency()F
    .registers 2

    .line 59
    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzda:F

    return v0
.end method

.method public final getZIndex()F
    .registers 2

    .line 56
    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzcs:F

    return v0
.end method

.method public final isVisible()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzct:Z

    return v0
.end method

.method public final tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 3

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzej:Lcom/google/android/gms/maps/model/TileProvider;

    .line 41
    nop

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzej:Lcom/google/android/gms/maps/model/TileProvider;

    if-nez v0, :cond_9

    .line 43
    const/4 p1, 0x0

    goto :goto_f

    .line 44
    :cond_9
    new-instance v0, Lcom/google/android/gms/maps/model/zzt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/maps/model/zzt;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;Lcom/google/android/gms/maps/model/TileProvider;)V

    move-object p1, v0

    :goto_f
    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzei:Lcom/google/android/gms/internal/maps/zzaf;

    .line 45
    return-object p0
.end method

.method public final transparency(F)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 4

    .line 52
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "Transparency must be in the range [0..1]"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 53
    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzda:F

    .line 54
    return-object p0
.end method

.method public final visible(Z)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzct:Z

    .line 49
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 20
    nop

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 22
    nop

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzei:Lcom/google/android/gms/internal/maps/zzaf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzaf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 24
    nop

    .line 25
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 26
    nop

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->isVisible()Z

    move-result v0

    .line 28
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 29
    nop

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->getZIndex()F

    move-result v0

    .line 31
    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 32
    nop

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->getFadeIn()Z

    move-result v0

    .line 34
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 35
    nop

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->getTransparency()F

    move-result v0

    .line 37
    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 38
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 39
    return-void
.end method

.method public final zIndex(F)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 2

    .line 46
    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zzcs:F

    .line 47
    return-object p0
.end method
