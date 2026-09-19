###### Class io.realm.DateListOperator (io.realm.DateListOperator)
.class final Lio/realm/DateListOperator;
.super Lio/realm/ManagedListOperator;
.source "RealmList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/ManagedListOperator<",
        "Ljava/util/Date;",
        ">;"
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
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 1840
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/Date;>;"
    invoke-direct {p0, p1, p2, p3}, Lio/realm/ManagedListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 1841
    return-void
.end method


# virtual methods
.method public appendValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 1870
    iget-object v0, p0, Lio/realm/DateListOperator;->osList:Lio/realm/internal/OsList;

    move-object v1, p1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Lio/realm/internal/OsList;->addDate(Ljava/util/Date;)V

    .line 1871
    return-void
.end method

.method protected checkValidValue(Ljava/lang/Object;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1856
    if-nez p1, :cond_3

    .line 1858
    return-void

    .line 1860
    :cond_3
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_8

    .line 1866
    return-void

    .line 1861
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "java.util.Date"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1864
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1862
    const-string v3, "Unacceptable value type. Acceptable: %1$s, actual: %2$s ."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forRealmModel()Z
    .registers 2

    .line 1845
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1837
    invoke-virtual {p0, p1}, Lio/realm/DateListOperator;->get(I)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Date;
    .registers 5
    .param p1, "index"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1851
    iget-object v0, p0, Lio/realm/DateListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->getValue(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public insertValue(ILjava/lang/Object;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 1875
    iget-object v0, p0, Lio/realm/DateListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    move-object v3, p2

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsList;->insertDate(JLjava/util/Date;)V

    .line 1876
    return-void
.end method

.method protected setValue(ILjava/lang/Object;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 1880
    iget-object v0, p0, Lio/realm/DateListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    move-object v3, p2

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsList;->setDate(JLjava/util/Date;)V

    .line 1881
    return-void
.end method
