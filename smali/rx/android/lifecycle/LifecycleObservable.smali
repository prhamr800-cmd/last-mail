###### Class rx.android.lifecycle.LifecycleObservable (rx.android.lifecycle.LifecycleObservable)
.class public Lrx/android/lifecycle/LifecycleObservable;
.super Ljava/lang/Object;
.source "LifecycleObservable.java"


# static fields
.field private static final ACTIVITY_LIFECYCLE:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRAGMENT_LIFECYCLE:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Lrx/android/lifecycle/LifecycleObservable$4;

    invoke-direct {v0}, Lrx/android/lifecycle/LifecycleObservable$4;-><init>()V

    sput-object v0, Lrx/android/lifecycle/LifecycleObservable;->ACTIVITY_LIFECYCLE:Lrx/functions/Func1;

    .line 160
    new-instance v0, Lrx/android/lifecycle/LifecycleObservable$5;

    invoke-direct {v0}, Lrx/android/lifecycle/LifecycleObservable$5;-><init>()V

    sput-object v0, Lrx/android/lifecycle/LifecycleObservable;->FRAGMENT_LIFECYCLE:Lrx/functions/Func1;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static bindActivityLifecycle(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 71
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<Lrx/android/lifecycle/LifecycleEvent;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable;->ACTIVITY_LIFECYCLE:Lrx/functions/Func1;

    invoke-static {p0, p1, v0}, Lrx/android/lifecycle/LifecycleObservable;->bindLifecycle(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static bindFragmentLifecycle(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 90
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<Lrx/android/lifecycle/LifecycleEvent;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable;->FRAGMENT_LIFECYCLE:Lrx/functions/Func1;

    invoke-static {p0, p1, v0}, Lrx/android/lifecycle/LifecycleObservable;->bindLifecycle(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static bindLifecycle(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;",
            "Lrx/Observable<",
            "TT;>;",
            "Lrx/functions/Func1<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 96
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<Lrx/android/lifecycle/LifecycleEvent;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "correspondingEvents":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/android/lifecycle/LifecycleEvent;Lrx/android/lifecycle/LifecycleEvent;>;"
    if-eqz p0, :cond_31

    if-eqz p1, :cond_31

    .line 101
    invoke-virtual {p0}, Lrx/Observable;->share()Lrx/Observable;

    move-result-object v0

    .line 104
    .local v0, "sharedLifecycle":Lrx/Observable;, "Lrx/Observable<Lrx/android/lifecycle/LifecycleEvent;>;"
    new-instance v1, Lrx/android/lifecycle/OperatorSubscribeUntil;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v3

    invoke-virtual {v3, p2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v3

    invoke-virtual {v0, v2}, Lrx/Observable;->skip(I)Lrx/Observable;

    move-result-object v2

    new-instance v4, Lrx/android/lifecycle/LifecycleObservable$3;

    invoke-direct {v4}, Lrx/android/lifecycle/LifecycleObservable$3;-><init>()V

    invoke-static {v3, v2, v4}, Lrx/Observable;->combineLatest(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lrx/android/lifecycle/LifecycleObservable$2;

    invoke-direct {v3}, Lrx/android/lifecycle/LifecycleObservable$2;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->takeFirst(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-direct {v1, v2}, Lrx/android/lifecycle/OperatorSubscribeUntil;-><init>(Lrx/Observable;)V

    invoke-virtual {p1, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    return-object v1

    .line 97
    .end local v0    # "sharedLifecycle":Lrx/Observable;, "Lrx/Observable<Lrx/android/lifecycle/LifecycleEvent;>;"
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lifecycle and Observable must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bindUntilLifecycleEvent(Lrx/Observable;Lrx/Observable;Lrx/android/lifecycle/LifecycleEvent;)Lrx/Observable;
    .registers 5
    .param p2, "event"    # Lrx/android/lifecycle/LifecycleEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ">;",
            "Lrx/Observable<",
            "TT;>;",
            "Lrx/android/lifecycle/LifecycleEvent;",
            ")",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 39
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<Lrx/android/lifecycle/LifecycleEvent;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 43
    new-instance v0, Lrx/android/lifecycle/OperatorSubscribeUntil;

    new-instance v1, Lrx/android/lifecycle/LifecycleObservable$1;

    invoke-direct {v1, p2}, Lrx/android/lifecycle/LifecycleObservable$1;-><init>(Lrx/android/lifecycle/LifecycleEvent;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->takeFirst(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/android/lifecycle/OperatorSubscribeUntil;-><init>(Lrx/Observable;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0

    .line 40
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lifecycle and Observable must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class rx.android.lifecycle.LifecycleObservable.AnonymousClass1 (rx.android.lifecycle.LifecycleObservable$1)
.class final Lrx/android/lifecycle/LifecycleObservable$1;
.super Ljava/lang/Object;
.source "LifecycleObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/lifecycle/LifecycleObservable;->bindUntilLifecycleEvent(Lrx/Observable;Lrx/Observable;Lrx/android/lifecycle/LifecycleEvent;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/android/lifecycle/LifecycleEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$event:Lrx/android/lifecycle/LifecycleEvent;


# direct methods
.method constructor <init>(Lrx/android/lifecycle/LifecycleEvent;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lrx/android/lifecycle/LifecycleObservable$1;->val$event:Lrx/android/lifecycle/LifecycleEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lrx/android/lifecycle/LifecycleEvent;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "lifecycleEvent"    # Lrx/android/lifecycle/LifecycleEvent;

    .line 48
    iget-object v0, p0, Lrx/android/lifecycle/LifecycleObservable$1;->val$event:Lrx/android/lifecycle/LifecycleEvent;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 45
    move-object v0, p1

    check-cast v0, Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {p0, v0}, Lrx/android/lifecycle/LifecycleObservable$1;->call(Lrx/android/lifecycle/LifecycleEvent;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class rx.android.lifecycle.LifecycleObservable.AnonymousClass2 (rx.android.lifecycle.LifecycleObservable$2)
.class final Lrx/android/lifecycle/LifecycleObservable$2;
.super Ljava/lang/Object;
.source "LifecycleObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/lifecycle/LifecycleObservable;->bindLifecycle(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p1, "shouldComplete"    # Ljava/lang/Boolean;

    .line 118
    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 115
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lrx/android/lifecycle/LifecycleObservable$2;->call(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class rx.android.lifecycle.LifecycleObservable.AnonymousClass3 (rx.android.lifecycle.LifecycleObservable$3)
.class final Lrx/android/lifecycle/LifecycleObservable$3;
.super Ljava/lang/Object;
.source "LifecycleObservable.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/lifecycle/LifecycleObservable;->bindLifecycle(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2<",
        "Lrx/android/lifecycle/LifecycleEvent;",
        "Lrx/android/lifecycle/LifecycleEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lrx/android/lifecycle/LifecycleEvent;Lrx/android/lifecycle/LifecycleEvent;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "bindUntilEvent"    # Lrx/android/lifecycle/LifecycleEvent;
    .param p2, "lifecycleEvent"    # Lrx/android/lifecycle/LifecycleEvent;

    .line 112
    if-ne p2, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 109
    move-object v0, p1

    check-cast v0, Lrx/android/lifecycle/LifecycleEvent;

    move-object v1, p2

    check-cast v1, Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {p0, v0, v1}, Lrx/android/lifecycle/LifecycleObservable$3;->call(Lrx/android/lifecycle/LifecycleEvent;Lrx/android/lifecycle/LifecycleEvent;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class rx.android.lifecycle.LifecycleObservable.AnonymousClass4 (rx.android.lifecycle.LifecycleObservable$4)
.class final Lrx/android/lifecycle/LifecycleObservable$4;
.super Ljava/lang/Object;
.source "LifecycleObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/lifecycle/LifecycleObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/android/lifecycle/LifecycleEvent;",
        "Lrx/android/lifecycle/LifecycleEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 127
    move-object v0, p1

    check-cast v0, Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {p0, v0}, Lrx/android/lifecycle/LifecycleObservable$4;->call(Lrx/android/lifecycle/LifecycleEvent;)Lrx/android/lifecycle/LifecycleEvent;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/android/lifecycle/LifecycleEvent;)Lrx/android/lifecycle/LifecycleEvent;
    .registers 5
    .param p1, "lastEvent"    # Lrx/android/lifecycle/LifecycleEvent;

    .line 130
    if-eqz p1, :cond_5c

    .line 134
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    invoke-virtual {p1}, Lrx/android/lifecycle/LifecycleEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_64

    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to LifecycleEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_29
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bind to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for an Activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot bind to Activity lifecycle when outside of it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_4d
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DESTROY:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 142
    :pswitch_50
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->STOP:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 140
    :pswitch_53
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->PAUSE:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 138
    :pswitch_56
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->STOP:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 136
    :pswitch_59
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DESTROY:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 131
    :cond_5c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot bind to null LifecycleEvent."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_45
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

###### Class rx.android.lifecycle.LifecycleObservable.AnonymousClass5 (rx.android.lifecycle.LifecycleObservable$5)
.class final Lrx/android/lifecycle/LifecycleObservable$5;
.super Ljava/lang/Object;
.source "LifecycleObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/lifecycle/LifecycleObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/android/lifecycle/LifecycleEvent;",
        "Lrx/android/lifecycle/LifecycleEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 161
    move-object v0, p1

    check-cast v0, Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {p0, v0}, Lrx/android/lifecycle/LifecycleObservable$5;->call(Lrx/android/lifecycle/LifecycleEvent;)Lrx/android/lifecycle/LifecycleEvent;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/android/lifecycle/LifecycleEvent;)Lrx/android/lifecycle/LifecycleEvent;
    .registers 5
    .param p1, "lastEvent"    # Lrx/android/lifecycle/LifecycleEvent;

    .line 164
    if-eqz p1, :cond_4c

    .line 168
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    invoke-virtual {p1}, Lrx/android/lifecycle/LifecycleEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to LifecycleEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :pswitch_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot bind to Fragment lifecycle when outside of it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_31
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DESTROY:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 174
    :pswitch_34
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DESTROY_VIEW:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 170
    :pswitch_37
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DETACH:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 186
    :pswitch_3a
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DETACH:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 182
    :pswitch_3d
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DESTROY_VIEW:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 180
    :pswitch_40
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->STOP:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 178
    :pswitch_43
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->PAUSE:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 176
    :pswitch_46
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->STOP:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 172
    :pswitch_49
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DESTROY:Lrx/android/lifecycle/LifecycleEvent;

    return-object v0

    .line 165
    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot bind to null LifecycleEvent."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method

###### Class rx.android.lifecycle.LifecycleObservable.AnonymousClass6 (rx.android.lifecycle.LifecycleObservable$6)
.class synthetic Lrx/android/lifecycle/LifecycleObservable$6;
.super Ljava/lang/Object;
.source "LifecycleObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/lifecycle/LifecycleObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$rx$android$lifecycle$LifecycleEvent:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 134
    invoke-static {}, Lrx/android/lifecycle/LifecycleEvent;->values()[Lrx/android/lifecycle/LifecycleEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    :try_start_9
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->CREATE:Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {v1}, Lrx/android/lifecycle/LifecycleEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->START:Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {v1}, Lrx/android/lifecycle/LifecycleEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->RESUME:Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {v1}, Lrx/android/lifecycle/LifecycleEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->PAUSE:Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {v1}, Lrx/android/lifecycle/LifecycleEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->STOP:Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {v1}, Lrx/android/lifecycle/LifecycleEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    :try_start_4a
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->DESTROY:Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {v1}, Lrx/android/lifecycle/LifecycleEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v0

    :goto_57
    :try_start_57
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->ATTACH:Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {v1}, Lrx/android/lifecycle/LifecycleEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v0

    :goto_64
    :try_start_64
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->CREATE_VIEW:Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {v1}, Lrx/android/lifecycle/LifecycleEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v0

    :goto_72
    :try_start_72
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->DESTROY_VIEW:Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {v1}, Lrx/android/lifecycle/LifecycleEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7e} :catch_7f

    goto :goto_80

    :catch_7f
    move-exception v0

    :goto_80
    :try_start_80
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->DETACH:Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {v1}, Lrx/android/lifecycle/LifecycleEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8c} :catch_8d

    goto :goto_8e

    :catch_8d
    move-exception v0

    :goto_8e
    return-void
.end method
