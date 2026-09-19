###### Class io.realm.internal.objectserver.Token (io.realm.internal.objectserver.Token)
.class public Lio/realm/internal/objectserver/Token;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/objectserver/Token$Permission;
    }
.end annotation


# static fields
.field private static final KEY_ACCESS:Ljava/lang/String; = "access"

.field private static final KEY_EXPIRES:Ljava/lang/String; = "expires"

.field private static final KEY_IDENTITY:Ljava/lang/String; = "identity"

.field private static final KEY_IS_ADMIN:Ljava/lang/String; = "is_admin"

.field private static final KEY_PATH:Ljava/lang/String; = "path"

.field private static final KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final KEY_TOKEN_DATA:Ljava/lang/String; = "token_data"


# instance fields
.field private final expiresSec:J

.field private final identity:Ljava/lang/String;

.field private final isAdmin:Z

.field private final path:Ljava/lang/String;

.field private final permissions:[Lio/realm/internal/objectserver/Token$Permission;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Lio/realm/internal/objectserver/Token$Permission;)V
    .registers 15
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "expiresSec"    # J
    .param p6, "permissions"    # [Lio/realm/internal/objectserver/Token$Permission;

    .line 74
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lio/realm/internal/objectserver/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Lio/realm/internal/objectserver/Token$Permission;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Lio/realm/internal/objectserver/Token$Permission;Z)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "expiresSec"    # J
    .param p6, "permissions"    # [Lio/realm/internal/objectserver/Token$Permission;
    .param p7, "isAdmin"    # Z

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lio/realm/internal/objectserver/Token;->value:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lio/realm/internal/objectserver/Token;->identity:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    .line 81
    iput-wide p4, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    .line 82
    if-eqz p6, :cond_17

    .line 83
    array-length v0, p6

    invoke-static {p6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/objectserver/Token$Permission;

    iput-object v0, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    goto :goto_1c

    .line 85
    :cond_17
    const/4 v0, 0x0

    new-array v0, v0, [Lio/realm/internal/objectserver/Token$Permission;

    iput-object v0, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    .line 87
    :goto_1c
    iput-boolean p7, p0, Lio/realm/internal/objectserver/Token;->isAdmin:Z

    .line 88
    return-void
.end method

.method public static from(Lorg/json/JSONObject;)Lio/realm/internal/objectserver/Token;
    .registers 19
    .param p0, "token"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 49
    move-object/from16 v1, p0

    const-string/jumbo v0, "token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 50
    .local v10, "value":Ljava/lang/String;
    const-string/jumbo v0, "token_data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 51
    .local v11, "tokenData":Lorg/json/JSONObject;
    const-string v0, "identity"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 52
    .local v12, "identity":Ljava/lang/String;
    const-string v0, "path"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 53
    .local v13, "path":Ljava/lang/String;
    const-string v0, "expires"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 55
    .local v14, "expiresSec":J
    const-string v0, "access"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 56
    .local v9, "access":Lorg/json/JSONArray;
    const/4 v0, 0x0

    if-eqz v9, :cond_4e

    .line 57
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lio/realm/internal/objectserver/Token$Permission;

    .line 58
    .local v2, "permissions":[Lio/realm/internal/objectserver/Token$Permission;
    nop

    .local v0, "i":I
    :goto_32
    move v3, v0

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_4c

    .line 60
    :try_start_39
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/objectserver/Token$Permission;->valueOf(Ljava/lang/String;)Lio/realm/internal/objectserver/Token$Permission;

    move-result-object v0

    aput-object v0, v2, v3
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_43} :catch_44

    .line 63
    goto :goto_49

    .line 61
    :catch_44
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lio/realm/internal/objectserver/Token$Permission;->UNKNOWN:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v4, v2, v3

    .line 58
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_49
    add-int/lit8 v0, v3, 0x1

    goto :goto_32

    .line 66
    .end local v3    # "i":I
    :cond_4c
    move-object v8, v2

    goto :goto_51

    .end local v2    # "permissions":[Lio/realm/internal/objectserver/Token$Permission;
    :cond_4e
    new-array v0, v0, [Lio/realm/internal/objectserver/Token$Permission;

    move-object v8, v0

    .line 68
    .local v8, "permissions":[Lio/realm/internal/objectserver/Token$Permission;
    :goto_51
    const-string v0, "is_admin"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 70
    .local v0, "isAdmin":Z
    new-instance v16, Lio/realm/internal/objectserver/Token;

    move-object/from16 v2, v16

    move-object v3, v10

    move-object v4, v12

    move-object v5, v13

    move-wide v6, v14

    move-object/from16 v17, v9

    .end local v9    # "access":Lorg/json/JSONArray;
    .local v17, "access":Lorg/json/JSONArray;
    move v9, v0

    invoke-direct/range {v2 .. v9}, Lio/realm/internal/objectserver/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Lio/realm/internal/objectserver/Token$Permission;Z)V

    return-object v16
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 148
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5a

    .line 150
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/internal/objectserver/Token;

    .line 152
    .local v2, "token":Lio/realm/internal/objectserver/Token;
    iget-wide v3, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    iget-wide v5, v2, Lio/realm/internal/objectserver/Token;->expiresSec:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1e

    return v1

    .line 153
    :cond_1e
    iget-boolean v3, p0, Lio/realm/internal/objectserver/Token;->isAdmin:Z

    iget-boolean v4, v2, Lio/realm/internal/objectserver/Token;->isAdmin:Z

    if-eq v3, v4, :cond_25

    return v1

    .line 154
    :cond_25
    iget-object v3, p0, Lio/realm/internal/objectserver/Token;->value:Ljava/lang/String;

    iget-object v4, v2, Lio/realm/internal/objectserver/Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    return v1

    .line 155
    :cond_30
    iget-object v3, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    iget-object v4, v2, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    return v1

    .line 156
    :cond_3b
    iget-object v3, p0, Lio/realm/internal/objectserver/Token;->identity:Ljava/lang/String;

    iget-object v4, v2, Lio/realm/internal/objectserver/Token;->identity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    return v1

    .line 157
    :cond_46
    iget-object v3, p0, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    if-eqz v3, :cond_53

    iget-object v0, p0, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    iget-object v1, v2, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_59

    :cond_53
    iget-object v3, v2, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    if-nez v3, :cond_58

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    :goto_59
    return v0

    .line 148
    .end local v2    # "token":Lio/realm/internal/objectserver/Token;
    :cond_5a
    :goto_5a
    return v1
.end method

.method public expiresMs()J
    .registers 6

    .line 111
    iget-wide v0, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 112
    .local v0, "expiresMs":J
    iget-wide v2, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    .line 113
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2

    .line 115
    :cond_12
    return-wide v0
.end method

.method public expiresSec()J
    .registers 3

    .line 104
    iget-wide v0, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .line 162
    iget-object v0, p0, Lio/realm/internal/objectserver/Token;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 163
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    iget-wide v4, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 164
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 165
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/realm/internal/objectserver/Token;->identity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 166
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    add-int/2addr v0, v2

    .line 167
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lio/realm/internal/objectserver/Token;->isAdmin:Z

    add-int/2addr v1, v2

    .line 168
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public identity()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lio/realm/internal/objectserver/Token;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public isAdmin()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Lio/realm/internal/objectserver/Token;->isAdmin:Z

    return v0
.end method

.method public path()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    return-object v0
.end method

.method public permissions()[Lio/realm/internal/objectserver/Token$Permission;
    .registers 3
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "MS_MUTABLE_ARRAY"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    iget-object v1, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/objectserver/Token$Permission;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 7

    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "token"

    iget-object v2, p0, Lio/realm/internal/objectserver/Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v1, "tokenData":Lorg/json/JSONObject;
    const-string v2, "identity"

    iget-object v3, p0, Lio/realm/internal/objectserver/Token;->identity:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v2, "path"

    iget-object v3, p0, Lio/realm/internal/objectserver/Token;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v2, "expires"

    iget-wide v3, p0, Lio/realm/internal/objectserver/Token;->expiresSec:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 132
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 133
    .local v2, "perms":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2d
    iget-object v4, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    array-length v4, v4

    if-ge v3, v4, :cond_46

    .line 134
    iget-object v4, p0, Lio/realm/internal/objectserver/Token;->permissions:[Lio/realm/internal/objectserver/Token$Permission;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lio/realm/internal/objectserver/Token$Permission;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 136
    .end local v3    # "i":I
    :cond_46
    const-string v3, "access"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v3, "is_admin"

    iget-boolean v4, p0, Lio/realm/internal/objectserver/Token;->isAdmin:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 138
    const-string/jumbo v3, "token_data"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_58} :catch_59

    .line 139
    return-object v0

    .line 140
    .end local v1    # "tokenData":Lorg/json/JSONObject;
    .end local v2    # "perms":Lorg/json/JSONArray;
    :catch_59
    move-exception v1

    .line 141
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not convert Token to JSON."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public value()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lio/realm/internal/objectserver/Token;->value:Ljava/lang/String;

    return-object v0
.end method

###### Class io.realm.internal.objectserver.Token.Permission (io.realm.internal.objectserver.Token$Permission)
.class public final enum Lio/realm/internal/objectserver/Token$Permission;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/objectserver/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Permission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/objectserver/Token$Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/objectserver/Token$Permission;

.field public static final ALL:[Lio/realm/internal/objectserver/Token$Permission;

.field public static final enum DOWNLOAD:Lio/realm/internal/objectserver/Token$Permission;

.field public static final enum MANAGE:Lio/realm/internal/objectserver/Token$Permission;

.field public static final enum REFRESH:Lio/realm/internal/objectserver/Token$Permission;

.field public static final enum UNKNOWN:Lio/realm/internal/objectserver/Token$Permission;

.field public static final enum UPLOAD:Lio/realm/internal/objectserver/Token$Permission;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 172
    new-instance v0, Lio/realm/internal/objectserver/Token$Permission;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/internal/objectserver/Token$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->UNKNOWN:Lio/realm/internal/objectserver/Token$Permission;

    .line 173
    new-instance v0, Lio/realm/internal/objectserver/Token$Permission;

    const-string v1, "UPLOAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/realm/internal/objectserver/Token$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->UPLOAD:Lio/realm/internal/objectserver/Token$Permission;

    .line 174
    new-instance v0, Lio/realm/internal/objectserver/Token$Permission;

    const-string v1, "DOWNLOAD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/realm/internal/objectserver/Token$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->DOWNLOAD:Lio/realm/internal/objectserver/Token$Permission;

    .line 175
    new-instance v0, Lio/realm/internal/objectserver/Token$Permission;

    const-string v1, "REFRESH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/realm/internal/objectserver/Token$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->REFRESH:Lio/realm/internal/objectserver/Token$Permission;

    .line 176
    new-instance v0, Lio/realm/internal/objectserver/Token$Permission;

    const-string v1, "MANAGE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lio/realm/internal/objectserver/Token$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->MANAGE:Lio/realm/internal/objectserver/Token$Permission;

    .line 171
    const/4 v0, 0x5

    new-array v0, v0, [Lio/realm/internal/objectserver/Token$Permission;

    sget-object v1, Lio/realm/internal/objectserver/Token$Permission;->UNKNOWN:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/objectserver/Token$Permission;->UPLOAD:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/internal/objectserver/Token$Permission;->DOWNLOAD:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/internal/objectserver/Token$Permission;->REFRESH:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/internal/objectserver/Token$Permission;->MANAGE:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v1, v0, v6

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->$VALUES:[Lio/realm/internal/objectserver/Token$Permission;

    .line 178
    new-array v0, v6, [Lio/realm/internal/objectserver/Token$Permission;

    sget-object v1, Lio/realm/internal/objectserver/Token$Permission;->UPLOAD:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/objectserver/Token$Permission;->DOWNLOAD:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/internal/objectserver/Token$Permission;->REFRESH:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/internal/objectserver/Token$Permission;->MANAGE:Lio/realm/internal/objectserver/Token$Permission;

    aput-object v1, v0, v5

    sput-object v0, Lio/realm/internal/objectserver/Token$Permission;->ALL:[Lio/realm/internal/objectserver/Token$Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/objectserver/Token$Permission;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 171
    const-class v0, Lio/realm/internal/objectserver/Token$Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/internal/objectserver/Token$Permission;

    return-object v0
.end method

.method public static values()[Lio/realm/internal/objectserver/Token$Permission;
    .registers 1

    .line 171
    sget-object v0, Lio/realm/internal/objectserver/Token$Permission;->$VALUES:[Lio/realm/internal/objectserver/Token$Permission;

    invoke-virtual {v0}, [Lio/realm/internal/objectserver/Token$Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/objectserver/Token$Permission;

    return-object v0
.end method
