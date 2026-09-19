###### Class io.realm.internal.UncheckedRow (io.realm.internal.UncheckedRow)
.class public Lio/realm/internal/UncheckedRow;
.super Ljava/lang/Object;
.source "UncheckedRow.java"

# interfaces
.implements Lio/realm/internal/NativeObject;
.implements Lio/realm/internal/Row;


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field private final context:Lio/realm/internal/NativeContext;

.field private final nativePtr:J

.field private final parent:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    invoke-static {}, Lio/realm/internal/UncheckedRow;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/UncheckedRow;->nativeFinalizerPtr:J

    return-void
.end method

.method constructor <init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V
    .registers 5
    .param p1, "context"    # Lio/realm/internal/NativeContext;
    .param p2, "parent"    # Lio/realm/internal/Table;
    .param p3, "nativePtr"    # J

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/realm/internal/UncheckedRow;->context:Lio/realm/internal/NativeContext;

    .line 44
    iput-object p2, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    .line 45
    iput-wide p3, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    .line 46
    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lio/realm/internal/UncheckedRow;)V
    .registers 4
    .param p1, "row"    # Lio/realm/internal/UncheckedRow;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-object v0, p1, Lio/realm/internal/UncheckedRow;->context:Lio/realm/internal/NativeContext;

    iput-object v0, p0, Lio/realm/internal/UncheckedRow;->context:Lio/realm/internal/NativeContext;

    .line 53
    iget-object v0, p1, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    iput-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    .line 54
    iget-wide v0, p1, Lio/realm/internal/UncheckedRow;->nativePtr:J

    iput-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    .line 56
    return-void
.end method

