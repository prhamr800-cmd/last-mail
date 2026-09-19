###### Class rx.android.widget.OnSubscribeTextViewInput (rx.android.widget.OnSubscribeTextViewInput)
.class Lrx/android/widget/OnSubscribeTextViewInput;
.super Ljava/lang/Object;
.source "OnSubscribeTextViewInput.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/widget/OnSubscribeTextViewInput$SimpleTextWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Lrx/android/widget/OnTextChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final emitInitialValue:Z

.field private final input:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Z)V
    .registers 3
    .param p1, "input"    # Landroid/widget/TextView;
    .param p2, "emitInitialValue"    # Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/android/widget/OnSubscribeTextViewInput;->input:Landroid/widget/TextView;

    .line 32
    iput-boolean p2, p0, Lrx/android/widget/OnSubscribeTextViewInput;->emitInitialValue:Z

    .line 33
    return-void
.end method

.method static synthetic access$100(Lrx/android/widget/OnSubscribeTextViewInput;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lrx/android/widget/OnSubscribeTextViewInput;

    .line 26
    iget-object v0, p0, Lrx/android/widget/OnSubscribeTextViewInput;->input:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 26
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/android/widget/OnSubscribeTextViewInput;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/android/widget/OnTextChangeEvent;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "observer":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/android/widget/OnTextChangeEvent;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 38
    new-instance v0, Lrx/android/widget/OnSubscribeTextViewInput$1;

    invoke-direct {v0, p0, p1}, Lrx/android/widget/OnSubscribeTextViewInput$1;-><init>(Lrx/android/widget/OnSubscribeTextViewInput;Lrx/Subscriber;)V

    .line 45
    .local v0, "watcher":Landroid/text/TextWatcher;
    new-instance v1, Lrx/android/widget/OnSubscribeTextViewInput$2;

    invoke-direct {v1, p0, v0}, Lrx/android/widget/OnSubscribeTextViewInput$2;-><init>(Lrx/android/widget/OnSubscribeTextViewInput;Landroid/text/TextWatcher;)V

    invoke-static {v1}, Lrx/android/AndroidSubscriptions;->unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    .line 52
    .local v1, "subscription":Lrx/Subscription;
    iget-boolean v2, p0, Lrx/android/widget/OnSubscribeTextViewInput;->emitInitialValue:Z

    if-eqz v2, :cond_1e

    .line 53
    iget-object v2, p0, Lrx/android/widget/OnSubscribeTextViewInput;->input:Landroid/widget/TextView;

    invoke-static {v2}, Lrx/android/widget/OnTextChangeEvent;->create(Landroid/widget/TextView;)Lrx/android/widget/OnTextChangeEvent;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 56
    :cond_1e
    iget-object v2, p0, Lrx/android/widget/OnSubscribeTextViewInput;->input:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 58
    return-void
.end method

###### Class rx.android.widget.OnSubscribeTextViewInput.AnonymousClass1 (rx.android.widget.OnSubscribeTextViewInput$1)
.class Lrx/android/widget/OnSubscribeTextViewInput$1;
.super Lrx/android/widget/OnSubscribeTextViewInput$SimpleTextWatcher;
.source "OnSubscribeTextViewInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeTextViewInput;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/widget/OnSubscribeTextViewInput;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeTextViewInput;Lrx/Subscriber;)V
    .registers 3

    .line 38
    iput-object p1, p0, Lrx/android/widget/OnSubscribeTextViewInput$1;->this$0:Lrx/android/widget/OnSubscribeTextViewInput;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeTextViewInput$1;->val$observer:Lrx/Subscriber;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrx/android/widget/OnSubscribeTextViewInput$SimpleTextWatcher;-><init>(Lrx/android/widget/OnSubscribeTextViewInput$1;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "editable"    # Landroid/text/Editable;

    .line 41
    iget-object v0, p0, Lrx/android/widget/OnSubscribeTextViewInput$1;->val$observer:Lrx/Subscriber;

    iget-object v1, p0, Lrx/android/widget/OnSubscribeTextViewInput$1;->this$0:Lrx/android/widget/OnSubscribeTextViewInput;

    invoke-static {v1}, Lrx/android/widget/OnSubscribeTextViewInput;->access$100(Lrx/android/widget/OnSubscribeTextViewInput;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lrx/android/widget/OnTextChangeEvent;->create(Landroid/widget/TextView;)Lrx/android/widget/OnTextChangeEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

###### Class rx.android.widget.OnSubscribeTextViewInput.AnonymousClass2 (rx.android.widget.OnSubscribeTextViewInput$2)
.class Lrx/android/widget/OnSubscribeTextViewInput$2;
.super Ljava/lang/Object;
.source "OnSubscribeTextViewInput.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeTextViewInput;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/widget/OnSubscribeTextViewInput;

.field final synthetic val$watcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeTextViewInput;Landroid/text/TextWatcher;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lrx/android/widget/OnSubscribeTextViewInput$2;->this$0:Lrx/android/widget/OnSubscribeTextViewInput;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeTextViewInput$2;->val$watcher:Landroid/text/TextWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 48
    iget-object v0, p0, Lrx/android/widget/OnSubscribeTextViewInput$2;->this$0:Lrx/android/widget/OnSubscribeTextViewInput;

    invoke-static {v0}, Lrx/android/widget/OnSubscribeTextViewInput;->access$100(Lrx/android/widget/OnSubscribeTextViewInput;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lrx/android/widget/OnSubscribeTextViewInput$2;->val$watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    return-void
.end method

###### Class rx.android.widget.OnSubscribeTextViewInput.SimpleTextWatcher (rx.android.widget.OnSubscribeTextViewInput$SimpleTextWatcher)
.class Lrx/android/widget/OnSubscribeTextViewInput$SimpleTextWatcher;
.super Ljava/lang/Object;
.source "OnSubscribeTextViewInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeTextViewInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTextWatcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/android/widget/OnSubscribeTextViewInput$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/android/widget/OnSubscribeTextViewInput$1;

    .line 60
    invoke-direct {p0}, Lrx/android/widget/OnSubscribeTextViewInput$SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "editable"    # Landroid/text/Editable;

    .line 74
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 64
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 69
    return-void
.end method
