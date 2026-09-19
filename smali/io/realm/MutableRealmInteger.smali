###### Class io.realm.MutableRealmInteger (io.realm.MutableRealmInteger)
.class public abstract Lio/realm/MutableRealmInteger;
.super Ljava/lang/Object;
.source "MutableRealmInteger.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lio/realm/internal/ManagableObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/MutableRealmInteger$Managed;,
        Lio/realm/MutableRealmInteger$Unmanaged;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/realm/MutableRealmInteger;",
        ">;",
        "Lio/realm/internal/ManagableObject;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ofNull()Lio/realm/MutableRealmInteger;
    .registers 2

    .line 235
    new-instance v0, Lio/realm/MutableRealmInteger$Unmanaged;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/MutableRealmInteger$Unmanaged;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method

.method public static valueOf(J)Lio/realm/MutableRealmInteger;
    .registers 3
    .param p0, "value"    # J

    .line 244
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/realm/MutableRealmInteger;->valueOf(Ljava/lang/Long;)Lio/realm/MutableRealmInteger;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Long;)Lio/realm/MutableRealmInteger;
    .registers 2
    .param p0, "value"    # Ljava/lang/Long;

    .line 228
    new-instance v0, Lio/realm/MutableRealmInteger$Unmanaged;

    invoke-direct {v0, p0}, Lio/realm/MutableRealmInteger$Unmanaged;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/MutableRealmInteger;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 253
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/realm/MutableRealmInteger;->valueOf(J)Lio/realm/MutableRealmInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final compareTo(Lio/realm/MutableRealmInteger;)I
    .registers 5
    .param p1, "o"    # Lio/realm/MutableRealmInteger;

    .line 327
    invoke-virtual {p0}, Lio/realm/MutableRealmInteger;->get()Ljava/lang/Long;

    move-result-object v0

    .line 328
    .local v0, "thisValue":Ljava/lang/Long;
    invoke-virtual {p1}, Lio/realm/MutableRealmInteger;->get()Ljava/lang/Long;

    move-result-object v1

    .line 329
    .local v1, "otherValue":Ljava/lang/Long;
    if-nez v0, :cond_10

    .line 330
    if-nez v1, :cond_e

    const/4 v2, 0x0

    goto :goto_18

    :cond_e
    const/4 v2, -0x1

    goto :goto_18

    .line 331
    :cond_10
    if-nez v1, :cond_14

    const/4 v2, 0x1

    goto :goto_18

    :cond_14
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    .line 329
    :goto_18
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 93
    check-cast p1, Lio/realm/MutableRealmInteger;

    invoke-virtual {p0, p1}, Lio/realm/MutableRealmInteger;->compareTo(Lio/realm/MutableRealmInteger;)I

    move-result p1

    return p1
.end method

.method public abstract decrement(J)V
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 353
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 354
    :cond_4
    instance-of v1, p1, Lio/realm/MutableRealmInteger;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 355
    :cond_a
    invoke-virtual {p0}, Lio/realm/MutableRealmInteger;->get()Ljava/lang/Long;

    move-result-object v1

    .line 356
    .local v1, "thisValue":Ljava/lang/Long;
    move-object v3, p1

    check-cast v3, Lio/realm/MutableRealmInteger;

    invoke-virtual {v3}, Lio/realm/MutableRealmInteger;->get()Ljava/lang/Long;

    move-result-object v3

    .line 357
    .local v3, "otherValue":Ljava/lang/Long;
    if-nez v1, :cond_1c

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    const/4 v0, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_20
    return v0
.end method

.method public abstract get()Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public final hashCode()I
    .registers 3

    .line 341
    invoke-virtual {p0}, Lio/realm/MutableRealmInteger;->get()Ljava/lang/Long;

    move-result-object v0

    .line 342
    .local v0, "thisValue":Ljava/lang/Long;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_c
    return v1
.end method

.method public abstract increment(J)V
.end method

.method public final isNull()Z
    .registers 2

    .line 315
    invoke-virtual {p0}, Lio/realm/MutableRealmInteger;->get()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final set(J)V
    .registers 4
    .param p1, "newValue"    # J

    .line 292
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/MutableRealmInteger;->set(Ljava/lang/Long;)V

    .line 293
    return-void
.end method

