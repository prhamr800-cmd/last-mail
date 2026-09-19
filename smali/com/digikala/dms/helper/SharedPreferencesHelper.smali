###### Class com.digikala.dms.helper.SharedPreferencesHelper (com.digikala.dms.helper.SharedPreferencesHelper)
.class public Lcom/digikala/dms/helper/SharedPreferencesHelper;
.super Ljava/lang/Object;
.source "SharedPreferencesHelper.java"


# static fields
.field private static final NAME_SHARED_PREFERENCES_DELIVERY:Ljava/lang/String; = "PREF_DELIVERY"

.field private static final NAME_SHARED_PREFERENCES_QUESTION:Ljava/lang/String; = "PREF_QUESTION"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 17
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliverySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 21
    const-string v0, "PREF_DELIVERY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getQuestionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    const-string v0, "PREF_QUESTION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
