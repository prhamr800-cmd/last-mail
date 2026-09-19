###### Class io.realm.RealmFieldType (io.realm.RealmFieldType)
.class public final enum Lio/realm/RealmFieldType;
.super Ljava/lang/Enum;
.source "RealmFieldType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/RealmFieldType;",
        ">;"
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/RealmFieldType;

.field public static final enum BINARY:Lio/realm/RealmFieldType;

.field public static final enum BINARY_LIST:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN_LIST:Lio/realm/RealmFieldType;

.field public static final enum DATE:Lio/realm/RealmFieldType;

.field public static final enum DATE_LIST:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE_LIST:Lio/realm/RealmFieldType;

.field public static final enum FLOAT:Lio/realm/RealmFieldType;

.field public static final enum FLOAT_LIST:Lio/realm/RealmFieldType;

.field public static final enum INTEGER:Lio/realm/RealmFieldType;

.field public static final enum INTEGER_LIST:Lio/realm/RealmFieldType;

.field public static final enum LINKING_OBJECTS:Lio/realm/RealmFieldType;

.field public static final enum LIST:Lio/realm/RealmFieldType;

.field public static final enum OBJECT:Lio/realm/RealmFieldType;

.field public static final enum STRING:Lio/realm/RealmFieldType;

.field public static final enum STRING_LIST:Lio/realm/RealmFieldType;

