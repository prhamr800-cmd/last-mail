###### Class io.realm.permissions.UserCondition (io.realm.permissions.UserCondition)
.class public final Lio/realm/permissions/UserCondition;
.super Ljava/lang/Object;
.source "UserCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/permissions/UserCondition$MatcherType;
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final type:Lio/realm/permissions/UserCondition$MatcherType;

.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/realm/permissions/UserCondition$MatcherType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Lio/realm/permissions/UserCondition$MatcherType;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lio/realm/permissions/UserCondition;->type:Lio/realm/permissions/UserCondition$MatcherType;

    .line 94
    iput-object p2, p0, Lio/realm/permissions/UserCondition;->key:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lio/realm/permissions/UserCondition;->value:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static keyValue(Ljava/lang/String;Ljava/lang/String;)Lio/realm/permissions/UserCondition;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 86
    if-eqz p1, :cond_10

    .line 89
    new-instance v0, Lio/realm/permissions/UserCondition;

    sget-object v1, Lio/realm/permissions/UserCondition$MatcherType;->METADATA:Lio/realm/permissions/UserCondition$MatcherType;

    invoke-direct {v0, v1, p0, p1}, Lio/realm/permissions/UserCondition;-><init>(Lio/realm/permissions/UserCondition$MatcherType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 87
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'value\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty \'key\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static noExistingPermissions()Lio/realm/permissions/UserCondition;
    .registers 1

    .line 72
    const-string v0, "*"

    invoke-static {v0}, Lio/realm/permissions/UserCondition;->userId(Ljava/lang/String;)Lio/realm/permissions/UserCondition;

    move-result-object v0

    return-object v0
.end method

.method public static userId(Ljava/lang/String;)Lio/realm/permissions/UserCondition;
    .registers 4
    .param p0, "userId"    # Ljava/lang/String;

    .line 57
    invoke-static {p0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 60
    new-instance v0, Lio/realm/permissions/UserCondition;

    sget-object v1, Lio/realm/permissions/UserCondition$MatcherType;->USER_ID:Lio/realm/permissions/UserCondition$MatcherType;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p0}, Lio/realm/permissions/UserCondition;-><init>(Lio/realm/permissions/UserCondition$MatcherType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 58
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty \'userId\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static username(Ljava/lang/String;)Lio/realm/permissions/UserCondition;
    .registers 4
    .param p0, "username"    # Ljava/lang/String;

    .line 44
    invoke-static {p0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 47
    new-instance v0, Lio/realm/permissions/UserCondition;

    sget-object v1, Lio/realm/permissions/UserCondition$MatcherType;->METADATA:Lio/realm/permissions/UserCondition$MatcherType;

    const-string v2, "email"

    invoke-direct {v0, v1, v2, p0}, Lio/realm/permissions/UserCondition;-><init>(Lio/realm/permissions/UserCondition$MatcherType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 45
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty \'username\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 136
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 137
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_29

    .line 139
    :cond_12
    move-object v1, p1

    check-cast v1, Lio/realm/permissions/UserCondition;

    .line 141
    .local v1, "that":Lio/realm/permissions/UserCondition;
    iget-object v2, p0, Lio/realm/permissions/UserCondition;->key:Ljava/lang/String;

    iget-object v3, v1, Lio/realm/permissions/UserCondition;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v0

    .line 142
    :cond_20
    iget-object v0, p0, Lio/realm/permissions/UserCondition;->value:Ljava/lang/String;

    iget-object v2, v1, Lio/realm/permissions/UserCondition;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 137
    .end local v1    # "that":Lio/realm/permissions/UserCondition;
    :cond_29
    :goto_29
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lio/realm/permissions/UserCondition;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lio/realm/permissions/UserCondition$MatcherType;
    .registers 2

    .line 123
    iget-object v0, p0, Lio/realm/permissions/UserCondition;->type:Lio/realm/permissions/UserCondition$MatcherType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lio/realm/permissions/UserCondition;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 148
    iget-object v0, p0, Lio/realm/permissions/UserCondition;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 149
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/realm/permissions/UserCondition;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 150
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserCondition{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/permissions/UserCondition;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", value=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/realm/permissions/UserCondition;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.permissions.UserCondition.MatcherType (io.realm.permissions.UserCondition$MatcherType)
.class public final enum Lio/realm/permissions/UserCondition$MatcherType;
.super Ljava/lang/Enum;
.source "UserCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/permissions/UserCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatcherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/permissions/UserCondition$MatcherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/permissions/UserCondition$MatcherType;

.field public static final enum METADATA:Lio/realm/permissions/UserCondition$MatcherType;

.field public static final enum USER_ID:Lio/realm/permissions/UserCondition$MatcherType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 130
    new-instance v0, Lio/realm/permissions/UserCondition$MatcherType;

    const-string v1, "USER_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/permissions/UserCondition$MatcherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/permissions/UserCondition$MatcherType;->USER_ID:Lio/realm/permissions/UserCondition$MatcherType;

    .line 131
    new-instance v0, Lio/realm/permissions/UserCondition$MatcherType;

    const-string v1, "METADATA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/realm/permissions/UserCondition$MatcherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/permissions/UserCondition$MatcherType;->METADATA:Lio/realm/permissions/UserCondition$MatcherType;

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Lio/realm/permissions/UserCondition$MatcherType;

    sget-object v1, Lio/realm/permissions/UserCondition$MatcherType;->USER_ID:Lio/realm/permissions/UserCondition$MatcherType;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/permissions/UserCondition$MatcherType;->METADATA:Lio/realm/permissions/UserCondition$MatcherType;

    aput-object v1, v0, v3

    sput-object v0, Lio/realm/permissions/UserCondition$MatcherType;->$VALUES:[Lio/realm/permissions/UserCondition$MatcherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/permissions/UserCondition$MatcherType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 129
    const-class v0, Lio/realm/permissions/UserCondition$MatcherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/permissions/UserCondition$MatcherType;

    return-object v0
.end method

.method public static values()[Lio/realm/permissions/UserCondition$MatcherType;
    .registers 1

    .line 129
    sget-object v0, Lio/realm/permissions/UserCondition$MatcherType;->$VALUES:[Lio/realm/permissions/UserCondition$MatcherType;

    invoke-virtual {v0}, [Lio/realm/permissions/UserCondition$MatcherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/permissions/UserCondition$MatcherType;

    return-object v0
.end method
