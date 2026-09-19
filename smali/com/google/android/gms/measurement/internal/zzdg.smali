###### Class com.google.android.gms.measurement.internal.zzdg (com.google.android.gms.measurement.internal.zzdg)
.class final Lcom/google/android/gms/measurement/internal/zzdg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

.field private final synthetic zzary:Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzcy;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdg;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdg;->zzary:Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdg;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdg;->zzary:Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzcy;->zza(Lcom/google/android/gms/measurement/internal/zzcy;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    .line 3
    return-void
.end method
