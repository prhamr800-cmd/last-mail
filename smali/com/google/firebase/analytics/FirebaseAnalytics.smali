###### Class com.google.firebase.analytics.FirebaseAnalytics (com.google.firebase.analytics.FirebaseAnalytics)
.class public final Lcom/google/firebase/analytics/FirebaseAnalytics;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/analytics/FirebaseAnalytics$UserProperty;,
        Lcom/google/firebase/analytics/FirebaseAnalytics$Param;,
        Lcom/google/firebase/analytics/FirebaseAnalytics$Event;
    }
.end annotation


# static fields
.field private static volatile zzbsv:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private final zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

.field private zzbsw:Ljava/lang/String;

.field private zzbsx:J

.field private final zzbsy:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzbu;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 41
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzbsy:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE",
            "android.permission.WAKE_LOCK"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzbsv:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_1e

    .line 2
    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzbsv:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v1, :cond_19

    .line 4
    nop

    .line 5
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zza(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzal;)Lcom/google/android/gms/measurement/internal/zzbu;

    move-result-object p0

    .line 6
    nop

    .line 7
    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;)V

    sput-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzbsv:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 8
    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p0

    .line 9
    :cond_1e
    :goto_1e
    sget-object p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzbsv:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/analytics/FirebaseAnalytics;)Ljava/lang/String;
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzgc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/analytics/FirebaseAnalytics;Ljava/lang/String;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzcr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/firebase/analytics/FirebaseAnalytics;)Lcom/google/android/gms/measurement/internal/zzbu;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    return-object p0
.end method

.method private final zzcr(Ljava/lang/String;)V
    .registers 5

    .line 47
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzbsy:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzbsw:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzbsx:J

    .line 50
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method private final zzgc()Ljava/lang/String;
    .registers 7

    .line 51
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzbsy:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzbsx:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-gez v5, :cond_1f

    .line 53
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzbsw:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 54
    :cond_1f
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 55
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method


# virtual methods
.method public final getAppInstanceId()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzgc()Ljava/lang/String;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_b

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 31
    :cond_b
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbp;->zzkg()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/analytics/zza;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/zza;-><init>(Lcom/google/firebase/analytics/FirebaseAnalytics;)V

    .line 33
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 34
    return-object v0

    .line 35
    :catch_1f
    move-exception v0

    .line 36
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to schedule task for getAppInstanceId"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getFirebaseInstanceId()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 46
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x28L
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkm()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    return-void
.end method

