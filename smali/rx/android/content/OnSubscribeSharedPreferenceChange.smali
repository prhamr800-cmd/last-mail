###### Class rx.android.content.OnSubscribeSharedPreferenceChange (rx.android.content.OnSubscribeSharedPreferenceChange)
.class Lrx/android/content/OnSubscribeSharedPreferenceChange;
.super Ljava/lang/Object;
.source "OnSubscribeSharedPreferenceChange.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lrx/android/content/OnSubscribeSharedPreferenceChange;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Lrx/android/content/OnSubscribeSharedPreferenceChange;

    .line 22
    iget-object v0, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 22
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/android/content/OnSubscribeSharedPreferenceChange;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/String;>;"
    new-instance v0, Lrx/android/content/OnSubscribeSharedPreferenceChange$1;

    invoke-direct {v0, p0, p1}, Lrx/android/content/OnSubscribeSharedPreferenceChange$1;-><init>(Lrx/android/content/OnSubscribeSharedPreferenceChange;Lrx/Subscriber;)V

    .line 39
    .local v0, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    new-instance v1, Lrx/android/content/OnSubscribeSharedPreferenceChange$2;

    invoke-direct {v1, p0, v0}, Lrx/android/content/OnSubscribeSharedPreferenceChange$2;-><init>(Lrx/android/content/OnSubscribeSharedPreferenceChange;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 46
    iget-object v1, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 47
    return-void
.end method

###### Class rx.android.content.OnSubscribeSharedPreferenceChange.AnonymousClass1 (rx.android.content.OnSubscribeSharedPreferenceChange$1)
.class Lrx/android/content/OnSubscribeSharedPreferenceChange$1;
.super Ljava/lang/Object;
.source "OnSubscribeSharedPreferenceChange.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/content/OnSubscribeSharedPreferenceChange;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/content/OnSubscribeSharedPreferenceChange;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/content/OnSubscribeSharedPreferenceChange;Lrx/Subscriber;)V
    .registers 3

    .line 32
    iput-object p1, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$1;->this$0:Lrx/android/content/OnSubscribeSharedPreferenceChange;

    iput-object p2, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

###### Class rx.android.content.OnSubscribeSharedPreferenceChange.AnonymousClass2 (rx.android.content.OnSubscribeSharedPreferenceChange$2)
.class Lrx/android/content/OnSubscribeSharedPreferenceChange$2;
.super Ljava/lang/Object;
.source "OnSubscribeSharedPreferenceChange.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/content/OnSubscribeSharedPreferenceChange;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/content/OnSubscribeSharedPreferenceChange;

.field final synthetic val$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method constructor <init>(Lrx/android/content/OnSubscribeSharedPreferenceChange;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3

    .line 39
    iput-object p1, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$2;->this$0:Lrx/android/content/OnSubscribeSharedPreferenceChange;

    iput-object p2, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$2;->val$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 42
    iget-object v0, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$2;->this$0:Lrx/android/content/OnSubscribeSharedPreferenceChange;

    invoke-static {v0}, Lrx/android/content/OnSubscribeSharedPreferenceChange;->access$000(Lrx/android/content/OnSubscribeSharedPreferenceChange;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$2;->val$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 43
    return-void
.end method
