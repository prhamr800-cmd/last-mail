###### Class com.digikala.dms.util.Util (com.digikala.dms.util.Util)
.class public Lcom/digikala/dms/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final KEY_SHARED_PREFERENCES_CLOSE_LIST_SIZE:Ljava/lang/String; = "close_list_size"

.field private static final KEY_SHARED_PREFERENCES_DC_ID:Ljava/lang/String; = "distributionPointId"

.field private static final KEY_SHARED_PREFERENCES_DELIVERY_AUTH_TOKEN:Ljava/lang/String; = "authToken"

.field private static final KEY_SHARED_PREFERENCES_DELIVERY_ID:Ljava/lang/String; = "deliveryId"

.field private static final KEY_SHARED_PREFERENCES_DISTANCE_TRAVELED:Ljava/lang/String; = "distanceTraveled"

.field private static final KEY_SHARED_PREFERENCES_IS_PRIORITY_SET:Ljava/lang/String; = "isPrioritySet"

.field private static final KEY_SHARED_PREFERENCES_IS_USER_HAS_TRACKING:Ljava/lang/String; = "isUserHasTracking"

.field private static final KEY_SHARED_PREFERENCES_LANGUAGE:Ljava/lang/String; = "language"

.field private static final KEY_SHARED_PREFERENCES_LAST_LAT_LNG:Ljava/lang/String; = "deliveryId"

.field private static final KEY_SHARED_PREFERENCES_LAST_LOCATION:Ljava/lang/String; = "lastLocation"

.field private static final KEY_SHARED_PREFERENCES_LAST_SHIPMENT_ID:Ljava/lang/String; = "deliveryId"

.field private static final KEY_SHARED_PREFERENCES_PACK_ID:Ljava/lang/String; = "packId"

.field private static final KEY_SHARED_PREFERENCES_QUESTION_CONTEXT:Ljava/lang/String; = "questionContext"

.field private static final KEY_SHARED_PREFERENCES_QUESTION_ID:Ljava/lang/String; = "questionId"

.field private static final KEY_SHARED_PREFERENCES_QUESTION_RATE_RANGE:Ljava/lang/String; = "questionEateRange"

.field private static final KEY_SHARED_PREFERENCES_REALM_KEY:Ljava/lang/String; = "realmKey"

.field private static final KEY_SHARED_PREFERENCES_SERVER_DATE_TIME:Ljava/lang/String; = "server_date_time"

.field private static final KEY_SHARED_PREFERENCES_SYNC_DATA_IN_BACKGROUND:Ljava/lang/String; = "background_sync_data"

.field private static final KEY_SHARED_PREFERENCES_USER_TRACK_INTERVAL:Ljava/lang/String; = "userTrackInterval"

.field private static final SHIPMENT_PREFERENCE:Ljava/lang/String; = "shipment_preference"

.field private static final TAG_DEBUG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/digikala/dms/util/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/util/Util;->TAG_DEBUG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "phone":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 352
    return-void
.end method

.method public static collapse(Landroid/view/View;)V
    .registers 5
    .param p0, "v"    # Landroid/view/View;

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 317
    .local v0, "initialHeight":I
    new-instance v1, Lcom/digikala/dms/util/Util$2;

    invoke-direct {v1, p0, v0}, Lcom/digikala/dms/util/Util$2;-><init>(Landroid/view/View;I)V

    .line 336
    .local v1, "a":Landroid/view/animation/Animation;
    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 337
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 338
    return-void
.end method

