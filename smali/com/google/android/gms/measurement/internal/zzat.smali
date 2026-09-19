###### Class com.google.android.gms.measurement.internal.zzat (com.google.android.gms.measurement.internal.zzat)
.class final Lcom/google/android/gms/measurement/internal/zzat;
.super Ljava/lang/Object;


# instance fields
.field private final zzamw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzamw:Ljava/lang/String;

    .line 3
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzat;)Ljava/lang/String;
    .registers 1

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzamw:Ljava/lang/String;

    return-object p0
.end method