.method public abstract set(Ljava/lang/Long;)V
    .param p1    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

###### Class io.realm.MutableRealmInteger.Managed (io.realm.MutableRealmInteger$Managed)
.class abstract Lio/realm/MutableRealmInteger$Managed;
.super Lio/realm/MutableRealmInteger;
.source "MutableRealmInteger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/MutableRealmInteger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Managed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/realm/RealmModel;",
        ">",
        "Lio/realm/MutableRealmInteger;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 149
    .local p0, "this":Lio/realm/MutableRealmInteger$Managed;, "Lio/realm/MutableRealmInteger$Managed<TT;>;"
    invoke-direct {p0}, Lio/realm/MutableRealmInteger;-><init>()V

    return-void
.end method

.method private getRealm()Lio/realm/BaseRealm;
    .registers 2

    .line 202
    .local p0, "this":Lio/realm/MutableRealmInteger$Managed;, "Lio/realm/MutableRealmInteger$Managed<TT;>;"
    invoke-virtual {p0}, Lio/realm/MutableRealmInteger$Managed;->getProxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    return-object v0
.end method

.method private getRow()Lio/realm/internal/Row;
    .registers 2

    .line 206
    .local p0, "this":Lio/realm/MutableRealmInteger$Managed;, "Lio/realm/MutableRealmInteger$Managed<TT;>;"
    invoke-virtual {p0}, Lio/realm/MutableRealmInteger$Managed;->getProxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    return-object v0
.end method

.method private setValue(Ljava/lang/Long;Z)V
    .registers 17
    .param p1, "value"    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isDefault"    # Z

    .line 210
    .local p0, "this":Lio/realm/MutableRealmInteger$Managed;, "Lio/realm/MutableRealmInteger$Managed<TT;>;"
    invoke-direct {p0}, Lio/realm/MutableRealmInteger$Managed;->getRow()Lio/realm/internal/Row;

    move-result-object v0

    .line 211
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v9

    .line 212
    .local v9, "table":Lio/realm/internal/Table;
    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    .line 213
    .local v10, "rowIndex":J
    invoke-virtual {p0}, Lio/realm/MutableRealmInteger$Managed;->getColumnIndex()J

    move-result-wide v12

    .line 214
    .local v12, "columnIndex":J
    if-nez p1, :cond_1b

    .line 215
    move-object v1, v9

    move-wide v2, v12

    move-wide v4, v10

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    goto :goto_27

    .line 217
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v1, v9

    move-wide v2, v12

    move-wide v4, v10

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 219
    :goto_27
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 148
    .local p0, "this":Lio/realm/MutableRealmInteger$Managed;, "Lio/realm/MutableRealmInteger$Managed<TT;>;"
    check-cast p1, Lio/realm/MutableRealmInteger;

    invoke-super {p0, p1}, Lio/realm/MutableRealmInteger;->compareTo(Lio/realm/MutableRealmInteger;)I

    move-result p1

    return p1
.end method

.method public final decrement(J)V
    .registers 5
    .param p1, "dec"    # J

    .line 198
    .local p0, "this":Lio/realm/MutableRealmInteger$Managed;, "Lio/realm/MutableRealmInteger$Managed<TT;>;"
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lio/realm/MutableRealmInteger$Managed;->increment(J)V

    .line 199
    return-void
.end method

.method public final get()Ljava/lang/Long;
    .registers 6

    .line 166
    .local p0, "this":Lio/realm/MutableRealmInteger$Managed;, "Lio/realm/MutableRealmInteger$Managed<TT;>;"
    invoke-direct {p0}, Lio/realm/MutableRealmInteger$Managed;->getRow()Lio/realm/internal/Row;

    move-result-object v0

    .line 167
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->checkIfAttached()V

    .line 168
    invoke-virtual {p0}, Lio/realm/MutableRealmInteger$Managed;->getColumnIndex()J

    move-result-wide v1

    .line 169
    .local v1, "columnIndex":J
    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    goto :goto_1b

    :cond_13
    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1b
    return-object v3
.end method

.method protected abstract getColumnIndex()J
.end method

