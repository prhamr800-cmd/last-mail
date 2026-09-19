###### Class com.digikala.dms.helper.TypeFaceHelper (com.digikala.dms.helper.TypeFaceHelper)
.class public Lcom/digikala/dms/helper/TypeFaceHelper;
.super Ljava/lang/Object;
.source "TypeFaceHelper.java"


# static fields
.field public static final FONT_DEFAULT_LOCALE:I = 0x1

.field public static final FONT_IRAN_SANS_BOLD:I = 0x5

.field public static final FONT_IRAN_SANS_REGULAR:I = 0x4

.field public static final FONT_ROBOTO_BOLD:I = 0x3

.field public static final FONT_ROBOTO_REGULAR:I = 0x2

.field private static final LANGUAGE_ENGLISH:Ljava/lang/String; = "en"

.field private static final LANGUAGE_PERSIAN:Ljava/lang/String; = "fa"

.field private static final TAG_DEBUG:Ljava/lang/String;

.field private static sInstance:Lcom/digikala/dms/helper/TypeFaceHelper;


# instance fields
.field private mIranSansBoldTypeface:Landroid/graphics/Typeface;

.field private mIranSansRegularTypeface:Landroid/graphics/Typeface;

.field private mRobotoBoldTypeface:Landroid/graphics/Typeface;

.field private mRobotoRegularTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/digikala/dms/helper/TypeFaceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/helper/TypeFaceHelper;->TAG_DEBUG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private getDefaultFontBasedOnLocale()Landroid/graphics/Typeface;
    .registers 3

    .line 75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "language":Ljava/lang/String;
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 77
    iget-object v1, p0, Lcom/digikala/dms/helper/TypeFaceHelper;->mRobotoRegularTypeface:Landroid/graphics/Typeface;

    return-object v1

    .line 78
    :cond_13
    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 79
    iget-object v1, p0, Lcom/digikala/dms/helper/TypeFaceHelper;->mIranSansRegularTypeface:Landroid/graphics/Typeface;

    return-object v1

    .line 82
    :cond_1e
    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;
    .registers 2

    const-class v0, Lcom/digikala/dms/helper/TypeFaceHelper;

    monitor-enter v0

    .line 38
    :try_start_3
    sget-object v1, Lcom/digikala/dms/helper/TypeFaceHelper;->sInstance:Lcom/digikala/dms/helper/TypeFaceHelper;

    if-nez v1, :cond_13

    .line 39
    new-instance v1, Lcom/digikala/dms/helper/TypeFaceHelper;

    invoke-direct {v1}, Lcom/digikala/dms/helper/TypeFaceHelper;-><init>()V

    sput-object v1, Lcom/digikala/dms/helper/TypeFaceHelper;->sInstance:Lcom/digikala/dms/helper/TypeFaceHelper;

    .line 40
    sget-object v1, Lcom/digikala/dms/helper/TypeFaceHelper;->sInstance:Lcom/digikala/dms/helper/TypeFaceHelper;

    invoke-direct {v1}, Lcom/digikala/dms/helper/TypeFaceHelper;->init()V

    .line 42
    :cond_13
    sget-object v1, Lcom/digikala/dms/helper/TypeFaceHelper;->sInstance:Lcom/digikala/dms/helper/TypeFaceHelper;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    .line 37
    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private init()V
    .registers 3

    .line 46
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/helper/TypeFaceHelper;->mRobotoRegularTypeface:Landroid/graphics/Typeface;

    .line 47
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/helper/TypeFaceHelper;->mRobotoBoldTypeface:Landroid/graphics/Typeface;

    .line 48
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/IRANSansMobile.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/helper/TypeFaceHelper;->mIranSansRegularTypeface:Landroid/graphics/Typeface;

    .line 49
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/IRANSansMobile_Bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/helper/TypeFaceHelper;->mIranSansBoldTypeface:Landroid/graphics/Typeface;

    .line 50
    return-void
.end method


# virtual methods
.method public getTypeFace(I)Landroid/graphics/Typeface;
    .registers 4
    .param p1, "font"    # I

    .line 53
    packed-switch p1, :pswitch_data_1e

    .line 69
    sget-object v0, Lcom/digikala/dms/helper/TypeFaceHelper;->TAG_DEBUG:Ljava/lang/String;

    const-string v1, "Can not get typeface: Invalid Font!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 66
    :pswitch_c
    iget-object v0, p0, Lcom/digikala/dms/helper/TypeFaceHelper;->mIranSansBoldTypeface:Landroid/graphics/Typeface;

    return-object v0

    .line 63
    :pswitch_f
    iget-object v0, p0, Lcom/digikala/dms/helper/TypeFaceHelper;->mIranSansRegularTypeface:Landroid/graphics/Typeface;

    return-object v0

    .line 60
    :pswitch_12
    iget-object v0, p0, Lcom/digikala/dms/helper/TypeFaceHelper;->mRobotoBoldTypeface:Landroid/graphics/Typeface;

    return-object v0

    .line 57
    :pswitch_15
    iget-object v0, p0, Lcom/digikala/dms/helper/TypeFaceHelper;->mRobotoRegularTypeface:Landroid/graphics/Typeface;

    return-object v0

    .line 55
    :pswitch_18
    invoke-direct {p0}, Lcom/digikala/dms/helper/TypeFaceHelper;->getDefaultFontBasedOnLocale()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method
