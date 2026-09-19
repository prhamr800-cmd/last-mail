###### Class rx.internal.util.PlatformDependent (rx.internal.util.PlatformDependent)
.class public final Lrx/internal/util/PlatformDependent;
.super Ljava/lang/Object;
.source "PlatformDependent.java"


# static fields
.field private static final IS_ANDROID:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    invoke-static {}, Lrx/internal/util/PlatformDependent;->isAndroid0()Z

    move-result v0

    sput-boolean v0, Lrx/internal/util/PlatformDependent;->IS_ANDROID:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSystemClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 54
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    .line 55
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 57
    :cond_b
    new-instance v0, Lrx/internal/util/PlatformDependent$1;

    invoke-direct {v0}, Lrx/internal/util/PlatformDependent$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static isAndroid()Z
    .registers 1

    .line 34
    sget-boolean v0, Lrx/internal/util/PlatformDependent;->IS_ANDROID:Z

    return v0
.end method

.method private static isAndroid0()Z
    .registers 3

    .line 40
    :try_start_0
    const-string v0, "android.app.Application"

    const/4 v1, 0x0

    invoke-static {}, Lrx/internal/util/PlatformDependent;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    .line 41
    const/4 v0, 0x1

    .line 45
    .local v0, "android":Z
    goto :goto_e

    .line 42
    .end local v0    # "android":Z
    :catch_c
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 47
    .local v0, "android":Z
    :goto_e
    return v0
.end method

###### Class rx.internal.util.PlatformDependent.AnonymousClass1 (rx.internal.util.PlatformDependent$1)
.class final Lrx/internal/util/PlatformDependent$1;
.super Ljava/lang/Object;
.source "PlatformDependent.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/PlatformDependent;->getSystemClassLoader()Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/ClassLoader;
    .registers 2

    .line 60
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .line 57
    invoke-virtual {p0}, Lrx/internal/util/PlatformDependent$1;->run()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
