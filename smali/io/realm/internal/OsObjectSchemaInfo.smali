###### Class io.realm.internal.OsObjectSchemaInfo (io.realm.internal.OsObjectSchemaInfo)
.class public Lio/realm/internal/OsObjectSchemaInfo;
.super Ljava/lang/Object;
.source "OsObjectSchemaInfo.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsObjectSchemaInfo$Builder;
    }
.end annotation


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 137
    invoke-static {}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsObjectSchemaInfo;->nativeFinalizerPtr:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 4
    .param p1, "nativePtr"    # J

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-wide p1, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    .line 157
    sget-object v0, Lio/realm/internal/NativeContext;->dummyContext:Lio/realm/internal/NativeContext;

    invoke-virtual {v0, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 158
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "className"    # Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeCreateRealmObjectSchema(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(J)V

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lio/realm/internal/OsObjectSchemaInfo$1;

    .line 28
    invoke-direct {p0, p1}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lio/realm/internal/OsObjectSchemaInfo;)J
    .registers 3
    .param p0, "x0"    # Lio/realm/internal/OsObjectSchemaInfo;

    .line 28
    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    return-wide v0
.end method

.method static synthetic access$200(J[J[J)V
    .registers 4
    .param p0, "x0"    # J
    .param p2, "x1"    # [J
    .param p3, "x2"    # [J

    .line 28
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/OsObjectSchemaInfo;->nativeAddProperties(J[J[J)V

    return-void
.end method

.method private static native nativeAddProperties(J[J[J)V
.end method

.method private static native nativeCreateRealmObjectSchema(Ljava/lang/String;)J
.end method

.method private static native nativeGetClassName(J)Ljava/lang/String;
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetPrimaryKeyProperty(J)J
.end method

.method private static native nativeGetProperty(JLjava/lang/String;)J
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 3

    .line 164
    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetClassName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .registers 3

    .line 195
    sget-wide v0, Lio/realm/internal/OsObjectSchemaInfo;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .registers 3

    .line 190
    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    return-wide v0
.end method

.method public getPrimaryKeyProperty()Lio/realm/internal/Property;
    .registers 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 184
    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetPrimaryKeyProperty(J)J

    move-result-wide v0

    .line 185
    .local v0, "propertyPtr":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v2, 0x0

    goto :goto_19

    :cond_e
    new-instance v2, Lio/realm/internal/Property;

    iget-wide v3, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v3, v4}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetPrimaryKeyProperty(J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lio/realm/internal/Property;-><init>(J)V

    :goto_19
    return-object v2
.end method

.method public getProperty(Ljava/lang/String;)Lio/realm/internal/Property;
    .registers 5
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 174
    new-instance v0, Lio/realm/internal/Property;

    iget-wide v1, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetProperty(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/realm/internal/Property;-><init>(J)V

    return-object v0
.end method

###### Class io.realm.internal.OsObjectSchemaInfo.AnonymousClass1 (io.realm.internal.OsObjectSchemaInfo$1)
.class synthetic Lio/realm/internal/OsObjectSchemaInfo$1;
.super Ljava/lang/Object;
.source "OsObjectSchemaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsObjectSchemaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.realm.internal.OsObjectSchemaInfo.Builder (io.realm.internal.OsObjectSchemaInfo$Builder)
.class public Lio/realm/internal/OsObjectSchemaInfo$Builder;
.super Ljava/lang/Object;
.source "OsObjectSchemaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsObjectSchemaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final computedPropertyPtrArray:[J

.field private computedPropertyPtrCurPos:I

.field private final persistedPropertyPtrArray:[J

.field private persistedPropertyPtrCurPos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "persistedPropertyCapacity"    # I
    .param p3, "computedPropertyCapacity"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrCurPos:I

    .line 35
    iput v0, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->computedPropertyPtrCurPos:I

    .line 44
    iput-object p1, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->className:Ljava/lang/String;

    .line 45
    new-array v0, p2, [J

    iput-object v0, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrArray:[J

    .line 46
    new-array v0, p3, [J

    iput-object v0, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->computedPropertyPtrArray:[J

    .line 47
    return-void
.end method


# virtual methods
.method public addComputedLinkProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceClassName"    # Ljava/lang/String;

    .line 112
    invoke-static {p1, p2, p3}, Lio/realm/internal/Property;->nativeCreateComputedLinkProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 113
    .local v0, "propertyPtr":J
    iget-object v2, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->computedPropertyPtrArray:[J

    iget v3, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->computedPropertyPtrCurPos:I

    aput-wide v0, v2, v3

    .line 114
    iget v2, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->computedPropertyPtrCurPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->computedPropertyPtrCurPos:I

    .line 115
    return-object p0
.end method

.method public addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lio/realm/RealmFieldType;
    .param p3, "linkedClassName"    # Ljava/lang/String;

    .line 94
    nop

    .line 95
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lio/realm/internal/Property;->convertFromRealmFieldType(Lio/realm/RealmFieldType;Z)I

    move-result v0

    .line 94
    invoke-static {p1, v0, p3}, Lio/realm/internal/Property;->nativeCreatePersistedLinkProperty(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    .line 96
    .local v0, "propertyPtr":J
    iget-object v2, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrArray:[J

    iget v3, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrCurPos:I

    aput-wide v0, v2, v3

    .line 97
    iget v2, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrCurPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrCurPos:I

    .line 98
    return-object p0
.end method

.method public addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lio/realm/RealmFieldType;
    .param p3, "isPrimaryKey"    # Z
    .param p4, "isIndexed"    # Z
    .param p5, "isRequired"    # Z

    .line 61
    nop

    .line 62
    invoke-static {p2, p5}, Lio/realm/internal/Property;->convertFromRealmFieldType(Lio/realm/RealmFieldType;Z)I

    move-result v0

    .line 61
    invoke-static {p1, v0, p3, p4}, Lio/realm/internal/Property;->nativeCreatePersistedProperty(Ljava/lang/String;IZZ)J

    move-result-wide v0

    .line 63
    .local v0, "propertyPtr":J
    iget-object v2, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrArray:[J

    iget v3, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrCurPos:I

    aput-wide v0, v2, v3

    .line 64
    iget v2, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrCurPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrCurPos:I

    .line 65
    return-object p0
.end method

.method public addPersistedValueListProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Z)Lio/realm/internal/OsObjectSchemaInfo$Builder;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lio/realm/RealmFieldType;
    .param p3, "isRequired"    # Z

    .line 77
    nop

    .line 78
    invoke-static {p2, p3}, Lio/realm/internal/Property;->convertFromRealmFieldType(Lio/realm/RealmFieldType;Z)I

    move-result v0

    .line 77
    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lio/realm/internal/Property;->nativeCreatePersistedProperty(Ljava/lang/String;IZZ)J

    move-result-wide v0

    .line 79
    .local v0, "propertyPtr":J
    iget-object v2, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrArray:[J

    iget v3, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrCurPos:I

    aput-wide v0, v2, v3

    .line 80
    iget v2, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrCurPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrCurPos:I

    .line 81
    return-object p0
.end method

.method public build()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 7

    .line 125
    iget v0, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrCurPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    iget v0, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->computedPropertyPtrCurPos:I

    if-eq v0, v1, :cond_21

    .line 128
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo;

    iget-object v2, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->className:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo$1;)V

    .line 129
    .local v0, "info":Lio/realm/internal/OsObjectSchemaInfo;
    invoke-static {v0}, Lio/realm/internal/OsObjectSchemaInfo;->access$100(Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v2

    iget-object v4, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrArray:[J

    iget-object v5, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->computedPropertyPtrArray:[J

    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/OsObjectSchemaInfo;->access$200(J[J[J)V

    .line 130
    iput v1, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->persistedPropertyPtrCurPos:I

    .line 131
    iput v1, p0, Lio/realm/internal/OsObjectSchemaInfo$Builder;->computedPropertyPtrCurPos:I

    .line 132
    return-object v0

    .line 126
    .end local v0    # "info":Lio/realm/internal/OsObjectSchemaInfo;
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'OsObjectSchemaInfo.build()\' has been called before on this object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
