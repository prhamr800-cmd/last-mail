###### Class com.google.android.gms.maps.model.GroundOverlayOptions (com.google.android.gms.maps.model.GroundOverlayOptions)
.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "GroundOverlayOptionsCreator"
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
            "Lcom/google/android/gms/maps/model/GroundOverlayOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_DIMENSION:F = -1.0f


# instance fields
.field private bearing:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getBearing"
        id = 0x7
    .end annotation
.end field

.field private height:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getHeight"
        id = 0x5
    .end annotation
.end field

.field private width:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getWidth"
        id = 0x4
    .end annotation
.end field

.field private zzcs:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getZIndex"
        id = 0x8
    .end annotation
.end field

.field private zzct:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isVisible"
        id = 0x9
    .end annotation
.end field

.field private zzcu:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isClickable"
        id = 0xd
    .end annotation
.end field

.field private zzcx:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getWrappedImageDescriptorImplBinder"
        id = 0x2
        type = "android.os.IBinder"
    .end annotation
.end field

.field private zzcy:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getLocation"
        id = 0x3
    .end annotation
.end field

.field private zzcz:Lcom/google/android/gms/maps/model/LatLngBounds;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getBounds"
        id = 0x6
    .end annotation
.end field

.field private zzda:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTransparency"
        id = 0xa
    .end annotation
.end field

.field private zzdb:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAnchorU"
        id = 0xb
    .end annotation
.end field

.field private zzdc:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAnchorV"
        id = 0xc
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 115
    new-instance v0, Lcom/google/android/gms/maps/model/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzct:Z

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzda:F

    .line 24
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzdb:F

    .line 25
    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzdc:F

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcu:Z

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFFZ)V
    .registers 14
    .param p1    # Landroid/os/IBinder;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p6    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p7    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p8    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p9    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p10    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p11    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .param p12    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzct:Z

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzda:F

    .line 4
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzdb:F

    .line 5
    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzdc:F

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcu:Z

    .line 7
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcx:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcy:Lcom/google/android/gms/maps/model/LatLng;

    .line 10
    iput p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->width:F

    .line 11
    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->height:F

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcz:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 13
    iput p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->bearing:F

    .line 14
    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcs:F

    .line 15
    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzct:Z

    .line 16
    iput p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzda:F

    .line 17
    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzdb:F

    .line 18
    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzdc:F

    .line 19
    iput-boolean p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcu:Z

    .line 20
    return-void
.end method

.method private final zza(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    .line 85
    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcy:Lcom/google/android/gms/maps/model/LatLng;

    .line 86
    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->width:F

    .line 87
    iput p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->height:F

    .line 88
    return-object p0
.end method


# virtual methods
.method public final anchor(FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 3

    .line 73
    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzdb:F

    .line 74
    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzdc:F

    .line 75
    return-object p0
.end method

.method public final bearing(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 3

    .line 92
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->bearing:F

    .line 93
    return-object p0
.end method

.method public final clickable(Z)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    .line 101
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcu:Z

    .line 102
    return-object p0
.end method

.method public final getAnchorU()F
    .registers 2

    .line 111
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzdb:F

    return v0
.end method

.method public final getAnchorV()F
    .registers 2

    .line 112
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzdc:F

    return v0
.end method

.method public final getBearing()F
    .registers 2

    .line 108
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->bearing:F

    return v0
.end method

.method public final getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcz:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public final getHeight()F
    .registers 2

    .line 106
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->height:F

    return v0
.end method

.method public final getImage()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcx:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public final getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcy:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getTransparency()F
    .registers 2

    .line 110
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzda:F

    return v0
.end method

.method public final getWidth()F
    .registers 2

    .line 105
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->width:F

    return v0
.end method

.method public final getZIndex()F
    .registers 2

    .line 109
    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcs:F

    return v0
.end method

.method public final image(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 3
    .param p1    # Lcom/google/android/gms/maps/model/BitmapDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    const-string v0, "imageDescriptor must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcx:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 72
    return-object p0
.end method

.method public final isClickable()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcu:Z

    return v0
.end method

.method public final isVisible()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzct:Z

    return v0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 7

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcz:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 77
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const-string v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 78
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1f

    const/4 v1, 0x1

    nop

    :cond_1f
    const-string v0, "Width must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 79
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zza(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object p1

    return-object p1
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 9

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcz:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 81
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const-string v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 82
    const/4 v0, 0x0

    cmpl-float v3, p2, v0

    if-ltz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    const-string v4, "Width must be non-negative"

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 83
    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2b

    const/4 v1, 0x1

    nop

    :cond_2b
    const-string v0, "Height must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zza(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object p1

    return-object p1
.end method

.method public final positionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 6

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcy:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcy:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Position has already been set using position: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 90
    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcz:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 91
    return-object p0
.end method

.method public final transparency(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    .line 98
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

    .line 99
    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzda:F

    .line 100
    return-object p0
.end method

.method public final visible(Z)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzct:Z

    .line 97
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 28
    nop

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 30
    nop

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcx:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 33
    nop

    .line 34
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 35
    nop

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 37
    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 38
    nop

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getWidth()F

    move-result v1

    .line 40
    const/4 v3, 0x4

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 41
    nop

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getHeight()F

    move-result v1

    .line 43
    const/4 v3, 0x5

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 44
    nop

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    .line 46
    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 47
    nop

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getBearing()F

    move-result p2

    .line 49
    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getZIndex()F

    move-result p2

    .line 52
    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 53
    nop

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->isVisible()Z

    move-result p2

    .line 55
    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 56
    nop

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getTransparency()F

    move-result p2

    .line 58
    const/16 v1, 0xa

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 59
    nop

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getAnchorU()F

    move-result p2

    .line 61
    const/16 v1, 0xb

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 62
    nop

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getAnchorV()F

    move-result p2

    .line 64
    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 65
    nop

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->isClickable()Z

    move-result p2

    .line 67
    const/16 v1, 0xd

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 68
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 69
    return-void
.end method

.method public final zIndex(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    .line 94
    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzcs:F

    .line 95
    return-object p0
.end method