.field private static final basicTypes:[Lio/realm/RealmFieldType;

.field private static final listTypes:[Lio/realm/RealmFieldType;


# instance fields
.field private final nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 71
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    .line 72
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "BOOLEAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    .line 73
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "STRING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    .line 74
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "BINARY"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    .line 75
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "DATE"

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    .line 76
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "FLOAT"

    const/4 v8, 0x5

    const/16 v9, 0x9

    invoke-direct {v0, v1, v8, v9}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    .line 77
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "DOUBLE"

    const/4 v10, 0x6

    const/16 v11, 0xa

    invoke-direct {v0, v1, v10, v11}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    .line 78
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "OBJECT"

    const/16 v12, 0xc

    const/4 v13, 0x7

    invoke-direct {v0, v1, v13, v12}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 80
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "LIST"

    const/16 v13, 0xd

    invoke-direct {v0, v1, v7, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    .line 81
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "LINKING_OBJECTS"

    const/16 v14, 0xe

    invoke-direct {v0, v1, v9, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    .line 83
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "INTEGER_LIST"

    const/16 v15, 0x80

    invoke-direct {v0, v1, v11, v15}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    .line 84
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "BOOLEAN_LIST"

    const/16 v15, 0xb

    const/16 v11, 0x81

    invoke-direct {v0, v1, v15, v11}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    .line 85
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "STRING_LIST"

    const/16 v11, 0x82

    invoke-direct {v0, v1, v12, v11}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    .line 86
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "BINARY_LIST"

    const/16 v11, 0x84

    invoke-direct {v0, v1, v13, v11}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    .line 87
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "DATE_LIST"

    const/16 v11, 0x88

    invoke-direct {v0, v1, v14, v11}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    .line 88
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "FLOAT_LIST"

    const/16 v11, 0xf

    const/16 v15, 0x89

    invoke-direct {v0, v1, v11, v15}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    .line 89
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "DOUBLE_LIST"

    const/16 v15, 0x10

    const/16 v11, 0x8a

    invoke-direct {v0, v1, v15, v11}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    .line 68
    const/16 v0, 0x11

    new-array v0, v0, [Lio/realm/RealmFieldType;

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    aput-object v1, v0, v6

    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    aput-object v1, v0, v8

    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    aput-object v1, v0, v10

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    aput-object v1, v0, v7

    sget-object v1, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    aput-object v1, v0, v9

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    aput-object v1, v0, v12

    sget-object v1, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    aput-object v1, v0, v13

    sget-object v1, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    aput-object v1, v0, v14

    sget-object v1, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    const/16 v4, 0x10

    aput-object v1, v0, v4

    sput-object v0, Lio/realm/RealmFieldType;->$VALUES:[Lio/realm/RealmFieldType;

    .line 92
    new-array v0, v3, [Lio/realm/RealmFieldType;

    sput-object v0, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    .line 93
    new-array v0, v3, [Lio/realm/RealmFieldType;

    sput-object v0, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    .line 96
    invoke-static {}, Lio/realm/RealmFieldType;->values()[Lio/realm/RealmFieldType;

    move-result-object v0

    array-length v1, v0

    :goto_121
    if-ge v2, v1, :cond_139

    aget-object v3, v0, v2

    .line 97
    .local v3, "columnType":Lio/realm/RealmFieldType;
    iget v4, v3, Lio/realm/RealmFieldType;->nativeValue:I

    .line 98
    .local v4, "nativeValue":I
    const/16 v5, 0x80

    if-ge v4, v5, :cond_130

    .line 99
    sget-object v6, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    aput-object v3, v6, v4

    goto :goto_136

    .line 101
    :cond_130
    sget-object v6, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    add-int/lit8 v7, v4, -0x80

    aput-object v3, v6, v7

    .line 96
    .end local v3    # "columnType":Lio/realm/RealmFieldType;
    .end local v4    # "nativeValue":I
    :goto_136
    add-int/lit8 v2, v2, 0x1

    goto :goto_121

    .line 104
    :cond_139
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "nativeValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput p3, p0, Lio/realm/RealmFieldType;->nativeValue:I

    .line 110
    return-void
.end method

.method public static fromNativeValue(I)Lio/realm/RealmFieldType;
    .registers 4
    .param p0, "value"    # I

    .line 176
    if-ltz p0, :cond_e

    sget-object v0, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    array-length v0, v0

    if-ge p0, v0, :cond_e

    .line 177
    sget-object v0, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    aget-object v0, v0, p0

    .line 178
    .local v0, "e":Lio/realm/RealmFieldType;
    if-eqz v0, :cond_e

    .line 179
    return-object v0

    .line 182
    .end local v0    # "e":Lio/realm/RealmFieldType;
    :cond_e
    const/16 v0, 0x80

    if-gt v0, p0, :cond_20

    .line 183
    add-int/lit8 v0, p0, -0x80

    .line 184
    .local v0, "elementValue":I
    sget-object v1, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 185
    sget-object v1, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    aget-object v1, v1, v0

    .line 186
    .local v1, "e":Lio/realm/RealmFieldType;
    if-eqz v1, :cond_20

    .line 187
    return-object v1

    .line 191
    .end local v0    # "elementValue":I
    .end local v1    # "e":Lio/realm/RealmFieldType;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid native Realm type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/RealmFieldType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 68
    const-class v0, Lio/realm/RealmFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/RealmFieldType;

    return-object v0
.end method

.method public static values()[Lio/realm/RealmFieldType;
    .registers 1

    .line 68
    sget-object v0, Lio/realm/RealmFieldType;->$VALUES:[Lio/realm/RealmFieldType;

    invoke-virtual {v0}, [Lio/realm/RealmFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/RealmFieldType;

    return-object v0
.end method


# virtual methods
.method public getNativeValue()I
    .registers 2

    .line 118
    iget v0, p0, Lio/realm/RealmFieldType;->nativeValue:I

    return v0
.end method

.method public isValid(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 128
    iget v0, p0, Lio/realm/RealmFieldType;->nativeValue:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5e

    const/16 v1, 0x84

    if-eq v0, v1, :cond_5d

    packed-switch v0, :pswitch_data_6a

    packed-switch v0, :pswitch_data_74

    packed-switch v0, :pswitch_data_7e

    packed-switch v0, :pswitch_data_88

    packed-switch v0, :pswitch_data_92

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Realm type:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :pswitch_31
    return v3

    .line 160
    :pswitch_32
    return v3

    .line 158
    :pswitch_33
    return v3

    .line 154
    :pswitch_34
    return v3

    .line 152
    :pswitch_35
    return v3

    .line 150
    :pswitch_36
    return v3

    .line 148
    :pswitch_37
    return v3

    .line 146
    :pswitch_38
    return v3

    .line 144
    :pswitch_39
    return v3

    .line 142
    :pswitch_3a
    instance-of v0, p1, Ljava/lang/Double;

    return v0

    .line 140
    :pswitch_3d
    instance-of v0, p1, Ljava/lang/Float;

    return v0

    .line 138
    :pswitch_40
    instance-of v0, p1, Ljava/util/Date;

    return v0

    .line 134
    :pswitch_43
    instance-of v0, p1, Ljava/lang/String;

    return v0

    .line 132
    :pswitch_46
    instance-of v0, p1, Ljava/lang/Boolean;

    return v0

    .line 130
    :pswitch_49
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_5c

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_5c

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_5c

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_5a

    goto :goto_5c

    :cond_5a
    const/4 v2, 0x0

    nop

    :cond_5c
    :goto_5c
    return v2

    .line 156
    :cond_5d
    return v3

    .line 136
    :cond_5e
    instance-of v0, p1, [B

    if-nez v0, :cond_69

    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_67

    goto :goto_69

    :cond_67
    const/4 v2, 0x0

    nop

    :cond_69
    :goto_69
    return v2

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_49
        :pswitch_46
        :pswitch_43
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x8
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0xc
        :pswitch_39
        :pswitch_38
        :pswitch_37
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x80
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x88
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method
