###### Class com.afollestad.materialdialogs.util.TypefaceHelper (com.afollestad.materialdialogs.util.TypefaceHelper)
.class public Lcom/afollestad/materialdialogs/util/TypefaceHelper;
.super Ljava/lang/Object;
.source "TypefaceHelper.java"


# static fields
.field private static final cache:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/afollestad/materialdialogs/util/TypefaceHelper;->cache:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/afollestad/materialdialogs/util/TypefaceHelper;->cache:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v0

    .line 33
    :try_start_3
    sget-object v1, Lcom/afollestad/materialdialogs/util/TypefaceHelper;->cache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_34

    if-nez v1, :cond_2a

    .line 35
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 36
    .local v1, "t":Landroid/graphics/Typeface;
    sget-object v2, Lcom/afollestad/materialdialogs/util/TypefaceHelper;->cache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_24} :catch_26
    .catchall {:try_start_b .. :try_end_24} :catchall_34

    .line 37
    :try_start_24
    monitor-exit v0

    return-object v1

    .line 38
    .end local v1    # "t":Landroid/graphics/Typeface;
    :catch_26
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 42
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2a
    sget-object v1, Lcom/afollestad/materialdialogs/util/TypefaceHelper;->cache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    monitor-exit v0

    return-object v1

    .line 43
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_34

    throw v1
.end method
