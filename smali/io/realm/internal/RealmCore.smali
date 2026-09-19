###### Class io.realm.internal.RealmCore (io.realm.internal.RealmCore)
.class public Lio/realm/internal/RealmCore;
.super Ljava/lang/Object;
.source "RealmCore.java"


# static fields
.field private static final BINARIES_PATH:Ljava/lang/String;

.field private static final FILE_SEP:Ljava/lang/String;

.field private static final JAVA_LIBRARY_PATH:Ljava/lang/String; = "java.library.path"

.field private static final PATH_SEP:Ljava/lang/String;

.field private static volatile libraryIsLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lio/realm/internal/RealmCore;->FILE_SEP:Ljava/lang/String;

    .line 36
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    sput-object v0, Lio/realm/internal/RealmCore;->PATH_SEP:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/realm/internal/RealmCore;->PATH_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/realm/internal/RealmCore;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/realm/internal/RealmCore;->BINARIES_PATH:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lio/realm/internal/RealmCore;->libraryIsLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNativeLibraryPath(Ljava/lang/String;)V
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 102
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/realm/internal/RealmCore;->PATH_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/realm/internal/RealmCore;->PATH_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "libraryPath":Ljava/lang/String;
    const-string v1, "java.library.path"

    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_26

    .line 106
    .end local v0    # "libraryPath":Ljava/lang/String;
    nop

    .line 107
    return-void

    .line 104
    :catch_26
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot set the library path!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs loadCorrectLibrary([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "libraryCandidateNames"    # [Ljava/lang/String;

    .line 90
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    .line 92
    .local v2, "libraryCandidateName":Ljava/lang/String;
    :try_start_6
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_a

    .line 93
    return-object v2

    .line 94
    :catch_a
    move-exception v3

    .line 90
    .end local v2    # "libraryCandidateName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 97
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized loadLibrary(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lio/realm/internal/RealmCore;

    monitor-enter v0

    .line 57
    :try_start_3
    sget-boolean v1, Lio/realm/internal/RealmCore;->libraryIsLoaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    if-eqz v1, :cond_9

    .line 58
    monitor-exit v0

    return-void

    .line 60
    :cond_9
    :try_start_9
    const-string v1, "realm-jni"

    const-string v2, "5.1.0"

    invoke-static {p0, v1, v2}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x1

    sput-boolean v1, Lio/realm/internal/RealmCore;->libraryIsLoaded:Z
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    .line 62
    monitor-exit v0

    return-void

    .line 56
    .end local p0    # "context":Landroid/content/Context;
    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static loadLibraryWindows()Ljava/lang/String;
    .registers 5

    .line 67
    :try_start_0
    sget-object v0, Lio/realm/internal/RealmCore;->BINARIES_PATH:Ljava/lang/String;

    invoke-static {v0}, Lio/realm/internal/RealmCore;->addNativeLibraryPath(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lio/realm/internal/RealmCore;->resetLibraryPath()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 71
    goto :goto_a

    .line 69
    :catch_9
    move-exception v0

    .line 75
    :goto_a
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "realm_jni32d"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "realm_jni64d"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lio/realm/internal/RealmCore;->loadCorrectLibrary([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "jnilib":Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "!!! Realm debug version loaded. !!!\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_35

    .line 79
    :cond_25
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "realm_jni32"

    aput-object v2, v0, v3

    const-string v2, "realm_jni64"

    aput-object v2, v0, v4

    invoke-static {v0}, Lio/realm/internal/RealmCore;->loadCorrectLibrary([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_36

    .line 86
    :goto_35
    return-object v1

    .line 81
    :cond_36
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Searched java.library.path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "java.library.path"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t load the Realm JNI library \'realm_jni32.dll or realm_jni64.dll\'. Please include the directory to the library in java.library.path."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static osIsWindows()Z
    .registers 2

    .line 43
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "os":Ljava/lang/String;
    const-string/jumbo v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private static resetLibraryPath()V
    .registers 3

    .line 117
    :try_start_0
    const-class v0, Ljava/lang/ClassLoader;

    const-string/jumbo v1, "sys_paths"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 118
    .local v0, "fieldSysPath":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    .line 122
    .end local v0    # "fieldSysPath":Ljava/lang/reflect/Field;
    nop

    .line 123
    return-void

    .line 120
    :catch_13
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot reset the library path!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