.method protected abstract getProxyState()Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ProxyState<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final increment(J)V
    .registers 11
    .param p1, "inc"    # J

    .line 191
    .local p0, "this":Lio/realm/MutableRealmInteger$Managed;, "Lio/realm/MutableRealmInteger$Managed<TT;>;"
    invoke-direct {p0}, Lio/realm/MutableRealmInteger$Managed;->getRealm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValidAndInTransaction()V

    .line 192
    invoke-direct {p0}, Lio/realm/MutableRealmInteger$Managed;->getRow()Lio/realm/internal/Row;

    move-result-object v0

    .line 193
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/MutableRealmInteger$Managed;->getColumnIndex()J

    move-result-wide v2

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    move-wide v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->incrementLong(JJJ)V

    .line 194
    return-void
.end method

.method public final isManaged()Z
    .registers 2

    .line 156
    .local p0, "this":Lio/realm/MutableRealmInteger$Managed;, "Lio/realm/MutableRealmInteger$Managed<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final isValid()Z
    .registers 2

    .line 161
    .local p0, "this":Lio/realm/MutableRealmInteger$Managed;, "Lio/realm/MutableRealmInteger$Managed<TT;>;"
    invoke-direct {p0}, Lio/realm/MutableRealmInteger$Managed;->getRealm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0}, Lio/realm/MutableRealmInteger$Managed;->getRow()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public final set(Ljava/lang/Long;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 174
    .local p0, "this":Lio/realm/MutableRealmInteger$Managed;, "Lio/realm/MutableRealmInteger$Managed<TT;>;"
    invoke-virtual {p0}, Lio/realm/MutableRealmInteger$Managed;->getProxyState()Lio/realm/ProxyState;

    move-result-object v0

    .line 175
    .local v0, "proxyState":Lio/realm/ProxyState;
    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValidAndInTransaction()V

    .line 177
    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-nez v1, :cond_16

    .line 178
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lio/realm/MutableRealmInteger$Managed;->setValue(Ljava/lang/Long;Z)V

    .line 179
    return-void

    .line 182
    :cond_16
    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 183
    return-void

    .line 186
    :cond_1d
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lio/realm/MutableRealmInteger$Managed;->setValue(Ljava/lang/Long;Z)V

    .line 187
    return-void
.end method

###### Class io.realm.MutableRealmInteger.Unmanaged (io.realm.MutableRealmInteger$Unmanaged)
.class final Lio/realm/MutableRealmInteger$Unmanaged;
.super Lio/realm/MutableRealmInteger;
.source "MutableRealmInteger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/MutableRealmInteger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Unmanaged"
.end annotation


# instance fields
.field private value:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 103
    invoke-direct {p0}, Lio/realm/MutableRealmInteger;-><init>()V

    .line 104
    iput-object p1, p0, Lio/realm/MutableRealmInteger$Unmanaged;->value:Ljava/lang/Long;

    .line 105
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 99
    check-cast p1, Lio/realm/MutableRealmInteger;

    invoke-super {p0, p1}, Lio/realm/MutableRealmInteger;->compareTo(Lio/realm/MutableRealmInteger;)I

    move-result p1

    return p1
.end method

.method public decrement(J)V
    .registers 5
    .param p1, "dec"    # J

    .line 139
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lio/realm/MutableRealmInteger$Unmanaged;->increment(J)V

    .line 140
    return-void
.end method

.method public get()Ljava/lang/Long;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 125
    iget-object v0, p0, Lio/realm/MutableRealmInteger$Unmanaged;->value:Ljava/lang/Long;

    return-object v0
.end method

.method public increment(J)V
    .registers 5
    .param p1, "inc"    # J

    .line 130
    iget-object v0, p0, Lio/realm/MutableRealmInteger$Unmanaged;->value:Ljava/lang/Long;

    if-eqz v0, :cond_12

    .line 134
    iget-object v0, p0, Lio/realm/MutableRealmInteger$Unmanaged;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/realm/MutableRealmInteger$Unmanaged;->value:Ljava/lang/Long;

    .line 135
    return-void

    .line 131
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot increment a MutableRealmInteger whose value is null. Set its value first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isManaged()Z
    .registers 2

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public set(Ljava/lang/Long;)V
    .registers 2
    .param p1, "newValue"    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    iput-object p1, p0, Lio/realm/MutableRealmInteger$Unmanaged;->value:Ljava/lang/Long;

    .line 120
    return-void
.end method