.method static getByRowIndex(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;
    .registers 7
    .param p0, "context"    # Lio/realm/internal/NativeContext;
    .param p1, "table"    # Lio/realm/internal/Table;
    .param p2, "index"    # J

    .line 77
    invoke-virtual {p1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2, p3}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    move-result-wide v0

    .line 78
    .local v0, "nativeRowPointer":J
    new-instance v2, Lio/realm/internal/UncheckedRow;

    invoke-direct {v2, p0, p1, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object v2
.end method

.method static getByRowPointer(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;
    .registers 5
    .param p0, "context"    # Lio/realm/internal/NativeContext;
    .param p1, "table"    # Lio/realm/internal/Table;
    .param p2, "nativeRowPointer"    # J

    .line 90
    new-instance v0, Lio/realm/internal/UncheckedRow;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method private static native nativeGetFinalizerPtr()J
.end method


# virtual methods
.method public checkIfAttached()V
    .registers 3

    .line 288
    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 291
    return-void

    .line 289
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object is no longer managed by Realm. Has it been deleted?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertToChecked()Lio/realm/internal/CheckedRow;
    .registers 2

    .line 278
    invoke-static {p0}, Lio/realm/internal/CheckedRow;->getFromRow(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryByteArray(J)[B
    .registers 5
    .param p1, "columnIndex"    # J

    .line 162
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetByteArray(JJ)[B

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(J)Z
    .registers 5
    .param p1, "columnIndex"    # J

    .line 137
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetBoolean(JJ)Z

    move-result v0

    return v0
.end method

.method public getColumnCount()J
    .registers 3

    .line 95
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeGetColumnCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColumnIndex(Ljava/lang/String;)J
    .registers 4
    .param p1, "columnName"    # Ljava/lang/String;

    .line 107
    if-eqz p1, :cond_9

    .line 110
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/UncheckedRow;->nativeGetColumnIndex(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 108
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Column name can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnName(J)Ljava/lang/String;
    .registers 5
    .param p1, "columnIndex"    # J

    .line 100
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnType(J)Lio/realm/RealmFieldType;
    .registers 5
    .param p1, "columnIndex"    # J

    .line 115
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetColumnType(JJ)I

    move-result v0

    invoke-static {v0}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getDate(J)Ljava/util/Date;
    .registers 6
    .param p1, "columnIndex"    # J

    .line 152
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v1, v2, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetTimestamp(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDouble(J)D
    .registers 5
    .param p1, "columnIndex"    # J

    .line 147
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetDouble(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(J)F
    .registers 5
    .param p1, "columnIndex"    # J

    .line 142
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetFloat(JJ)F

    move-result v0

    return v0
.end method

.method public getIndex()J
    .registers 3

    .line 127
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeGetIndex(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLink(J)J
    .registers 5
    .param p1, "columnIndex"    # J

    .line 167
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetLink(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(J)J
    .registers 5
    .param p1, "columnIndex"    # J

    .line 132
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getModelList(J)Lio/realm/internal/OsList;
    .registers 4
    .param p1, "columnIndex"    # J

    .line 177
    new-instance v0, Lio/realm/internal/OsList;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .registers 3

    .line 65
    sget-wide v0, Lio/realm/internal/UncheckedRow;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .registers 3

    .line 60
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    return-wide v0
.end method

.method public getString(J)Ljava/lang/String;
    .registers 5
    .param p1, "columnIndex"    # J

    .line 157
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetString(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .registers 2

    .line 122
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    return-object v0
.end method

.method public getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .registers 5
    .param p1, "columnIndex"    # J
    .param p3, "fieldType"    # Lio/realm/RealmFieldType;

    .line 182
    new-instance v0, Lio/realm/internal/OsList;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object v0
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 295
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/UncheckedRow;->nativeHasColumn(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAttached()Z
    .registers 6

    .line 283
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeIsAttached(J)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isNull(J)Z
    .registers 5
    .param p1, "columnIndex"    # J

    .line 258
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeIsNull(JJ)Z

    move-result v0

    return v0
.end method

.method public isNullLink(J)Z
    .registers 5
    .param p1, "columnIndex"    # J

    .line 172
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeIsNullLink(JJ)Z

    move-result v0

    return v0
.end method

.method protected native nativeGetBoolean(JJ)Z
.end method

.method protected native nativeGetByteArray(JJ)[B
.end method

.method protected native nativeGetColumnCount(J)J
.end method

.method protected native nativeGetColumnIndex(JLjava/lang/String;)J
.end method

.method protected native nativeGetColumnName(JJ)Ljava/lang/String;
.end method

.method protected native nativeGetColumnType(JJ)I
.end method

.method protected native nativeGetDouble(JJ)D
.end method

.method protected native nativeGetFloat(JJ)F
.end method

.method protected native nativeGetIndex(J)J
.end method

.method protected native nativeGetLink(JJ)J
.end method

.method protected native nativeGetLong(JJ)J
.end method

.method protected native nativeGetString(JJ)Ljava/lang/String;
.end method

.method protected native nativeGetTimestamp(JJ)J
.end method

.method protected native nativeHasColumn(JLjava/lang/String;)Z
.end method

.method protected native nativeIsAttached(J)Z
.end method

.method protected native nativeIsNull(JJ)Z
.end method

.method protected native nativeIsNullLink(JJ)Z
.end method

.method protected native nativeNullifyLink(JJ)V
.end method

.method protected native nativeSetBoolean(JJZ)V
.end method

.method protected native nativeSetByteArray(JJ[B)V
    .param p5    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected native nativeSetDouble(JJD)V
.end method

.method protected native nativeSetFloat(JJF)V
.end method

.method protected native nativeSetLink(JJJ)V
.end method

.method protected native nativeSetLong(JJJ)V
.end method

.method protected native nativeSetNull(JJ)V
.end method

.method protected native nativeSetString(JJLjava/lang/String;)V
.end method

.method protected native nativeSetTimestamp(JJJ)V
.end method

.method public nullifyLink(J)V
    .registers 5
    .param p1, "columnIndex"    # J

    .line 252
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 253
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeNullifyLink(JJ)V

    .line 254
    return-void
.end method

.method public setBinaryByteArray(J[B)V
    .registers 11
    .param p1, "columnIndex"    # J
    .param p3, "data"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 240
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 241
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetByteArray(JJ[B)V

    .line 242
    return-void
.end method

.method public setBoolean(JZ)V
    .registers 11
    .param p1, "columnIndex"    # J
    .param p3, "value"    # Z

    .line 195
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 196
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetBoolean(JJZ)V

    .line 197
    return-void
.end method

.method public setDate(JLjava/util/Date;)V
    .registers 14
    .param p1, "columnIndex"    # J
    .param p3, "date"    # Ljava/util/Date;

    .line 213
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 215
    if-eqz p3, :cond_14

    .line 218
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 219
    .local v8, "timestamp":J
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, v8

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetTimestamp(JJJ)V

    .line 220
    return-void

    .line 216
    .end local v8    # "timestamp":J
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null Date is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDouble(JD)V
    .registers 13
    .param p1, "columnIndex"    # J
    .param p3, "value"    # D

    .line 207
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 208
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetDouble(JJD)V

    .line 209
    return-void
.end method

.method public setFloat(JF)V
    .registers 11
    .param p1, "columnIndex"    # J
    .param p3, "value"    # F

    .line 201
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 202
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetFloat(JJF)V

    .line 203
    return-void
.end method

.method public setLink(JJ)V
    .registers 13
    .param p1, "columnIndex"    # J
    .param p3, "value"    # J

    .line 246
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 247
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetLink(JJJ)V

    .line 248
    return-void
.end method

.method public setLong(JJ)V
    .registers 13
    .param p1, "columnIndex"    # J
    .param p3, "value"    # J

    .line 189
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 190
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetLong(JJJ)V

    .line 191
    return-void
.end method

.method public setNull(J)V
    .registers 5
    .param p1, "columnIndex"    # J

    .line 268
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 269
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeSetNull(JJ)V

    .line 270
    return-void
.end method

.method public setString(JLjava/lang/String;)V
    .registers 12
    .param p1, "columnIndex"    # J
    .param p3, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 230
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->checkImmutable()V

    .line 231
    if-nez p3, :cond_d

    .line 232
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeSetNull(JJ)V

    goto :goto_15

    .line 234
    :cond_d
    iget-wide v3, p0, Lio/realm/internal/UncheckedRow;->nativePtr:J

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetString(JJLjava/lang/String;)V

    .line 236
    :goto_15
    return-void
.end method
