###### Class io.realm.RealmList (io.realm.RealmList)
.class public Lio/realm/RealmList;
.super Ljava/util/AbstractList;
.source "RealmList.java"

# interfaces
.implements Lio/realm/OrderedRealmCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmList$RealmListItr;,
        Lio/realm/RealmList$RealmItr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Lio/realm/OrderedRealmCollection<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final ALLOWED_ONLY_FOR_REALM_MODEL_ELEMENT_MESSAGE:Ljava/lang/String; = "This feature is available only when the element type is implementing RealmModel."

.field private static final ONLY_IN_MANAGED_MODE_MESSAGE:Ljava/lang/String; = "This method is only available in managed mode."

.field private static final REMOVE_OUTSIDE_TRANSACTION_ERROR:Ljava/lang/String; = "Objects can only be removed from inside a write transaction."


# instance fields
.field protected className:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final osListOperator:Lio/realm/ManagedListOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ManagedListOperator<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected final realm:Lio/realm/BaseRealm;

.field private unmanagedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 85
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    .line 87
    iput-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    .line 89
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V
    .registers 5
    .param p2, "osList"    # Lio/realm/internal/OsList;
    .param p3, "realm"    # Lio/realm/BaseRealm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/internal/OsList;",
            "Lio/realm/BaseRealm;",
            ")V"
        }
    .end annotation

    .line 118
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 119
    iput-object p1, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, p1, v0}, Lio/realm/RealmList;->getOperator(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;Ljava/lang/String;)Lio/realm/ManagedListOperator;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    .line 121
    iput-object p3, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    .line 122
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "osList"    # Lio/realm/internal/OsList;
    .param p3, "realm"    # Lio/realm/BaseRealm;

    .line 124
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 125
    iput-object p3, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    .line 126
    iput-object p1, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0, p1}, Lio/realm/RealmList;->getOperator(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;Ljava/lang/String;)Lio/realm/ManagedListOperator;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    .line 128
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p1, "objects":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 102
    if-eqz p1, :cond_18

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    .line 106
    iput-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    .line 108
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 109
    return-void

    .line 103
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The objects argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lio/realm/RealmList;)I
    .registers 2
    .param p0, "x0"    # Lio/realm/RealmList;

    .line 62
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    return v0
.end method

.method static synthetic access$200(Lio/realm/RealmList;)V
    .registers 1
    .param p0, "x0"    # Lio/realm/RealmList;

    .line 62
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    return-void
.end method

.method static synthetic access$300(Lio/realm/RealmList;)I
    .registers 2
    .param p0, "x0"    # Lio/realm/RealmList;

    .line 62
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    return v0
.end method

.method static synthetic access$400(Lio/realm/RealmList;)I
    .registers 2
    .param p0, "x0"    # Lio/realm/RealmList;

    .line 62
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    return v0
.end method

.method static synthetic access$500(Lio/realm/RealmList;)I
    .registers 2
    .param p0, "x0"    # Lio/realm/RealmList;

    .line 62
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    return v0
.end method

.method static synthetic access$600(Lio/realm/RealmList;)I
    .registers 2
    .param p0, "x0"    # Lio/realm/RealmList;

    .line 62
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    return v0
.end method

.method private checkForAddRemoveListener(Ljava/lang/Object;Z)V
    .registers 5
    .param p1, "listener"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "checkListener"    # Z

    .line 921
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    if-eqz p2, :cond_d

    if-eqz p1, :cond_5

    goto :goto_d

    .line 922
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_d
    :goto_d
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 925
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Listeners cannot be used on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method private checkValidRealm()V
    .registers 2

    .line 739
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 740
    return-void
.end method

