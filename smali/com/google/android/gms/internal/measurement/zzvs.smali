###### Class com.google.android.gms.internal.measurement.zzvs (com.google.android.gms.internal.measurement.zzvs)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzvs;
.super Ljava/lang/Object;


# static fields
.field static final synthetic zzbyv:[I

.field static final synthetic zzbyw:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwg;->values()[Lcom/google/android/gms/internal/measurement/zzwg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvs;->zzbyw:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzvs;->zzbyw:[I

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzwg;->zzcap:Lcom/google/android/gms/internal/measurement/zzwg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzwg;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzvs;->zzbyw:[I

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzwg;->zzcar:Lcom/google/android/gms/internal/measurement/zzwg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzwg;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzvs;->zzbyw:[I

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzwg;->zzcao:Lcom/google/android/gms/internal/measurement/zzwg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzwg;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    .line 2
    :goto_30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->values()[Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzvs;->zzbyv:[I

    :try_start_39
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzvs;->zzbyv:[I

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzvt;->zzbza:Lcom/google/android/gms/internal/measurement/zzvt;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzvt;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception v0

    :goto_45
    :try_start_45
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvs;->zzbyv:[I

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzvt;->zzbyy:Lcom/google/android/gms/internal/measurement/zzvt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzvt;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v0

    :goto_51
    :try_start_51
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvs;->zzbyv:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzvt;->zzbyx:Lcom/google/android/gms/internal/measurement/zzvt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzvt;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5b} :catch_5c

    return-void

    :catch_5c
    move-exception v0

    return-void
.end method
