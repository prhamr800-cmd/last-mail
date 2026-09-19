###### Class rx.android.app.OperatorConditionalBinding (rx.android.app.OperatorConditionalBinding)
.class final Lrx/android/app/OperatorConditionalBinding;
.super Ljava/lang/Object;
.source "OperatorConditionalBinding.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ConditionalBinding"


# instance fields
.field private boundRef:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final predicate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TR;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding;, "Lrx/android/app/OperatorConditionalBinding<TT;TR;>;"
    .local p1, "bound":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/android/app/OperatorConditionalBinding;->boundRef:Ljava/lang/Object;

    .line 48
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->alwaysTrue()Lrx/functions/Func1;

    move-result-object v0

    iput-object v0, p0, Lrx/android/app/OperatorConditionalBinding;->predicate:Lrx/functions/Func1;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lrx/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/functions/Func1<",
            "-TR;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding;, "Lrx/android/app/OperatorConditionalBinding<TT;TR;>;"
    .local p1, "bound":Ljava/lang/Object;, "TR;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TR;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lrx/android/app/OperatorConditionalBinding;->boundRef:Ljava/lang/Object;

    .line 43
    iput-object p2, p0, Lrx/android/app/OperatorConditionalBinding;->predicate:Lrx/functions/Func1;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lrx/android/app/OperatorConditionalBinding;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lrx/android/app/OperatorConditionalBinding;

    .line 34
    iget-object v0, p0, Lrx/android/app/OperatorConditionalBinding;->boundRef:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lrx/android/app/OperatorConditionalBinding;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lrx/android/app/OperatorConditionalBinding;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lrx/android/app/OperatorConditionalBinding;->boundRef:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lrx/android/app/OperatorConditionalBinding;)Lrx/functions/Func1;
    .registers 2
    .param p0, "x0"    # Lrx/android/app/OperatorConditionalBinding;

    .line 34
    iget-object v0, p0, Lrx/android/app/OperatorConditionalBinding;->predicate:Lrx/functions/Func1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 34
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding;, "Lrx/android/app/OperatorConditionalBinding<TT;TR;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/android/app/OperatorConditionalBinding;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding;, "Lrx/android/app/OperatorConditionalBinding<TT;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/android/app/OperatorConditionalBinding$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/android/app/OperatorConditionalBinding$1;-><init>(Lrx/android/app/OperatorConditionalBinding;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

.method getBoundRef()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding;, "Lrx/android/app/OperatorConditionalBinding<TT;TR;>;"
    iget-object v0, p0, Lrx/android/app/OperatorConditionalBinding;->boundRef:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.android.app.OperatorConditionalBinding.AnonymousClass1 (rx.android.app.OperatorConditionalBinding$1)
.class Lrx/android/app/OperatorConditionalBinding$1;
.super Lrx/Subscriber;
.source "OperatorConditionalBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/app/OperatorConditionalBinding;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/app/OperatorConditionalBinding;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/app/OperatorConditionalBinding;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 53
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding$1;, "Lrx/android/app/OperatorConditionalBinding.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/android/app/OperatorConditionalBinding$1;->this$0:Lrx/android/app/OperatorConditionalBinding;

    iput-object p3, p0, Lrx/android/app/OperatorConditionalBinding$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method

.method private handleLostBinding(Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Ljava/lang/String;

    .line 90
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding$1;, "Lrx/android/app/OperatorConditionalBinding.1;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bound object has become invalid; skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/android/app/OperatorConditionalBinding$1;->log(Ljava/lang/String;)V

    .line 91
    const-string v0, "unsubscribing..."

    invoke-direct {p0, v0}, Lrx/android/app/OperatorConditionalBinding$1;->log(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lrx/android/app/OperatorConditionalBinding$1;->this$0:Lrx/android/app/OperatorConditionalBinding;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lrx/android/app/OperatorConditionalBinding;->access$002(Lrx/android/app/OperatorConditionalBinding;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Lrx/android/app/OperatorConditionalBinding$1;->unsubscribe()V

    .line 94
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 97
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding$1;, "Lrx/android/app/OperatorConditionalBinding.1;"
    const-string v0, "ConditionalBinding"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    const-string v0, "ConditionalBinding"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_e
    return-void
.end method

.method private shouldForwardNotification()Z
    .registers 3

    .line 86
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding$1;, "Lrx/android/app/OperatorConditionalBinding.1;"
    iget-object v0, p0, Lrx/android/app/OperatorConditionalBinding$1;->this$0:Lrx/android/app/OperatorConditionalBinding;

    invoke-static {v0}, Lrx/android/app/OperatorConditionalBinding;->access$000(Lrx/android/app/OperatorConditionalBinding;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lrx/android/app/OperatorConditionalBinding$1;->this$0:Lrx/android/app/OperatorConditionalBinding;

    invoke-static {v0}, Lrx/android/app/OperatorConditionalBinding;->access$100(Lrx/android/app/OperatorConditionalBinding;)Lrx/functions/Func1;

    move-result-object v0

    iget-object v1, p0, Lrx/android/app/OperatorConditionalBinding$1;->this$0:Lrx/android/app/OperatorConditionalBinding;

    invoke-static {v1}, Lrx/android/app/OperatorConditionalBinding;->access$000(Lrx/android/app/OperatorConditionalBinding;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 57
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding$1;, "Lrx/android/app/OperatorConditionalBinding.1;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 58
    invoke-direct {p0}, Lrx/android/app/OperatorConditionalBinding$1;->shouldForwardNotification()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 59
    iget-object v0, p0, Lrx/android/app/OperatorConditionalBinding$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_14

    .line 61
    :cond_f
    const-string v0, "onCompleted"

    invoke-direct {p0, v0}, Lrx/android/app/OperatorConditionalBinding$1;->handleLostBinding(Ljava/lang/String;)V

    .line 63
    :goto_14
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 67
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding$1;, "Lrx/android/app/OperatorConditionalBinding.1;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 68
    invoke-direct {p0}, Lrx/android/app/OperatorConditionalBinding$1;->shouldForwardNotification()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 69
    iget-object v0, p0, Lrx/android/app/OperatorConditionalBinding$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_14

    .line 71
    :cond_f
    const-string v0, "onError"

    invoke-direct {p0, v0}, Lrx/android/app/OperatorConditionalBinding$1;->handleLostBinding(Ljava/lang/String;)V

    .line 73
    :goto_14
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding$1;, "Lrx/android/app/OperatorConditionalBinding.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 78
    invoke-direct {p0}, Lrx/android/app/OperatorConditionalBinding$1;->shouldForwardNotification()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 79
    iget-object v0, p0, Lrx/android/app/OperatorConditionalBinding$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_14

    .line 81
    :cond_f
    const-string v0, "onNext"

    invoke-direct {p0, v0}, Lrx/android/app/OperatorConditionalBinding$1;->handleLostBinding(Ljava/lang/String;)V

    .line 83
    :goto_14
    return-void
.end method