.method private firstImpl(ZLjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "shouldThrow"    # Z
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 439
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 440
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 441
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 442
    invoke-virtual {p0, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 444
    :cond_17
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 445
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 448
    :cond_2a
    if-nez p1, :cond_2d

    .line 451
    return-object p2

    .line 449
    :cond_2d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "The list is empty."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOperator(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;Ljava/lang/String;)Lio/realm/ManagedListOperator;
    .registers 8
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "osList"    # Lio/realm/internal/OsList;
    .param p3    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "className"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/ManagedListOperator<",
            "TE;>;"
        }
    .end annotation

    .line 1226
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-eqz p3, :cond_77

    invoke-static {p3}, Lio/realm/RealmList;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_77

    .line 1229
    :cond_9
    const-class v0, Ljava/lang/String;

    if-ne p3, v0, :cond_13

    .line 1231
    new-instance v0, Lio/realm/StringListOperator;

    invoke-direct {v0, p1, p2, p3}, Lio/realm/StringListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object v0

    .line 1233
    :cond_13
    const-class v0, Ljava/lang/Long;

    if-eq p3, v0, :cond_71

    const-class v0, Ljava/lang/Integer;

    if-eq p3, v0, :cond_71

    const-class v0, Ljava/lang/Short;

    if-eq p3, v0, :cond_71

    const-class v0, Ljava/lang/Byte;

    if-ne p3, v0, :cond_24

    goto :goto_71

    .line 1236
    :cond_24
    const-class v0, Ljava/lang/Boolean;

    if-ne p3, v0, :cond_2e

    .line 1238
    new-instance v0, Lio/realm/BooleanListOperator;

    invoke-direct {v0, p1, p2, p3}, Lio/realm/BooleanListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object v0

    .line 1240
    :cond_2e
    const-class v0, [B

    if-ne p3, v0, :cond_38

    .line 1242
    new-instance v0, Lio/realm/BinaryListOperator;

    invoke-direct {v0, p1, p2, p3}, Lio/realm/BinaryListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object v0

    .line 1244
    :cond_38
    const-class v0, Ljava/lang/Double;

    if-ne p3, v0, :cond_42

    .line 1246
    new-instance v0, Lio/realm/DoubleListOperator;

    invoke-direct {v0, p1, p2, p3}, Lio/realm/DoubleListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object v0

    .line 1248
    :cond_42
    const-class v0, Ljava/lang/Float;

    if-ne p3, v0, :cond_4c

    .line 1250
    new-instance v0, Lio/realm/FloatListOperator;

    invoke-direct {v0, p1, p2, p3}, Lio/realm/FloatListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object v0

    .line 1252
    :cond_4c
    const-class v0, Ljava/util/Date;

    if-ne p3, v0, :cond_56

    .line 1254
    new-instance v0, Lio/realm/DateListOperator;

    invoke-direct {v0, p1, p2, p3}, Lio/realm/DateListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object v0

    .line 1256
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1234
    :cond_71
    :goto_71
    new-instance v0, Lio/realm/LongListOperator;

    invoke-direct {v0, p1, p2, p3}, Lio/realm/LongListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-object v0

    .line 1227
    :cond_77
    :goto_77
    new-instance v0, Lio/realm/RealmModelListOperator;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/realm/RealmModelListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method private isAttached()Z
    .registers 2

    .line 158
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isClassForRealmModel(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1222
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private lastImpl(ZLjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "shouldThrow"    # Z
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 475
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 476
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 477
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 478
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 480
    :cond_1e
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 481
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    iget-object v1, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 484
    :cond_39
    if-nez p1, :cond_3c

    .line 487
    return-object p2

    .line 485
    :cond_3c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "The list is empty."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4
    .param p1, "location"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 183
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 184
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0, p1, p2}, Lio/realm/ManagedListOperator;->insert(ILjava/lang/Object;)V

    goto :goto_14

    .line 186
    :cond_f
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 188
    :goto_14
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/RealmList;->modCount:I

    .line 189
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 208
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 209
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 210
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0, p1}, Lio/realm/ManagedListOperator;->append(Ljava/lang/Object;)V

    goto :goto_14

    .line 212
    :cond_f
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :goto_14
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/realm/RealmList;->modCount:I

    .line 215
    return v1
.end method

.method public addChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "Lio/realm/RealmList<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 962
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p1, "listener":Lio/realm/OrderedRealmCollectionChangeListener;, "Lio/realm/OrderedRealmCollectionChangeListener<Lio/realm/RealmList<TE;>;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/realm/RealmList;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 963
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->getOsList()Lio/realm/internal/OsList;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/OsList;->addListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 964
    return-void
.end method

.method public addChangeListener(Lio/realm/RealmChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmList<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1013
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/RealmList<TE;>;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/realm/RealmList;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 1014
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->getOsList()Lio/realm/internal/OsList;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/OsList;->addListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    .line 1015
    return-void
.end method

.method public asChangesetObservable()Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmList<",
            "TE;>;>;>;"
        }
    .end annotation

    .line 909
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    instance-of v0, v0, Lio/realm/Realm;

    if-eqz v0, :cond_17

    .line 910
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    check-cast v1, Lio/realm/Realm;

    invoke-interface {v0, v1, p0}, Lio/realm/rx/RxObservableFactory;->changesetsFrom(Lio/realm/Realm;Lio/realm/RealmList;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 911
    :cond_17
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    instance-of v0, v0, Lio/realm/DynamicRealm;

    if-eqz v0, :cond_2f

    .line 912
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    check-cast v0, Lio/realm/DynamicRealm;

    .line 913
    .local v0, "dynamicRealm":Lio/realm/DynamicRealm;
    move-object v1, p0

    .line 914
    .local v1, "dynamicResults":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/DynamicRealmObject;>;"
    iget-object v2, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/rx/RxObservableFactory;->changesetsFrom(Lio/realm/DynamicRealm;Lio/realm/RealmList;)Lio/reactivex/Observable;

    move-result-object v2

    return-object v2

    .line 916
    .end local v0    # "dynamicRealm":Lio/realm/DynamicRealm;
    .end local v1    # "dynamicResults":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/DynamicRealmObject;>;"
    :cond_2f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not support RxJava2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asFlowable()Lio/reactivex/Flowable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lio/realm/RealmList<",
            "TE;>;>;"
        }
    .end annotation

    .line 879
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    instance-of v0, v0, Lio/realm/Realm;

    if-eqz v0, :cond_17

    .line 880
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    check-cast v1, Lio/realm/Realm;

    invoke-interface {v0, v1, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/Realm;Lio/realm/RealmList;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0

    .line 881
    :cond_17
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    instance-of v0, v0, Lio/realm/DynamicRealm;

    if-eqz v0, :cond_2e

    .line 883
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    check-cast v1, Lio/realm/DynamicRealm;

    invoke-interface {v0, v1, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/DynamicRealm;Lio/realm/RealmList;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 884
    .local v0, "results":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Lio/realm/RealmList<TE;>;>;"
    return-object v0

    .line 886
    .end local v0    # "results":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Lio/realm/RealmList<TE;>;>;"
    :cond_2e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not support RxJava2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public average(Ljava/lang/String;)D
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 616
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->average(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .registers 2

    .line 284
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 285
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 286
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->removeAll()V

    goto :goto_14

    .line 288
    :cond_f
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 290
    :goto_14
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/RealmList;->modCount:I

    .line 291
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 686
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 687
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 690
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_20

    .line 691
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 692
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    sget-object v2, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    if-ne v1, v2, :cond_20

    .line 693
    const/4 v1, 0x0

    return v1

    .line 697
    .end local v0    # "proxy":Lio/realm/internal/RealmObjectProxy;
    :cond_20
    invoke-super {p0, p1}, Ljava/util/AbstractList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 699
    :cond_25
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createSnapshot()Lio/realm/OrderedRealmCollectionSnapshot;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/OrderedRealmCollectionSnapshot<",
            "TE;>;"
        }
    .end annotation

    .line 747
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 750
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 751
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->forRealmModel()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 754
    iget-object v0, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 755
    new-instance v0, Lio/realm/OrderedRealmCollectionSnapshot;

    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v3, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    .line 757
    invoke-virtual {v3}, Lio/realm/ManagedListOperator;->getOsList()Lio/realm/internal/OsList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/OsList;->getQuery()Lio/realm/internal/TableQuery;

    move-result-object v3

    invoke-static {v2, v3}, Lio/realm/internal/OsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;)Lio/realm/internal/OsResults;

    move-result-object v2

    iget-object v3, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lio/realm/OrderedRealmCollectionSnapshot;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    .line 755
    return-object v0

    .line 762
    :cond_31
    new-instance v0, Lio/realm/OrderedRealmCollectionSnapshot;

    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v3, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    .line 764
    invoke-virtual {v3}, Lio/realm/ManagedListOperator;->getOsList()Lio/realm/internal/OsList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/OsList;->getQuery()Lio/realm/internal/TableQuery;

    move-result-object v3

    invoke-static {v2, v3}, Lio/realm/internal/OsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;)Lio/realm/internal/OsResults;

    move-result-object v2

    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lio/realm/OrderedRealmCollectionSnapshot;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    .line 762
    return-object v0

    .line 752
    :cond_4d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature is available only when the element type is implementing RealmModel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only available in managed mode."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteAllFromRealm()Z
    .registers 3

    .line 644
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 645
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 646
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 647
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->deleteAll()V

    .line 648
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/realm/RealmList;->modCount:I

    .line 649
    return v1

    .line 651
    :cond_1d
    const/4 v0, 0x0

    return v0

    .line 654
    :cond_1f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only available in managed mode."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteFirstFromRealm()Z
    .registers 3

    .line 369
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 370
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 371
    invoke-virtual {p0, v1}, Lio/realm/RealmList;->deleteFromRealm(I)V

    .line 372
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/realm/RealmList;->modCount:I

    .line 373
    return v1

    .line 375
    :cond_19
    return v1

    .line 378
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only available in managed mode."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteFromRealm(I)V
    .registers 4
    .param p1, "location"    # I

    .line 536
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 537
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 538
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0, p1}, Lio/realm/ManagedListOperator;->delete(I)V

    .line 539
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/RealmList;->modCount:I

    .line 543
    return-void

    .line 541
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only available in managed mode."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteLastFromRealm()Z
    .registers 3

    .line 387
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 388
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 389
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->deleteLast()V

    .line 390
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/realm/RealmList;->modCount:I

    .line 391
    return v1

    .line 393
    :cond_1a
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only available in managed mode."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public first()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 425
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/realm/RealmList;->firstImpl(ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public first(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 434
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/realm/RealmList;->firstImpl(ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 411
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 412
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 413
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0, p1}, Lio/realm/ManagedListOperator;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 415
    :cond_10
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getOsList()Lio/realm/internal/OsList;
    .registers 2

    .line 131
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->getOsList()Lio/realm/internal/OsList;

    move-result-object v0

    return-object v0
.end method

.method public isLoaded()Z
    .registers 2

    .line 663
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isManaged()Z
    .registers 2

    .line 154
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 139
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    if-nez v0, :cond_6

    .line 140
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_6
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 144
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_10
    invoke-direct {p0}, Lio/realm/RealmList;->isAttached()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 709
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 710
    new-instance v0, Lio/realm/RealmList$RealmItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/realm/RealmList$RealmItr;-><init>(Lio/realm/RealmList;Lio/realm/RealmList$1;)V

    return-object v0

    .line 712
    :cond_d
    invoke-super {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 461
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/realm/RealmList;->lastImpl(ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public last(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 470
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/realm/RealmList;->lastImpl(ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 722
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/RealmList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 731
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 732
    new-instance v0, Lio/realm/RealmList$RealmListItr;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmList$RealmListItr;-><init>(Lio/realm/RealmList;I)V

    return-object v0

    .line 734
    :cond_c
    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public load()Z
    .registers 2

    .line 671
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public max(Ljava/lang/String;)Ljava/lang/Number;
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 598
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->max(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public maxDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 626
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->maximumDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public min(Ljava/lang/String;)Ljava/lang/Number;
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 588
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->min(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public minDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 636
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->minimumDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public move(II)V
    .registers 7
    .param p1, "oldPos"    # I
    .param p2, "newPos"    # I

    .line 258
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 259
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 260
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0, p1, p2}, Lio/realm/ManagedListOperator;->move(II)V

    goto :goto_28

    .line 262
    :cond_f
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 263
    .local v0, "listSize":I
    if-ltz p1, :cond_48

    if-le v0, p1, :cond_48

    .line 266
    if-ltz p2, :cond_29

    if-le v0, p2, :cond_29

    .line 269
    iget-object v1, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 270
    .local v1, "object":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v2, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 272
    .end local v0    # "listSize":I
    .end local v1    # "object":Ljava/lang/Object;, "TE;"
    :goto_28
    return-void

    .line 267
    .restart local v0    # "listSize":I
    :cond_29
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_48
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 304
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 305
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 306
    invoke-virtual {p0, p1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 307
    .local v0, "removedItem":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v1, p1}, Lio/realm/ManagedListOperator;->remove(I)V

    goto :goto_19

    .line 309
    .end local v0    # "removedItem":Ljava/lang/Object;, "TE;"
    :cond_13
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 311
    .restart local v0    # "removedItem":Ljava/lang/Object;, "TE;"
    :goto_19
    iget v1, p0, Lio/realm/RealmList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/realm/RealmList;->modCount:I

    .line 312
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 334
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 335
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects can only be removed from inside a write transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_17
    :goto_17
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 358
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 359
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects can only be removed from inside a write transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_17
    :goto_17
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeAllChangeListeners()V
    .registers 3

    .line 1037
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/realm/RealmList;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 1038
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->getOsList()Lio/realm/internal/OsList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAllListeners()V

    .line 1039
    return-void
.end method

.method public removeChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "Lio/realm/RealmList<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 975
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p1, "listener":Lio/realm/OrderedRealmCollectionChangeListener;, "Lio/realm/OrderedRealmCollectionChangeListener<Lio/realm/RealmList<TE;>;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/realm/RealmList;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 976
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->getOsList()Lio/realm/internal/OsList;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/OsList;->removeListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 977
    return-void
.end method

.method public removeChangeListener(Lio/realm/RealmChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmList<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1026
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/RealmList<TE;>;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/realm/RealmList;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 1027
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->getOsList()Lio/realm/internal/OsList;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/OsList;->removeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    .line 1028
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "location"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 238
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 239
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 240
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0, p1, p2}, Lio/realm/ManagedListOperator;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_16

    .line 242
    :cond_10
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, "oldObject":Ljava/lang/Object;, "TE;"
    :goto_16
    return-object v0
.end method

.method public size()I
    .registers 2

    .line 553
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 554
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 555
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->size()I

    move-result v0

    return v0

    .line 557
    :cond_10
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public sort(Ljava/lang/String;)Lio/realm/RealmResults;
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 496
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    sget-object v0, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    invoke-virtual {p0, p1, v0}, Lio/realm/RealmList;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "sortOrder"    # Lio/realm/Sort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 504
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 505
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    return-object v0

    .line 507
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only available in managed mode."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sort(Ljava/lang/String;Lio/realm/Sort;Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;
    .registers 9
    .param p1, "fieldName1"    # Ljava/lang/String;
    .param p2, "sortOrder1"    # Lio/realm/Sort;
    .param p3, "fieldName2"    # Ljava/lang/String;
    .param p4, "sortOrder2"    # Lio/realm/Sort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 516
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    new-array v0, v0, [Lio/realm/Sort;

    aput-object p2, v0, v2

    aput-object p4, v0, v3

    invoke-virtual {p0, v1, v0}, Lio/realm/RealmList;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmResults;
    .registers 5
    .param p1, "fieldNames"    # [Ljava/lang/String;
    .param p2, "sortOrders"    # [Lio/realm/Sort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 524
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 525
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/RealmQuery;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    return-object v0

    .line 527
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only available in managed mode."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sum(Ljava/lang/String;)Ljava/lang/Number;
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 607
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->sum(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 771
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    const-string v0, ","

    .line 772
    .local v0, "separator":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_66

    .line 778
    const-string v2, "RealmList<?>@["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 781
    .local v2, "size":I
    nop

    .local v3, "i":I
    :goto_18
    if-ge v3, v2, :cond_4b

    .line 782
    invoke-virtual {p0, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 783
    .local v4, "value":Ljava/lang/Object;, "TE;"
    instance-of v5, v4, Lio/realm/RealmModel;

    if-eqz v5, :cond_2a

    .line 784
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 786
    :cond_2a
    instance-of v5, v4, [B

    if-eqz v5, :cond_40

    .line 787
    const-string v5, "byte["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v4

    check-cast v5, [B

    array-length v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 789
    :cond_40
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 792
    :goto_43
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 794
    .end local v3    # "i":I
    :cond_4b
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v3

    if-lez v3, :cond_5f

    .line 795
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, ","

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 797
    :cond_5f
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .end local v2    # "size":I
    goto/16 :goto_144

    .line 802
    :cond_66
    const-string v2, "RealmList<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    iget-object v2, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    if-eqz v2, :cond_75

    .line 804
    iget-object v2, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 808
    :cond_75
    iget-object v2, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-static {v2}, Lio/realm/RealmList;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 810
    iget-object v2, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    iget-object v4, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 812
    :cond_91
    iget-object v2, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v4, [B

    if-ne v2, v4, :cond_a1

    .line 813
    iget-object v2, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 815
    :cond_a1
    iget-object v2, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    :goto_aa
    const-string v2, ">@["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-direct {p0}, Lio/realm/RealmList;->isAttached()Z

    move-result v2

    if-nez v2, :cond_bc

    .line 823
    const-string v2, "invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13f

    .line 824
    :cond_bc
    iget-object v2, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-static {v2}, Lio/realm/RealmList;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 825
    nop

    .restart local v3    # "i":I
    :goto_c5
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v3

    if-ge v2, v3, :cond_e9

    .line 827
    invoke-virtual {p0, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 828
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    add-int/lit8 v3, v2, 0x1

    goto :goto_c5

    .line 830
    .end local v2    # "i":I
    :cond_e9
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v2

    if-lez v2, :cond_13f

    .line 831
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ","

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_13f

    .line 834
    :cond_fe
    nop

    .restart local v3    # "i":I
    :goto_ff
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v3

    if-ge v2, v3, :cond_12b

    .line 835
    invoke-virtual {p0, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 836
    .local v3, "value":Ljava/lang/Object;, "TE;"
    instance-of v4, v3, [B

    if-eqz v4, :cond_120

    .line 837
    const-string v4, "byte["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, [B

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_123

    .line 839
    :cond_120
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 841
    :goto_123
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .end local v3    # "value":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v2, 0x1

    goto :goto_ff

    .line 843
    .end local v2    # "i":I
    :cond_12b
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v2

    if-lez v2, :cond_13f

    .line 844
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ","

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 847
    :cond_13f
    :goto_13f
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :goto_144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public where()Lio/realm/RealmQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 570
    .local p0, "this":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 571
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidRealm()V

    .line 572
    iget-object v0, p0, Lio/realm/RealmList;->osListOperator:Lio/realm/ManagedListOperator;

    invoke-virtual {v0}, Lio/realm/ManagedListOperator;->forRealmModel()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 575
    invoke-static {p0}, Lio/realm/RealmQuery;->createQueryFromList(Lio/realm/RealmList;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0

    .line 573
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature is available only when the element type is implementing RealmModel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is only available in managed mode."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.realm.RealmList.AnonymousClass1 (io.realm.RealmList$1)
.class synthetic Lio/realm/RealmList$1;
.super Ljava/lang/Object;
.source "RealmList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.realm.RealmList.RealmItr (io.realm.RealmList$RealmItr)
.class Lio/realm/RealmList$RealmItr;
.super Ljava/lang/Object;
.source "RealmList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RealmItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field cursor:I

.field expectedModCount:I

.field lastRet:I

.field final synthetic this$0:Lio/realm/RealmList;


# direct methods
.method private constructor <init>(Lio/realm/RealmList;)V
    .registers 2

    .line 1042
    .local p0, "this":Lio/realm/RealmList$RealmItr;, "Lio/realm/RealmList<TE;>.RealmItr;"
    iput-object p1, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    const/4 p1, 0x0

    iput p1, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    .line 1053
    const/4 p1, -0x1

    iput p1, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    .line 1060
    iget-object p1, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-static {p1}, Lio/realm/RealmList;->access$100(Lio/realm/RealmList;)I

    move-result p1

    iput p1, p0, Lio/realm/RealmList$RealmItr;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/RealmList;Lio/realm/RealmList$1;)V
    .registers 3
    .param p1, "x0"    # Lio/realm/RealmList;
    .param p2, "x1"    # Lio/realm/RealmList$1;

    .line 1042
    .local p0, "this":Lio/realm/RealmList$RealmItr;, "Lio/realm/RealmList<TE;>.RealmItr;"
    invoke-direct {p0, p1}, Lio/realm/RealmList$RealmItr;-><init>(Lio/realm/RealmList;)V

    return-void
.end method


# virtual methods
.method final checkConcurrentModification()V
    .registers 3

    .line 1122
    .local p0, "this":Lio/realm/RealmList$RealmItr;, "Lio/realm/RealmList<TE;>.RealmItr;"
    iget-object v0, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-static {v0}, Lio/realm/RealmList;->access$400(Lio/realm/RealmList;)I

    move-result v0

    iget v1, p0, Lio/realm/RealmList$RealmItr;->expectedModCount:I

    if-ne v0, v1, :cond_b

    .line 1125
    return-void

    .line 1123
    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    .line 1067
    .local p0, "this":Lio/realm/RealmList$RealmItr;, "Lio/realm/RealmList<TE;>.RealmItr;"
    iget-object v0, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-static {v0}, Lio/realm/RealmList;->access$200(Lio/realm/RealmList;)V

    .line 1068
    invoke-virtual {p0}, Lio/realm/RealmList$RealmItr;->checkConcurrentModification()V

    .line 1069
    iget v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    iget-object v1, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1078
    .local p0, "this":Lio/realm/RealmList$RealmItr;, "Lio/realm/RealmList<TE;>.RealmItr;"
    iget-object v0, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-static {v0}, Lio/realm/RealmList;->access$200(Lio/realm/RealmList;)V

    .line 1079
    invoke-virtual {p0}, Lio/realm/RealmList$RealmItr;->checkConcurrentModification()V

    .line 1080
    iget v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    .line 1082
    .local v0, "i":I
    :try_start_a
    iget-object v1, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1083
    .local v1, "next":Ljava/lang/Object;, "TE;"
    iput v0, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    .line 1084
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lio/realm/RealmList$RealmItr;->cursor:I
    :try_end_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_16} :catch_17

    .line 1085
    return-object v1

    .line 1086
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :catch_17
    move-exception v1

    .line 1087
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Lio/realm/RealmList$RealmItr;->checkConcurrentModification()V

    .line 1088
    new-instance v2, Ljava/util/NoSuchElementException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot access index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-virtual {v4}, Lio/realm/RealmList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Remember to check hasNext() before using next()."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public remove()V
    .registers 3

    .line 1097
    .local p0, "this":Lio/realm/RealmList$RealmItr;, "Lio/realm/RealmList<TE;>.RealmItr;"
    iget-object v0, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-static {v0}, Lio/realm/RealmList;->access$200(Lio/realm/RealmList;)V

    .line 1098
    iget v0, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    if-ltz v0, :cond_33

    .line 1101
    invoke-virtual {p0}, Lio/realm/RealmList$RealmItr;->checkConcurrentModification()V

    .line 1104
    :try_start_c
    iget-object v0, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    iget v1, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->remove(I)Ljava/lang/Object;

    .line 1105
    iget v0, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    iget v1, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    if-ge v0, v1, :cond_1f

    .line 1106
    iget v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    .line 1108
    :cond_1f
    const/4 v0, -0x1

    iput v0, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    .line 1109
    iget-object v0, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-static {v0}, Lio/realm/RealmList;->access$300(Lio/realm/RealmList;)I

    move-result v0

    iput v0, p0, Lio/realm/RealmList$RealmItr;->expectedModCount:I
    :try_end_2a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_2a} :catch_2c

    .line 1112
    nop

    .line 1113
    return-void

    .line 1110
    :catch_2c
    move-exception v0

    .line 1111
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1099
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call remove() twice. Must call next() in between."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.realm.RealmList.RealmListItr (io.realm.RealmList$RealmListItr)
.class Lio/realm/RealmList$RealmListItr;
.super Lio/realm/RealmList$RealmItr;
.source "RealmList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RealmListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/RealmList<",
        "TE;>.RealmItr;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/RealmList;


# direct methods
.method constructor <init>(Lio/realm/RealmList;I)V
    .registers 6
    .param p2, "index"    # I

    .line 1130
    .local p0, "this":Lio/realm/RealmList$RealmListItr;, "Lio/realm/RealmList<TE;>.RealmListItr;"
    iput-object p1, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/realm/RealmList$RealmItr;-><init>(Lio/realm/RealmList;Lio/realm/RealmList$1;)V

    .line 1131
    if-ltz p2, :cond_11

    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v0

    if-gt p2, v0, :cond_11

    .line 1132
    iput p2, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    .line 1136
    return-void

    .line 1134
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting location must be a valid index: [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]. Index was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1207
    .local p0, "this":Lio/realm/RealmList$RealmListItr;, "Lio/realm/RealmList<TE;>.RealmListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    iget-object v0, v0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1208
    invoke-virtual {p0}, Lio/realm/RealmList$RealmListItr;->checkConcurrentModification()V

    .line 1210
    :try_start_a
    iget v0, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    .line 1211
    .local v0, "i":I
    iget-object v1, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    invoke-virtual {v1, v0, p1}, Lio/realm/RealmList;->add(ILjava/lang/Object;)V

    .line 1212
    const/4 v1, -0x1

    iput v1, p0, Lio/realm/RealmList$RealmListItr;->lastRet:I

    .line 1213
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    .line 1214
    iget-object v1, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    invoke-static {v1}, Lio/realm/RealmList;->access$600(Lio/realm/RealmList;)I

    move-result v1

    iput v1, p0, Lio/realm/RealmList$RealmListItr;->expectedModCount:I
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_20} :catch_22

    .line 1217
    .end local v0    # "i":I
    nop

    .line 1218
    return-void

    .line 1215
    :catch_22
    move-exception v0

    .line 1216
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public hasPrevious()Z
    .registers 2

    .line 1143
    .local p0, "this":Lio/realm/RealmList$RealmListItr;, "Lio/realm/RealmList<TE;>.RealmListItr;"
    iget v0, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public nextIndex()I
    .registers 2

    .line 1169
    .local p0, "this":Lio/realm/RealmList$RealmListItr;, "Lio/realm/RealmList<TE;>.RealmListItr;"
    iget v0, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1152
    .local p0, "this":Lio/realm/RealmList$RealmListItr;, "Lio/realm/RealmList<TE;>.RealmListItr;"
    invoke-virtual {p0}, Lio/realm/RealmList$RealmListItr;->checkConcurrentModification()V

    .line 1153
    iget v0, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 1155
    .local v0, "i":I
    :try_start_7
    iget-object v1, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1156
    .local v1, "previous":Ljava/lang/Object;, "TE;"
    iput v0, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    iput v0, p0, Lio/realm/RealmList$RealmListItr;->lastRet:I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_11} :catch_12

    .line 1157
    return-object v1

    .line 1158
    .end local v1    # "previous":Ljava/lang/Object;, "TE;"
    :catch_12
    move-exception v1

    .line 1159
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Lio/realm/RealmList$RealmListItr;->checkConcurrentModification()V

    .line 1160
    new-instance v2, Ljava/util/NoSuchElementException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot access index less than zero. This was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Remember to check hasPrevious() before using previous()."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public previousIndex()I
    .registers 2

    .line 1177
    .local p0, "this":Lio/realm/RealmList$RealmListItr;, "Lio/realm/RealmList<TE;>.RealmListItr;"
    iget v0, p0, Lio/realm/RealmList$RealmListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1185
    .local p0, "this":Lio/realm/RealmList$RealmListItr;, "Lio/realm/RealmList<TE;>.RealmListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    iget-object v0, v0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1186
    iget v0, p0, Lio/realm/RealmList$RealmListItr;->lastRet:I

    if-ltz v0, :cond_26

    .line 1189
    invoke-virtual {p0}, Lio/realm/RealmList$RealmListItr;->checkConcurrentModification()V

    .line 1192
    :try_start_e
    iget-object v0, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    iget v1, p0, Lio/realm/RealmList$RealmListItr;->lastRet:I

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1193
    iget-object v0, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    invoke-static {v0}, Lio/realm/RealmList;->access$500(Lio/realm/RealmList;)I

    move-result v0

    iput v0, p0, Lio/realm/RealmList$RealmListItr;->expectedModCount:I
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_1d} :catch_1f

    .line 1196
    nop

    .line 1197
    return-void

    .line 1194
    :catch_1f
    move-exception v0

    .line 1195
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1187
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
