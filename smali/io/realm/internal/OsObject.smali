###### Class io.realm.internal.OsObject (io.realm.internal.OsObject)
.class public Lio/realm/internal/OsObject;
.super Ljava/lang/Object;
.source "OsObject.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsObject$Callback;,
        Lio/realm/internal/OsObject$ObjectObserverPair;,
        Lio/realm/internal/OsObject$OsObjectChangeSet;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final OBJECT_ID_COLUMN_NAME:Ljava/lang/String;

.field private static final nativeFinalizerPtr:J


# instance fields
.field private final nativePtr:J

.field private observerPairs:Lio/realm/internal/ObserverPairList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/OsObject$ObjectObserverPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    invoke-static {}, Lio/realm/internal/OsObject;->nativeGetObjectIdColumName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/realm/internal/OsObject;->OBJECT_ID_COLUMN_NAME:Ljava/lang/String;

    .line 97
    invoke-static {}, Lio/realm/internal/OsObject;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsObject;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;)V
    .registers 7
    .param p1, "sharedRealm"    # Lio/realm/internal/OsSharedRealm;
    .param p2, "row"    # Lio/realm/internal/UncheckedRow;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lio/realm/internal/ObserverPairList;

    invoke-direct {v0}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 102
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p2}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsObject;->nativeCreate(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    .line 103
    iget-object v0, p1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    invoke-virtual {v0, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 104
    return-void
.end method

.method public static create(Lio/realm/internal/Table;)Lio/realm/internal/UncheckedRow;
    .registers 8
    .param p0, "table"    # Lio/realm/internal/Table;

    .line 159
    invoke-virtual {p0}, Lio/realm/internal/Table;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    .line 160
    .local v0, "sharedRealm":Lio/realm/internal/OsSharedRealm;
    new-instance v1, Lio/realm/internal/UncheckedRow;

    iget-object v2, v0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 161
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v3

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lio/realm/internal/OsObject;->nativeCreateNewObject(JJ)J

    move-result-wide v3

    invoke-direct {v1, v2, p0, v3, v4}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    .line 160
    return-object v1
.end method

.method public static createRow(Lio/realm/internal/Table;)J
    .registers 6
    .param p0, "table"    # Lio/realm/internal/Table;

    .line 172
    invoke-virtual {p0}, Lio/realm/internal/Table;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    .line 173
    .local v0, "sharedRealm":Lio/realm/internal/OsSharedRealm;
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v1

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lio/realm/internal/OsObject;->nativeCreateRow(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public static createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J
    .registers 18
    .param p0, "table"    # Lio/realm/internal/Table;
    .param p1, "primaryKeyColumnIndex"    # J
    .param p3, "primaryKeyValue"    # Ljava/lang/Object;

    .line 227
    move-object/from16 v0, p3

    invoke-virtual/range {p0 .. p2}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v1

    .line 228
    .local v1, "type":Lio/realm/RealmFieldType;
    invoke-virtual {p0}, Lio/realm/internal/Table;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v2

    .line 230
    .local v2, "sharedRealm":Lio/realm/internal/OsSharedRealm;
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-ne v1, v3, :cond_3d

    .line 231
    if-eqz v0, :cond_2c

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_15

    goto :goto_2c

    .line 232
    :cond_15
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Primary key value is not a String: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 234
    :cond_2c
    :goto_2c
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v5

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v7

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    move-wide v9, p1

    invoke-static/range {v5 .. v11}, Lio/realm/internal/OsObject;->nativeCreateRowWithStringPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide v3

    return-wide v3

    .line 237
    :cond_3d
    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-ne v1, v3, :cond_65

    .line 238
    if-nez v0, :cond_47

    const-wide/16 v3, 0x0

    :goto_45
    move-wide v11, v3

    goto :goto_50

    :cond_47
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_45

    .line 239
    .local v11, "value":J
    :goto_50
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v5

    invoke-virtual {p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v7

    if-nez v0, :cond_5d

    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_5f

    :cond_5d
    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_5f
    move-wide v9, p1

    invoke-static/range {v5 .. v13}, Lio/realm/internal/OsObject;->nativeCreateRowWithLongPrimaryKey(JJJJZ)J

    move-result-wide v3

    return-wide v3

    .line 242
    .end local v11    # "value":J
    :cond_65
    new-instance v3, Lio/realm/exceptions/RealmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)Lio/realm/internal/UncheckedRow;
    .registers 19
    .param p0, "table"    # Lio/realm/internal/Table;
    .param p1, "primaryKeyValue"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p0}, Lio/realm/internal/OsObject;->getAndVerifyPrimaryKeyColumnIndex(Lio/realm/internal/Table;)J

    move-result-wide v11

    .line 194
    .local v11, "primaryKeyColumnIndex":J
    invoke-virtual {v0, v11, v12}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v13

    .line 195
    .local v13, "type":Lio/realm/RealmFieldType;
    invoke-virtual/range {p0 .. p0}, Lio/realm/internal/Table;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v14

    .line 197
    .local v14, "sharedRealm":Lio/realm/internal/OsSharedRealm;
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-ne v13, v2, :cond_4a

    .line 198
    if-eqz v1, :cond_32

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1b

    goto :goto_32

    .line 199
    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Primary key value is not a String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_32
    :goto_32
    new-instance v9, Lio/realm/internal/UncheckedRow;

    iget-object v10, v14, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 202
    invoke-virtual {v14}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v4

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    move-wide v6, v11

    invoke-static/range {v2 .. v8}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithStringPrimaryKey(JJJLjava/lang/String;)J

    move-result-wide v2

    invoke-direct {v9, v10, v0, v2, v3}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    .line 201
    return-object v9

    .line 205
    :cond_4a
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-ne v13, v2, :cond_7e

    .line 206
    if-nez v1, :cond_54

    const-wide/16 v2, 0x0

    :goto_52
    move-wide v8, v2

    goto :goto_5d

    :cond_54
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_52

    .line 207
    .local v8, "value":J
    :goto_5d
    new-instance v15, Lio/realm/internal/UncheckedRow;

    iget-object v10, v14, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 208
    invoke-virtual {v14}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v4

    if-nez v1, :cond_6f

    const/4 v6, 0x1

    const/16 v16, 0x1

    goto :goto_72

    :cond_6f
    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_72
    move-wide v6, v11

    move-object v1, v10

    move/from16 v10, v16

    invoke-static/range {v2 .. v10}, Lio/realm/internal/OsObject;->nativeCreateNewObjectWithLongPrimaryKey(JJJJZ)J

    move-result-wide v2

    invoke-direct {v15, v1, v0, v2, v3}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    .line 207
    return-object v15

    .line 211
    .end local v8    # "value":J
    :cond_7e
    new-instance v1, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getAndVerifyPrimaryKeyColumnIndex(Lio/realm/internal/Table;)J
    .registers 5
    .param p0, "table"    # Lio/realm/internal/Table;

    .line 177
    invoke-virtual {p0}, Lio/realm/internal/Table;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "pkField":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 181
    invoke-virtual {p0, v0}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 179
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no primary key defined."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isObjectIdColumn(Ljava/lang/String;)Z
    .registers 2
    .param p0, "columnName"    # Ljava/lang/String;

    .line 247
    sget-object v0, Lio/realm/internal/OsObject;->OBJECT_ID_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static native nativeCreate(JJ)J
.end method

.method private static native nativeCreateNewObject(JJ)J
.end method

.method private static native nativeCreateNewObjectWithLongPrimaryKey(JJJJZ)J
.end method

.method private static native nativeCreateNewObjectWithStringPrimaryKey(JJJLjava/lang/String;)J
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeCreateRow(JJ)J
.end method

.method private static native nativeCreateRowWithLongPrimaryKey(JJJJZ)J
.end method

.method private static native nativeCreateRowWithStringPrimaryKey(JJJLjava/lang/String;)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetObjectIdColumName()Ljava/lang/String;
.end method

.method private native nativeStartListening(J)V
.end method

.method private native nativeStopListening(J)V
.end method

.method private notifyChangeListeners([Ljava/lang/String;)V
    .registers 4
    .param p1, "changedFields"    # [Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    new-instance v1, Lio/realm/internal/OsObject$Callback;

    invoke-direct {v1, p1}, Lio/realm/internal/OsObject$Callback;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/ObserverPairList;->foreach(Lio/realm/internal/ObserverPairList$Callback;)V

    .line 254
    return-void
.end method


# virtual methods
.method public addListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(TT;",
            "Lio/realm/RealmObjectChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 117
    .local p1, "observer":Lio/realm/RealmModel;, "TT;"
    .local p2, "listener":Lio/realm/RealmObjectChangeListener;, "Lio/realm/RealmObjectChangeListener<TT;>;"
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 118
    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStartListening(J)V

    .line 120
    :cond_d
    new-instance v0, Lio/realm/internal/OsObject$ObjectObserverPair;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/OsObject$ObjectObserverPair;-><init>(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    .line 121
    .local v0, "pair":Lio/realm/internal/OsObject$ObjectObserverPair;, "Lio/realm/internal/OsObject$ObjectObserverPair<TT;>;"
    iget-object v1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v1, v0}, Lio/realm/internal/ObserverPairList;->add(Lio/realm/internal/ObserverPairList$ObserverPair;)V

    .line 122
    return-void
.end method

.method public getNativeFinalizerPtr()J
    .registers 3

    .line 113
    sget-wide v0, Lio/realm/internal/OsObject;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    return-wide v0
.end method

.method public removeListener(Lio/realm/RealmModel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(TT;)V"
        }
    .end annotation

    .line 125
    .local p1, "observer":Lio/realm/RealmModel;, "TT;"
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, p1}, Lio/realm/internal/ObserverPairList;->removeByObserver(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 127
    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStopListening(J)V

    .line 129
    :cond_12
    return-void
.end method

.method public removeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(TT;",
            "Lio/realm/RealmObjectChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 132
    .local p1, "observer":Lio/realm/RealmModel;, "TT;"
    .local p2, "listener":Lio/realm/RealmObjectChangeListener;, "Lio/realm/RealmObjectChangeListener<TT;>;"
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/ObserverPairList;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 134
    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStopListening(J)V

    .line 136
    :cond_12
    return-void
.end method

.method public setObserverPairs(Lio/realm/internal/ObserverPairList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/OsObject$ObjectObserverPair;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "pairs":Lio/realm/internal/ObserverPairList;, "Lio/realm/internal/ObserverPairList<Lio/realm/internal/OsObject$ObjectObserverPair;>;"
    iget-object v0, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 145
    iput-object p1, p0, Lio/realm/internal/OsObject;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 146
    invoke-virtual {p1}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 147
    iget-wide v0, p0, Lio/realm/internal/OsObject;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObject;->nativeStartListening(J)V

    .line 149
    :cond_15
    return-void

    .line 142
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'observerPairs\' is not empty. Listeners have been added before."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.realm.internal.OsObject.Callback (io.realm.internal.OsObject$Callback)
.class Lio/realm/internal/OsObject$Callback;
.super Ljava/lang/Object;
.source "OsObject.java"

# interfaces
.implements Lio/realm/internal/ObserverPairList$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/internal/ObserverPairList$Callback<",
        "Lio/realm/internal/OsObject$ObjectObserverPair;",
        ">;"
    }
.end annotation


# instance fields
.field private final changedFields:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "changedFields"    # [Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lio/realm/internal/OsObject$Callback;->changedFields:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method private createChangeSet()Lio/realm/ObjectChangeSet;
    .registers 4

    .line 85
    iget-object v0, p0, Lio/realm/internal/OsObject$Callback;->changedFields:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 86
    .local v0, "isDeleted":Z
    :goto_8
    new-instance v2, Lio/realm/internal/OsObject$OsObjectChangeSet;

    if-eqz v0, :cond_f

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_11

    :cond_f
    iget-object v1, p0, Lio/realm/internal/OsObject$Callback;->changedFields:[Ljava/lang/String;

    :goto_11
    invoke-direct {v2, v1, v0}, Lio/realm/internal/OsObject$OsObjectChangeSet;-><init>([Ljava/lang/String;Z)V

    return-object v2
.end method


# virtual methods
.method public bridge synthetic onCalled(Lio/realm/internal/ObserverPairList$ObserverPair;Ljava/lang/Object;)V
    .registers 3

    .line 77
    check-cast p1, Lio/realm/internal/OsObject$ObjectObserverPair;

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/OsObject$Callback;->onCalled(Lio/realm/internal/OsObject$ObjectObserverPair;Ljava/lang/Object;)V

    return-void
.end method

.method public onCalled(Lio/realm/internal/OsObject$ObjectObserverPair;Ljava/lang/Object;)V
    .registers 5
    .param p1, "pair"    # Lio/realm/internal/OsObject$ObjectObserverPair;
    .param p2, "observer"    # Ljava/lang/Object;

    .line 92
    move-object v0, p2

    check-cast v0, Lio/realm/RealmModel;

    invoke-direct {p0}, Lio/realm/internal/OsObject$Callback;->createChangeSet()Lio/realm/ObjectChangeSet;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/OsObject$ObjectObserverPair;->onChange(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V

    .line 93
    return-void
.end method

###### Class io.realm.internal.OsObject.ObjectObserverPair (io.realm.internal.OsObject$ObjectObserverPair)
.class public Lio/realm/internal/OsObject$ObjectObserverPair;
.super Lio/realm/internal/ObserverPairList$ObserverPair;
.source "OsObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectObserverPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/realm/RealmModel;",
        ">",
        "Lio/realm/internal/ObserverPairList$ObserverPair<",
        "TT;",
        "Lio/realm/RealmObjectChangeListener<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/realm/RealmObjectChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lio/realm/internal/OsObject$ObjectObserverPair;, "Lio/realm/internal/OsObject$ObjectObserverPair<TT;>;"
    .local p1, "observer":Lio/realm/RealmModel;, "TT;"
    .local p2, "listener":Lio/realm/RealmObjectChangeListener;, "Lio/realm/RealmObjectChangeListener<TT;>;"
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ObserverPairList$ObserverPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V
    .registers 4
    .param p2, "changeSet"    # Lio/realm/ObjectChangeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/realm/ObjectChangeSet;",
            ")V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lio/realm/internal/OsObject$ObjectObserverPair;, "Lio/realm/internal/OsObject$ObjectObserverPair<TT;>;"
    .local p1, "observer":Lio/realm/RealmModel;, "TT;"
    iget-object v0, p0, Lio/realm/internal/OsObject$ObjectObserverPair;->listener:Ljava/lang/Object;

    check-cast v0, Lio/realm/RealmObjectChangeListener;

    invoke-interface {v0, p1, p2}, Lio/realm/RealmObjectChangeListener;->onChange(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V

    .line 74
    return-void
.end method

###### Class io.realm.internal.OsObject.OsObjectChangeSet (io.realm.internal.OsObject$OsObjectChangeSet)
.class Lio/realm/internal/OsObject$OsObjectChangeSet;
.super Ljava/lang/Object;
.source "OsObject.java"

# interfaces
.implements Lio/realm/ObjectChangeSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OsObjectChangeSet"
.end annotation


# instance fields
.field final changedFields:[Ljava/lang/String;

.field final deleted:Z


# direct methods
.method constructor <init>([Ljava/lang/String;Z)V
    .registers 3
    .param p1, "changedFields"    # [Ljava/lang/String;
    .param p2, "deleted"    # Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/realm/internal/OsObject$OsObjectChangeSet;->changedFields:[Ljava/lang/String;

    .line 42
    iput-boolean p2, p0, Lio/realm/internal/OsObject$OsObjectChangeSet;->deleted:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getChangedFields()[Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lio/realm/internal/OsObject$OsObjectChangeSet;->changedFields:[Ljava/lang/String;

    return-object v0
.end method

.method public isDeleted()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lio/realm/internal/OsObject$OsObjectChangeSet;->deleted:Z

    return v0
.end method

.method public isFieldChanged(Ljava/lang/String;)Z
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lio/realm/internal/OsObject$OsObjectChangeSet;->changedFields:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 58
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 59
    const/4 v0, 0x1

    return v0

    .line 57
    .end local v4    # "name":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 62
    :cond_14
    return v2
.end method
