###### Class com.digikala.dms.helper.webservice.MemoryBitmapCache (com.digikala.dms.helper.webservice.MemoryBitmapCache)
.class public Lcom/digikala/dms/helper/webservice/MemoryBitmapCache;
.super Landroid/support/v4/util/LruCache;
.source "MemoryBitmapCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/android/volley/toolbox/ImageLoader$ImageCache;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-static {}, Lcom/digikala/dms/helper/webservice/MemoryBitmapCache;->getDefaultLruCacheSize()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/digikala/dms/helper/webservice/MemoryBitmapCache;-><init>(I)V

    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "sizeInKiloBytes"    # I

    .line 28
    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 29
    return-void
.end method

.method public static getDefaultLruCacheSize()I
    .registers 4

    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 19
    .local v0, "maxMemory":I
    div-int/lit8 v1, v0, 0x4

    .line 20
    .local v1, "cacheSize":I
    return v1
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p1}, Lcom/digikala/dms/helper/webservice/MemoryBitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/helper/webservice/MemoryBitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 15
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/helper/webservice/MemoryBitmapCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    div-int/lit16 v0, v0, 0x400

    return v0
.end method
