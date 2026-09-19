###### Class io.realm.internal.CheckedRow (io.realm.internal.CheckedRow)
.class public Lio/realm/internal/CheckedRow;
.super Lio/realm/internal/UncheckedRow;
.source "CheckedRow.java"


# instance fields
.field private originalRow:Lio/realm/internal/UncheckedRow;


# direct methods
.method private constructor <init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V
    .registers 5
    .param p1, "context"    # Lio/realm/internal/NativeContext;
    .param p2, "parent"    # Lio/realm/internal/Table;
    .param p3, "nativePtr"    # J

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    .line 40
    return-void
.end method

.method private constructor <init>(Lio/realm/internal/UncheckedRow;)V
    .registers 2
    .param p1, "row"    # Lio/realm/internal/UncheckedRow;

    .line 43
    invoke-direct {p0, p1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/UncheckedRow;)V

    .line 44
    iput-object p1, p0, Lio/realm/internal/CheckedRow;->originalRow:Lio/realm/internal/UncheckedRow;

    .line 45
    return-void
.end method

.method public static get(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)Lio/realm/internal/CheckedRow;
    .registers 7
    .param p0, "context"    # Lio/realm/internal/NativeContext;
    .param p1, "table"    # Lio/realm/internal/Table;
    .param p2, "index"    # J

    .line 56
    invoke-virtual {p1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2, p3}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    move-result-wide v0

    .line 57
    .local v0, "nativeRowPointer":J
    new-instance v2, Lio/realm/internal/CheckedRow;

    invoke-direct {v2, p0, p1, v0, v1}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object v2
.end method

.method public static getFromRow(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;
    .registers 2
    .param p0, "row"    # Lio/realm/internal/UncheckedRow;

    .line 66
    new-instance v0, Lio/realm/internal/CheckedRow;

    invoke-direct {v0, p0}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/UncheckedRow;)V

    return-object v0
.end method


# virtual methods
.method public getModelList(J)Lio/realm/internal/OsList;
    .registers 9
    .param p1, "columnIndex"    # J

    .line 102
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 103
    .local v0, "fieldType":Lio/realm/RealmFieldType;
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_11

    .line 108
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v1

    return-object v1

    .line 104
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 105
    const-string v4, "Field \'%s\' is not a \'RealmList\'."

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .registers 10
    .param p1, "columnIndex"    # J
    .param p3, "fieldType"    # Lio/realm/RealmFieldType;

    .line 113
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 114
    .local v0, "actualFieldType":Lio/realm/RealmFieldType;
    if-ne p3, v0, :cond_f

    .line 119
    invoke-super {p0, p1, p2, p3}, Lio/realm/internal/UncheckedRow;->getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;

    move-result-object v1

    return-object v1

    .line 115
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 117
    invoke-virtual {p0}, Lio/realm/internal/CheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lio/realm/internal/Table;->getColumnName(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p3}, Lio/realm/RealmFieldType;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 116
    const-string v4, "The type of field \'%1$s\' is not \'RealmFieldType.%2$s\'."

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isNull(J)Z
    .registers 4
    .param p1, "columnIndex"    # J

    .line 81
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->isNull(J)Z

    move-result v0

    return v0
.end method

.method public isNullLink(J)Z
    .registers 5
    .param p1, "columnIndex"    # J

    .line 71
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/CheckedRow;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 72
    .local v0, "columnType":Lio/realm/RealmFieldType;
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v0, v1, :cond_f

    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_d

    goto :goto_f

    .line 75
    :cond_d
    const/4 v1, 0x0

    return v1

    .line 73
    :cond_f
    :goto_f
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->isNullLink(J)Z

    move-result v1

    return v1
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

.method protected native nativeGetLink(JJ)J
.end method

.method protected native nativeGetLong(JJ)J
.end method

.method protected native nativeGetString(JJ)Ljava/lang/String;
.end method

.method protected native nativeGetTimestamp(JJ)J
.end method

.method protected native nativeIsNullLink(JJ)Z
.end method

.method protected native nativeNullifyLink(JJ)V
.end method

.method protected native nativeSetBoolean(JJZ)V
.end method

.method protected native nativeSetByteArray(JJ[B)V
.end method

.method protected native nativeSetDouble(JJD)V
.end method

.method protected native nativeSetFloat(JJF)V
.end method

.method protected native nativeSetLink(JJJ)V
.end method

.method protected native nativeSetLong(JJJ)V
.end method

.method protected native nativeSetString(JJLjava/lang/String;)V
.end method

.method protected native nativeSetTimestamp(JJJ)V
.end method

.method public setNull(J)V
    .registers 5
    .param p1, "columnIndex"    # J

    .line 92
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/CheckedRow;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 93
    .local v0, "columnType":Lio/realm/RealmFieldType;
    sget-object v1, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_d

    .line 94
    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v1}, Lio/realm/internal/UncheckedRow;->setBinaryByteArray(J[B)V

    goto :goto_10

    .line 96
    :cond_d
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->setNull(J)V

    .line 98
    :goto_10
    return-void
.end method
