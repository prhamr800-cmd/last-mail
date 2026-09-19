###### Class com.google.maps.android.kml.KmlBoolean (com.google.maps.android.kml.KmlBoolean)
.class public Lcom/google/maps/android/kml/KmlBoolean;
.super Ljava/lang/Object;
.source "KmlBoolean.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBoolean(Ljava/lang/String;)Z
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .line 23
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    .line 26
    :cond_12
    const/4 v0, 0x0

    return v0

    .line 24
    :cond_14
    :goto_14
    const/4 v0, 0x1

    return v0
.end method
