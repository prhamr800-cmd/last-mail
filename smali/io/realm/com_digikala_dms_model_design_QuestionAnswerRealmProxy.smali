###### Class io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxy (io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxy)
.class public Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;
.super Lcom/digikala/dms/model/design/QuestionAnswer;
.source "com_digikala_dms_model_design_QuestionAnswerRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private AnswersRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/Answer;",
            ">;"
        }
    .end annotation
.end field

.field private columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/design/QuestionAnswer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    invoke-static {}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Lcom/digikala/dms/model/design/QuestionAnswer;-><init>()V

    .line 74
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 75
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/design/QuestionAnswer;ZLjava/util/Map;)Lcom/digikala/dms/model/design/QuestionAnswer;
    .registers 15
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/design/QuestionAnswer;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/QuestionAnswer;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/design/QuestionAnswer;"
        }
    .end annotation

    .line 311
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 312
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 313
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    return-object v1

    .line 317
    :cond_c
    const-class v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    .line 318
    .local v1, "realmObject":Lcom/digikala/dms/model/design/QuestionAnswer;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    .line 321
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    .line 324
    .local v4, "realmObjectCopy":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$question()Lcom/digikala/dms/model/design/Question;

    move-result-object v5

    .line 325
    .local v5, "questionObj":Lcom/digikala/dms/model/design/Question;
    if-nez v5, :cond_30

    .line 326
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmSet$question(Lcom/digikala/dms/model/design/Question;)V

    goto :goto_43

    .line 328
    :cond_30
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/design/Question;

    .line 329
    .local v6, "cachequestion":Lcom/digikala/dms/model/design/Question;
    if-eqz v6, :cond_3c

    .line 330
    invoke-interface {v4, v6}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmSet$question(Lcom/digikala/dms/model/design/Question;)V

    goto :goto_43

    .line 332
    :cond_3c
    invoke-static {p0, v5, p2, p3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;ZLjava/util/Map;)Lcom/digikala/dms/model/design/Question;

    move-result-object v7

    invoke-interface {v4, v7}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmSet$question(Lcom/digikala/dms/model/design/Question;)V

    .line 336
    .end local v6    # "cachequestion":Lcom/digikala/dms/model/design/Question;
    :goto_43
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$Answers()Lio/realm/RealmList;

    move-result-object v6

    .line 337
    .local v6, "AnswersList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    if-eqz v6, :cond_73

    .line 338
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$Answers()Lio/realm/RealmList;

    move-result-object v7

    .line 339
    .local v7, "AnswersRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    invoke-virtual {v7}, Lio/realm/RealmList;->clear()V

    .line 340
    nop

    .local v3, "i":I
    :goto_51
    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v8

    if-ge v3, v8, :cond_73

    .line 341
    invoke-virtual {v6, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/design/Answer;

    .line 342
    .local v8, "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    invoke-interface {p3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/design/Answer;

    .line 343
    .local v9, "cacheAnswers":Lcom/digikala/dms/model/design/Answer;
    if-eqz v9, :cond_69

    .line 344
    invoke-virtual {v7, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 346
    :cond_69
    invoke-static {p0, v8, p2, p3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;ZLjava/util/Map;)Lcom/digikala/dms/model/design/Answer;

    move-result-object v10

    invoke-virtual {v7, v10}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 340
    .end local v8    # "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    .end local v9    # "cacheAnswers":Lcom/digikala/dms/model/design/Answer;
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 351
    .end local v3    # "i":I
    .end local v7    # "AnswersRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    :cond_73
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/QuestionAnswer;ZLjava/util/Map;)Lcom/digikala/dms/model/design/QuestionAnswer;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/QuestionAnswer;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/QuestionAnswer;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/design/QuestionAnswer;"
        }
    .end annotation

    .line 292
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 293
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 294
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 297
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 298
    return-object p1

    .line 295
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 302
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 303
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 304
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/design/QuestionAnswer;

    return-object v2

    .line 307
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/design/QuestionAnswer;ZLjava/util/Map;)Lcom/digikala/dms/model/design/QuestionAnswer;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 205
    new-instance v0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/design/QuestionAnswer;IILjava/util/Map;)Lcom/digikala/dms/model/design/QuestionAnswer;
    .registers 14
    .param p0, "realmObject"    # Lcom/digikala/dms/model/design/QuestionAnswer;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/design/QuestionAnswer;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/design/QuestionAnswer;"
        }
    .end annotation

    .line 535
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    const/4 v0, 0x0

    if-gt p1, p2, :cond_6a

    if-nez p0, :cond_6

    goto :goto_6a

    .line 538
    :cond_6
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 540
    .local v1, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v1, :cond_1c

    .line 541
    new-instance v2, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-direct {v2}, Lcom/digikala/dms/model/design/QuestionAnswer;-><init>()V

    .line 542
    .local v2, "unmanagedObject":Lcom/digikala/dms/model/design/QuestionAnswer;
    new-instance v3, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v3, p1, v2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 545
    .end local v2    # "unmanagedObject":Lcom/digikala/dms/model/design/QuestionAnswer;
    :cond_1c
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_25

    .line 546
    iget-object v0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v0, Lcom/digikala/dms/model/design/QuestionAnswer;

    return-object v0

    .line 548
    :cond_25
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lcom/digikala/dms/model/design/QuestionAnswer;

    .line 549
    .restart local v2    # "unmanagedObject":Lcom/digikala/dms/model/design/QuestionAnswer;
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 551
    :goto_2b
    move-object v3, v2

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    .line 552
    .local v3, "unmanagedCopy":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;
    move-object v4, p0

    check-cast v4, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    .line 555
    .local v4, "realmSource":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$question()Lcom/digikala/dms/model/design/Question;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6, p2, p3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/design/Question;IILjava/util/Map;)Lcom/digikala/dms/model/design/Question;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmSet$question(Lcom/digikala/dms/model/design/Question;)V

    .line 558
    if-ne p1, p2, :cond_44

    .line 559
    invoke-interface {v3, v0}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmSet$Answers(Lio/realm/RealmList;)V

    goto :goto_69

    .line 561
    :cond_44
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$Answers()Lio/realm/RealmList;

    move-result-object v0

    .line 562
    .local v0, "managedAnswersList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    new-instance v5, Lio/realm/RealmList;

    invoke-direct {v5}, Lio/realm/RealmList;-><init>()V

    .line 563
    .local v5, "unmanagedAnswersList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmSet$Answers(Lio/realm/RealmList;)V

    .line 564
    add-int/lit8 v6, p1, 0x1

    .line 565
    .local v6, "nextDepth":I
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v7

    .line 566
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_57
    if-ge v8, v7, :cond_69

    .line 567
    invoke-virtual {v0, v8}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/design/Answer;

    invoke-static {v9, v6, p2, p3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/design/Answer;IILjava/util/Map;)Lcom/digikala/dms/model/design/Answer;

    move-result-object v9

    .line 568
    .local v9, "item":Lcom/digikala/dms/model/design/Answer;
    invoke-virtual {v5, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v9    # "item":Lcom/digikala/dms/model/design/Answer;
    add-int/lit8 v8, v8, 0x1

    goto :goto_57

    .line 572
    .end local v0    # "managedAnswersList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    .end local v5    # "unmanagedAnswersList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    .end local v6    # "nextDepth":I
    .end local v7    # "size":I
    .end local v8    # "i":I
    :cond_69
    :goto_69
    return-object v2

    .line 536
    .end local v1    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v2    # "unmanagedObject":Lcom/digikala/dms/model/design/QuestionAnswer;
    .end local v3    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;
    .end local v4    # "realmSource":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;
    :cond_6a
    :goto_6a
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 4

    .line 194
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "QuestionAnswer"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 195
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v1, "question"

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v3, "Question"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 196
    const-string v1, "Answers"

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v3, "Answer"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 197
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/design/QuestionAnswer;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "question"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 221
    const-string v1, "question"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_13
    const-string v1, "Answers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 224
    const-string v1, "Answers"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_20
    const-class v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/QuestionAnswer;

    .line 228
    .local v1, "obj":Lcom/digikala/dms/model/design/QuestionAnswer;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    .line 229
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;
    const-string v3, "question"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4e

    .line 230
    const-string v3, "question"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 231
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmSet$question(Lcom/digikala/dms/model/design/Question;)V

    goto :goto_4e

    .line 233
    :cond_41
    const-string v3, "question"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/design/Question;

    move-result-object v3

    .line 234
    .local v3, "questionObj":Lcom/digikala/dms/model/design/Question;
    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmSet$question(Lcom/digikala/dms/model/design/Question;)V

    .line 237
    .end local v3    # "questionObj":Lcom/digikala/dms/model/design/Question;
    :cond_4e
    :goto_4e
    const-string v3, "Answers"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 238
    const-string v3, "Answers"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 239
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmSet$Answers(Lio/realm/RealmList;)V

    goto :goto_88

    .line 241
    :cond_62
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$Answers()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    .line 242
    const-string v3, "Answers"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 243
    .local v3, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_70
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_88

    .line 244
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {p0, v5, p2}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/design/Answer;

    move-result-object v5

    .line 245
    .local v5, "item":Lcom/digikala/dms/model/design/Answer;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$Answers()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v5    # "item":Lcom/digikala/dms/model/design/Answer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    .line 249
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_88
    :goto_88
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/design/QuestionAnswer;
    .registers 8
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-direct {v0}, Lcom/digikala/dms/model/design/QuestionAnswer;-><init>()V

    .line 257
    .local v0, "obj":Lcom/digikala/dms/model/design/QuestionAnswer;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    .line 258
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 259
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 260
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "name":Ljava/lang/String;
    const-string v3, "question"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    .line 263
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_2d

    .line 264
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 265
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmSet$question(Lcom/digikala/dms/model/design/Question;)V

    goto :goto_70

    .line 267
    :cond_2d
    invoke-static {p0, p1}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/design/Question;

    move-result-object v3

    .line 268
    .local v3, "questionObj":Lcom/digikala/dms/model/design/Question;
    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmSet$question(Lcom/digikala/dms/model/design/Question;)V

    .line 269
    .end local v3    # "questionObj":Lcom/digikala/dms/model/design/Question;
    goto :goto_70

    .line 270
    :cond_35
    const-string v3, "Answers"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 271
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_4c

    .line 272
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 273
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmSet$Answers(Lio/realm/RealmList;)V

    goto :goto_70

    .line 275
    :cond_4c
    new-instance v3, Lio/realm/RealmList;

    invoke-direct {v3}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmSet$Answers(Lio/realm/RealmList;)V

    .line 276
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 277
    :goto_57
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 278
    invoke-static {p0, p1}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/design/Answer;

    move-result-object v3

    .line 279
    .local v3, "item":Lcom/digikala/dms/model/design/Answer;
    invoke-interface {v1}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$Answers()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v3    # "item":Lcom/digikala/dms/model/design/Answer;
    goto :goto_57

    .line 281
    :cond_69
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_70

    .line 284
    :cond_6d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 286
    .end local v2    # "name":Ljava/lang/String;
    :goto_70
    goto :goto_b

    .line 287
    :cond_71
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 288
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/design/QuestionAnswer;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 201
    sget-object v0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 209
    const-string v0, "QuestionAnswer"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/QuestionAnswer;Ljava/util/Map;)J
    .registers 25
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/QuestionAnswer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/QuestionAnswer;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 355
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_40

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_40

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 356
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 358
    :cond_40
    const-class v3, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 359
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 360
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    .line 361
    .local v15, "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v10

    .line 362
    .local v10, "rowIndex":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$question()Lcom/digikala/dms/model/design/Question;

    move-result-object v12

    .line 365
    .local v12, "questionObj":Lcom/digikala/dms/model/design/Question;
    if-eqz v12, :cond_94

    .line 366
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 367
    .local v4, "cachequestion":Ljava/lang/Long;
    if-nez v4, :cond_7b

    .line 368
    invoke-static {v0, v12, v2}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 370
    .end local v4    # "cachequestion":Ljava/lang/Long;
    .local v16, "cachequestion":Ljava/lang/Long;
    :cond_7b
    move-object/from16 v16, v4

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const/16 v19, 0x0

    move-wide v4, v13

    move-wide v8, v10

    move-wide/from16 v20, v13

    move-wide v13, v10

    .end local v10    # "rowIndex":J
    .local v13, "rowIndex":J
    .local v20, "tableNativePtr":J
    move-wide/from16 v10, v17

    move-object/from16 v17, v12

    .end local v12    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .local v17, "questionObj":Lcom/digikala/dms/model/design/Question;
    move/from16 v12, v19

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_99

    .line 373
    .end local v16    # "cachequestion":Ljava/lang/Long;
    .end local v17    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .end local v20    # "tableNativePtr":J
    .restart local v10    # "rowIndex":J
    .restart local v12    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .local v13, "tableNativePtr":J
    :cond_94
    move-object/from16 v17, v12

    move-wide/from16 v20, v13

    move-wide v13, v10

    .end local v10    # "rowIndex":J
    .end local v12    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .local v13, "rowIndex":J
    .restart local v17    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .restart local v20    # "tableNativePtr":J
    :goto_99
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$Answers()Lio/realm/RealmList;

    move-result-object v4

    .line 374
    .local v4, "AnswersList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    if-eqz v4, :cond_d5

    .line 375
    new-instance v5, Lio/realm/internal/OsList;

    invoke-virtual {v3, v13, v14}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v6

    iget-wide v7, v15, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->AnswersIndex:J

    invoke-direct {v5, v6, v7, v8}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 376
    .local v5, "AnswersOsList":Lio/realm/internal/OsList;
    invoke-virtual {v4}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/design/Answer;

    .line 377
    .local v7, "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 378
    .local v8, "cacheItemIndexAnswers":Ljava/lang/Long;
    if-nez v8, :cond_cd

    .line 379
    invoke-static {v0, v7, v2}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;Ljava/util/Map;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 381
    :cond_cd
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lio/realm/internal/OsList;->addRow(J)V

    .line 382
    .end local v7    # "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    .end local v8    # "cacheItemIndexAnswers":Ljava/lang/Long;
    goto :goto_b1

    .line 384
    .end local v5    # "AnswersOsList":Lio/realm/internal/OsList;
    :cond_d5
    return-wide v13
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 24
    .param p0, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 388
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 389
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 390
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    .line 391
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    const/4 v3, 0x0

    .line 392
    .local v3, "object":Lcom/digikala/dms/model/design/QuestionAnswer;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 393
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/digikala/dms/model/design/QuestionAnswer;

    .line 394
    .end local v3    # "object":Lcom/digikala/dms/model/design/QuestionAnswer;
    .local v14, "object":Lcom/digikala/dms/model/design/QuestionAnswer;
    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 395
    nop

    .line 391
    :goto_30
    move-wide/from16 v19, v11

    goto/16 :goto_ed

    .line 397
    :cond_34
    instance-of v3, v14, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_75

    move-object v3, v14

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_75

    move-object v3, v14

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 398
    move-object v3, v14

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    goto :goto_30

    .line 401
    :cond_75
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v8

    .line 402
    .local v8, "rowIndex":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$question()Lcom/digikala/dms/model/design/Question;

    move-result-object v15

    .line 405
    .local v15, "questionObj":Lcom/digikala/dms/model/design/Question;
    if-eqz v15, :cond_ad

    .line 406
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 407
    .local v3, "cachequestion":Ljava/lang/Long;
    if-nez v3, :cond_99

    .line 408
    invoke-static {v0, v15, v1}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 410
    .end local v3    # "cachequestion":Ljava/lang/Long;
    .local v16, "cachequestion":Ljava/lang/Long;
    :cond_99
    move-object/from16 v16, v3

    iget-wide v4, v13, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const/4 v10, 0x0

    move-object v3, v2

    move-wide v6, v8

    move-wide/from16 v19, v11

    move-wide v11, v8

    .end local v8    # "rowIndex":J
    .local v11, "rowIndex":J
    .local v19, "tableNativePtr":J
    move-wide/from16 v8, v17

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    goto :goto_b0

    .line 413
    .end local v16    # "cachequestion":Ljava/lang/Long;
    .end local v19    # "tableNativePtr":J
    .restart local v8    # "rowIndex":J
    .local v11, "tableNativePtr":J
    :cond_ad
    move-wide/from16 v19, v11

    move-wide v11, v8

    .end local v8    # "rowIndex":J
    .local v11, "rowIndex":J
    .restart local v19    # "tableNativePtr":J
    :goto_b0
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$Answers()Lio/realm/RealmList;

    move-result-object v3

    .line 414
    .local v3, "AnswersList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    if-eqz v3, :cond_ec

    .line 415
    new-instance v4, Lio/realm/internal/OsList;

    invoke-virtual {v2, v11, v12}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-wide v6, v13, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->AnswersIndex:J

    invoke-direct {v4, v5, v6, v7}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 416
    .local v4, "AnswersOsList":Lio/realm/internal/OsList;
    invoke-virtual {v3}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ec

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/design/Answer;

    .line 417
    .local v6, "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 418
    .local v7, "cacheItemIndexAnswers":Ljava/lang/Long;
    if-nez v7, :cond_e4

    .line 419
    invoke-static {v0, v6, v1}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;Ljava/util/Map;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 421
    :cond_e4
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lio/realm/internal/OsList;->addRow(J)V

    .line 422
    .end local v6    # "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    .end local v7    # "cacheItemIndexAnswers":Ljava/lang/Long;
    goto :goto_c8

    .line 424
    .end local v3    # "AnswersList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    .end local v4    # "AnswersOsList":Lio/realm/internal/OsList;
    .end local v11    # "rowIndex":J
    .end local v15    # "questionObj":Lcom/digikala/dms/model/design/Question;
    :cond_ec
    nop

    .line 391
    .end local v19    # "tableNativePtr":J
    .local v11, "tableNativePtr":J
    :goto_ed
    move-object v3, v14

    move-wide/from16 v11, v19

    .end local v11    # "tableNativePtr":J
    .restart local v19    # "tableNativePtr":J
    goto/16 :goto_1c

    .line 425
    .end local v14    # "object":Lcom/digikala/dms/model/design/QuestionAnswer;
    .end local v19    # "tableNativePtr":J
    .local v3, "object":Lcom/digikala/dms/model/design/QuestionAnswer;
    .restart local v11    # "tableNativePtr":J
    :cond_f2
    move-wide/from16 v19, v11

    .end local v11    # "tableNativePtr":J
    .restart local v19    # "tableNativePtr":J
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/QuestionAnswer;Ljava/util/Map;)J
    .registers 28
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/QuestionAnswer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/QuestionAnswer;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 428
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_40

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_40

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 429
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 431
    :cond_40
    const-class v3, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 432
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 433
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    .line 434
    .local v15, "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v10

    .line 435
    .local v10, "rowIndex":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$question()Lcom/digikala/dms/model/design/Question;

    move-result-object v12

    .line 438
    .local v12, "questionObj":Lcom/digikala/dms/model/design/Question;
    if-eqz v12, :cond_93

    .line 439
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 440
    .local v4, "cachequestion":Ljava/lang/Long;
    if-nez v4, :cond_7b

    .line 441
    invoke-static {v0, v12, v2}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 443
    .end local v4    # "cachequestion":Ljava/lang/Long;
    .local v16, "cachequestion":Ljava/lang/Long;
    :cond_7b
    move-object/from16 v16, v4

    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const/16 v19, 0x0

    move-wide v4, v13

    move-wide v8, v10

    move-wide/from16 v20, v10

    .end local v10    # "rowIndex":J
    .local v20, "rowIndex":J
    move-wide/from16 v10, v17

    move-object/from16 v17, v12

    .end local v12    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .local v17, "questionObj":Lcom/digikala/dms/model/design/Question;
    move/from16 v12, v19

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 444
    .end local v16    # "cachequestion":Ljava/lang/Long;
    goto :goto_9f

    .line 445
    .end local v17    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .end local v20    # "rowIndex":J
    .restart local v10    # "rowIndex":J
    .restart local v12    # "questionObj":Lcom/digikala/dms/model/design/Question;
    :cond_93
    move-wide/from16 v20, v10

    move-object/from16 v17, v12

    .end local v10    # "rowIndex":J
    .end local v12    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .restart local v17    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .restart local v20    # "rowIndex":J
    iget-wide v6, v15, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v20

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 448
    :goto_9f
    new-instance v4, Lio/realm/internal/OsList;

    move-wide/from16 v5, v20

    .end local v20    # "rowIndex":J
    .local v5, "rowIndex":J
    invoke-virtual {v3, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v7

    iget-wide v8, v15, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->AnswersIndex:J

    invoke-direct {v4, v7, v8, v9}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 449
    .local v4, "AnswersOsList":Lio/realm/internal/OsList;
    move-object v7, v1

    check-cast v7, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    invoke-interface {v7}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$Answers()Lio/realm/RealmList;

    move-result-object v7

    .line 450
    .local v7, "AnswersList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    if-eqz v7, :cond_f7

    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v4}, Lio/realm/internal/OsList;->size()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-nez v12, :cond_f7

    .line 452
    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v8

    .line 453
    .local v8, "objects":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_c7
    if-ge v9, v8, :cond_f2

    .line 454
    invoke-virtual {v7, v9}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/digikala/dms/model/design/Answer;

    .line 455
    .local v10, "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 456
    .local v11, "cacheItemIndexAnswers":Ljava/lang/Long;
    if-nez v11, :cond_df

    .line 457
    invoke-static {v0, v10, v2}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;Ljava/util/Map;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 459
    :cond_df
    move-wide/from16 v22, v13

    .end local v13    # "tableNativePtr":J
    .local v22, "tableNativePtr":J
    int-to-long v12, v9

    move-object/from16 v24, v15

    .end local v15    # "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    .local v24, "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v4, v12, v13, v14, v15}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 453
    .end local v10    # "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    .end local v11    # "cacheItemIndexAnswers":Ljava/lang/Long;
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v13, v22

    move-object/from16 v15, v24

    goto :goto_c7

    .line 461
    .end local v8    # "objects":I
    .end local v9    # "i":I
    .end local v22    # "tableNativePtr":J
    .end local v24    # "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    .restart local v13    # "tableNativePtr":J
    .restart local v15    # "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    :cond_f2
    move-wide/from16 v22, v13

    move-object/from16 v24, v15

    .end local v13    # "tableNativePtr":J
    .end local v15    # "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    .restart local v22    # "tableNativePtr":J
    .restart local v24    # "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    goto :goto_128

    .line 462
    .end local v22    # "tableNativePtr":J
    .end local v24    # "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    .restart local v13    # "tableNativePtr":J
    .restart local v15    # "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    :cond_f7
    move-wide/from16 v22, v13

    move-object/from16 v24, v15

    .end local v13    # "tableNativePtr":J
    .end local v15    # "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    .restart local v22    # "tableNativePtr":J
    .restart local v24    # "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    invoke-virtual {v4}, Lio/realm/internal/OsList;->removeAll()V

    .line 463
    if-eqz v7, :cond_128

    .line 464
    invoke-virtual {v7}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_104
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_128

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/design/Answer;

    .line 465
    .local v9, "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 466
    .local v10, "cacheItemIndexAnswers":Ljava/lang/Long;
    if-nez v10, :cond_120

    .line 467
    invoke-static {v0, v9, v2}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;Ljava/util/Map;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 469
    :cond_120
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lio/realm/internal/OsList;->addRow(J)V

    .line 470
    .end local v9    # "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    .end local v10    # "cacheItemIndexAnswers":Ljava/lang/Long;
    goto :goto_104

    .line 474
    :cond_128
    :goto_128
    return-wide v5
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 29
    .param p0, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 478
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 479
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 480
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    .line 481
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    const/4 v3, 0x0

    .line 482
    .local v3, "object":Lcom/digikala/dms/model/design/QuestionAnswer;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 483
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/design/QuestionAnswer;

    .line 484
    .end local v3    # "object":Lcom/digikala/dms/model/design/QuestionAnswer;
    .local v15, "object":Lcom/digikala/dms/model/design/QuestionAnswer;
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 485
    nop

    .line 481
    :goto_30
    move-wide/from16 v24, v12

    goto/16 :goto_147

    .line 487
    :cond_34
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_75

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_75

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 488
    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    goto :goto_30

    .line 491
    :cond_75
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v9

    .line 492
    .local v9, "rowIndex":J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$question()Lcom/digikala/dms/model/design/Question;

    move-result-object v11

    .line 495
    .local v11, "questionObj":Lcom/digikala/dms/model/design/Question;
    if-eqz v11, :cond_b1

    .line 496
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 497
    .local v3, "cachequestion":Ljava/lang/Long;
    if-nez v3, :cond_99

    .line 498
    invoke-static {v0, v11, v1}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 500
    .end local v3    # "cachequestion":Ljava/lang/Long;
    .local v16, "cachequestion":Ljava/lang/Long;
    :cond_99
    move-object/from16 v16, v3

    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const/16 v19, 0x0

    move-wide v3, v12

    move-wide v7, v9

    move-wide/from16 v20, v9

    .end local v9    # "rowIndex":J
    .local v20, "rowIndex":J
    move-wide/from16 v9, v17

    move-object/from16 v17, v11

    .end local v11    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .local v17, "questionObj":Lcom/digikala/dms/model/design/Question;
    move/from16 v11, v19

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 501
    .end local v16    # "cachequestion":Ljava/lang/Long;
    goto :goto_bd

    .line 502
    .end local v17    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .end local v20    # "rowIndex":J
    .restart local v9    # "rowIndex":J
    .restart local v11    # "questionObj":Lcom/digikala/dms/model/design/Question;
    :cond_b1
    move-wide/from16 v20, v9

    move-object/from16 v17, v11

    .end local v9    # "rowIndex":J
    .end local v11    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .restart local v17    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .restart local v20    # "rowIndex":J
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v20

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 505
    :goto_bd
    new-instance v3, Lio/realm/internal/OsList;

    move-wide/from16 v4, v20

    .end local v20    # "rowIndex":J
    .local v4, "rowIndex":J
    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v6

    iget-wide v7, v14, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->AnswersIndex:J

    invoke-direct {v3, v6, v7, v8}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 506
    .local v3, "AnswersOsList":Lio/realm/internal/OsList;
    move-object v6, v15

    check-cast v6, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;

    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface;->realmGet$Answers()Lio/realm/RealmList;

    move-result-object v6

    .line 507
    .local v6, "AnswersList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    if-eqz v6, :cond_115

    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v3}, Lio/realm/internal/OsList;->size()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_115

    .line 509
    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v7

    .line 510
    .local v7, "objectCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_e5
    if-ge v8, v7, :cond_110

    .line 511
    invoke-virtual {v6, v8}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/design/Answer;

    .line 512
    .local v9, "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 513
    .local v10, "cacheItemIndexAnswers":Ljava/lang/Long;
    if-nez v10, :cond_fd

    .line 514
    invoke-static {v0, v9, v1}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;Ljava/util/Map;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 516
    :cond_fd
    move-wide/from16 v22, v4

    .end local v4    # "rowIndex":J
    .local v22, "rowIndex":J
    int-to-long v4, v8

    move-wide/from16 v24, v12

    .end local v12    # "tableNativePtr":J
    .local v24, "tableNativePtr":J
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v3, v4, v5, v11, v12}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 510
    .end local v9    # "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    .end local v10    # "cacheItemIndexAnswers":Ljava/lang/Long;
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v4, v22

    move-wide/from16 v12, v24

    goto :goto_e5

    .line 518
    .end local v7    # "objectCount":I
    .end local v8    # "i":I
    .end local v22    # "rowIndex":J
    .end local v24    # "tableNativePtr":J
    .restart local v4    # "rowIndex":J
    .restart local v12    # "tableNativePtr":J
    :cond_110
    move-wide/from16 v22, v4

    move-wide/from16 v24, v12

    .end local v4    # "rowIndex":J
    .end local v12    # "tableNativePtr":J
    .restart local v22    # "rowIndex":J
    .restart local v24    # "tableNativePtr":J
    goto :goto_146

    .line 519
    .end local v22    # "rowIndex":J
    .end local v24    # "tableNativePtr":J
    .restart local v4    # "rowIndex":J
    .restart local v12    # "tableNativePtr":J
    :cond_115
    move-wide/from16 v22, v4

    move-wide/from16 v24, v12

    .end local v4    # "rowIndex":J
    .end local v12    # "tableNativePtr":J
    .restart local v22    # "rowIndex":J
    .restart local v24    # "tableNativePtr":J
    invoke-virtual {v3}, Lio/realm/internal/OsList;->removeAll()V

    .line 520
    if-eqz v6, :cond_146

    .line 521
    invoke-virtual {v6}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_122
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_146

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/design/Answer;

    .line 522
    .local v5, "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 523
    .local v7, "cacheItemIndexAnswers":Ljava/lang/Long;
    if-nez v7, :cond_13e

    .line 524
    invoke-static {v0, v5, v1}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;Ljava/util/Map;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 526
    :cond_13e
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lio/realm/internal/OsList;->addRow(J)V

    .line 527
    .end local v5    # "AnswersItem":Lcom/digikala/dms/model/design/Answer;
    .end local v7    # "cacheItemIndexAnswers":Ljava/lang/Long;
    goto :goto_122

    .line 531
    .end local v3    # "AnswersOsList":Lio/realm/internal/OsList;
    .end local v6    # "AnswersList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    .end local v17    # "questionObj":Lcom/digikala/dms/model/design/Question;
    .end local v22    # "rowIndex":J
    :cond_146
    :goto_146
    nop

    .line 481
    .end local v24    # "tableNativePtr":J
    .restart local v12    # "tableNativePtr":J
    :goto_147
    move-object v3, v15

    move-wide/from16 v12, v24

    .end local v12    # "tableNativePtr":J
    .restart local v24    # "tableNativePtr":J
    goto/16 :goto_1c

    .line 532
    .end local v15    # "object":Lcom/digikala/dms/model/design/QuestionAnswer;
    .end local v24    # "tableNativePtr":J
    .local v3, "object":Lcom/digikala/dms/model/design/QuestionAnswer;
    .restart local v12    # "tableNativePtr":J
    :cond_14c
    move-wide/from16 v24, v12

    .end local v12    # "tableNativePtr":J
    .restart local v24    # "tableNativePtr":J
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 613
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 614
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 615
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;

    .line 617
    .local v2, "aQuestionAnswer":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, "otherPath":Ljava/lang/String;
    if-eqz v3, :cond_32

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    goto :goto_34

    :cond_32
    if-eqz v4, :cond_35

    :goto_34
    return v1

    .line 621
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 623
    .local v6, "otherTableName":Ljava/lang/String;
    if-eqz v5, :cond_5a

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d

    goto :goto_5c

    :cond_5a
    if-eqz v6, :cond_5d

    :goto_5c
    return v1

    .line 625
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 627
    :cond_76
    return v0

    .line 614
    .end local v2    # "aQuestionAnswer":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "otherPath":Ljava/lang/String;
    .end local v5    # "tableName":Ljava/lang/String;
    .end local v6    # "otherTableName":Ljava/lang/String;
    :cond_77
    :goto_77
    return v1
