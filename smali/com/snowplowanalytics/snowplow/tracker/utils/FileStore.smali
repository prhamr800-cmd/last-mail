###### Class com.snowplowanalytics.snowplow.tracker.utils.FileStore (com.snowplowanalytics.snowplow.tracker.utils.FileStore)
.class public Lcom/snowplowanalytics/snowplow/tracker/utils/FileStore;
.super Ljava/lang/Object;
.source "FileStore.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/utils/FileStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/utils/FileStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-virtual {p1, p0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 95
    .local v0, "isSuccess":Z
    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/utils/FileStore;->TAG:Ljava/lang/String;

    const-string v2, "Deleted %s from internal storage: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    return v0
.end method

.method public static getMapFromFile(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .registers 10
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    sget-object v2, Lcom/snowplowanalytics/snowplow/tracker/utils/FileStore;->TAG:Ljava/lang/String;

    const-string v3, "Attempting to retrieve map from: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {v2, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 75
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    .local v3, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 77
    .local v4, "varsMap":Ljava/util/Map;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 78
    sget-object v5, Lcom/snowplowanalytics/snowplow/tracker/utils/FileStore;->TAG:Ljava/lang/String;

    const-string v6, " + Retrieved map from file: %s"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v0

    invoke-static {v5, v6, v7}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 79
    return-object v4

    .line 80
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .end local v4    # "varsMap":Ljava/util/Map;
    :catch_2b
    move-exception v2

    .line 81
    .local v2, "ioe":Ljava/lang/Exception;
    sget-object v3, Lcom/snowplowanalytics/snowplow/tracker/utils/FileStore;->TAG:Ljava/lang/String;

    const-string v4, " + Exception getting vars map: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-static {v3, v4, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .end local v2    # "ioe":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static saveMapToFile(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Z
    .registers 10
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "objects"    # Ljava/util/Map;
    .param p2, "context"    # Landroid/content/Context;

    .line 49
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Lcom/snowplowanalytics/snowplow/tracker/utils/FileStore;->TAG:Ljava/lang/String;

    const-string v3, "Attempting to save: %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p2, p0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 51
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 54
    sget-object v4, Lcom/snowplowanalytics/snowplow/tracker/utils/FileStore;->TAG:Ljava/lang/String;

    const-string v5, " + Successfully saved KV Pairs to: %s"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p0, v6, v1

    invoke-static {v4, v5, v6}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_27} :catch_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_27} :catch_28

    .line 55
    return v0

    .line 56
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_28
    move-exception v2

    .line 57
    .local v2, "ioe":Ljava/lang/Exception;
    sget-object v3, Lcom/snowplowanalytics/snowplow/tracker/utils/FileStore;->TAG:Ljava/lang/String;

    const-string v4, " + Exception saving vars map: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v3, v4, v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .end local v2    # "ioe":Ljava/lang/Exception;
    return v1
.end method
