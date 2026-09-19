###### Class com.google.android.gms.measurement.internal.zzbw (com.google.android.gms.measurement.internal.zzbw)
.class public final Lcom/google/android/gms/measurement/internal/zzbw;
.super Lcom/google/android/gms/measurement/internal/zzai;


# instance fields
.field private final zzang:Lcom/google/android/gms/measurement/internal/zzfk;

.field private zzaqt:Ljava/lang/Boolean;

.field private zzaqu:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbw;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;Ljava/lang/String;)V
    .registers 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzai;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 6
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqu:Ljava/lang/String;

    .line 7
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzbw;)Lcom/google/android/gms/measurement/internal/zzfk;
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzi;Z)V
    .registers 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 100
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzc(Ljava/lang/String;Z)V

    .line 102
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagk:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzu(Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    return-void
.end method

.method private final zzc(Ljava/lang/String;Z)V
    .registers 6
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 107
    nop

    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_54

    .line 109
    :try_start_b
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqt:Ljava/lang/Boolean;

    if-nez p2, :cond_49

    .line 110
    const-string p2, "com.google.android.gms"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqu:Ljava/lang/String;

    .line 111
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_41

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 112
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 113
    invoke-static {p2, v2}, Lcom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_41

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 114
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    move-result-object p2

    .line 115
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isUidGoogleSigned(I)Z

    move-result p2

    if-eqz p2, :cond_3e

    goto :goto_41

    .line 116
    :cond_3e
    nop

    .line 117
    const/4 p2, 0x0

    goto :goto_43

    .line 116
    :cond_41
    :goto_41
    nop

    .line 117
    const/4 p2, 0x1

    :goto_43
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqt:Ljava/lang/Boolean;

    .line 118
    :cond_49
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqt:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_72

    goto :goto_54

    .line 128
    :catch_52
    move-exception p2

    goto :goto_83

    .line 119
    :cond_54
    :goto_54
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqu:Ljava/lang/String;

    if-nez p2, :cond_6a

    .line 120
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 121
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 122
    invoke-static {p2, v2, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 123
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqu:Ljava/lang/String;

    .line 124
    :cond_6a
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzaqu:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_73

    .line 127
    :cond_72
    return-void

    .line 125
    :cond_73
    new-instance p2, Ljava/lang/SecurityException;

    const-string v2, "Unknown calling package name \'%s\'."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 126
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_83
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_83} :catch_52

    .line 128
    :goto_83
    nop

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    .line 132
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 133
    const-string v1, "Measurement Service called with invalid calling package. appId"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    throw p2

    .line 105
    :cond_98
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 106
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Measurement Service called without app package"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zze(Ljava/lang/Runnable;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 210
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzag;->zzakz:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 212
    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 213
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbp;->zzkf()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 214
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 215
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/measurement/internal/zzi;Z)Ljava/util/List;
    .registers 7
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzi;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfr;",
            ">;"
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzb(Lcom/google/android/gms/measurement/internal/zzi;Z)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzcm;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 83
    :try_start_13
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzft;

    .line 86
    if-nez p2, :cond_3c

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzda(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 87
    :cond_3c
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Lcom/google/android/gms/measurement/internal/zzft;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_44} :catch_46
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_44} :catch_46

    .line 88
    :cond_44
    goto :goto_26

    .line 89
    :cond_45
    return-object v1

    .line 90
    :catch_46
    move-exception p2

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Failed to get user attributes. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 95
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzi;)Ljava/util/List;
    .registers 6
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzi;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzm;",
            ">;"
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzb(Lcom/google/android/gms/measurement/internal/zzi;Z)V

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 193
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzce;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzce;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzi;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 195
    :try_start_13
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_19} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_19} :catch_1a

    return-object p1

    .line 196
    :catch_1a
    move-exception p1

    .line 197
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 7
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfr;",
            ">;"
        }
    .end annotation

    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzc(Ljava/lang/String;Z)V

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcd;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzcd;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 178
    :try_start_13
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 179
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_26
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzft;

    .line 181
    if-nez p4, :cond_3c

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzda(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 182
    :cond_3c
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Lcom/google/android/gms/measurement/internal/zzft;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_44} :catch_46
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_44} :catch_46

    .line 183
    :cond_44
    goto :goto_26

    .line 184
    :cond_45
    return-object p3

    .line 185
    :catch_46
    move-exception p2

    .line 186
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 187
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    .line 188
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    const-string p4, "Failed to get user attributes. appId"

    .line 189
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzi;)Ljava/util/List;
    .registers 7
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/measurement/internal/zzi;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfr;",
            ">;"
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzb(Lcom/google/android/gms/measurement/internal/zzi;Z)V

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcc;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcc;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzi;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 160
    :try_start_13
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 161
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzft;

    .line 163
    if-nez p3, :cond_3c

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzda(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 164
    :cond_3c
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Lcom/google/android/gms/measurement/internal/zzft;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_44} :catch_46
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_44} :catch_46

    .line 165
    :cond_44
    goto :goto_26

    .line 166
    :cond_45
    return-object p2

    .line 167
    :catch_46
    move-exception p1

    .line 168
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 169
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 170
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "Failed to get user attributes. appId"

    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 171
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    .line 172
    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 135
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzco;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzco;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzbw;->zze(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzb(Lcom/google/android/gms/measurement/internal/zzi;Z)V

    .line 13
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzch;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzch;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zze(Ljava/lang/Runnable;)V

    .line 14
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzbw;->zzc(Ljava/lang/String;Z)V

    .line 35
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzci;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzci;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/google/android/gms/measurement/internal/zzbw;->zze(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzfr;Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzb(Lcom/google/android/gms/measurement/internal/zzi;Z)V

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 76
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzck;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzck;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzfr;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zze(Ljava/lang/Runnable;)V

    return-void

    .line 77
    :cond_16
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcl;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzfr;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zze(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzb(Lcom/google/android/gms/measurement/internal/zzi;Z)V

    .line 98
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzcn;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zze(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 5
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 139
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzb(Lcom/google/android/gms/measurement/internal/zzi;Z)V

    .line 142
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 143
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    .line 144
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_26

    .line 145
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzby;

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzby;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zze(Ljava/lang/Runnable;)V

    return-void

    .line 146
    :cond_26
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbz;

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzbz;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zze(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;)[B
    .registers 13
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzc(Ljava/lang/String;Z)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Log and bundle. event"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 46
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzcj;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcj;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 49
    :try_start_42
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 50
    if-nez v4, :cond_60

    .line 51
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 52
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v5, "Log and bundle returned null. appId"

    .line 54
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 56
    :cond_60
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfk;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v5

    div-long/2addr v5, v2

    .line 57
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Log and bundle processed. event, size, time_ms"

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 60
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    .line 61
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    sub-long/2addr v5, v0

    .line 62
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 63
    invoke-virtual {v2, v3, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_91} :catch_92
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_42 .. :try_end_91} :catch_92

    .line 64
    return-object v4

    .line 65
    :catch_92
    move-exception v0

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to log and bundle. appId, event, error"

    .line 69
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    const/4 p1, 0x0

    return-object p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzae;
    .registers 11
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 15
    nop

    .line 16
    const-string v0, "_cmp"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v0, :cond_48

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->size()I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_48

    .line 19
    :cond_19
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    const-string v2, "_cis"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzab;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 21
    const-string v2, "referrer broadcast"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "referrer API"

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 23
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/zzo;->zzbg(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 26
    const/4 v1, 0x1

    goto :goto_49

    .line 27
    :cond_47
    goto :goto_49

    .line 18
    :cond_48
    :goto_48
    nop

    .line 28
    :goto_49
    if-eqz v1, :cond_6d

    .line 29
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjm()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v0, "Event has been filtered "

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzae;

    const-string v3, "_cmpx"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzae;->origin:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzais:J

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzab;Ljava/lang/String;J)V

    return-object p2

    .line 31
    :cond_6d
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzb(Lcom/google/android/gms/measurement/internal/zzi;Z)V

    .line 9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzbx;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zze(Ljava/lang/Runnable;)V

    .line 10
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 148
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzc(Ljava/lang/String;Z)V

    .line 151
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 152
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_24

    .line 153
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzca;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzca;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zze(Ljava/lang/Runnable;)V

    return-void

    .line 154
    :cond_24
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzcb;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzcb;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zze(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/measurement/internal/zzi;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzb(Lcom/google/android/gms/measurement/internal/zzi;Z)V

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzh(Lcom/google/android/gms/measurement/internal/zzi;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 207
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzc(Ljava/lang/String;Z)V

    .line 208
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzcg;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zze(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzm;",
            ">;"
        }
    .end annotation

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzc(Ljava/lang/String;Z)V

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcf;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzcf;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 203
    :try_start_13
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_19} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_19} :catch_1a

    return-object p1

    .line 204
    :catch_1a
    move-exception p1

    .line 205
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbw;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
