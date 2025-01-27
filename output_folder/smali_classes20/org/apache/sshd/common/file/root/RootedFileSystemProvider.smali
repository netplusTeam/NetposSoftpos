.class public Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;
.super Ljava/nio/file/spi/FileSystemProvider;
.source "RootedFileSystemProvider.java"


# instance fields
.field private final fileSystems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/file/Path;",
            "Lorg/apache/sshd/common/file/root/RootedFileSystem;",
            ">;"
        }
    .end annotation
.end field

.field protected final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/nio/file/spi/FileSystemProvider;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->fileSystems:Ljava/util/Map;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    .line 71
    return-void
.end method

.method private static ensureDirectory(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->getLinkOptions(Z)[Ljava/nio/file/LinkOption;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/io/IoUtils;->ensureDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "modes"    # [Ljava/nio/file/AccessMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 384
    .local v0, "r":Ljava/nio/file/Path;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 385
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0, p2}, Ljava/nio/file/spi/FileSystemProvider;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V

    .line 386
    return-void
.end method

.method public varargs copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 5
    .param p1, "source"    # Ljava/nio/file/Path;
    .param p2, "target"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 304
    .local v0, "s":Ljava/nio/file/Path;
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    .line 305
    .local v1, "t":Ljava/nio/file/Path;
    iget-object v2, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const-string v4, "copy({})[{}]: {}[{}]"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v2

    .line 309
    .local v2, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v2, v0, v1, p3}, Ljava/nio/file/spi/FileSystemProvider;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    .line 310
    return-void
.end method

.method public varargs createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 2
    .param p1, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 231
    .local v0, "r":Ljava/nio/file/Path;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 232
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0, p2}, Ljava/nio/file/spi/FileSystemProvider;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V

    .line 233
    return-void
.end method

.method public createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 2
    .param p1, "link"    # Ljava/nio/file/Path;
    .param p2, "existing"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;Z[Ljava/nio/file/attribute/FileAttribute;)V

    .line 243
    return-void
.end method

