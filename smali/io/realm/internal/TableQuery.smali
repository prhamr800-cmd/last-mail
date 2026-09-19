###### Class io.realm.internal.TableQuery (io.realm.internal.TableQuery)
.class public Lio/realm/internal/TableQuery;
.super Ljava/lang/Object;
.source "TableQuery.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# static fields
.field private static final DATE_NULL_ERROR_MESSAGE:Ljava/lang/String; = "Date value in query criteria must not be null."

.field private static final DEBUG:Z = false

.field private static final nativeFinalizerPtr:J


# instance fields
.field private final context:Lio/realm/internal/NativeContext;

.field private final nativePtr:J

.field private queryValidated:Z

.field private final table:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    invoke-static {}, Lio/realm/internal/TableQuery;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/TableQuery;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V
    .registers 6
    .param p1, "context"    # Lio/realm/internal/NativeContext;
    .param p2, "table"    # Lio/realm/internal/Table;
    .param p3, "nativeQueryPtr"    # J

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 50
    iput-object p1, p0, Lio/realm/internal/TableQuery;->context:Lio/realm/internal/NativeContext;

    .line 51
    iput-object p2, p0, Lio/realm/internal/TableQuery;->table:Lio/realm/internal/Table;

    .line 52
    iput-wide p3, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    .line 53
    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 54
    return-void
.end method

.method private native nativeAlwaysFalse(J)V
.end method

.method private native nativeAlwaysTrue(J)V
.end method

.method private native nativeAverageDouble(JJJJJ)D
.end method

.method private native nativeAverageFloat(JJJJJ)D
.end method

.method private native nativeAverageInt(JJJJJ)D
.end method

