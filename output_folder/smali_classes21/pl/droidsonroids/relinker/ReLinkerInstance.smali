.class public Lpl/droidsonroids/relinker/ReLinkerInstance;
.super Ljava/lang/Object;
.source "ReLinkerInstance.java"


# static fields
.field private static final LIB_DIR:Ljava/lang/String; = "lib"


# instance fields
.field protected force:Z

.field protected final libraryInstaller:Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;

.field protected final libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

.field protected final loadedLibraries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected logger:Lpl/droidsonroids/relinker/ReLinker$Logger;

.field protected recursive:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 43
    new-instance v0, Lpl/droidsonroids/relinker/SystemLibraryLoader;

    invoke-direct {v0}, Lpl/droidsonroids/relinker/SystemLibraryLoader;-><init>()V

    new-instance v1, Lpl/droidsonroids/relinker/ApkLibraryInstaller;

    invoke-direct {v1}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lpl/droidsonroids/relinker/ReLinkerInstance;-><init>(Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;)V
    .locals 2
    .param p1, "libraryLoader"    # Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;
    .param p2, "libraryInstaller"    # Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/Set;

    .line 48
    if-eqz p1, :cond_1

    .line 52
    if-eqz p2, :cond_0

    .line 56
    iput-object p1, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    .line 57
    iput-object p2, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryInstaller:Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;

    .line 58
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot pass null library installer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot pass null library loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lpl/droidsonroids/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lpl/droidsonroids/relinker/ReLinkerInstance;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->force:Z

    if-nez v0, :cond_0

    .line 158
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string v1, "%s already loaded previously!"

    invoke-virtual {p0, v1, v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x2

    :try_start_0
    iget-object v3, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    invoke-interface {v3, p2}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->loadLibrary(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v3, "%s (%s) was loaded normally!"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v2

    invoke-virtual {p0, v3, v4}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    return-void

    .line 167
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Loading the library normally failed: %s"

    invoke-virtual {p0, v5, v4}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p3, v3, v2

    const-string v4, "%s (%s) was not loaded normally, re-linking..."

    invoke-virtual {p0, v4, v3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 174
    .local v3, "workaroundFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->force:Z

    if-eqz v4, :cond_3

    .line 175
    :cond_1
    iget-boolean v4, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->force:Z

    if-eqz v4, :cond_2

    .line 176
    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v2

    const-string v5, "Forcing a re-link of %s (%s)..."

    invoke-virtual {p0, v5, v4}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->cleanupOldLibFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v5, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryInstaller:Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;

    iget-object v4, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    invoke-interface {v4}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->supportedAbis()[Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    .line 181
    invoke-interface {v4, p2}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 180
    move-object v6, p1

    move-object v9, v3

    move-object v10, p0

    invoke-interface/range {v5 .. v10}, Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;->installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lpl/droidsonroids/relinker/ReLinkerInstance;)V

    .line 185
    :cond_3
    :try_start_1
    iget-boolean v4, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->recursive:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_4

    .line 186
    const/4 v4, 0x0

    .line 189
    .local v4, "parser":Lpl/droidsonroids/relinker/elf/ElfParser;
    :try_start_2
    new-instance v5, Lpl/droidsonroids/relinker/elf/ElfParser;

    invoke-direct {v5, v3}, Lpl/droidsonroids/relinker/elf/ElfParser;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 190
    invoke-virtual {v4}, Lpl/droidsonroids/relinker/elf/ElfParser;->parseNeededDependencies()Ljava/util/List;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    .local v5, "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3
    invoke-virtual {v4}, Lpl/droidsonroids/relinker/elf/ElfParser;->close()V

    .line 193
    nop

    .line 194
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 195
    .local v7, "dependency":Ljava/lang/String;
    iget-object v8, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    invoke-interface {v8, v7}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->unmapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    .end local v7    # "dependency":Ljava/lang/String;
    goto :goto_0

    .line 192
    .end local v5    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lpl/droidsonroids/relinker/elf/ElfParser;->close()V

    .line 193
    nop

    .end local v3    # "workaroundFile":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "library":Ljava/lang/String;
    .end local p3    # "version":Ljava/lang/String;
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 202
    .end local v4    # "parser":Lpl/droidsonroids/relinker/elf/ElfParser;
    .restart local v3    # "workaroundFile":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "library":Ljava/lang/String;
    .restart local p3    # "version":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 198
    :catch_1
    move-exception v4

    .line 204
    :goto_1
    iget-object v4, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->loadPath(Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    const-string v1, "%s (%s) was re-linked!"

    invoke-virtual {p0, v1, v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    return-void
.end method


# virtual methods
.method protected cleanupOldLibFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;
    .param p3, "currentVersion"    # Ljava/lang/String;

    .line 248
    invoke-virtual {p0, p1}, Lpl/droidsonroids/relinker/ReLinkerInstance;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 249
    .local v0, "workaroundDir":Ljava/io/File;
    invoke-virtual {p0, p1, p2, p3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 250
    .local v1, "workaroundFile":Ljava/io/File;
    iget-object v2, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    invoke-interface {v2, p2}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "mappedLibraryName":Ljava/lang/String;
    new-instance v3, Lpl/droidsonroids/relinker/ReLinkerInstance$2;

    invoke-direct {v3, p0, v2}, Lpl/droidsonroids/relinker/ReLinkerInstance$2;-><init>(Lpl/droidsonroids/relinker/ReLinkerInstance;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 258
    .local v3, "existingFiles":[Ljava/io/File;
    if-nez v3, :cond_0

    return-void

    .line 260
    :cond_0
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 261
    .local v6, "file":Ljava/io/File;
    iget-boolean v7, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->force:Z

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 262
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 260
    .end local v6    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 265
    :cond_3
    return-void
.end method

.method public force()Lpl/droidsonroids/relinker/ReLinkerInstance;
    .locals 1

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->force:Z

    .line 73
    return-object p0
.end method

.method protected getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 215
    const-string v0, "lib"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    invoke-interface {v0, p2}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "libName":Ljava/lang/String;
    invoke-static {p3}, Lpl/droidsonroids/relinker/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lpl/droidsonroids/relinker/ReLinkerInstance;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 233
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lpl/droidsonroids/relinker/ReLinkerInstance;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    .line 93
    return-void
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    .line 101
    return-void
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "listener"    # Lpl/droidsonroids/relinker/ReLinker$LoadListener;

    .line 126
    if-eqz p1, :cond_2

    .line 130
    invoke-static {p2}, Lpl/droidsonroids/relinker/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "Beginning load of %s..."

    invoke-virtual {p0, v1, v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    if-nez p4, :cond_0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lpl/droidsonroids/relinker/ReLinkerInstance$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lpl/droidsonroids/relinker/ReLinkerInstance$1;-><init>(Lpl/droidsonroids/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given library is either null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "library"    # Ljava/lang/String;
    .param p3, "listener"    # Lpl/droidsonroids/relinker/ReLinker$LoadListener;

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    .line 111
    return-void
.end method

.method public log(Lpl/droidsonroids/relinker/ReLinker$Logger;)Lpl/droidsonroids/relinker/ReLinkerInstance;
    .locals 0
    .param p1, "logger"    # Lpl/droidsonroids/relinker/ReLinker$Logger;

    .line 64
    iput-object p1, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->logger:Lpl/droidsonroids/relinker/ReLinker$Logger;

    .line 65
    return-object p0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->logger:Lpl/droidsonroids/relinker/ReLinker$Logger;

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0, p1}, Lpl/droidsonroids/relinker/ReLinker$Logger;->log(Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method

.method public varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 268
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public recursively()Lpl/droidsonroids/relinker/ReLinkerInstance;
    .locals 1

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->recursive:Z

    .line 82
    return-object p0
.end method
