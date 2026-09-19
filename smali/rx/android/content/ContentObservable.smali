###### Class rx.android.content.ContentObservable (rx.android.content.ContentObservable)
.class public final Lrx/android/content/ContentObservable;
.super Ljava/lang/Object;
.source "ContentObservable.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static fromBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/Observable;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            ")",
            "Lrx/Observable<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lrx/android/content/OnSubscribeBroadcastRegister;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lrx/android/content/OnSubscribeBroadcastRegister;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static fromBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Lrx/Observable;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "broadcastPermission"    # Ljava/lang/String;
    .param p3, "schedulerHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ")",
            "Lrx/Observable<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Lrx/android/content/OnSubscribeBroadcastRegister;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/android/content/OnSubscribeBroadcastRegister;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lrx/Observable;
    .registers 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lrx/Observable<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Lrx/android/content/OnSubscribeCursor;

    invoke-direct {v0, p0}, Lrx/android/content/OnSubscribeCursor;-><init>(Landroid/database/Cursor;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static fromLocalBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/Observable;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            ")",
            "Lrx/Observable<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lrx/android/content/OnSubscribeLocalBroadcastRegister;

    invoke-direct {v0, p0, p1}, Lrx/android/content/OnSubscribeLocalBroadcastRegister;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static fromSharedPreferencesChanges(Landroid/content/SharedPreferences;)Lrx/Observable;
    .registers 2
    .param p0, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Lrx/android/content/OnSubscribeSharedPreferenceChange;

    invoke-direct {v0, p0}, Lrx/android/content/OnSubscribeSharedPreferenceChange;-><init>(Landroid/content/SharedPreferences;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
