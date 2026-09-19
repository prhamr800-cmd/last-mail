###### Class io.realm.OrderedCollectionChangeSet (io.realm.OrderedCollectionChangeSet)
.class public interface abstract Lio/realm/OrderedCollectionChangeSet;
.super Ljava/lang/Object;
.source "OrderedCollectionChangeSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/OrderedCollectionChangeSet$Range;,
        Lio/realm/OrderedCollectionChangeSet$State;
    }
.end annotation


# virtual methods
.method public abstract getChangeRanges()[Lio/realm/OrderedCollectionChangeSet$Range;
.end method

.method public abstract getChanges()[I
.end method

.method public abstract getDeletionRanges()[Lio/realm/OrderedCollectionChangeSet$Range;
.end method

.method public abstract getDeletions()[I
.end method

.method public abstract getError()Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getInsertionRanges()[Lio/realm/OrderedCollectionChangeSet$Range;
.end method

.method public abstract getInsertions()[I
.end method

.method public abstract getState()Lio/realm/OrderedCollectionChangeSet$State;
.end method

.method public abstract isCompleteResult()Z
.end method

###### Class io.realm.OrderedCollectionChangeSet.Range (io.realm.OrderedCollectionChangeSet$Range)
.class public Lio/realm/OrderedCollectionChangeSet$Range;
.super Ljava/lang/Object;
.source "OrderedCollectionChangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/OrderedCollectionChangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public final length:I

.field public final startIndex:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "startIndex"    # I
    .param p2, "length"    # I

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput p1, p0, Lio/realm/OrderedCollectionChangeSet$Range;->startIndex:I

    .line 186
    iput p2, p0, Lio/realm/OrderedCollectionChangeSet$Range;->length:I

    .line 187
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .line 191
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "startIndex: %d, length: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lio/realm/OrderedCollectionChangeSet$Range;->startIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lio/realm/OrderedCollectionChangeSet$Range;->length:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.OrderedCollectionChangeSet.State (io.realm.OrderedCollectionChangeSet$State)
.class public final enum Lio/realm/OrderedCollectionChangeSet$State;
.super Ljava/lang/Enum;
.source "OrderedCollectionChangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/OrderedCollectionChangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/OrderedCollectionChangeSet$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/OrderedCollectionChangeSet$State;

.field public static final enum ERROR:Lio/realm/OrderedCollectionChangeSet$State;

.field public static final enum INITIAL:Lio/realm/OrderedCollectionChangeSet$State;

.field public static final enum UPDATE:Lio/realm/OrderedCollectionChangeSet$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 42
    new-instance v0, Lio/realm/OrderedCollectionChangeSet$State;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/OrderedCollectionChangeSet$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/OrderedCollectionChangeSet$State;->INITIAL:Lio/realm/OrderedCollectionChangeSet$State;

    .line 46
    new-instance v0, Lio/realm/OrderedCollectionChangeSet$State;

    const-string v1, "UPDATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/realm/OrderedCollectionChangeSet$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/OrderedCollectionChangeSet$State;->UPDATE:Lio/realm/OrderedCollectionChangeSet$State;

    .line 59
    new-instance v0, Lio/realm/OrderedCollectionChangeSet$State;

    const-string v1, "ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/realm/OrderedCollectionChangeSet$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/OrderedCollectionChangeSet$State;->ERROR:Lio/realm/OrderedCollectionChangeSet$State;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lio/realm/OrderedCollectionChangeSet$State;

    sget-object v1, Lio/realm/OrderedCollectionChangeSet$State;->INITIAL:Lio/realm/OrderedCollectionChangeSet$State;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/OrderedCollectionChangeSet$State;->UPDATE:Lio/realm/OrderedCollectionChangeSet$State;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/OrderedCollectionChangeSet$State;->ERROR:Lio/realm/OrderedCollectionChangeSet$State;

    aput-object v1, v0, v4

    sput-object v0, Lio/realm/OrderedCollectionChangeSet$State;->$VALUES:[Lio/realm/OrderedCollectionChangeSet$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/OrderedCollectionChangeSet$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lio/realm/OrderedCollectionChangeSet$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/OrderedCollectionChangeSet$State;

    return-object v0
.end method

.method public static values()[Lio/realm/OrderedCollectionChangeSet$State;
    .registers 1

    .line 37
    sget-object v0, Lio/realm/OrderedCollectionChangeSet$State;->$VALUES:[Lio/realm/OrderedCollectionChangeSet$State;

    invoke-virtual {v0}, [Lio/realm/OrderedCollectionChangeSet$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/OrderedCollectionChangeSet$State;

    return-object v0
.end method
