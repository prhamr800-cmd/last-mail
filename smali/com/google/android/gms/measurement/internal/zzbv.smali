###### Class com.google.android.gms.measurement.internal.zzbv (com.google.android.gms.measurement.internal.zzbv)
.class final Lcom/google/android/gms/measurement/internal/zzbv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaqr:Lcom/google/android/gms/measurement/internal/zzcx;

.field private final synthetic zzaqs:Lcom/google/android/gms/measurement/internal/zzbu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbu;Lcom/google/android/gms/measurement/internal/zzcx;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqs:Lcom/google/android/gms/measurement/internal/zzbu;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqr:Lcom/google/android/gms/measurement/internal/zzcx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqs:Lcom/google/android/gms/measurement/internal/zzbu;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqr:Lcom/google/android/gms/measurement/internal/zzcx;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zza(Lcom/google/android/gms/measurement/internal/zzbu;Lcom/google/android/gms/measurement/internal/zzcx;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbv;->zzaqs:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->start()V

    .line 4
    return-void
.end method