.method protected varargs createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;Z[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 7
    .param p1, "link"    # Ljava/nio/file/Path;
    .param p2, "target"    # Ljava/nio/file/Path;
    .param p3, "symLink"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Z[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    .local p4, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 247
    .local v0, "l":Ljava/nio/file/Path;
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    .line 251
    .local v1, "t":Ljava/nio/file/Path;
    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/nio/file/Path;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    move-object v2, p2

    check-cast v2, Lorg/apache/sshd/common/file/root/RootedPath;

    invoke-virtual {v2}, Lorg/apache/sshd/common/file/root/RootedPath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/file/root/RootedFileSystem;

    .line 253
    .local v2, "rfs":Lorg/apache/sshd/common/file/root/RootedFileSystem;
    invoke-virtual {v2}, Lorg/apache/sshd/common/file/root/RootedFileSystem;->getRoot()Ljava/nio/file/Path;

    move-result-object v3

    .line 254
    .local v3, "root":Ljava/nio/file/Path;
    invoke-interface {v3, v1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    .line 257
    .end local v2    # "rfs":Lorg/apache/sshd/common/file/root/RootedFileSystem;
    .end local v3    # "root":Ljava/nio/file/Path;
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v2

    .line 258
    .local v2, "p":Ljava/nio/file/spi/FileSystemProvider;
    if-eqz p3, :cond_1

    .line 259
    invoke-virtual {v2, v0, v1, p4}, Ljava/nio/file/spi/FileSystemProvider;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {v2, v0, v1}, Ljava/nio/file/spi/FileSystemProvider;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 264
    :goto_0
    iget-object v3, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    iget-object v3, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const-string v5, "createLink(symbolic={}) {} => {}"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_2
    return-void
.end method

.method public varargs createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 1
    .param p1, "link"    # Ljava/nio/file/Path;
    .param p2, "target"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;Z[Ljava/nio/file/attribute/FileAttribute;)V

    .line 238
    return-void
.end method

.method public delete(Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 272
    .local v0, "r":Ljava/nio/file/Path;
    iget-object v1, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    const-string v2, "delete({}): {}"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 276
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0}, Ljava/nio/file/spi/FileSystemProvider;->delete(Ljava/nio/file/Path;)V

    .line 277
    return-void
.end method

.method public deleteIfExists(Ljava/nio/file/Path;)Z
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 282
    .local v0, "r":Ljava/nio/file/Path;
    iget-object v1, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    const-string v2, "deleteIfExists({}): {}"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 286
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0}, Ljava/nio/file/spi/FileSystemProvider;->deleteIfExists(Ljava/nio/file/Path;)Z

    move-result v2

    return v2
.end method

.method public varargs getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TV;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TV;"
        }
    .end annotation

    .line 390
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 391
    .local v0, "r":Ljava/nio/file/Path;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 392
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v2

    return-object v2
.end method

.method public getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->getFileSystem(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/root/RootedFileSystem;

    move-result-object v0

    .line 341
    .local v0, "fileSystem":Lorg/apache/sshd/common/file/root/RootedFileSystem;
    invoke-virtual {v0}, Lorg/apache/sshd/common/file/root/RootedFileSystem;->getRoot()Ljava/nio/file/Path;

    move-result-object v1

    .line 342
    .local v1, "root":Ljava/nio/file/Path;
    invoke-static {v1}, Ljava/nio/file/Files;->getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;

    move-result-object v2

    return-object v2
.end method

.method public getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->uriToPath(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->getFileSystem(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/root/RootedFileSystem;

    move-result-object v0

    return-object v0
.end method

.method protected getFileSystem(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/root/RootedFileSystem;
    .locals 10
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/file/FileSystemNotFoundException;
        }
    .end annotation

    .line 346
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 347
    .local v0, "real":Ljava/nio/file/Path;
    const/4 v1, 0x0

    .line 348
    .local v1, "rootInstance":Ljava/nio/file/Path;
    const/4 v2, 0x0

    .line 349
    .local v2, "fsInstance":Lorg/apache/sshd/common/file/root/RootedFileSystem;
    iget-object v3, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->fileSystems:Ljava/util/Map;

    monitor-enter v3

    .line 351
    :try_start_0
    iget-object v4, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->fileSystems:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 352
    .local v5, "fse":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/nio/file/Path;Lorg/apache/sshd/common/file/root/RootedFileSystem;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/file/Path;

    .line 353
    .local v6, "root":Ljava/nio/file/Path;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sshd/common/file/root/RootedFileSystem;

    .line 354
    .local v7, "fs":Lorg/apache/sshd/common/file/root/RootedFileSystem;
    invoke-interface {v0, v6}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 355
    monitor-exit v3

    return-object v7

    .line 358
    :cond_0
    invoke-interface {v0, v6}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 359
    goto :goto_0

    .line 363
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/nio/file/Path;->getNameCount()I

    move-result v8

    invoke-interface {v6}, Ljava/nio/file/Path;->getNameCount()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 364
    :cond_2
    move-object v1, v6

    .line 365
    move-object v2, v7

    .line 367
    .end local v5    # "fse":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/nio/file/Path;Lorg/apache/sshd/common/file/root/RootedFileSystem;>;"
    .end local v6    # "root":Ljava/nio/file/Path;
    .end local v7    # "fs":Lorg/apache/sshd/common/file/root/RootedFileSystem;
    :cond_3
    goto :goto_0

    .line 368
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    if-eqz v2, :cond_6

    .line 374
    iget-object v3, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 375
    iget-object v3, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    const-string v4, "getFileSystem({}): {}"

    invoke-interface {v3, v4, p1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 378
    :cond_5
    return-object v2

    .line 371
    :cond_6
    new-instance v3, Ljava/nio/file/FileSystemNotFoundException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/FileSystemNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 368
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getPath(Ljava/net/URI;)Ljava/nio/file/Path;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;

    .line 141
    invoke-virtual {p1}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "str":Ljava/lang/String;
    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 143
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 147
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;

    move-result-object v2

    .line 148
    .local v2, "fs":Ljava/nio/file/FileSystem;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "subPath":Ljava/lang/String;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 150
    .local v4, "p":Ljava/nio/file/Path;
    iget-object v5, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    iget-object v5, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    const-string v6, "getPath({}): {}"

    invoke-interface {v5, v6, p1, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    :cond_0
    return-object v4

    .line 144
    .end local v2    # "fs":Ljava/nio/file/FileSystem;
    .end local v3    # "subPath":Ljava/lang/String;
    .end local v4    # "p":Ljava/nio/file/Path;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not contain path info - e.g., root:file://foo/bar!/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "root"

    return-object v0
.end method

.method public isHidden(Ljava/nio/file/Path;)Z
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 334
    .local v0, "r":Ljava/nio/file/Path;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 335
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0}, Ljava/nio/file/spi/FileSystemProvider;->isHidden(Ljava/nio/file/Path;)Z

    move-result v2

    return v2
.end method

.method public isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 4
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "path2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 326
    .local v0, "r":Ljava/nio/file/Path;
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    .line 327
    .local v1, "r2":Ljava/nio/file/Path;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v2

    .line 328
    .local v2, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v2, v0, v1}, Ljava/nio/file/spi/FileSystemProvider;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v3

    return v3
.end method

.method public varargs move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 5
    .param p1, "source"    # Ljava/nio/file/Path;
    .param p2, "target"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 315
    .local v0, "s":Ljava/nio/file/Path;
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    .line 316
    .local v1, "t":Ljava/nio/file/Path;
    iget-object v2, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    iget-object v2, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const-string v4, "move({})[{}]: {}[{}]"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v2

    .line 320
    .local v2, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v2, v0, v1, p3}, Ljava/nio/file/spi/FileSystemProvider;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    .line 321
    return-void
.end method

.method public varargs newAsynchronousFileChannel(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p3, "executor"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/AsynchronousFileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p4, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 182
    .local v0, "r":Ljava/nio/file/Path;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 183
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0, p2, p3, p4}, Ljava/nio/file/spi/FileSystemProvider;->newAsynchronousFileChannel(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;

    move-result-object v2

    return-object v2
.end method

.method public varargs newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 189
    .local v0, "r":Ljava/nio/file/Path;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 190
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v2

    return-object v2
.end method

.method public newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .locals 4
    .param p1, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/DirectoryStream$Filter<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    .local p2, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 196
    .local v0, "r":Ljava/nio/file/Path;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 197
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    move-object v2, p1

    check-cast v2, Lorg/apache/sshd/common/file/root/RootedPath;

    invoke-virtual {v2}, Lorg/apache/sshd/common/file/root/RootedPath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/file/root/RootedFileSystem;

    invoke-virtual {v1, v0, p2}, Ljava/nio/file/spi/FileSystemProvider;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->root(Lorg/apache/sshd/common/file/root/RootedFileSystem;Ljava/nio/file/DirectoryStream;)Ljava/nio/file/DirectoryStream;

    move-result-object v2

    return-object v2
.end method

.method public varargs newFileChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 173
    .local v0, "r":Ljava/nio/file/Path;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 174
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->newFileChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object v2

    return-object v2
.end method

.method protected newFileSystem(Ljava/lang/Object;Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .locals 5
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/nio/file/Path;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/nio/file/FileSystem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    .local p3, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p2}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->ensureDirectory(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v0

    .line 95
    .local v0, "root":Ljava/nio/file/Path;
    const/4 v1, 0x0

    .line 96
    .local v1, "rootedFs":Lorg/apache/sshd/common/file/root/RootedFileSystem;
    iget-object v2, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->fileSystems:Ljava/util/Map;

    monitor-enter v2

    .line 97
    :try_start_0
    iget-object v3, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->fileSystems:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    new-instance v3, Lorg/apache/sshd/common/file/root/RootedFileSystem;

    invoke-direct {v3, p0, p2, p3}, Lorg/apache/sshd/common/file/root/RootedFileSystem;-><init>(Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;Ljava/nio/file/Path;Ljava/util/Map;)V

    move-object v1, v3

    .line 99
    iget-object v3, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->fileSystems:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    if-eqz v1, :cond_2

    .line 108
    iget-object v2, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    const-string v3, "newFileSystem({}): {}"

    invoke-interface {v2, v3, p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    :cond_1
    return-object v1

    .line 105
    :cond_2
    new-instance v2, Ljava/nio/file/FileSystemAlreadyExistsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newFileSystem("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") already mapped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/nio/file/FileSystemAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/nio/file/FileSystem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->uriToPath(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->newFileSystem(Ljava/lang/Object;Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v0

    return-object v0
.end method

.method public newFileSystem(Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/nio/file/FileSystem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0, p1, p1, p2}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->newFileSystem(Ljava/lang/Object;Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v0

    return-object v0
.end method

.method public varargs newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 159
    .local v0, "r":Ljava/nio/file/Path;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 160
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0, p2}, Ljava/nio/file/spi/FileSystemProvider;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method public varargs newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 166
    .local v0, "r":Ljava/nio/file/Path;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 167
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0, p2}, Ljava/nio/file/spi/FileSystemProvider;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    return-object v2
.end method

.method protected provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 428
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    .line 429
    .local v0, "fs":Ljava/nio/file/FileSystem;
    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    return-object v1
.end method

.method public varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 5
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TA;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 398
    .local v0, "r":Ljava/nio/file/Path;
    iget-object v1, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "readAttributes({})[{}] type={}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 403
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v2

    return-object v2
.end method

.method public varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 6
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 409
    .local v0, "r":Ljava/nio/file/Path;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 410
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v2

    .line 411
    .local v2, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    iget-object v3, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    const-string v5, "readAttributes({})[{}] {}: {}"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    :cond_0
    return-object v2
.end method

.method public readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 7
    .param p1, "link"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 292
    .local v0, "r":Ljava/nio/file/Path;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 293
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0}, Ljava/nio/file/spi/FileSystemProvider;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    .line 294
    .local v2, "t":Ljava/nio/file/Path;
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/file/root/RootedFileSystem;

    invoke-virtual {p0, v3, v2}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->root(Lorg/apache/sshd/common/file/root/RootedFileSystem;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v3

    .line 295
    .local v3, "target":Ljava/nio/file/Path;
    iget-object v4, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    iget-object v4, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    const-string v6, "readSymbolicLink({})[{}]: {}[{}]"

    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :cond_0
    return-object v3
.end method

.method protected resolveLocalPath(Lorg/apache/sshd/common/file/root/RootedPath;)Ljava/nio/file/Path;
    .locals 13
    .param p1, "path"    # Lorg/apache/sshd/common/file/root/RootedPath;

    .line 468
    const-string v0, "No rooted path to resolve"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/file/root/RootedPath;

    invoke-virtual {v0}, Lorg/apache/sshd/common/file/root/RootedPath;->toAbsolutePath()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/file/root/RootedPath;

    .line 469
    .local v0, "absPath":Lorg/apache/sshd/common/file/root/RootedPath;
    invoke-virtual {v0}, Lorg/apache/sshd/common/file/root/RootedPath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/file/root/RootedFileSystem;

    .line 470
    .local v1, "rfs":Lorg/apache/sshd/common/file/root/RootedFileSystem;
    invoke-virtual {v1}, Lorg/apache/sshd/common/file/root/RootedFileSystem;->getRoot()Ljava/nio/file/Path;

    move-result-object v2

    .line 471
    .local v2, "root":Ljava/nio/file/Path;
    invoke-interface {v2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v3

    .line 473
    .local v3, "lfs":Ljava/nio/file/FileSystem;
    invoke-virtual {v1}, Lorg/apache/sshd/common/file/root/RootedFileSystem;->getSeparator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No rooted file system separator"

    invoke-static {v4, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, "rSep":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const-string v8, "Bad rooted file system separator: %s"

    invoke-static {v5, v8, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 475
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 477
    .local v5, "rootedSeparator":C
    invoke-virtual {v3}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "No local file system separator"

    invoke-static {v8, v9}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 478
    .local v8, "lSep":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v7, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    const-string v10, "Bad local file system separator: %s"

    invoke-static {v9, v10, v8}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 479
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 481
    .local v6, "localSeparator":C
    invoke-virtual {v0}, Lorg/apache/sshd/common/file/root/RootedPath;->toString()Ljava/lang/String;

    move-result-object v9

    .line 482
    .local v9, "r":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "subPath":Ljava/lang/String;
    if-eq v5, v6, :cond_2

    .line 484
    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 487
    :cond_2
    invoke-interface {v2, v7}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    .line 488
    .local v10, "resolved":Ljava/nio/file/Path;
    invoke-interface {v10}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v10

    .line 489
    invoke-interface {v10}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v10

    .line 490
    iget-object v11, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v11}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 491
    iget-object v11, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    const-string v12, "resolveLocalPath({}): {}"

    invoke-interface {v11, v12, v0, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 499
    :cond_3
    invoke-interface {v10, v2}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 502
    return-object v10

    .line 500
    :cond_4
    new-instance v11, Ljava/nio/file/InvalidPathException;

    const-string v12, "Not under root"

    invoke-direct {v11, v9, v12}, Ljava/nio/file/InvalidPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v11
.end method

.method protected root(Lorg/apache/sshd/common/file/root/RootedFileSystem;Ljava/nio/file/DirectoryStream;)Ljava/nio/file/DirectoryStream;
    .locals 1
    .param p1, "rfs"    # Lorg/apache/sshd/common/file/root/RootedFileSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/file/root/RootedFileSystem;",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 201
    .local p2, "ds":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    new-instance v0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$1;-><init>(Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;Lorg/apache/sshd/common/file/root/RootedFileSystem;Ljava/nio/file/DirectoryStream;)V

    return-object v0
.end method

.method protected root(Lorg/apache/sshd/common/file/root/RootedFileSystem;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 5
    .param p1, "rfs"    # Lorg/apache/sshd/common/file/root/RootedFileSystem;
    .param p2, "nat"    # Ljava/nio/file/Path;

    .line 433
    invoke-interface {p2}, Ljava/nio/file/Path;->isAbsolute()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p1}, Lorg/apache/sshd/common/file/root/RootedFileSystem;->getRoot()Ljava/nio/file/Path;

    move-result-object v0

    .line 435
    .local v0, "root":Ljava/nio/file/Path;
    invoke-interface {v0, p2}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    .line 436
    .local v2, "rel":Ljava/nio/file/Path;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Lorg/apache/sshd/common/file/root/RootedFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    return-object v1

    .line 438
    .end local v0    # "root":Ljava/nio/file/Path;
    .end local v2    # "rel":Ljava/nio/file/Path;
    :cond_0
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/sshd/common/file/root/RootedFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method protected root(Lorg/apache/sshd/common/file/root/RootedFileSystem;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .param p1, "rfs"    # Lorg/apache/sshd/common/file/root/RootedFileSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/file/root/RootedFileSystem;",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 215
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    new-instance v0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$2;-><init>(Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;Ljava/util/Iterator;Lorg/apache/sshd/common/file/root/RootedFileSystem;)V

    return-object v0
.end method

.method public varargs setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V
    .locals 4
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 420
    .local v0, "r":Ljava/nio/file/Path;
    iget-object v1, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const-string v3, "setAttribute({})[{}] {}={}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    .line 424
    .local v1, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v1, v0, p2, p3, p4}, Ljava/nio/file/spi/FileSystemProvider;->setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V

    .line 425
    return-void
.end method

.method protected unroot(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 451
    const-string v0, "No path to unroot"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    instance-of v0, p1, Lorg/apache/sshd/common/file/root/RootedPath;

    if-eqz v0, :cond_0

    .line 457
    move-object v0, p1

    check-cast v0, Lorg/apache/sshd/common/file/root/RootedPath;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->resolveLocalPath(Lorg/apache/sshd/common/file/root/RootedPath;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0

    .line 453
    :cond_0
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unroot("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/sshd/common/file/root/RootedPath;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but rather a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 454
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/ProviderMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected uriToPath(Ljava/net/URI;)Ljava/nio/file/Path;
    .locals 8
    .param p1, "uri"    # Ljava/net/URI;

    .line 116
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "expected":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "root":Ljava/lang/String;
    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 124
    .local v3, "i":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 125
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 129
    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 130
    :catch_0
    move-exception v4

    .line 131
    .local v4, "e":Ljava/net/URISyntaxException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 119
    .end local v2    # "root":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "e":Ljava/net/URISyntaxException;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI scheme ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
