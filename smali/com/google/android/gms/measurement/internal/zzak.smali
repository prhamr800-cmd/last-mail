###### Class com.google.android.gms.measurement.internal.zzak (com.google.android.gms.measurement.internal.zzak)
.class public final Lcom/google/android/gms/measurement/internal/zzak;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field private zzafx:Ljava/lang/String;

.field private zzage:Ljava/lang/String;

.field private zzagh:J

.field private zzagk:Ljava/lang/String;

.field private zzahb:I

.field private zzalv:I

.field private zzalw:J

.field private zztr:Ljava/lang/String;

.field private zzts:Ljava/lang/String;

.field private zztt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbu;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;)V

    .line 2
    return-void
.end method

.method private final zzjc()Ljava/lang/String;
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 157
    nop

    .line 158
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_10} :catch_61

    .line 161
    if-nez v1, :cond_13

    .line 162
    return-object v0

    .line 163
    :cond_13
    nop

    .line 166
    :try_start_14
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 167
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_52

    .line 168
    if-nez v2, :cond_31

    .line 169
    return-object v0

    .line 170
    :cond_31
    nop

    .line 174
    :try_start_32
    const-string v3, "getFirebaseInstanceId"

    new-array v4, v6, [Ljava/lang/Class;

    .line 175
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 176
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_42} :catch_43

    return-object v1

    .line 177
    :catch_43
    move-exception v1

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjl()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 179
    return-object v0

    .line 171
    :catch_52
    move-exception v1

    .line 172
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjk()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 173
    return-object v0

    .line 164
    :catch_61
    move-exception v1

    .line 165
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    .line 203
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final getGmpAppId()Ljava/lang/String;
    .registers 2

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzafx:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    .line 193
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()V

    return-void
.end method

.method final zzal()Ljava/lang/String;
    .registers 2

    .line 180
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzak;->zztt:Ljava/lang/String;

    return-object v0
.end method

