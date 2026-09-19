###### Class com.crashlytics.android.beta.DeviceTokenLoader (com.crashlytics.android.beta.DeviceTokenLoader)
.class public Lcom/crashlytics/android/beta/DeviceTokenLoader;
.super Ljava/lang/Object;
.source "DeviceTokenLoader.java"

# interfaces
.implements Lio/fabric/sdk/android/services/cache/ValueLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/cache/ValueLoader<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final BETA_APP_PACKAGE_NAME:Ljava/lang/String; = "io.crash.air"

.field private static final DIRFACTOR_DEVICE_TOKEN_PREFIX:Ljava/lang/String; = "assets/com.crashlytics.android.beta/dirfactor-device-token="


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method determineDeviceToken(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;
    .registers 6
    .param p1, "zis"    # Ljava/util/zip/ZipInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 70
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_23

    .line 71
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "name":Ljava/lang/String;
    const-string v2, "assets/com.crashlytics.android.beta/dirfactor-device-token="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 73
    const-string v2, "assets/com.crashlytics.android.beta/dirfactor-device-token="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 77
    .end local v1    # "name":Ljava/lang/String;
    :cond_23
    const-string v1, ""

    return-object v1
.end method

.method getZipInputStreamOfApkFrom(Landroid/content/Context;Ljava/lang/String;)Ljava/util/zip/ZipInputStream;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 63
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 64
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v2
.end method

.method public bridge synthetic load(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/beta/DeviceTokenLoader;->load(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/content/Context;)Ljava/lang/String;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 29
    .local v0, "start":J
    const-string v2, ""

    .line 30
    .local v2, "token":Ljava/lang/String;
    const/4 v3, 0x0

    .line 35
    .local v3, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_7
    const-string v4, "io.crash.air"

    invoke-virtual {p0, p1, v4}, Lcom/crashlytics/android/beta/DeviceTokenLoader;->getZipInputStreamOfApkFrom(Landroid/content/Context;Ljava/lang/String;)Ljava/util/zip/ZipInputStream;

    move-result-object v4

    move-object v3, v4

    .line 36
    invoke-virtual {p0, v3}, Lcom/crashlytics/android/beta/DeviceTokenLoader;->determineDeviceToken(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;

    move-result-object v4
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_12} :catch_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_12} :catch_3a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_28
    .catchall {:try_start_7 .. :try_end_12} :catchall_26

    move-object v2, v4

    .line 44
    if-eqz v3, :cond_5e

    .line 46
    :try_start_15
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    .line 49
    :goto_18
    goto :goto_5e

    .line 47
    :catch_19
    move-exception v4

    .line 48
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string v6, "Beta"

    const-string v7, "Failed to close the APK file"

    invoke-interface {v5, v6, v7, v4}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_18

    .line 44
    :catchall_26
    move-exception v4

    goto :goto_8e

    .line 41
    :catch_28
    move-exception v4

    .line 42
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_29
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string v6, "Beta"

    const-string v7, "Failed to read the APK file"

    invoke-interface {v5, v6, v7, v4}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_26

    .line 44
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_5e

    .line 46
    :try_start_36
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_19

    goto :goto_18

    .line 39
    :catch_3a
    move-exception v4

    .line 40
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_3b
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string v6, "Beta"

    const-string v7, "Failed to find the APK file"

    invoke-interface {v5, v6, v7, v4}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_26

    .line 44
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_5e

    .line 46
    :try_start_48
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_19

    goto :goto_18

    .line 37
    :catch_4c
    move-exception v4

    .line 38
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4d
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string v6, "Beta"

    const-string v7, "Beta by Crashlytics app is not installed"

    invoke-interface {v5, v6, v7}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_26

    .line 44
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v3, :cond_5e

    .line 46
    :try_start_5a
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_19

    goto :goto_18

    .line 53
    :cond_5e
    :goto_5e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 54
    .local v4, "end":J
    sub-long v6, v4, v0

    long-to-double v6, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    .line 55
    .local v6, "millis":D
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    const-string v9, "Beta"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Beta device token load took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v2

    .line 44
    .end local v4    # "end":J
    .end local v6    # "millis":D
    :goto_8e
    if-eqz v3, :cond_a0

    .line 46
    :try_start_90
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 49
    goto :goto_a0

    .line 47
    :catch_94
    move-exception v5

    .line 48
    .local v5, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string v7, "Beta"

    const-string v8, "Failed to close the APK file"

    invoke-interface {v6, v7, v8, v5}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .end local v5    # "e":Ljava/io/IOException;
    :cond_a0
    :goto_a0
    throw v4
.end method