.method private native nativeBeginsWith(J[J[JLjava/lang/String;Z)V
.end method

.method private native nativeBetween(J[JDD)V
.end method

.method private native nativeBetween(J[JFF)V
.end method

.method private native nativeBetween(J[JJJ)V
.end method

.method private native nativeBetweenTimestamp(J[JJJ)V
.end method

.method private native nativeContains(J[J[JLjava/lang/String;Z)V
.end method

.method private native nativeCount(JJJJ)J
.end method

.method private native nativeEndGroup(J)V
.end method

.method private native nativeEndsWith(J[J[JLjava/lang/String;Z)V
.end method

.method private native nativeEqual(J[J[JD)V
.end method

.method private native nativeEqual(J[J[JF)V
.end method

.method private native nativeEqual(J[J[JJ)V
.end method

.method private native nativeEqual(J[J[JLjava/lang/String;Z)V
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private native nativeEqual(J[J[JZ)V
.end method

.method private native nativeEqual(J[J[J[B)V
.end method

.method private native nativeEqualTimestamp(J[J[JJ)V
.end method

.method private native nativeFind(JJ)J
.end method

.method private native nativeFindAll(JJJJ)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private native nativeGreater(J[J[JD)V
.end method

.method private native nativeGreater(J[J[JF)V
.end method

.method private native nativeGreater(J[J[JJ)V
.end method

.method private native nativeGreaterEqual(J[J[JD)V
.end method

.method private native nativeGreaterEqual(J[J[JF)V
.end method

.method private native nativeGreaterEqual(J[J[JJ)V
.end method

.method private native nativeGreaterEqualTimestamp(J[J[JJ)V
.end method

.method private native nativeGreaterTimestamp(J[J[JJ)V
.end method

.method private native nativeGroup(J)V
.end method

.method private native nativeIsEmpty(J[J[J)V
.end method

.method private native nativeIsNotEmpty(J[J[J)V
.end method

.method private native nativeIsNotNull(J[J[J)V
.end method

.method private native nativeIsNull(J[J[J)V
.end method

.method private native nativeLess(J[J[JD)V
.end method

.method private native nativeLess(J[J[JF)V
.end method

.method private native nativeLess(J[J[JJ)V
.end method

.method private native nativeLessEqual(J[J[JD)V
.end method

.method private native nativeLessEqual(J[J[JF)V
.end method

.method private native nativeLessEqual(J[J[JJ)V
.end method

.method private native nativeLessEqualTimestamp(J[J[JJ)V
.end method

.method private native nativeLessTimestamp(J[J[JJ)V
.end method

.method private native nativeLike(J[J[JLjava/lang/String;Z)V
.end method

.method private native nativeMaximumDouble(JJJJJ)Ljava/lang/Double;
.end method

.method private native nativeMaximumFloat(JJJJJ)Ljava/lang/Float;
.end method

.method private native nativeMaximumInt(JJJJJ)Ljava/lang/Long;
.end method

.method private native nativeMaximumTimestamp(JJJJJ)Ljava/lang/Long;
.end method

.method private native nativeMinimumDouble(JJJJJ)Ljava/lang/Double;
.end method

.method private native nativeMinimumFloat(JJJJJ)Ljava/lang/Float;
.end method

.method private native nativeMinimumInt(JJJJJ)Ljava/lang/Long;
.end method

.method private native nativeMinimumTimestamp(JJJJJ)Ljava/lang/Long;
.end method

.method private native nativeNot(J)V
.end method

.method private native nativeNotEqual(J[J[JD)V
.end method

.method private native nativeNotEqual(J[J[JF)V
.end method

.method private native nativeNotEqual(J[J[JJ)V
.end method

.method private native nativeNotEqual(J[J[JLjava/lang/String;Z)V
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private native nativeNotEqual(J[J[J[B)V
.end method

.method private native nativeNotEqualTimestamp(J[J[JJ)V
.end method

.method private native nativeOr(J)V
.end method

.method private native nativeRemove(J)J
.end method

.method private native nativeSumDouble(JJJJJ)D
.end method

.method private native nativeSumFloat(JJJJJ)D
.end method

.method private native nativeSumInt(JJJJJ)J
.end method

.method private native nativeValidateQuery(J)Ljava/lang/String;
.end method

.method private throwImmutable()V
    .registers 3

    .line 629
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mutable method call during read transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public alwaysFalse()V
    .registers 3

    .line 637
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeAlwaysFalse(J)V

    .line 638
    return-void
.end method

.method public alwaysTrue()V
    .registers 3

    .line 633
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeAlwaysTrue(J)V

    .line 634
    return-void
.end method

.method public averageDouble(J)D
    .registers 14
    .param p1, "columnIndex"    # J

    .line 554
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 555
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeAverageDouble(JJJJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public averageDouble(JJJJ)D
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 549
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 550
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeAverageDouble(JJJJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public averageFloat(J)D
    .registers 14
    .param p1, "columnIndex"    # J

    .line 512
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 513
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeAverageFloat(JJJJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public averageFloat(JJJJ)D
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 507
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 508
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeAverageFloat(JJJJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public averageInt(J)D
    .registers 14
    .param p1, "columnIndex"    # J

    .line 470
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 471
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeAverageInt(JJJJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public averageInt(JJJJ)D
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 465
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 466
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeAverageInt(JJJJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public beginsWith([J[JLjava/lang/String;)Lio/realm/internal/TableQuery;
    .registers 11
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/lang/String;

    .line 359
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeBeginsWith(J[J[JLjava/lang/String;Z)V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 361
    return-object p0
.end method

.method public beginsWith([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "caseSensitive"    # Lio/realm/Case;

    .line 353
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p4}, Lio/realm/Case;->getValue()Z

    move-result v6

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeBeginsWith(J[J[JLjava/lang/String;Z)V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 355
    return-object p0
.end method

.method public between([JDD)Lio/realm/internal/TableQuery;
    .registers 14
    .param p1, "columnIndex"    # [J
    .param p2, "value1"    # D
    .param p4, "value2"    # D

    .line 235
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lio/realm/internal/TableQuery;->nativeBetween(J[JDD)V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 237
    return-object p0
.end method

.method public between([JFF)Lio/realm/internal/TableQuery;
    .registers 10
    .param p1, "columnIndex"    # [J
    .param p2, "value1"    # F
    .param p3, "value2"    # F

    .line 191
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeBetween(J[JFF)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 193
    return-object p0
.end method

.method public between([JJJ)Lio/realm/internal/TableQuery;
    .registers 14
    .param p1, "columnIndex"    # [J
    .param p2, "value1"    # J
    .param p4, "value2"    # J

    .line 147
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lio/realm/internal/TableQuery;->nativeBetween(J[JJJ)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 149
    return-object p0
.end method

.method public between([JLjava/util/Date;Ljava/util/Date;)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndex"    # [J
    .param p2, "value1"    # Ljava/util/Date;
    .param p3, "value2"    # Ljava/util/Date;

    .line 304
    if-eqz p2, :cond_17

    if-eqz p3, :cond_17

    .line 307
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lio/realm/internal/TableQuery;->nativeBetweenTimestamp(J[JJJ)V

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 309
    return-object p0

    .line 305
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Date values in query criteria must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains([J[JLjava/lang/String;)Lio/realm/internal/TableQuery;
    .registers 11
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/lang/String;

    .line 395
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeContains(J[J[JLjava/lang/String;Z)V

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 397
    return-object p0
.end method

.method public contains([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "caseSensitive"    # Lio/realm/Case;

    .line 389
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p4}, Lio/realm/Case;->getValue()Z

    move-result v6

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeContains(J[J[JLjava/lang/String;Z)V

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 391
    return-object p0
.end method

.method public count()J
    .registers 10

    .line 618
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 619
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lio/realm/internal/TableQuery;->nativeCount(JJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public count(JJJ)J
    .registers 16
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "limit"    # J

    .line 613
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 614
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lio/realm/internal/TableQuery;->nativeCount(JJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public endGroup()Lio/realm/internal/TableQuery;
    .registers 3

    .line 91
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeEndGroup(J)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 93
    return-object p0
.end method

.method public endsWith([J[JLjava/lang/String;)Lio/realm/internal/TableQuery;
    .registers 11
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/lang/String;

    .line 371
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeEndsWith(J[J[JLjava/lang/String;Z)V

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 373
    return-object p0
.end method

.method public endsWith([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "caseSensitive"    # Lio/realm/Case;

    .line 365
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p4}, Lio/realm/Case;->getValue()Z

    move-result v6

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeEndsWith(J[J[JLjava/lang/String;Z)V

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 367
    return-object p0
.end method

.method public equalTo([J[JD)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # D

    .line 199
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeEqual(J[J[JD)V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 201
    return-object p0
.end method

.method public equalTo([J[JF)Lio/realm/internal/TableQuery;
    .registers 10
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # F

    .line 155
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeEqual(J[J[JF)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 157
    return-object p0
.end method

.method public equalTo([J[JJ)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndexes"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # J

    .line 111
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeEqual(J[J[JJ)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 113
    return-object p0
.end method

.method public equalTo([J[JLjava/lang/String;)Lio/realm/internal/TableQuery;
    .registers 11
    .param p1, "columnIndexes"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/lang/String;

    .line 334
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeEqual(J[J[JLjava/lang/String;Z)V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 336
    return-object p0
.end method

.method public equalTo([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndexes"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "caseSensitive"    # Lio/realm/Case;

    .line 328
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p4}, Lio/realm/Case;->getValue()Z

    move-result v6

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeEqual(J[J[JLjava/lang/String;Z)V

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 330
    return-object p0
.end method

.method public equalTo([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;
    .registers 13
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 253
    if-nez p3, :cond_8

    .line 254
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeIsNull(J[J[J)V

    goto :goto_14

    .line 256
    :cond_8
    iget-wide v3, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v8}, Lio/realm/internal/TableQuery;->nativeEqualTimestamp(J[J[JJ)V

    .line 258
    :goto_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 259
    return-object p0
.end method

.method public equalTo([J[JZ)Lio/realm/internal/TableQuery;
    .registers 10
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Z

    .line 243
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeEqual(J[J[JZ)V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 245
    return-object p0
.end method

.method public equalTo([J[J[B)Lio/realm/internal/TableQuery;
    .registers 10
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # [B

    .line 315
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeEqual(J[J[J[B)V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 317
    return-object p0
.end method

.method public find()J
    .registers 5

    .line 424
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 425
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/realm/internal/TableQuery;->nativeFind(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public find(J)J
    .registers 5
    .param p1, "fromTableRow"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 416
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 417
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeFind(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeFinalizerPtr()J
    .registers 3

    .line 63
    sget-wide v0, Lio/realm/internal/TableQuery;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .registers 3

    .line 58
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    return-wide v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .registers 2

    .line 67
    iget-object v0, p0, Lio/realm/internal/TableQuery;->table:Lio/realm/internal/Table;

    return-object v0
.end method

.method public greaterThan([J[JD)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # D

    .line 211
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeGreater(J[J[JD)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 213
    return-object p0
.end method

.method public greaterThan([J[JF)Lio/realm/internal/TableQuery;
    .registers 10
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # F

    .line 167
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeGreater(J[J[JF)V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 169
    return-object p0
.end method

.method public greaterThan([J[JJ)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # J

    .line 123
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeGreater(J[J[JJ)V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 125
    return-object p0
.end method

.method public greaterThan([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;
    .registers 11
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/util/Date;

    .line 272
    if-eqz p3, :cond_12

    .line 273
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeGreaterTimestamp(J[J[JJ)V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 275
    return-object p0

    .line 272
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Date value in query criteria must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greaterThanOrEqual([J[JD)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # D

    .line 217
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeGreaterEqual(J[J[JD)V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 219
    return-object p0
.end method

.method public greaterThanOrEqual([J[JF)Lio/realm/internal/TableQuery;
    .registers 10
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # F

    .line 173
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeGreaterEqual(J[J[JF)V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 175
    return-object p0
.end method

.method public greaterThanOrEqual([J[JJ)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # J

    .line 129
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeGreaterEqual(J[J[JJ)V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 131
    return-object p0
.end method

.method public greaterThanOrEqual([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;
    .registers 11
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/util/Date;

    .line 280
    if-eqz p3, :cond_12

    .line 281
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeGreaterEqualTimestamp(J[J[JJ)V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 283
    return-object p0

    .line 280
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Date value in query criteria must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public group()Lio/realm/internal/TableQuery;
    .registers 3

    .line 85
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeGroup(J)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 87
    return-object p0
.end method

.method public isEmpty([J[J)Lio/realm/internal/TableQuery;
    .registers 5
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J

    .line 401
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeIsEmpty(J[J[J)V

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 403
    return-object p0
.end method

.method public isNotEmpty([J[J)Lio/realm/internal/TableQuery;
    .registers 5
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J

    .line 407
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeIsNotEmpty(J[J[J)V

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 409
    return-object p0
.end method

.method public isNotNull([J[J)Lio/realm/internal/TableQuery;
    .registers 5
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J

    .line 604
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeIsNotNull(J[J[J)V

    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 606
    return-object p0
.end method

.method public isNull([J[J)Lio/realm/internal/TableQuery;
    .registers 5
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J

    .line 598
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeIsNull(J[J[J)V

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 600
    return-object p0
.end method

.method public lessThan([J[JD)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # D

    .line 223
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeLess(J[J[JD)V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 225
    return-object p0
.end method

.method public lessThan([J[JF)Lio/realm/internal/TableQuery;
    .registers 10
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # F

    .line 179
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeLess(J[J[JF)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 181
    return-object p0
.end method

.method public lessThan([J[JJ)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # J

    .line 135
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeLess(J[J[JJ)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 137
    return-object p0
.end method

.method public lessThan([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;
    .registers 11
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/util/Date;

    .line 288
    if-eqz p3, :cond_12

    .line 289
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeLessTimestamp(J[J[JJ)V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 291
    return-object p0

    .line 288
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Date value in query criteria must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lessThanOrEqual([J[JD)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # D

    .line 229
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeLessEqual(J[J[JD)V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 231
    return-object p0
.end method

.method public lessThanOrEqual([J[JF)Lio/realm/internal/TableQuery;
    .registers 10
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # F

    .line 185
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeLessEqual(J[J[JF)V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 187
    return-object p0
.end method

.method public lessThanOrEqual([J[JJ)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # J

    .line 141
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeLessEqual(J[J[JJ)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 143
    return-object p0
.end method

.method public lessThanOrEqual([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;
    .registers 11
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/util/Date;

    .line 296
    if-eqz p3, :cond_12

    .line 297
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeLessEqualTimestamp(J[J[JJ)V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 299
    return-object p0

    .line 296
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Date value in query criteria must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public like([J[JLjava/lang/String;)Lio/realm/internal/TableQuery;
    .registers 11
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/lang/String;

    .line 383
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeLike(J[J[JLjava/lang/String;Z)V

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 385
    return-object p0
.end method

.method public like([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "caseSensitive"    # Lio/realm/Case;

    .line 377
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p4}, Lio/realm/Case;->getValue()Z

    move-result v6

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeLike(J[J[JLjava/lang/String;Z)V

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 379
    return-object p0
.end method

.method public maximumDate(J)Ljava/util/Date;
    .registers 14
    .param p1, "columnIndex"    # J

    .line 570
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 571
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMaximumTimestamp(JJJJJ)Ljava/lang/Long;

    move-result-object v0

    .line 572
    .local v0, "result":Ljava/lang/Long;
    if-eqz v0, :cond_1d

    .line 573
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1

    .line 575
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public maximumDate(JJJJ)Ljava/util/Date;
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 561
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 562
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMaximumTimestamp(JJJJJ)Ljava/lang/Long;

    move-result-object v0

    .line 563
    .local v0, "result":Ljava/lang/Long;
    if-eqz v0, :cond_1d

    .line 564
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1

    .line 566
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public maximumDouble(J)Ljava/lang/Double;
    .registers 14
    .param p1, "columnIndex"    # J

    .line 534
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 535
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMaximumDouble(JJJJJ)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public maximumDouble(JJJJ)Ljava/lang/Double;
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 529
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 530
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMaximumDouble(JJJJJ)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public maximumFloat(J)Ljava/lang/Float;
    .registers 14
    .param p1, "columnIndex"    # J

    .line 492
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 493
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMaximumFloat(JJJJJ)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public maximumFloat(JJJJ)Ljava/lang/Float;
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 487
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 488
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMaximumFloat(JJJJJ)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public maximumInt(J)Ljava/lang/Long;
    .registers 14
    .param p1, "columnIndex"    # J

    .line 450
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 451
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMaximumInt(JJJJJ)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public maximumInt(JJJJ)Ljava/lang/Long;
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 445
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 446
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMaximumInt(JJJJJ)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public minimumDate(J)Ljava/util/Date;
    .registers 14
    .param p1, "columnIndex"    # J

    .line 588
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 589
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMinimumTimestamp(JJJJJ)Ljava/lang/Long;

    move-result-object v0

    .line 590
    .local v0, "result":Ljava/lang/Long;
    if-eqz v0, :cond_1d

    .line 591
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1

    .line 593
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public minimumDate(JJJJ)Ljava/util/Date;
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 579
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 580
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMinimumTimestamp(JJJJJ)Ljava/lang/Long;

    move-result-object v0

    .line 581
    .local v0, "result":Ljava/lang/Long;
    if-eqz v0, :cond_21

    .line 582
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1

    .line 584
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method public minimumDouble(J)Ljava/lang/Double;
    .registers 14
    .param p1, "columnIndex"    # J

    .line 544
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 545
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMinimumDouble(JJJJJ)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public minimumDouble(JJJJ)Ljava/lang/Double;
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 539
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 540
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMinimumDouble(JJJJJ)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public minimumFloat(J)Ljava/lang/Float;
    .registers 14
    .param p1, "columnIndex"    # J

    .line 502
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 503
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMinimumFloat(JJJJJ)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public minimumFloat(JJJJ)Ljava/lang/Float;
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 497
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 498
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMinimumFloat(JJJJJ)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public minimumInt(J)Ljava/lang/Long;
    .registers 14
    .param p1, "columnIndex"    # J

    .line 460
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 461
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMinimumInt(JJJJJ)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public minimumInt(JJJJ)Ljava/lang/Long;
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 455
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 456
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeMinimumInt(JJJJJ)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public not()Lio/realm/internal/TableQuery;
    .registers 3

    .line 103
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeNot(J)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 105
    return-object p0
.end method

.method public notEqualTo([J[JD)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # D

    .line 205
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeNotEqual(J[J[JD)V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 207
    return-object p0
.end method

.method public notEqualTo([J[JF)Lio/realm/internal/TableQuery;
    .registers 10
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # F

    .line 161
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeNotEqual(J[J[JF)V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 163
    return-object p0
.end method

.method public notEqualTo([J[JJ)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # J

    .line 117
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeNotEqual(J[J[JJ)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 119
    return-object p0
.end method

.method public notEqualTo([J[JLjava/lang/String;)Lio/realm/internal/TableQuery;
    .registers 11
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 347
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeNotEqual(J[J[JLjava/lang/String;Z)V

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 349
    return-object p0
.end method

.method public notEqualTo([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;
    .registers 12
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "caseSensitive"    # Lio/realm/Case;

    .line 341
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p4}, Lio/realm/Case;->getValue()Z

    move-result v6

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeNotEqual(J[J[JLjava/lang/String;Z)V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 343
    return-object p0
.end method

.method public notEqualTo([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;
    .registers 11
    .param p1, "columnIndex"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # Ljava/util/Date;

    .line 264
    if-eqz p3, :cond_12

    .line 265
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeNotEqualTimestamp(J[J[JJ)V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 267
    return-object p0

    .line 264
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Date value in query criteria must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notEqualTo([J[J[B)Lio/realm/internal/TableQuery;
    .registers 10
    .param p1, "columnIndices"    # [J
    .param p2, "tablePtrs"    # [J
    .param p3, "value"    # [B

    .line 321
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeNotEqual(J[J[J[B)V

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 323
    return-object p0
.end method

.method public or()Lio/realm/internal/TableQuery;
    .registers 3

    .line 97
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeOr(J)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    .line 99
    return-object p0
.end method

.method public remove()J
    .registers 3

    .line 623
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 624
    iget-object v0, p0, Lio/realm/internal/TableQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lio/realm/internal/TableQuery;->throwImmutable()V

    .line 625
    :cond_e
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeRemove(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public sumDouble(J)D
    .registers 14
    .param p1, "columnIndex"    # J

    .line 524
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 525
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeSumDouble(JJJJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public sumDouble(JJJJ)D
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 519
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 520
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeSumDouble(JJJJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public sumFloat(J)D
    .registers 14
    .param p1, "columnIndex"    # J

    .line 482
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 483
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeSumFloat(JJJJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public sumFloat(JJJJ)D
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 477
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 478
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeSumFloat(JJJJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public sumInt(J)J
    .registers 14
    .param p1, "columnIndex"    # J

    .line 440
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 441
    iget-wide v1, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeSumInt(JJJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public sumInt(JJJJ)J
    .registers 21
    .param p1, "columnIndex"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "limit"    # J

    .line 435
    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 436
    move-object v11, p0

    iget-wide v1, v11, Lio/realm/internal/TableQuery;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lio/realm/internal/TableQuery;->nativeSumInt(JJJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method validateQuery()V
    .registers 3

    .line 74
    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    if-nez v0, :cond_1c

    .line 75
    iget-wide v0, p0, Lio/realm/internal/TableQuery;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeValidateQuery(J)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "invalidMessage":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/realm/internal/TableQuery;->queryValidated:Z

    goto :goto_1c

    .line 78
    :cond_16
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    .end local v0    # "invalidMessage":Ljava/lang/String;
    :cond_1c
    :goto_1c
    return-void
.end method
