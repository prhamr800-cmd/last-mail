###### Class com.getkeepsafe.relinker.ReLinker (com.getkeepsafe.relinker.ReLinker)
.class public Lcom/getkeepsafe/relinker/ReLinker;
.super Ljava/lang/Object;
.source "ReLinker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;,
        Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;,
        Lcom/getkeepsafe/relinker/ReLinker$Logger;,
        Lcom/getkeepsafe/relinker/ReLinker$LoadListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static force()Lcom/getkeepsafe/relinker/ReLinkerInstance;
    .registers 1

    .line 74
    new-instance v0, Lcom/getkeepsafe/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->force()Lcom/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object v0

    return-object v0
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "library"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    .line 52
    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "library"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .line 63
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    .line 64
    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "library"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    .line 58
    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "library"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .line 70
    new-instance v0, Lcom/getkeepsafe/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    .line 71
    return-void
.end method

.method public static log(Lcom/getkeepsafe/relinker/ReLinker$Logger;)Lcom/getkeepsafe/relinker/ReLinkerInstance;
    .registers 2
    .param p0, "logger"    # Lcom/getkeepsafe/relinker/ReLinker$Logger;

    .line 78
    new-instance v0, Lcom/getkeepsafe/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0, p0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Lcom/getkeepsafe/relinker/ReLinker$Logger;)Lcom/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object v0

    return-object v0
.end method

.method public static recursively()Lcom/getkeepsafe/relinker/ReLinkerInstance;
    .registers 1

    .line 82
    new-instance v0, Lcom/getkeepsafe/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->recursively()Lcom/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object v0

    return-object v0
.end method

###### Class com.getkeepsafe.relinker.ReLinker.LibraryInstaller (com.getkeepsafe.relinker.ReLinker$LibraryInstaller)
.class public interface abstract Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;
.super Ljava/lang/Object;
.source "ReLinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/relinker/ReLinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LibraryInstaller"
.end annotation


# virtual methods
.method public abstract installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/getkeepsafe/relinker/ReLinkerInstance;)V
.end method

###### Class com.getkeepsafe.relinker.ReLinker.LibraryLoader (com.getkeepsafe.relinker.ReLinker$LibraryLoader)
.class public interface abstract Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;
.super Ljava/lang/Object;
.source "ReLinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/relinker/ReLinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LibraryLoader"
.end annotation


# virtual methods
.method public abstract loadLibrary(Ljava/lang/String;)V
.end method

.method public abstract loadPath(Ljava/lang/String;)V
.end method

.method public abstract mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract supportedAbis()[Ljava/lang/String;
.end method

.method public abstract unmapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

###### Class com.getkeepsafe.relinker.ReLinker.LoadListener (com.getkeepsafe.relinker.ReLinker$LoadListener)
.class public interface abstract Lcom/getkeepsafe/relinker/ReLinker$LoadListener;
.super Ljava/lang/Object;
.source "ReLinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/relinker/ReLinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadListener"
.end annotation


# virtual methods
.method public abstract failure(Ljava/lang/Throwable;)V
.end method

.method public abstract success()V
.end method

###### Class com.getkeepsafe.relinker.ReLinker.Logger (com.getkeepsafe.relinker.ReLinker$Logger)
.class public interface abstract Lcom/getkeepsafe/relinker/ReLinker$Logger;
.super Ljava/lang/Object;
.source "ReLinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/relinker/ReLinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method
