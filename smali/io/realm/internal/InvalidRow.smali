###### Class io.realm.internal.InvalidRow (io.realm.internal.InvalidRow)
.class public final enum Lio/realm/internal/InvalidRow;
.super Ljava/lang/Enum;
.source "InvalidRow.java"

# interfaces
.implements Lio/realm/internal/Row;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/InvalidRow;",
        ">;",
        "Lio/realm/internal/Row;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/InvalidRow;

.field public static final enum INSTANCE:Lio/realm/internal/InvalidRow;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 30
    new-instance v0, Lio/realm/internal/InvalidRow;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/internal/InvalidRow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Lio/realm/internal/InvalidRow;

    sget-object v1, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    aput-object v1, v0, v2

    sput-object v0, Lio/realm/internal/InvalidRow;->$VALUES:[Lio/realm/internal/InvalidRow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private getStubException()Ljava/lang/RuntimeException;
    .registers 3

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object is no longer managed by Realm. Has it been deleted?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/InvalidRow;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lio/realm/internal/InvalidRow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/internal/InvalidRow;

    return-object v0
.end method

.method public static values()[Lio/realm/internal/InvalidRow;
    .registers 1

    .line 29
    sget-object v0, Lio/realm/internal/InvalidRow;->$VALUES:[Lio/realm/internal/InvalidRow;

    invoke-virtual {v0}, [Lio/realm/internal/InvalidRow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/InvalidRow;

    return-object v0
.end method


# virtual methods
.method public checkIfAttached()V
    .registers 2

    .line 179
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getBinaryByteArray(J)[B
    .registers 4
    .param p1, "columnIndex"    # J

    .line 94
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getBoolean(J)Z
    .registers 4
    .param p1, "columnIndex"    # J

    .line 69
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getColumnCount()J
    .registers 2

    .line 34
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)J
    .registers 3
    .param p1, "columnName"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getColumnName(J)Ljava/lang/String;
    .registers 4
    .param p1, "columnIndex"    # J

    .line 39
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getColumnType(J)Lio/realm/RealmFieldType;
    .registers 4
    .param p1, "columnIndex"    # J

    .line 49
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getDate(J)Ljava/util/Date;
    .registers 4
    .param p1, "columnIndex"    # J

    .line 84
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getDouble(J)D
    .registers 4
    .param p1, "columnIndex"    # J

    .line 79
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getFloat(J)F
    .registers 4
    .param p1, "columnIndex"    # J

    .line 74
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getIndex()J
    .registers 2

    .line 59
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getLink(J)J
    .registers 4
    .param p1, "columnIndex"    # J

    .line 99
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getLong(J)J
    .registers 4
    .param p1, "columnIndex"    # J

    .line 64
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getModelList(J)Lio/realm/internal/OsList;
    .registers 4
    .param p1, "columnIndex"    # J

    .line 109
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getString(J)Ljava/lang/String;
    .registers 4
    .param p1, "columnIndex"    # J

    .line 89
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .registers 2

    .line 54
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .registers 5
    .param p1, "columnIndex"    # J
    .param p3, "fieldType"    # Lio/realm/RealmFieldType;

    .line 114
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isAttached()Z
    .registers 2

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public isNull(J)Z
    .registers 4
    .param p1, "columnIndex"    # J

    .line 164
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isNullLink(J)Z
    .registers 4
    .param p1, "columnIndex"    # J

    .line 104
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public nullifyLink(J)V
    .registers 4
    .param p1, "columnIndex"    # J

    .line 159
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setBinaryByteArray(J[B)V
    .registers 5
    .param p1, "columnIndex"    # J
    .param p3, "data"    # [B

    .line 149
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setBoolean(JZ)V
    .registers 5
    .param p1, "columnIndex"    # J
    .param p3, "value"    # Z

    .line 124
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setDate(JLjava/util/Date;)V
    .registers 5
    .param p1, "columnIndex"    # J
    .param p3, "date"    # Ljava/util/Date;

    .line 139
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setDouble(JD)V
    .registers 6
    .param p1, "columnIndex"    # J
    .param p3, "value"    # D

    .line 134
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setFloat(JF)V
    .registers 5
    .param p1, "columnIndex"    # J
    .param p3, "value"    # F

    .line 129
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setLink(JJ)V
    .registers 6
    .param p1, "columnIndex"    # J
    .param p3, "value"    # J

    .line 154
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setLong(JJ)V
    .registers 6
    .param p1, "columnIndex"    # J
    .param p3, "value"    # J

    .line 119
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setNull(J)V
    .registers 4
    .param p1, "columnIndex"    # J

    .line 169
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setString(JLjava/lang/String;)V
    .registers 5
    .param p1, "columnIndex"    # J
    .param p3, "value"    # Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->getStubException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
