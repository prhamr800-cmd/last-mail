###### Class com.crashlytics.android.beta.CheckForUpdatesResponseTransform (com.crashlytics.android.beta.CheckForUpdatesResponseTransform)
.class Lcom/crashlytics/android/beta/CheckForUpdatesResponseTransform;
.super Ljava/lang/Object;
.source "CheckForUpdatesResponseTransform.java"


# static fields
.field static final BUILD_VERSION:Ljava/lang/String; = "build_version"

.field static final DISPLAY_VERSION:Ljava/lang/String; = "display_version"

.field static final IDENTIFIER:Ljava/lang/String; = "identifier"

.field static final INSTANCE_IDENTIFIER:Ljava/lang/String; = "instance_identifier"

.field static final URL:Ljava/lang/String; = "url"

.field static final VERSION_STRING:Ljava/lang/String; = "version_string"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJson(Lorg/json/JSONObject;)Lcom/crashlytics/android/beta/CheckForUpdatesResponse;
    .registers 16
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 21
    return-object v0

    .line 24
    :cond_4
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v2, "version_string"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 26
    .local v9, "versionString":Ljava/lang/String;
    const-string v2, "build_version"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 27
    .local v10, "buildVersion":Ljava/lang/String;
    const-string v2, "display_version"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 28
    .local v11, "displayVersion":Ljava/lang/String;
    const-string v2, "identifier"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 29
    .local v12, "packageName":Ljava/lang/String;
    const-string v2, "instance_identifier"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "instanceId":Ljava/lang/String;
    new-instance v13, Lcom/crashlytics/android/beta/CheckForUpdatesResponse;

    move-object v2, v13

    move-object v3, v1

    move-object v4, v9

    move-object v5, v11

    move-object v6, v10

    move-object v7, v12

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/crashlytics/android/beta/CheckForUpdatesResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13
.end method
