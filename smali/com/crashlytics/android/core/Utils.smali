###### Class com.crashlytics.android.core.Utils (com.crashlytics.android.core.Utils)
.class final Lcom/crashlytics/android/core/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V
    .registers 10
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;
    .param p2, "maxAllowed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            "I",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p3, "fileComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 21
    .local v0, "sessionFiles":[Ljava/io/File;
    if-eqz v0, :cond_1f

    array-length v1, v0

    if-le v1, p2, :cond_1f

    .line 23
    invoke-static {v0, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 24
    array-length v1, v0

    .line 25
    .local v1, "i":I
    move-object v2, v0

    .local v2, "arr$":[Ljava/io/File;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_10
    if-ge v4, v3, :cond_1f

    aget-object v5, v2, v4

    .line 27
    .local v5, "file":Ljava/io/File;
    if-gt v1, p2, :cond_17

    .line 28
    return-void

    .line 30
    :cond_17
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 25
    .end local v5    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 34
    .end local v1    # "i":I
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1f
    return-void
.end method
