###### Class rx.android.app.AppObservable (rx.android.app.AppObservable)
.class public final Lrx/android/app/AppObservable;
.super Ljava/lang/Object;
.source "AppObservable.java"


# static fields
.field private static final ACTIVITY_VALIDATOR:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRAGMENTV4_VALIDATOR:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRAGMENT_VALIDATOR:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Landroid/app/Fragment;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lrx/android/app/AppObservable$1;

    invoke-direct {v0}, Lrx/android/app/AppObservable$1;-><init>()V

    sput-object v0, Lrx/android/app/AppObservable;->ACTIVITY_VALIDATOR:Lrx/functions/Func1;

    .line 35
    new-instance v0, Lrx/android/app/AppObservable$2;

    invoke-direct {v0}, Lrx/android/app/AppObservable$2;-><init>()V

    sput-object v0, Lrx/android/app/AppObservable;->FRAGMENT_VALIDATOR:Lrx/functions/Func1;

    .line 41
    new-instance v0, Lrx/android/app/AppObservable$3;

    invoke-direct {v0}, Lrx/android/app/AppObservable$3;-><init>()V

    sput-object v0, Lrx/android/app/AppObservable;->FRAGMENTV4_VALIDATOR:Lrx/functions/Func1;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static bindActivity(Landroid/app/Activity;Lrx/Observable;)Lrx/Observable;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 64
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 65
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/android/app/OperatorConditionalBinding;

    sget-object v2, Lrx/android/app/AppObservable;->ACTIVITY_VALIDATOR:Lrx/functions/Func1;

    invoke-direct {v1, p0, v2}, Lrx/android/app/OperatorConditionalBinding;-><init>(Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static bindFragment(Landroid/app/Fragment;Lrx/Observable;)Lrx/Observable;
    .registers 5
    .param p0, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Fragment;",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 84
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 85
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/android/app/OperatorConditionalBinding;

    sget-object v2, Lrx/android/app/AppObservable;->FRAGMENT_VALIDATOR:Lrx/functions/Func1;

    invoke-direct {v1, p0, v2}, Lrx/android/app/OperatorConditionalBinding;-><init>(Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static bindSupportFragment(Landroid/support/v4/app/Fragment;Lrx/Observable;)Lrx/Observable;
    .registers 5
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/app/Fragment;",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 95
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 96
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/android/app/OperatorConditionalBinding;

    sget-object v2, Lrx/android/app/AppObservable;->FRAGMENTV4_VALIDATOR:Lrx/functions/Func1;

    invoke-direct {v1, p0, v2}, Lrx/android/app/OperatorConditionalBinding;-><init>(Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.android.app.AppObservable.AnonymousClass1 (rx.android.app.AppObservable$1)
.class final Lrx/android/app/AppObservable$1;
.super Ljava/lang/Object;
.source "AppObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/app/AppObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Landroid/app/Activity;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/app/Activity;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lrx/android/app/AppObservable$1;->call(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class rx.android.app.AppObservable.AnonymousClass2 (rx.android.app.AppObservable$2)
.class final Lrx/android/app/AppObservable$2;
.super Ljava/lang/Object;
.source "AppObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/app/AppObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Landroid/app/Fragment;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/app/Fragment;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 38
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 35
    move-object v0, p1

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {p0, v0}, Lrx/android/app/AppObservable$2;->call(Landroid/app/Fragment;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class rx.android.app.AppObservable.AnonymousClass3 (rx.android.app.AppObservable$3)
.class final Lrx/android/app/AppObservable$3;
.super Ljava/lang/Object;
.source "AppObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/app/AppObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Landroid/support/v4/app/Fragment;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/support/v4/app/Fragment;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 45
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 42
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Lrx/android/app/AppObservable$3;->call(Landroid/support/v4/app/Fragment;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
