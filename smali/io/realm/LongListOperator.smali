###### Class io.realm.LongListOperator (io.realm.LongListOperator)
.class final Lio/realm/LongListOperator;
.super Lio/realm/ManagedListOperator;
.source "RealmList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/ManagedListOperator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .registers 4
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "osList"    # Lio/realm/internal/OsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1569
    .local p0, "this":Lio/realm/LongListOperator;, "Lio/realm/LongListOperator<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lio/realm/ManagedListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 1570
    return-void
.end method


# virtual methods
.method public appendValue(Ljava/lang/Object;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 1620
    .local p0, "this":Lio/realm/LongListOperator;, "Lio/realm/LongListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/LongListOperator;->osList:Lio/realm/internal/OsList;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->addLong(J)V

    .line 1621
    return-void
.end method

.method protected checkValidValue(Ljava/lang/Object;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1606
    .local p0, "this":Lio/realm/LongListOperator;, "Lio/realm/LongListOperator<TT;>;"
    if-nez p1, :cond_3

    .line 1608
    return-void

    .line 1610
    :cond_3
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_8

    .line 1616
    return-void

    .line 1611
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "java.lang.Long, java.lang.Integer, java.lang.Short, java.lang.Byte"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1614
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1612
    const-string v3, "Unacceptable value type. Acceptable: %1$s, actual: %2$s ."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forRealmModel()Z
    .registers 2

    .line 1574
    .local p0, "this":Lio/realm/LongListOperator;, "Lio/realm/LongListOperator<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1580
    .local p0, "this":Lio/realm/LongListOperator;, "Lio/realm/LongListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/LongListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->getValue(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1581
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_d

    .line 1582
    const/4 v1, 0x0

    return-object v1

    .line 1584
    :cond_d
    iget-object v1, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_14

    .line 1586
    return-object v0

    .line 1588
    :cond_14
    iget-object v1, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_29

    .line 1590
    iget-object v1, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1592
    :cond_29
    iget-object v1, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    if-ne v1, v2, :cond_3e

    .line 1594
    iget-object v1, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Long;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1596
    :cond_3e
    iget-object v1, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    if-ne v1, v2, :cond_53

    .line 1598
    iget-object v1, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Long;->byteValue()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1601
    :cond_53
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected element type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public insertValue(ILjava/lang/Object;)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 1625
    .local p0, "this":Lio/realm/LongListOperator;, "Lio/realm/LongListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/LongListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    move-object v3, p2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/realm/internal/OsList;->insertLong(JJ)V

    .line 1626
    return-void
.end method

.method protected setValue(ILjava/lang/Object;)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 1630
    .local p0, "this":Lio/realm/LongListOperator;, "Lio/realm/LongListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/LongListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    move-object v3, p2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/realm/internal/OsList;->setLong(JJ)V

    .line 1631
    return-void
.end method
