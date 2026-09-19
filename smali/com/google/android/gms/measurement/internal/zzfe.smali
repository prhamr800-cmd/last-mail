###### Class com.google.android.gms.measurement.internal.zzfe (com.google.android.gms.measurement.internal.zzfe)
.class final Lcom/google/android/gms/measurement/internal/zzfe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzafv:J

.field private final synthetic zzatq:Lcom/google/android/gms/measurement/internal/zzez;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzez;J)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzatq:Lcom/google/android/gms/measurement/internal/zzez;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzafv:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzatq:Lcom/google/android/gms/measurement/internal/zzez;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzfe;->zzafv:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzb(Lcom/google/android/gms/measurement/internal/zzez;J)V

    .line 3
    return-void
.end method
