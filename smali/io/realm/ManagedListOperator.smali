###### Class io.realm.ManagedListOperator (io.realm.ManagedListOperator)
.class abstract Lio/realm/ManagedListOperator;
.super Ljava/lang/Object;
.source "RealmList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final INVALID_OBJECT_TYPE_MESSAGE:Ljava/lang/String; = "Unacceptable value type. Acceptable: %1$s, actual: %2$s ."

.field static final NULL_OBJECTS_NOT_ALLOWED_MESSAGE:Ljava/lang/String; = "RealmList does not accept null values."


# instance fields
.field final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final osList:Lio/realm/internal/OsList;

.field final realm:Lio/realm/BaseRealm;


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .registers 4
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "osList"    # Lio/realm/internal/OsList;
    .param p3    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1279
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1280
    iput-object p1, p0, Lio/realm/ManagedListOperator;->realm:Lio/realm/BaseRealm;

    .line 1281
    iput-object p3, p0, Lio/realm/ManagedListOperator;->clazz:Ljava/lang/Class;

    .line 1282
    iput-object p2, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    .line 1283
    return-void
.end method

.method private appendNull()V
    .registers 2

    .line 1320
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    .line 1321
    return-void
.end method


# virtual methods
.method public final append(Ljava/lang/Object;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1310
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->checkValidValue(Ljava/lang/Object;)V

    .line 1312
    if-nez p1, :cond_9

    .line 1313
    invoke-direct {p0}, Lio/realm/ManagedListOperator;->appendNull()V

    goto :goto_c

    .line 1315
    :cond_9
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->appendValue(Ljava/lang/Object;)V

    .line 1317
    :goto_c
    return-void
.end method

.method protected abstract appendValue(Ljava/lang/Object;)V
.end method

.method protected abstract checkValidValue(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method final delete(I)V
    .registers 5
    .param p1, "index"    # I

    .line 1375
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->delete(J)V

    .line 1376
    return-void
.end method

.method final deleteAll()V
    .registers 2

    .line 1383
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->deleteAll()V

    .line 1384
    return-void
.end method

.method final deleteLast()V
    .registers 6

    .line 1379
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    iget-object v1, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v1}, Lio/realm/internal/OsList;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->delete(J)V

    .line 1380
    return-void
.end method

.method public abstract forRealmModel()Z
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public final getOsList()Lio/realm/internal/OsList;
    .registers 2

    .line 1288
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    return-object v0
.end method

.method public final insert(ILjava/lang/Object;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1326
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    invoke-virtual {p0, p2}, Lio/realm/ManagedListOperator;->checkValidValue(Ljava/lang/Object;)V

    .line 1328
    if-nez p2, :cond_9

    .line 1329
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->insertNull(I)V

    goto :goto_c

    .line 1331
    :cond_9
    invoke-virtual {p0, p1, p2}, Lio/realm/ManagedListOperator;->insertValue(ILjava/lang/Object;)V

    .line 1334
    :goto_c
    return-void
.end method

.method protected insertNull(I)V
    .registers 5
    .param p1, "index"    # I

    .line 1337
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->insertNull(J)V

    .line 1338
    return-void
.end method

.method protected abstract insertValue(ILjava/lang/Object;)V
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1301
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .registers 2

    .line 1292
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->isValid()Z

    move-result v0

    return v0
.end method

.method final move(II)V
    .registers 8
    .param p1, "oldPos"    # I
    .param p2, "newPos"    # I

    .line 1363
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    int-to-long v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/realm/internal/OsList;->move(JJ)V

    .line 1364
    return-void
.end method

.method final remove(I)V
    .registers 5
    .param p1, "index"    # I

    .line 1367
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->remove(J)V

    .line 1368
    return-void
.end method

.method final removeAll()V
    .registers 2

    .line 1371
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    .line 1372
    return-void
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1344
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    invoke-virtual {p0, p2}, Lio/realm/ManagedListOperator;->checkValidValue(Ljava/lang/Object;)V

    .line 1347
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1348
    .local v0, "oldObject":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_d

    .line 1349
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->setNull(I)V

    goto :goto_10

    .line 1351
    :cond_d
    invoke-virtual {p0, p1, p2}, Lio/realm/ManagedListOperator;->setValue(ILjava/lang/Object;)V

    .line 1353
    :goto_10
    return-object v0
.end method

.method protected setNull(I)V
    .registers 5
    .param p1, "index"    # I

    .line 1357
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->setNull(J)V

    .line 1358
    return-void
.end method

.method protected abstract setValue(ILjava/lang/Object;)V
.end method

.method public final size()I
    .registers 6

    .line 1296
    .local p0, "this":Lio/realm/ManagedListOperator;, "Lio/realm/ManagedListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v0

    .line 1297
    .local v0, "actualSize":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_f

    long-to-int v2, v0

    goto :goto_12

    :cond_f
    const v2, 0x7fffffff

    :goto_12
    return v2
.end method
