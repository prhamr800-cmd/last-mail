###### Class com.google.android.gms.measurement.internal.zzas (com.google.android.gms.measurement.internal.zzas)
.class public final Lcom/google/android/gms/measurement/internal/zzas;
.super Ljava/lang/Object;


# instance fields
.field private final priority:I

.field private final synthetic zzamt:Lcom/google/android/gms/measurement/internal/zzaq;

.field private final zzamu:Z

.field private final zzamv:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzaq;IZZ)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamt:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzas;->priority:I

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamu:Z

    .line 4
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamv:Z

    .line 5
    return-void
.end method


# virtual methods
.method public final zzca(Ljava/lang/String;)V
    .registers 10

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamt:Lcom/google/android/gms/measurement/internal/zzaq;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzas;->priority:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamu:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamv:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    return-void
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamt:Lcom/google/android/gms/measurement/internal/zzaq;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzas;->priority:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamu:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamv:Z

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamt:Lcom/google/android/gms/measurement/internal/zzaq;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzas;->priority:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamu:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamv:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public final zzg(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamt:Lcom/google/android/gms/measurement/internal/zzaq;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzas;->priority:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamu:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzas;->zzamv:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    return-void
.end method
