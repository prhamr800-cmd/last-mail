###### Class io.realm.internal.sync.OsSubscription (io.realm.internal.sync.OsSubscription)
.class public Lio/realm/internal/sync/OsSubscription;
.super Ljava/lang/Object;
.source "OsSubscription.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/sync/OsSubscription$Callback;,
        Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;,
        Lio/realm/internal/sync/OsSubscription$SubscriptionState;
    }
.end annotation


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field private final nativePtr:J

.field protected final observerPairs:Lio/realm/internal/ObserverPairList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    invoke-static {}, Lio/realm/internal/sync/OsSubscription;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/sync/OsSubscription;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsResults;Ljava/lang/String;)V
    .registers 5
    .param p1, "results"    # Lio/realm/internal/OsResults;
    .param p2, "subscriptionName"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lio/realm/internal/ObserverPairList;

    invoke-direct {v0}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/sync/OsSubscription;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 77
    invoke-virtual {p1}, Lio/realm/internal/OsResults;->getNativePtr()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lio/realm/internal/sync/OsSubscription;->nativeCreate(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/sync/OsSubscription;->nativePtr:J

    .line 78
    return-void
.end method

.method private static native nativeCreate(JLjava/lang/String;)J
.end method

.method private static native nativeGetError(J)Ljava/lang/Object;
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetState(J)I
.end method

.method private native nativeStartListening(J)V
.end method

.method private native nativeStopListening(J)V
.end method

.method private notifyChangeListeners()V
    .registers 4
    .annotation build Lio/realm/internal/KeepMember;
    .end annotation

    .line 116
    iget-object v0, p0, Lio/realm/internal/sync/OsSubscription;->observerPairs:Lio/realm/internal/ObserverPairList;

    new-instance v1, Lio/realm/internal/sync/OsSubscription$Callback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/realm/internal/sync/OsSubscription$Callback;-><init>(Lio/realm/internal/sync/OsSubscription$1;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/ObserverPairList;->foreach(Lio/realm/internal/ObserverPairList$Callback;)V

    .line 117
    return-void
.end method


# virtual methods
.method public addChangeListener(Lio/realm/RealmChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/internal/sync/OsSubscription;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/internal/sync/OsSubscription;>;"
    iget-object v0, p0, Lio/realm/internal/sync/OsSubscription;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 101
    iget-wide v0, p0, Lio/realm/internal/sync/OsSubscription;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/sync/OsSubscription;->nativeStartListening(J)V

    .line 103
    :cond_d
    iget-object v0, p0, Lio/realm/internal/sync/OsSubscription;->observerPairs:Lio/realm/internal/ObserverPairList;

    new-instance v1, Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;

    invoke-direct {v1, p0, p1}, Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;-><init>(Lio/realm/internal/sync/OsSubscription;Lio/realm/RealmChangeListener;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/ObserverPairList;->add(Lio/realm/internal/ObserverPairList$ObserverPair;)V

    .line 104
    return-void
.end method

.method public getError()Ljava/lang/Throwable;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 96
    iget-wide v0, p0, Lio/realm/internal/sync/OsSubscription;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/sync/OsSubscription;->nativeGetError(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .registers 3

    .line 87
    sget-wide v0, Lio/realm/internal/sync/OsSubscription;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .registers 3

    .line 82
    iget-wide v0, p0, Lio/realm/internal/sync/OsSubscription;->nativePtr:J

    return-wide v0
.end method

.method public getState()Lio/realm/internal/sync/OsSubscription$SubscriptionState;
    .registers 3

    .line 91
    iget-wide v0, p0, Lio/realm/internal/sync/OsSubscription;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/sync/OsSubscription;->nativeGetState(J)I

    move-result v0

    invoke-static {v0}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->fromInternalValue(I)Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    move-result-object v0

    return-object v0
.end method

.method public removeChangeListener(Lio/realm/RealmChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/internal/sync/OsSubscription;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/internal/sync/OsSubscription;>;"
    iget-object v0, p0, Lio/realm/internal/sync/OsSubscription;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/ObserverPairList;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lio/realm/internal/sync/OsSubscription;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 109
    iget-wide v0, p0, Lio/realm/internal/sync/OsSubscription;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/sync/OsSubscription;->nativeStopListening(J)V

    .line 111
    :cond_12
    return-void
.end method

###### Class io.realm.internal.sync.OsSubscription.AnonymousClass1 (io.realm.internal.sync.OsSubscription$1)
.class synthetic Lio/realm/internal/sync/OsSubscription$1;
.super Ljava/lang/Object;
.source "OsSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/sync/OsSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.realm.internal.sync.OsSubscription.Callback (io.realm.internal.sync.OsSubscription$Callback)
.class Lio/realm/internal/sync/OsSubscription$Callback;
.super Ljava/lang/Object;
.source "OsSubscription.java"

# interfaces
.implements Lio/realm/internal/ObserverPairList$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/sync/OsSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/internal/ObserverPairList$Callback<",
        "Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/internal/sync/OsSubscription$1;)V
    .registers 2
    .param p1, "x0"    # Lio/realm/internal/sync/OsSubscription$1;

    .line 66
    invoke-direct {p0}, Lio/realm/internal/sync/OsSubscription$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCalled(Lio/realm/internal/ObserverPairList$ObserverPair;Ljava/lang/Object;)V
    .registers 3

    .line 66
    check-cast p1, Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/sync/OsSubscription$Callback;->onCalled(Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;Ljava/lang/Object;)V

    return-void
.end method

.method public onCalled(Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;Ljava/lang/Object;)V
    .registers 4
    .param p1, "pair"    # Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;
    .param p2, "observer"    # Ljava/lang/Object;

    .line 69
    move-object v0, p2

    check-cast v0, Lio/realm/internal/sync/OsSubscription;

    invoke-virtual {p1, v0}, Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;->onChange(Lio/realm/internal/sync/OsSubscription;)V

    .line 70
    return-void
.end method

###### Class io.realm.internal.sync.OsSubscription.SubscriptionObserverPair (io.realm.internal.sync.OsSubscription$SubscriptionObserverPair)
.class Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;
.super Lio/realm/internal/ObserverPairList$ObserverPair;
.source "OsSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/sync/OsSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubscriptionObserverPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/ObserverPairList$ObserverPair<",
        "Lio/realm/internal/sync/OsSubscription;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/internal/sync/OsSubscription;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/realm/internal/sync/OsSubscription;Lio/realm/RealmChangeListener;)V
    .registers 3
    .param p1, "observer"    # Lio/realm/internal/sync/OsSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/sync/OsSubscription;",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/internal/sync/OsSubscription;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p2, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/internal/sync/OsSubscription;>;"
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ObserverPairList$ObserverPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/internal/sync/OsSubscription;)V
    .registers 3
    .param p1, "observer"    # Lio/realm/internal/sync/OsSubscription;

    .line 62
    iget-object v0, p0, Lio/realm/internal/sync/OsSubscription$SubscriptionObserverPair;->listener:Ljava/lang/Object;

    check-cast v0, Lio/realm/RealmChangeListener;

    invoke-interface {v0, p1}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

###### Class io.realm.internal.sync.OsSubscription.SubscriptionState (io.realm.internal.sync.OsSubscription$SubscriptionState)
.class public final enum Lio/realm/internal/sync/OsSubscription$SubscriptionState;
.super Ljava/lang/Enum;
.source "OsSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/sync/OsSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubscriptionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/sync/OsSubscription$SubscriptionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/sync/OsSubscription$SubscriptionState;

.field public static final enum COMPLETE:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

.field public static final enum CREATING:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

.field public static final enum ERROR:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

.field public static final enum INVALIDATED:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

.field public static final enum PENDING:Lio/realm/internal/sync/OsSubscription$SubscriptionState;


# instance fields
.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 33
    new-instance v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->ERROR:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    .line 34
    new-instance v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    const-string v1, "CREATING"

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->CREATING:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    .line 35
    new-instance v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3, v2}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->PENDING:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    .line 36
    new-instance v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    const-string v1, "COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->COMPLETE:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    .line 37
    new-instance v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    const-string v1, "INVALIDATED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->INVALIDATED:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    sget-object v1, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->ERROR:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->CREATING:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->PENDING:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->COMPLETE:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->INVALIDATED:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    aput-object v1, v0, v6

    sput-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->$VALUES:[Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->val:I

    .line 43
    return-void
.end method

.method public static fromInternalValue(I)Lio/realm/internal/sync/OsSubscription$SubscriptionState;
    .registers 6
    .param p0, "val"    # I

    .line 46
    invoke-static {}, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->values()[Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 47
    .local v3, "subscriptionState":Lio/realm/internal/sync/OsSubscription$SubscriptionState;
    iget v4, v3, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->val:I

    if-ne v4, p0, :cond_f

    .line 48
    return-object v3

    .line 46
    .end local v3    # "subscriptionState":Lio/realm/internal/sync/OsSubscription$SubscriptionState;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 51
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/sync/OsSubscription$SubscriptionState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    return-object v0
.end method

.method public static values()[Lio/realm/internal/sync/OsSubscription$SubscriptionState;
    .registers 1

    .line 32
    sget-object v0, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->$VALUES:[Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    invoke-virtual {v0}, [Lio/realm/internal/sync/OsSubscription$SubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    return-object v0
.end method
