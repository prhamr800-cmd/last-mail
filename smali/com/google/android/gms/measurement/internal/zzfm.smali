###### Class com.google.android.gms.measurement.internal.zzfm (com.google.android.gms.measurement.internal.zzfm)
.class final Lcom/google/android/gms/measurement/internal/zzfm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzaw;


# instance fields
.field private final synthetic zzaur:Lcom/google/android/gms/measurement/internal/zzfk;

.field private final synthetic zzaus:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzaur:Lcom/google/android/gms/measurement/internal/zzfk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzaus:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzaur:Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzaus:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(ILjava/lang/Throwable;[BLjava/lang/String;)V

    .line 3
    return-void
.end method