.method public final resetAnalyticsData()V
    .registers 4

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzcr(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgj()Lcom/google/android/gms/measurement/internal/zzcy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzcy;->resetAnalyticsData(J)V

    .line 45
    return-void
.end method

.method public final setAnalyticsCollectionEnabled(Z)V
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkm()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement;->setMeasurementEnabled(Z)V

    .line 20
    return-void
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 14
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzl;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_16

    .line 15
    iget-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called from the main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_16
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgm()Lcom/google/android/gms/measurement/internal/zzdw;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzdw;->setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public final setMinimumSessionDuration(J)V
    .registers 4

    .line 24
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkm()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->setMinimumSessionDuration(J)V

    .line 25
    return-void
.end method

.method public final setSessionTimeoutDuration(J)V
    .registers 4

    .line 26
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkm()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->setSessionTimeoutDuration(J)V

    .line 27
    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkm()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    .line 22
    const-string v1, "app"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/measurement/AppMeasurement;->setUserPropertyInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public final setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x18L
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
        .end annotation
    .end param

    .line 12
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkm()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

###### Class com.google.firebase.analytics.FirebaseAnalytics.Event (com.google.firebase.analytics.FirebaseAnalytics$Event)
.class public Lcom/google/firebase/analytics/FirebaseAnalytics$Event;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/analytics/FirebaseAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final ADD_PAYMENT_INFO:Ljava/lang/String; = "add_payment_info"

.field public static final ADD_TO_CART:Ljava/lang/String; = "add_to_cart"

.field public static final ADD_TO_WISHLIST:Ljava/lang/String; = "add_to_wishlist"

.field public static final APP_OPEN:Ljava/lang/String; = "app_open"

.field public static final BEGIN_CHECKOUT:Ljava/lang/String; = "begin_checkout"

.field public static final CAMPAIGN_DETAILS:Ljava/lang/String; = "campaign_details"

.field public static final CHECKOUT_PROGRESS:Ljava/lang/String; = "checkout_progress"

.field public static final EARN_VIRTUAL_CURRENCY:Ljava/lang/String; = "earn_virtual_currency"

.field public static final ECOMMERCE_PURCHASE:Ljava/lang/String; = "ecommerce_purchase"

.field public static final GENERATE_LEAD:Ljava/lang/String; = "generate_lead"

.field public static final JOIN_GROUP:Ljava/lang/String; = "join_group"

.field public static final LEVEL_END:Ljava/lang/String; = "level_end"

.field public static final LEVEL_START:Ljava/lang/String; = "level_start"

.field public static final LEVEL_UP:Ljava/lang/String; = "level_up"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final POST_SCORE:Ljava/lang/String; = "post_score"

.field public static final PRESENT_OFFER:Ljava/lang/String; = "present_offer"

.field public static final PURCHASE_REFUND:Ljava/lang/String; = "purchase_refund"

.field public static final REMOVE_FROM_CART:Ljava/lang/String; = "remove_from_cart"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final SELECT_CONTENT:Ljava/lang/String; = "select_content"

.field public static final SET_CHECKOUT_OPTION:Ljava/lang/String; = "set_checkout_option"

.field public static final SHARE:Ljava/lang/String; = "share"

.field public static final SIGN_UP:Ljava/lang/String; = "sign_up"

.field public static final SPEND_VIRTUAL_CURRENCY:Ljava/lang/String; = "spend_virtual_currency"

.field public static final TUTORIAL_BEGIN:Ljava/lang/String; = "tutorial_begin"

.field public static final TUTORIAL_COMPLETE:Ljava/lang/String; = "tutorial_complete"

.field public static final UNLOCK_ACHIEVEMENT:Ljava/lang/String; = "unlock_achievement"

.field public static final VIEW_ITEM:Ljava/lang/String; = "view_item"

.field public static final VIEW_ITEM_LIST:Ljava/lang/String; = "view_item_list"

.field public static final VIEW_SEARCH_RESULTS:Ljava/lang/String; = "view_search_results"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.firebase.analytics.FirebaseAnalytics.Param (com.google.firebase.analytics.FirebaseAnalytics$Param)
.class public Lcom/google/firebase/analytics/FirebaseAnalytics$Param;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/analytics/FirebaseAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# static fields
.field public static final ACHIEVEMENT_ID:Ljava/lang/String; = "achievement_id"

.field public static final ACLID:Ljava/lang/String; = "aclid"

.field public static final AFFILIATION:Ljava/lang/String; = "affiliation"

.field public static final CAMPAIGN:Ljava/lang/String; = "campaign"

.field public static final CHARACTER:Ljava/lang/String; = "character"

.field public static final CHECKOUT_OPTION:Ljava/lang/String; = "checkout_option"

.field public static final CHECKOUT_STEP:Ljava/lang/String; = "checkout_step"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field public static final COUPON:Ljava/lang/String; = "coupon"

.field public static final CP1:Ljava/lang/String; = "cp1"

.field public static final CREATIVE_NAME:Ljava/lang/String; = "creative_name"

.field public static final CREATIVE_SLOT:Ljava/lang/String; = "creative_slot"

.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final DESTINATION:Ljava/lang/String; = "destination"

.field public static final END_DATE:Ljava/lang/String; = "end_date"

.field public static final FLIGHT_NUMBER:Ljava/lang/String; = "flight_number"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final INDEX:Ljava/lang/String; = "index"

.field public static final ITEM_BRAND:Ljava/lang/String; = "item_brand"

.field public static final ITEM_CATEGORY:Ljava/lang/String; = "item_category"

.field public static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final ITEM_LIST:Ljava/lang/String; = "item_list"

.field public static final ITEM_LOCATION_ID:Ljava/lang/String; = "item_location_id"

.field public static final ITEM_NAME:Ljava/lang/String; = "item_name"

.field public static final ITEM_VARIANT:Ljava/lang/String; = "item_variant"

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final LEVEL_NAME:Ljava/lang/String; = "level_name"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final MEDIUM:Ljava/lang/String; = "medium"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final NUMBER_OF_NIGHTS:Ljava/lang/String; = "number_of_nights"

.field public static final NUMBER_OF_PASSENGERS:Ljava/lang/String; = "number_of_passengers"

.field public static final NUMBER_OF_ROOMS:Ljava/lang/String; = "number_of_rooms"

.field public static final ORIGIN:Ljava/lang/String; = "origin"

.field public static final PRICE:Ljava/lang/String; = "price"

.field public static final QUANTITY:Ljava/lang/String; = "quantity"

.field public static final SCORE:Ljava/lang/String; = "score"

.field public static final SEARCH_TERM:Ljava/lang/String; = "search_term"

.field public static final SHIPPING:Ljava/lang/String; = "shipping"

.field public static final SIGN_UP_METHOD:Ljava/lang/String; = "sign_up_method"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final START_DATE:Ljava/lang/String; = "start_date"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field public static final TAX:Ljava/lang/String; = "tax"

.field public static final TERM:Ljava/lang/String; = "term"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transaction_id"

.field public static final TRAVEL_CLASS:Ljava/lang/String; = "travel_class"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final VIRTUAL_CURRENCY_NAME:Ljava/lang/String; = "virtual_currency_name"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.firebase.analytics.FirebaseAnalytics.UserProperty (com.google.firebase.analytics.FirebaseAnalytics$UserProperty)
.class public Lcom/google/firebase/analytics/FirebaseAnalytics$UserProperty;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/analytics/FirebaseAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserProperty"
.end annotation


# static fields
.field public static final SIGN_UP_METHOD:Ljava/lang/String; = "sign_up_method"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
