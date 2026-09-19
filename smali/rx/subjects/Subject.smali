###### Class rx.subjects.Subject (rx.subjects.Subject)
.class public abstract Lrx/subjects/Subject;
.super Lrx/Observable;
.source "Subject.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable<",
        "TR;>;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 124
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lrx/subjects/Subject;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lrx/Observable$OnSubscribe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TR;>;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TR;>;"
    invoke-direct {p0, p1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 91
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 121
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValues()[Ljava/lang/Object;
    .registers 3
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 135
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    sget-object v0, Lrx/subjects/Subject;->EMPTY_ARRAY:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lrx/subjects/Subject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, "r":[Ljava/lang/Object;, "[TT;"
    sget-object v1, Lrx/subjects/Subject;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v0, v1, :cond_10

    .line 137
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    return-object v1

    .line 139
    :cond_10
    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 156
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasCompleted()Z
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 79
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract hasObservers()Z
.end method

.method public hasThrowable()Z
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 68
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasValue()Z
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 105
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toSerialized()Lrx/subjects/SerializedSubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/SerializedSubject<",
            "TT;TR;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/subjects/SerializedSubject;

    if-ne v0, v1, :cond_c

    .line 55
    move-object v0, p0

    check-cast v0, Lrx/subjects/SerializedSubject;

    return-object v0

    .line 57
    :cond_c
    new-instance v0, Lrx/subjects/SerializedSubject;

    invoke-direct {v0, p0}, Lrx/subjects/SerializedSubject;-><init>(Lrx/subjects/Subject;)V

    return-object v0
.end method