.method final zzbu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzi;
    .registers 31
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 105
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgg()V

    .line 107
    new-instance v25, Lcom/google/android/gms/measurement/internal/zzi;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzak;->zzal()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzak;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    .line 110
    nop

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 112
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzak;->zzts:Ljava/lang/String;

    .line 113
    nop

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzak;->zzjd()I

    move-result v1

    int-to-long v5, v1

    .line 115
    nop

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 117
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzak;->zzage:Ljava/lang/String;

    .line 118
    nop

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzo;->zzhh()J

    move-result-wide v8

    .line 120
    nop

    .line 121
    nop

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 124
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzak;->zzalw:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_55

    .line 125
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzak;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzd(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzak;->zzalw:J

    .line 126
    :cond_55
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzak;->zzalw:J

    .line 127
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzak;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->isEnabled()Z

    move-result v13

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/measurement/internal/zzbb;->zzaob:Z

    .line 130
    const/4 v12, 0x1

    xor-int/lit8 v14, v1, 0x1

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgg()V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v1

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzak;->zztt:Ljava/lang/String;

    invoke-virtual {v1, v15}, Lcom/google/android/gms/measurement/internal/zzo;->zzbb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 134
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzak;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_82

    .line 135
    const/4 v1, 0x0

    goto :goto_86

    .line 136
    :cond_82
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzak;->zzjc()Ljava/lang/String;

    move-result-object v1

    .line 137
    :goto_86
    move-object v15, v1

    .line 138
    nop

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 140
    move/from16 v26, v14

    move-object/from16 v27, v15

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zzak;->zzagh:J

    .line 141
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzak;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkt()J

    move-result-wide v18

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzak;->zzje()I

    move-result v20

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgg()V

    .line 146
    const-string v12, "google_analytics_adid_collection_enabled"

    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/zzo;->zzat(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_b3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b1

    goto :goto_b3

    :cond_b1
    const/4 v1, 0x0

    goto :goto_b4

    :cond_b3
    :goto_b3
    const/4 v1, 0x1

    :goto_b4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgg()V

    .line 151
    const-string v12, "google_analytics_ssaid_collection_enabled"

    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/zzo;->zzat(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_d5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d2

    goto :goto_d5

    :cond_d2
    const/16 v28, 0x0

    goto :goto_d7

    :cond_d5
    :goto_d5
    const/16 v28, 0x1

    :goto_d7
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbb;->zzkb()Z

    move-result v23

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzak;->zzhb()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v1, v25

    move-object/from16 v12, p1

    move-wide/from16 v16, v14

    move/from16 v14, v26

    move-object/from16 v15, v27

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/measurement/internal/zzi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V

    .line 156
    return-object v25
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 202
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    .line 190
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    .line 191
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    .line 192
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgi()Lcom/google/android/gms/measurement/internal/zza;
    .registers 2

    .line 194
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgi()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgj()Lcom/google/android/gms/measurement/internal/zzcy;
    .registers 2

    .line 195
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgj()Lcom/google/android/gms/measurement/internal/zzcy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgk()Lcom/google/android/gms/measurement/internal/zzak;
    .registers 2

    .line 196
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgl()Lcom/google/android/gms/measurement/internal/zzdz;
    .registers 2

    .line 197
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgl()Lcom/google/android/gms/measurement/internal/zzdz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgm()Lcom/google/android/gms/measurement/internal/zzdw;
    .registers 2

    .line 198
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgm()Lcom/google/android/gms/measurement/internal/zzdw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgn()Lcom/google/android/gms/measurement/internal/zzam;
    .registers 2

    .line 199
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgn()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgo()Lcom/google/android/gms/measurement/internal/zzez;
    .registers 2

    .line 200
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgo()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 201
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    .line 204
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 205
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbp;
    .registers 2

    .line 206
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    .line 207
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 2

    .line 208
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzo;
    .registers 2

    .line 209
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzl;
    .registers 2

    .line 210
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    .line 3
    const/4 v0, 0x1

    return v0
.end method

.method protected final zzgz()V
    .registers 11

    .line 4
    const-string/jumbo v0, "unknown"

    .line 5
    const-string v1, "Unknown"

    .line 6
    nop

    .line 7
    const-string v2, "Unknown"

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 10
    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    if-nez v4, :cond_30

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v7, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 13
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 14
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_96

    .line 15
    :cond_30
    :try_start_30
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_34} :catch_37

    .line 16
    nop

    .line 21
    move-object v0, v7

    goto :goto_49

    .line 17
    :catch_37
    move-exception v7

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    .line 19
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    const-string v8, "Error retrieving app installer package name. appId"

    .line 20
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    :goto_49
    if-nez v0, :cond_4e

    .line 22
    const-string v0, "manual_install"

    goto :goto_58

    .line 23
    :cond_4e
    const-string v7, "com.android.vending"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 24
    const-string v0, ""

    .line 25
    :cond_58
    :goto_58
    :try_start_58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 26
    if-eqz v7, :cond_83

    .line 27
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 28
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 29
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_77

    .line 30
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31
    move-object v2, v4

    :cond_77
    iget-object v4, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_58 .. :try_end_79} :catch_81

    .line 32
    :try_start_79
    iget v1, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_7b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_79 .. :try_end_7b} :catch_7e

    .line 33
    move v6, v1

    move-object v1, v4

    goto :goto_83

    .line 34
    :catch_7e
    move-exception v1

    move-object v1, v4

    goto :goto_84

    :catch_81
    move-exception v4

    goto :goto_84

    .line 33
    :cond_83
    :goto_83
    goto :goto_96

    .line 34
    :goto_84
    nop

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v7, "Error retrieving package info. appId, appName"

    .line 37
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 38
    invoke-virtual {v4, v7, v8, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    :goto_96
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzak;->zztt:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzage:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzts:Ljava/lang/String;

    .line 42
    iput v6, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzalv:I

    .line 43
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzak;->zztr:Ljava/lang/String;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzalw:J

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 46
    nop

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/GoogleServices;->initialize(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    .line 48
    const/4 v4, 0x1

    if-eqz v2, :cond_bb

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 49
    const/4 v6, 0x1

    goto :goto_bd

    .line 48
    :cond_bb
    nop

    .line 49
    const/4 v6, 0x0

    :goto_bd
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 50
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbu;->zzko()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d9

    const-string v7, "am"

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 51
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d9

    const/4 v7, 0x1

    goto :goto_da

    :cond_d9
    const/4 v7, 0x0

    :goto_da
    or-int/2addr v6, v7

    .line 52
    if-nez v6, :cond_107

    .line 53
    nop

    .line 54
    if-nez v2, :cond_ee

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v7, "GoogleService failed to initialize (no status)"

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    goto :goto_107

    .line 56
    :cond_ee
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    .line 57
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    const-string v8, "GoogleService failed to initialize, status"

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v7, v8, v9, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    :cond_107
    :goto_107
    nop

    .line 62
    if-eqz v6, :cond_175

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzo;->zzia()Ljava/lang/Boolean;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzo;->zzhz()Z

    move-result v6

    if-eqz v6, :cond_132

    .line 65
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkn()Z

    move-result v2

    if-eqz v2, :cond_175

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjm()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v4, "Collection disabled with firebase_analytics_collection_deactivated=1"

    .line 68
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    goto :goto_175

    .line 69
    :cond_132
    if-eqz v2, :cond_150

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_150

    .line 70
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkn()Z

    move-result v2

    if-eqz v2, :cond_175

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjm()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v4, "Collection disabled with firebase_analytics_collection_enabled=0"

    .line 73
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    goto :goto_175

    .line 74
    :cond_150
    if-nez v2, :cond_166

    .line 75
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->isMeasurementExplicitlyDisabled()Z

    move-result v2

    .line 76
    if-eqz v2, :cond_166

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjm()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v4, "Collection disabled with google_app_measurement_enable=0"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    goto :goto_175

    .line 78
    :cond_166
    nop

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v6, "Collection enabled"

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    goto :goto_176

    .line 80
    :cond_175
    :goto_175
    const/4 v4, 0x0

    :goto_176
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzafx:Ljava/lang/String;

    .line 81
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzagk:Ljava/lang/String;

    .line 82
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzagh:J

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzko()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a5

    const-string v0, "am"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 85
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzko()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzagk:Ljava/lang/String;

    .line 87
    :cond_1a5
    :try_start_1a5
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->getGoogleAppId()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    const-string v1, ""

    goto :goto_1b3

    :cond_1b2
    move-object v1, v0

    :goto_1b3
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzafx:Ljava/lang/String;

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1cc

    .line 90
    new-instance v0, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    .line 91
    const-string v1, "admob_app_id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzagk:Ljava/lang/String;

    .line 92
    :cond_1cc
    if-eqz v4, :cond_1df

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "App package, google app id"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzak;->zztt:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzafx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1df
    .catch Ljava/lang/IllegalStateException; {:try_start_1a5 .. :try_end_1df} :catch_1e0

    .line 94
    :cond_1df
    goto :goto_1f3

    .line 95
    :catch_1e0
    move-exception v0

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "getGoogleAppId or isMeasurementEnabled failed with exception. appId"

    .line 98
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 99
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    nop

    .line 101
    :goto_1f3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_204

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzahb:I

    return-void

    .line 103
    :cond_204
    iput v5, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzahb:I

    .line 104
    return-void
.end method

.method final zzhb()Ljava/lang/String;
    .registers 2

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 185
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzagk:Ljava/lang/String;

    return-object v0
.end method

.method final zzjd()I
    .registers 2

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 187
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzalv:I

    return v0
.end method

.method final zzje()I
    .registers 2

    .line 188
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 189
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzak;->zzahb:I

    return v0
.end method
