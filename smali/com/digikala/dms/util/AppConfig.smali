###### Class com.digikala.dms.util.AppConfig (com.digikala.dms.util.AppConfig)
.class public Lcom/digikala/dms/util/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field public static final URL_WEBAPI:Ljava/lang/String; = "https://lg.digikala.com/dms-api/"

.field public static final getRequestsBackoffMultiplier:F = 1.0f

.field public static final getRequestsInitialTimeoutMs:I = 0x1388

.field public static final getRequestsRetriesNumber:I = 0x3

.field public static final postRequestsBackoffMultiplier:F = 1.0f

.field public static final postRequestsInitialTimeoutMs:I = 0x3a98

.field public static final postRequestsRetriesNumber:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
