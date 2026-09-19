###### Class com.getkeepsafe.relinker.ReLinkerInstance (com.getkeepsafe.relinker.ReLinkerInstance)
.class public Lcom/getkeepsafe/relinker/ReLinkerInstance;
.super Ljava/lang/Object;
.source "ReLinkerInstance.java"


# static fields
.field private static final LIB_DIR:Ljava/lang/String; = "lib"


# instance fields
.field protected force:Z

.field protected final libraryInstaller:Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;

.field protected final libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

.field protected final loadedLibraries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected logger:Lcom/getkeepsafe/relinker/ReLinker$Logger;

.field protected recursive:Z


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 43
    new-instance v0, Lcom/getkeepsafe/relinker/SystemLibraryLoader;

    invoke-direct {v0}, Lcom/getkeepsafe/relinker/SystemLibraryLoader;-><init>()V

    new-instance v1, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;

    invoke-direct {v1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;-><init>(Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;)V
    .registers 5
    .param p1, "libraryLoader"    # Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;
    .param p2, "libraryInstaller"    # Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/Set;

    .line 48
    if-eqz p1, :cond_1b

    .line 52
    if-eqz p2, :cond_13

    .line 56
    iput-object p1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    .line 57
    iput-object p2, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryInstaller:Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;

    .line 58
    return-void

    .line 53
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot pass null library installer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot pass null library loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/getkeepsafe/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/getkeepsafe/relinker/ReLinkerInstance;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->force:Z

    if-nez v0, :cond_18

    .line 158
    const-string v0, "%s already loaded previously!"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    return-void

    .line 163
    :cond_18
    const/4 v0, 0x2

    :try_start_19
    iget-object v3, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    invoke-interface {v3, p2}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->loadLibrary(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v3, "%s (%s) was loaded normally!"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_19 .. :try_end_2e} :catch_2f

    .line 166
    return-void

    .line 167
    :catch_2f
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v4, "Loading the library normally failed: %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "%s (%s) was not loaded normally, re-linking..."

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 174
    .local v3, "workaroundFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_56

    iget-boolean v4, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->force:Z

    if-eqz v4, :cond_7c

    .line 175
    :cond_56
    iget-boolean v4, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->force:Z

    if-eqz v4, :cond_65

    .line 176
    const-string v4, "Forcing a re-link of %s (%s)..."

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p2, v5, v1

    aput-object p3, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_65
    invoke-virtual {p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->cleanupOldLibFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v5, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryInstaller:Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;

    iget-object v4, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    invoke-interface {v4}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->supportedAbis()[Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    .line 181
    invoke-interface {v4, p2}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 180
    move-object v6, p1

    move-object v9, v3

    move-object v10, p0

    invoke-interface/range {v5 .. v10}, Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;->installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/getkeepsafe/relinker/ReLinkerInstance;)V

    .line 185
    :cond_7c
    :try_start_7c
    iget-boolean v4, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->recursive:Z

    if-eqz v4, :cond_a3

    .line 186
    new-instance v4, Lcom/getkeepsafe/relinker/elf/ElfParser;

    invoke-direct {v4, v3}, Lcom/getkeepsafe/relinker/elf/ElfParser;-><init>(Ljava/io/File;)V

    .line 187
    .local v4, "parser":Lcom/getkeepsafe/relinker/elf/ElfParser;
    invoke-virtual {v4}, Lcom/getkeepsafe/relinker/elf/ElfParser;->parseNeededDependencies()Ljava/util/List;

    move-result-object v5

    .line 188
    .local v5, "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 189
    .local v7, "dependency":Ljava/lang/String;
    iget-object v8, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    invoke-interface {v8, v7}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->unmapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_a2} :catch_a4

    .line 190
    .end local v7    # "dependency":Ljava/lang/String;
    goto :goto_8d

    .line 196
    .end local v4    # "parser":Lcom/getkeepsafe/relinker/elf/ElfParser;
    .end local v5    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a3
    goto :goto_a5

    .line 192
    :catch_a4
    move-exception v4

    .line 198
    :goto_a5
    iget-object v4, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->loadPath(Ljava/lang/String;)V

    .line 199
    iget-object v4, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v4, "%s (%s) was re-linked!"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    return-void
.end method


# virtual methods
.method protected cleanupOldLibFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;
    .param p3, "currentVersion"    # Ljava/lang/String;

    .line 242
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 243
    .local v0, "workaroundDir":Ljava/io/File;
    invoke-virtual {p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 244
    .local v1, "workaroundFile":Ljava/io/File;
    iget-object v2, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    invoke-interface {v2, p2}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "mappedLibraryName":Ljava/lang/String;
    new-instance v3, Lcom/getkeepsafe/relinker/ReLinkerInstance$2;

    invoke-direct {v3, p0, v2}, Lcom/getkeepsafe/relinker/ReLinkerInstance$2;-><init>(Lcom/getkeepsafe/relinker/ReLinkerInstance;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 252
    .local v3, "existingFiles":[Ljava/io/File;
    if-nez v3, :cond_1a

    return-void

    .line 254
    :cond_1a
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_38

    aget-object v6, v3, v5

    .line 255
    .local v6, "file":Ljava/io/File;
    iget-boolean v7, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->force:Z

    if-nez v7, :cond_32

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 256
    :cond_32
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 254
    .end local v6    # "file":Ljava/io/File;
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 259
    :cond_38
    return-void
.end method

.method public force()Lcom/getkeepsafe/relinker/ReLinkerInstance;
    .registers 2

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->force:Z

    .line 73
    return-object p0
.end method

.method protected getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 209
    const-string v0, "lib"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    invoke-interface {v0, p2}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "libName":Ljava/lang/String;
    invoke-static {p3}, Lcom/getkeepsafe/relinker/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 224
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 227
    :cond_16
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    .line 93
    return-void
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    .line 111
    return-void
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    .line 101
    return-void
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .line 126
    if-eqz p1, :cond_35

    .line 130
    invoke-static {p2}, Lcom/getkeepsafe/relinker/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 134
    const-string v0, "Beginning load of %s..."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    if-nez p4, :cond_19

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 138
    :cond_19
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;-><init>(Lcom/getkeepsafe/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    :goto_2c
    return-void

    .line 131
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given library is either null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public log(Lcom/getkeepsafe/relinker/ReLinker$Logger;)Lcom/getkeepsafe/relinker/ReLinkerInstance;
    .registers 2
    .param p1, "logger"    # Lcom/getkeepsafe/relinker/ReLinker$Logger;

    .line 64
    iput-object p1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->logger:Lcom/getkeepsafe/relinker/ReLinker$Logger;

    .line 65
    return-object p0
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->logger:Lcom/getkeepsafe/relinker/ReLinker$Logger;

    if-eqz v0, :cond_9

    .line 267
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->logger:Lcom/getkeepsafe/relinker/ReLinker$Logger;

    invoke-interface {v0, p1}, Lcom/getkeepsafe/relinker/ReLinker$Logger;->log(Ljava/lang/String;)V

    .line 269
    :cond_9
    return-void
.end method

.method public varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 262
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public recursively()Lcom/getkeepsafe/relinker/ReLinkerInstance;
    .registers 2

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->recursive:Z

    .line 82
    return-object p0
.end method

###### Class com.getkeepsafe.relinker.ReLinkerInstance.AnonymousClass1 (com.getkeepsafe.relinker.ReLinkerInstance$1)
.class Lcom/getkeepsafe/relinker/ReLinkerInstance$1;
.super Ljava/lang/Object;
.source "ReLinkerInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getkeepsafe/relinker/ReLinkerInstance;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$library:Ljava/lang/String;

.field final synthetic val$listener:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V
    .registers 6
    .param p1, "this$0"    # Lcom/getkeepsafe/relinker/ReLinkerInstance;

    .line 138
    iput-object p1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->this$0:Lcom/getkeepsafe/relinker/ReLinkerInstance;

    iput-object p2, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$library:Ljava/lang/String;

    iput-object p4, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$version:Ljava/lang/String;

    iput-object p5, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$listener:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->this$0:Lcom/getkeepsafe/relinker/ReLinkerInstance;

    iget-object v1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$library:Ljava/lang/String;

    iget-object v3, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$version:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->access$000(Lcom/getkeepsafe/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$listener:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    invoke-interface {v0}, Lcom/getkeepsafe/relinker/ReLinker$LoadListener;->success()V
    :try_end_10
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_10} :catch_18
    .catch Lcom/getkeepsafe/relinker/MissingLibraryException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_1e

    .line 146
    :catch_11
    move-exception v0

    .line 147
    .local v0, "e":Lcom/getkeepsafe/relinker/MissingLibraryException;
    iget-object v1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$listener:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    invoke-interface {v1, v0}, Lcom/getkeepsafe/relinker/ReLinker$LoadListener;->failure(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 144
    .end local v0    # "e":Lcom/getkeepsafe/relinker/MissingLibraryException;
    :catch_18
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    iget-object v1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->val$listener:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    invoke-interface {v1, v0}, Lcom/getkeepsafe/relinker/ReLinker$LoadListener;->failure(Ljava/lang/Throwable;)V

    .line 148
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_1e
    nop

    .line 149
    :goto_1f
    return-void
.end method

###### Class com.getkeepsafe.relinker.ReLinkerInstance.AnonymousClass2 (com.getkeepsafe.relinker.ReLinkerInstance$2)
.class Lcom/getkeepsafe/relinker/ReLinkerInstance$2;
.super Ljava/lang/Object;
.source "ReLinkerInstance.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/relinker/ReLinkerInstance;->cleanupOldLibFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getkeepsafe/relinker/ReLinkerInstance;

.field final synthetic val$mappedLibraryName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/relinker/ReLinkerInstance;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/getkeepsafe/relinker/ReLinkerInstance;

    .line 245
    iput-object p1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$2;->this$0:Lcom/getkeepsafe/relinker/ReLinkerInstance;

    iput-object p2, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$2;->val$mappedLibraryName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$2;->val$mappedLibraryName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