.method public static convertNumberStringToPersian(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "numberStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 230
    const-string v0, ""

    .line 231
    .local v0, "persianNumberStr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 232
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 234
    .local v2, "numberUnicode":I
    const/16 v3, 0x30

    if-lt v2, v3, :cond_18

    const/16 v3, 0x39

    if-gt v2, v3, :cond_18

    .line 236
    add-int/lit16 v3, v2, 0x6c0

    goto :goto_2c

    .line 237
    :cond_18
    const/16 v3, 0x660

    if-lt v2, v3, :cond_23

    const/16 v3, 0x669

    if-gt v2, v3, :cond_23

    .line 239
    add-int/lit16 v3, v2, 0x90

    goto :goto_2c

    .line 240
    :cond_23
    const/16 v3, 0x6f0

    if-lt v2, v3, :cond_40

    const/16 v3, 0x6f9

    if-gt v2, v3, :cond_40

    .line 242
    move v3, v2

    .line 245
    .local v3, "persianUnicode":I
    :goto_2c
    nop

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .end local v2    # "numberUnicode":I
    .end local v3    # "persianUnicode":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 245
    .restart local v2    # "numberUnicode":I
    :cond_40
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "\"numberStr\" has an invalid digit character"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    .end local v1    # "i":I
    .end local v2    # "numberUnicode":I
    :cond_48
    return-object v0
.end method

.method public static dpToPx(Landroid/content/Context;F)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 165
    .local v0, "scale":F
    mul-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public static expand(Landroid/view/View;)V
    .registers 5
    .param p0, "v"    # Landroid/view/View;

    .line 283
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 287
    .local v0, "targetHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 288
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    new-instance v1, Lcom/digikala/dms/util/Util$1;

    invoke-direct {v1, p0, v0}, Lcom/digikala/dms/util/Util$1;-><init>(Landroid/view/View;I)V

    .line 305
    .local v1, "a":Landroid/view/animation/Animation;
    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 306
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 307
    return-void
.end method

.method public static formatPrice(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "price"    # Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 209
    .local v0, "symbols":Ljava/text/DecimalFormatSymbols;
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 210
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1}, Ljava/text/DecimalFormat;-><init>()V

    .line 211
    .local v1, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 212
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    .line 214
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 194
    const/16 v0, 0x15

    return v0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 199
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 200
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 201
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_10
    move-exception v0

    .line 202
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/digikala/dms/util/Util;->TAG_DEBUG:Ljava/lang/String;

    const-string v2, "Package name not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getBatchId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 115
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDeliverySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, "deliverySharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "packId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "deliveryId":Ljava/lang/String;
    return-object v1
.end method

.method public static getCloseListSize(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 520
    const-string v0, "shipment_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 521
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "close_list_size"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 522
    .local v1, "index":I
    return v1
.end method

.method public static getCourierTrackingType(Landroid/content/Context;)Lcom/digikala/dms/model/design/TrackingType;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 142
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getQuestionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    .local v0, "questionSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "userTrackInterval"

    const/16 v2, 0x1b58

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 144
    .local v1, "timeInterval":I
    const-string v2, "isUserHasTracking"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 145
    .local v2, "hasTrack":Z
    new-instance v3, Lcom/digikala/dms/model/design/TrackingType;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/digikala/dms/model/design/TrackingType;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-object v3
.end method

.method public static getCurrentDateTime()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliveryAuthToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 86
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDeliverySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .local v0, "deliverySharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "TAG"

    const-string v2, "syncError getDeliveryAuthToken:85 "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v1, "authToken"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "authToken":Ljava/lang/String;
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncError getDeliveryAuthToken:87 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-object v1
.end method

.method public static getDeliveryId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDeliverySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    .local v0, "deliverySharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "deliveryId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "deliveryId":Ljava/lang/String;
    return-object v1
.end method

.method public static getDistanceTraveledFromSharedPreference(Landroid/content/Context;)D
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 477
    const-string v0, "shipment_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 478
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "distanceTraveled"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "distanceStr":Ljava/lang/String;
    if-eqz v1, :cond_1f

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_1f

    .line 483
    :cond_1a
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    return-wide v2

    .line 481
    :cond_1f
    :goto_1f
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public static getDistributionPointId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 128
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDeliverySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, "deliverySharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "distributionPointId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "deliveryId":Ljava/lang/String;
    return-object v1
.end method

.method public static getErrorMessage(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "error"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;

    .line 497
    instance-of v0, p0, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_10

    .line 498
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 499
    :cond_10
    instance-of v0, p0, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_20

    .line 500
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :cond_20
    instance-of v0, p0, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_30

    .line 502
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 503
    :cond_30
    instance-of v0, p0, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_40

    .line 504
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 505
    :cond_40
    instance-of v0, p0, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_50

    .line 506
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 508
    :cond_50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGpsStatus(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 581
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 582
    .local v0, "locationManager":Landroid/location/LocationManager;
    if-eqz v0, :cond_18

    .line 583
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 584
    .local v1, "status":Z
    if-eqz v1, :cond_15

    .line 585
    const-string v2, "on"

    return-object v2

    .line 587
    :cond_15
    const-string v2, "off"
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_1c

    return-object v2

    .line 592
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    .end local v1    # "status":Z
    :cond_18
    nop

    .line 593
    const-string v0, "off"

    return-object v0

    .line 590
    :catch_1c
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "off"

    return-object v1
.end method

.method public static getLanguageFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 407
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 408
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "language"

    const-string v2, "fa"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "language":Ljava/lang/String;
    return-object v1
.end method

.method public static getLastLocationFromSharedPreference(Landroid/content/Context;)Landroid/location/Location;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 447
    const-string v0, "shipment_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 448
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "lastLocation"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "latLngStr":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    .line 451
    return-object v4

    .line 454
    :cond_19
    :try_start_19
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "latLngStrArray":[Ljava/lang/String;
    new-instance v5, Landroid/location/Location;

    const-string v6, "point"

    invoke-direct {v5, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 457
    .local v5, "location":Landroid/location/Location;
    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 458
    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLongitude(D)V
    :try_end_39
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_19 .. :try_end_39} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_39} :catch_3a

    .line 460
    return-object v5

    .line 463
    .end local v3    # "latLngStrArray":[Ljava/lang/String;
    .end local v5    # "location":Landroid/location/Location;
    :catch_3a
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/Exception;
    return-object v4

    .line 461
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3c
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v4
.end method

.method public static getLatestLatLngFromSharedPreference(Landroid/content/Context;)Lcom/google/android/gms/maps/model/LatLng;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .line 380
    const-string v0, "shipment_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 381
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "deliveryId"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "latLngStr":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    .line 384
    return-object v4

    .line 386
    :cond_19
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "latLngStrArray":[Ljava/lang/String;
    :try_start_1f
    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
    :try_end_31
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1f .. :try_end_31} :catch_35
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_31} :catch_33

    move-object v1, v5

    .line 389
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    return-object v1

    .line 392
    .end local v1    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :catch_33
    move-exception v1

    .line 393
    .local v1, "e":Ljava/lang/Exception;
    return-object v4

    .line 390
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_35
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v4
.end method

.method public static getLatestShipmentIDFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 362
    const-string v0, "shipment_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 363
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "deliveryId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "id":Ljava/lang/String;
    return-object v1
.end method

.method public static getRealmKeyFromSharedPreference(Landroid/content/Context;)[B
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 422
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 424
    .local v0, "key":[B
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 425
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "realmKey"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "keyStr":Ljava/lang/String;
    if-eqz v2, :cond_16

    .line 428
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    return-object v3

    .line 430
    :cond_16
    return-object v3
.end method

.method public static getServerDateTimeResponse(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 534
    const-string v0, "shipment_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 535
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "server_date_time"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, "dateTime":Ljava/lang/String;
    return-object v1
.end method

.method public static getShipmentNextStepIsPriority(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 159
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDeliverySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    .local v0, "prioritySharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "isPrioritySet"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static hasJellyBean()Z
    .registers 2

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static hasLollipop()Z
    .registers 2

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static hideKeyboard(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 488
    :try_start_0
    const-string v0, "input_method"

    .line 489
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 490
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 493
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_16

    .line 492
    :catch_15
    move-exception v0

    .line 494
    :goto_16
    return-void
.end method

.method public static isTimeValid(Ljava/lang/String;)Z
    .registers 20
    .param p0, "dateTime"    # Ljava/lang/String;

    .line 540
    move-object/from16 v1, p0

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 541
    return v2

    .line 543
    :cond_c
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v3, v0

    .line 544
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v4, v0

    .line 546
    .local v4, "outputDate":Ljava/text/SimpleDateFormat;
    const/4 v5, 0x0

    .line 547
    .local v5, "serverCompleteDate":Ljava/util/Date;
    const/4 v6, 0x0

    .line 548
    .local v6, "serverDate":Ljava/util/Date;
    const/4 v0, 0x0

    move-object v7, v0

    .line 551
    .local v7, "deviceDate":Ljava/util/Date;
    :try_start_24
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    move-object v5, v0

    .line 552
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    move-object v6, v0

    .line 553
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_3f
    .catch Ljava/text/ParseException; {:try_start_24 .. :try_end_3f} :catch_41

    move-object v7, v0

    .line 555
    goto :goto_42

    .line 554
    :catch_41
    move-exception v0

    .line 557
    :goto_42
    invoke-virtual {v6, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    const/4 v8, 0x1

    if-lez v0, :cond_4a

    .line 558
    return v8

    .line 559
    :cond_4a
    invoke-virtual {v6, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_51

    .line 560
    return v8

    .line 563
    :cond_51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v9, "HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v9, v0

    .line 566
    .local v9, "outputTime":Ljava/text/SimpleDateFormat;
    const-wide/16 v10, 0x0

    .line 568
    .local v10, "diffHours":J
    :try_start_5d
    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 569
    .local v0, "serverTime":Ljava/util/Date;
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 570
    .local v12, "deviceTime":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    const/16 v17, 0x0

    sub-long/2addr v13, v15

    .line 571
    .local v13, "timeDifference":J
    const-wide/32 v15, 0x36ee80

    div-long v15, v13, v15

    const-wide/16 v17, 0x18

    rem-long v15, v15, v17
    :try_end_86
    .catch Ljava/text/ParseException; {:try_start_5d .. :try_end_86} :catch_88

    move-wide v10, v15

    .line 573
    .end local v13    # "timeDifference":J
    goto :goto_89

    .line 572
    .end local v0    # "serverTime":Ljava/util/Date;
    .end local v12    # "deviceTime":Ljava/util/Date;
    :catch_88
    move-exception v0

    .line 574
    :goto_89
    const-wide/16 v12, 0x1

    cmp-long v0, v10, v12

    if-gez v0, :cond_97

    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-gtz v0, :cond_96

    goto :goto_97

    :cond_96
    goto :goto_98

    :cond_97
    :goto_97
    const/4 v2, 0x1

    :goto_98
    return v2
.end method

.method public static persianizeDigitsInString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .line 259
    const-string v0, ""

    .line 260
    .local v0, "persianizedStr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 261
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 263
    .local v2, "unicode":I
    const/16 v3, 0x30

    if-lt v2, v3, :cond_18

    const/16 v3, 0x39

    if-gt v2, v3, :cond_18

    .line 265
    add-int/lit16 v3, v2, 0x6c0

    goto :goto_24

    .line 266
    :cond_18
    const/16 v3, 0x660

    if-lt v2, v3, :cond_23

    const/16 v3, 0x669

    if-gt v2, v3, :cond_23

    .line 268
    add-int/lit16 v3, v2, 0x90

    goto :goto_24

    .line 270
    :cond_23
    move v3, v2

    .line 272
    .local v3, "persianizedUnicode":I
    :goto_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .end local v2    # "unicode":I
    .end local v3    # "persianizedUnicode":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 274
    .end local v1    # "i":I
    :cond_37
    return-object v0
.end method

.method public static saveDistanceTraveledToSharedPreference(Landroid/content/Context;D)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "distanceTraveled"    # D

    .line 470
    const-string v0, "shipment_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 471
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 472
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "distanceTraveled"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    return-void
.end method

.method public static saveLanguageToSharedPreference(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;

    .line 400
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 401
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 402
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "language"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 403
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 404
    return-void
.end method

.method public static saveLastLocationToSharedPreference(Landroid/content/Context;Landroid/location/Location;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latLng"    # Landroid/location/Location;

    .line 435
    const-string v0, ""

    .line 437
    .local v0, "latLngString":Ljava/lang/String;
    if-eqz p1, :cond_28

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    :cond_28
    const-string v1, "shipment_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 441
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 442
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "lastLocation"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 443
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 444
    return-void
.end method

.method public static saveLatestLatLngToSharedPreference(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .line 368
    const-string v0, ""

    .line 370
    .local v0, "latLngString":Ljava/lang/String;
    if-eqz p1, :cond_24

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_24
    const-string v1, "shipment_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 374
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 375
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "deliveryId"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    return-void
.end method

.method public static saveLatestShipmentIDToSharedPreference(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .line 355
    const-string v0, "shipment_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 356
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 357
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "deliveryId"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 358
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    return-void
.end method

.method public static saveRealmKeyToSharedPreference(Landroid/content/Context;[B)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # [B

    .line 413
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 415
    .local v0, "ketStr":Ljava/lang/String;
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 416
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 417
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "realmKey"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 419
    return-void
.end method

.method public static setBachId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packId"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDeliverySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "packId"

    .line 110
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    return-void
.end method

.method public static setCloseListSize(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .line 512
    const-string v0, "shipment_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 513
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 514
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "close_list_size"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 515
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 516
    return-void
.end method

.method public static setCourierTrackingType(Landroid/content/Context;Lcom/digikala/dms/model/design/TrackingType;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackingType"    # Lcom/digikala/dms/model/design/TrackingType;

    .line 134
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getQuestionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, "questionSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "userTrackInterval"

    const/4 v3, 0x0

    if-nez p1, :cond_f

    .line 136
    const/4 v4, 0x0

    goto :goto_17

    :cond_f
    invoke-virtual {p1}, Lcom/digikala/dms/model/design/TrackingType;->getTimeInterval()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_17
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isUserHasTracking"

    if-nez p1, :cond_20

    goto :goto_28

    .line 137
    :cond_20
    invoke-virtual {p1}, Lcom/digikala/dms/model/design/TrackingType;->getHasTrack()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_28
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 138
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    return-void
.end method

.method public static setDeliveryAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authToken"    # Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDeliverySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    .local v0, "deliverySharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncError SET getDeliveryAuthToken:87 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "authToken"

    .line 81
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 82
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return-void
.end method

.method public static setDeliveryId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .line 95
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDeliverySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, "deliverySharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "deliveryId"

    .line 97
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 98
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method

.method public static setDistributionPointId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .line 121
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDeliverySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    .local v0, "deliverySharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "distributionPointId"

    .line 123
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method public static setServerDateTimeResponse(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateTime"    # Ljava/lang/String;

    .line 526
    const-string v0, "shipment_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 527
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 528
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "server_date_time"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 529
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 530
    return-void
.end method

.method public static setShipmentNextStepIsPriority(Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isPriority"    # Ljava/lang/Boolean;

    .line 154
    invoke-static {p0}, Lcom/digikala/dms/helper/SharedPreferencesHelper;->getDeliverySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    .local v0, "prioritySharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isPrioritySet"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    return-void
.end method

.method public static showRtlSnackbar(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .registers 10
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "alertText"    # Ljava/lang/String;
    .param p2, "actionText"    # Ljava/lang/String;
    .param p3, "actionColor"    # I
    .param p4, "actionClickListener"    # Landroid/view/View$OnClickListener;

    .line 177
    const/4 v0, -0x2

    invoke-static {p0, p1, v0}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 178
    .local v0, "snackbar":Landroid/support/design/widget/Snackbar;
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, "snackbarView":Landroid/view/View;
    const v2, 0x7f09019c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 181
    .local v2, "alertTextView":Landroid/widget/TextView;
    const v3, 0x7f09019b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 184
    .local v3, "actionTextView":Landroid/widget/TextView;
    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 185
    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    .line 188
    invoke-virtual {v0, p2, p4}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 190
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 191
    return-void
.end method

###### Class com.digikala.dms.util.Util.AnonymousClass1 (com.digikala.dms.util.Util$1)
.class final Lcom/digikala/dms/util/Util$1;
.super Landroid/view/animation/Animation;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/util/Util;->expand(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$targetHeight:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .registers 3

    .line 289
    iput-object p1, p0, Lcom/digikala/dms/util/Util$1;->val$v:Landroid/view/View;

    iput p2, p0, Lcom/digikala/dms/util/Util$1;->val$targetHeight:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 292
    iget-object v0, p0, Lcom/digikala/dms/util/Util$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_e

    const/4 v1, -0x2

    goto :goto_14

    :cond_e
    iget v1, p0, Lcom/digikala/dms/util/Util$1;->val$targetHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    :goto_14
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 295
    iget-object v0, p0, Lcom/digikala/dms/util/Util$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 296
    return-void
.end method

.method public willChangeBounds()Z
    .registers 2

    .line 300
    const/4 v0, 0x1

    return v0
.end method

###### Class com.digikala.dms.util.Util.AnonymousClass2 (com.digikala.dms.util.Util$2)
.class final Lcom/digikala/dms/util/Util$2;
.super Landroid/view/animation/Animation;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/util/Util;->collapse(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$initialHeight:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .registers 3

    .line 317
    iput-object p1, p0, Lcom/digikala/dms/util/Util$2;->val$v:Landroid/view/View;

    iput p2, p0, Lcom/digikala/dms/util/Util$2;->val$initialHeight:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 320
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_e

    .line 321
    iget-object v0, p0, Lcom/digikala/dms/util/Util$2;->val$v:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    .line 323
    :cond_e
    iget-object v0, p0, Lcom/digikala/dms/util/Util$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/digikala/dms/util/Util$2;->val$initialHeight:I

    iget v2, p0, Lcom/digikala/dms/util/Util$2;->val$initialHeight:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 324
    iget-object v0, p0, Lcom/digikala/dms/util/Util$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 327
    :goto_24
    return-void
.end method

.method public willChangeBounds()Z
    .registers 2

    .line 331
    const/4 v0, 0x1

    return v0
.end method