.end method

.method public hashCode()I
    .registers 9

    .line 600
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 604
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 605
    .local v4, "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/4 v6, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    goto :goto_2f

    :cond_2e
    const/4 v7, 0x0

    :goto_2f
    add-int/2addr v5, v7

    .line 606
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 607
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 608
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 79
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 80
    return-void

    .line 82
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 83
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    .line 84
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 85
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 86
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 87
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 88
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 89
    return-void
.end method

.method public realmGet$Answers()Lio/realm/RealmList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/Answer;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 136
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->AnswersRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_10

    .line 137
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->AnswersRealmList:Lio/realm/RealmList;

    return-object v0

    .line 139
    :cond_10
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->AnswersIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 140
    .local v0, "osList":Lio/realm/internal/OsList;
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lcom/digikala/dms/model/design/Answer;

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->AnswersRealmList:Lio/realm/RealmList;

    .line 141
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->AnswersRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ProxyState<",
            "*>;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$question()Lcom/digikala/dms/model/design/Question;
    .registers 8

    .line 93
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 94
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_1b
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lcom/digikala/dms/model/design/Question;

    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    iget-wide v3, v3, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/design/Question;

    return-object v0
.end method

.method public realmSet$Answers(Lio/realm/RealmList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/Answer;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "value":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 148
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 149
    return-void

    .line 151
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "Answers"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 152
    return-void

    .line 155
    :cond_20
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 156
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 157
    .local v0, "realm":Lio/realm/Realm;
    move-object v1, p1

    .line 158
    .local v1, "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    move-object p1, v2

    .line 159
    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/design/Answer;

    .line 160
    .local v3, "item":Lcom/digikala/dms/model/design/Answer;
    if-eqz v3, :cond_58

    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_58

    .line 163
    :cond_50
    invoke-virtual {v0, v3}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 161
    :cond_58
    :goto_58
    invoke-virtual {p1, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v3    # "item":Lcom/digikala/dms/model/design/Answer;
    :goto_5b
    goto :goto_3b

    .line 169
    .end local v0    # "realm":Lio/realm/Realm;
    .end local v1    # "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/Answer;>;"
    :cond_5c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 170
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->AnswersIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 172
    .local v0, "osList":Lio/realm/internal/OsList;
    const/4 v1, 0x0

    if-eqz p1, :cond_ac

    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_ac

    .line 173
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 174
    .local v2, "objects":I
    nop

    .local v1, "i":I
    :goto_88
    if-ge v1, v2, :cond_ab

    .line 175
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/design/Answer;

    .line 176
    .local v3, "linkedObject":Lcom/digikala/dms/model/design/Answer;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 177
    int-to-long v4, v1

    move-object v6, v3

    check-cast v6, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v6}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 174
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/design/Answer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 179
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_ab
    goto :goto_d9

    .line 180
    :cond_ac
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    .line 181
    if-nez p1, :cond_b2

    .line 182
    return-void

    .line 184
    :cond_b2
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 185
    .restart local v2    # "objects":I
    nop

    .restart local v1    # "i":I
    :goto_b7
    if-ge v1, v2, :cond_d9

    .line 186
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/design/Answer;

    .line 187
    .restart local v3    # "linkedObject":Lcom/digikala/dms/model/design/Answer;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 188
    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/OsList;->addRow(J)V

    .line 185
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/design/Answer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 191
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_d9
    :goto_d9
    return-void
.end method

.method public realmSet$question(Lcom/digikala/dms/model/design/Question;)V
    .registers 12
    .param p1, "value"    # Lcom/digikala/dms/model/design/Question;

    .line 102
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 103
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 104
    return-void

    .line 106
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "question"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 107
    return-void

    .line 109
    :cond_20
    if-eqz p1, :cond_37

    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 110
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lcom/digikala/dms/model/design/Question;

    .line 112
    :cond_37
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 113
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_47

    .line 115
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 116
    return-void

    .line 118
    :cond_47
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 119
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    iget-wide v3, v1, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    move-object v1, p1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 120
    return-void

    .line 123
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_6c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 124
    if-nez p1, :cond_85

    .line 125
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 126
    return-void

    .line 128
    :cond_85
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 129
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    move-object v3, p1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 578
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 579
    const-string v0, "Invalid object"

    return-object v0

    .line 581
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QuestionAnswer = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{question:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->realmGet$question()Lcom/digikala/dms/model/design/Question;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string v1, "Question"

    goto :goto_21

    :cond_1f
    const-string v1, "null"

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string/jumbo v1, "{Answers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const-string v1, "RealmList<Answer>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;->realmGet$Answers()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_design_QuestionAnswerRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "QuestionAnswer"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxy.QuestionAnswerColumnInfo (io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo)
.class final Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_design_QuestionAnswerRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QuestionAnswerColumnInfo"
.end annotation


# instance fields
.field AnswersIndex:J

.field questionIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 49
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 50
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 51
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 42
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 43
    const-string v0, "QuestionAnswer"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 44
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "question"

    const-string v2, "question"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    .line 45
    const-string v1, "Answers"

    const-string v2, "Answers"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->AnswersIndex:J

    .line 46
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 55
    new-instance v0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 60
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    .line 61
    .local v0, "src":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;

    .line 62
    .local v1, "dst":Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->questionIndex:J

    .line 63
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->AnswersIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_QuestionAnswerRealmProxy$QuestionAnswerColumnInfo;->AnswersIndex:J

    .line 64
    return-void
.end method
