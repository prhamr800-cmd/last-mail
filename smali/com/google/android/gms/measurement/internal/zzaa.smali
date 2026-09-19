###### Class com.google.android.gms.measurement.internal.zzaa (com.google.android.gms.measurement.internal.zzaa)
.class final Lcom/google/android/gms/measurement/internal/zzaa;
.super Ljava/lang/Object;


# instance fields
.field final name:Ljava/lang/String;

.field final zzaih:J

.field final zzaii:J

.field final zzaij:J

.field final zzaik:J

.field final zzail:Ljava/lang/Long;

.field final zzaim:Ljava/lang/Long;

.field final zzain:Ljava/lang/Long;

.field final zzaio:Ljava/lang/Boolean;

.field final zztt:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .registers 27

    .line 1
    move-object v0, p0

    move-wide v1, p3

    move-wide/from16 v3, p5

    move-wide/from16 v5, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    cmp-long v11, v1, v9

    if-ltz v11, :cond_19

    const/4 v11, 0x1

    goto :goto_1a

    :cond_19
    const/4 v11, 0x0

    :goto_1a
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 5
    cmp-long v11, v3, v9

    if-ltz v11, :cond_23

    const/4 v11, 0x1

    goto :goto_24

    :cond_23
    const/4 v11, 0x0

    :goto_24
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 6
    cmp-long v11, v5, v9

    if-ltz v11, :cond_2d

    const/4 v7, 0x1

    nop

    :cond_2d
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 7
    move-object v7, p1

    iput-object v7, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zztt:Ljava/lang/String;

    .line 8
    move-object v7, p2

    iput-object v7, v0, Lcom/google/android/gms/measurement/internal/zzaa;->name:Ljava/lang/String;

    .line 9
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaih:J

    .line 10
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaii:J

    .line 11
    move-wide/from16 v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaij:J

    .line 12
    iput-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaik:J

    .line 13
    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzail:Ljava/lang/Long;

    .line 14
    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaim:Ljava/lang/Long;

    .line 15
    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzain:Ljava/lang/Long;

    .line 16
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaio:Ljava/lang/Boolean;

    .line 17
    return-void
.end method


# virtual methods
.method final zza(JJ)Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 22

    .line 19
    move-object/from16 v0, p0

    new-instance v16, Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zztt:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->name:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaih:J

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaii:J

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaij:J

    .line 20
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaim:Ljava/lang/Long;

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzain:Ljava/lang/Long;

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaio:Ljava/lang/Boolean;

    move-object/from16 v1, v16

    move-wide/from16 v10, p1

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 21
    return-object v16
.end method

.method final zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 21

    .line 22
    move-object/from16 v0, p0

    if-eqz p3, :cond_e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_e

    .line 23
    const/4 v1, 0x0

    .line 24
    move-object/from16 v16, v1

    goto :goto_10

    :cond_e
    move-object/from16 v16, p3

    :goto_10
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zztt:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaa;->name:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaih:J

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaii:J

    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaij:J

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaik:J

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzail:Ljava/lang/Long;

    move-object v2, v1

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method final zzai(J)Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 20

    .line 18
    move-object/from16 v0, p0

    new-instance v16, Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zztt:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->name:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaih:J

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaii:J

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaik:J

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzail:Ljava/lang/Long;

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaim:Ljava/lang/Long;

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzain:Ljava/lang/Long;

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzaio:Ljava/lang/Boolean;

    move-object/from16 v1, v16

    move-wide/from16 v8, p1

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v16
.end method
