.class public Lorg/apache/sshd/common/file/root/RootedFileSystem;
.super Lorg/apache/sshd/common/file/util/BaseFileSystem;
.source "RootedFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/file/util/BaseFileSystem<",
        "Lorg/apache/sshd/common/file/root/RootedPath;",
        ">;"
    }
.end annotation


# instance fields
.field private final rootFs:Ljava/nio/file/FileSystem;

.field private final rootPath:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;Ljava/nio/file/Path;Ljava/util/Map;)V
    .locals 1
    .param p1, "fileSystemProvider"    # Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;
    .param p2, "root"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;",
            "Ljava/nio/file/Path;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 42
    .local p3, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/file/util/BaseFileSystem;-><init>(Ljava/nio/file/spi/FileSystemProvider;)V

    .line 43
    const-string v0, "No root path"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    iput-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystem;->rootPath:Ljava/nio/file/Path;

    .line 44
    invoke-interface {p2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystem;->rootFs:Ljava/nio/file/FileSystem;

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystem;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystem;->log:Lorg/slf4j/Logger;

    const-string v1, "close({})"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    :cond_0
    return-void
.end method

.method protected bridge synthetic create(Ljava/lang/String;Ljava/util/List;)Ljava/nio/file/Path;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/file/root/RootedFileSystem;->create(Ljava/lang/String;Ljava/util/List;)Lorg/apache/sshd/common/file/root/RootedPath;

    move-result-object p1

    return-object p1
.end method

.method protected create(Ljava/lang/String;Ljava/util/List;)Lorg/apache/sshd/common/file/root/RootedPath;
    .locals 1
    .param p1, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/sshd/common/file/root/RootedPath;"
        }
    .end annotation

    .line 89
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/sshd/common/file/root/RootedPath;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/common/file/root/RootedPath;-><init>(Lorg/apache/sshd/common/file/root/RootedFileSystem;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public getFileStores()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/FileStore;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystem;->rootFs:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->getFileStores()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Ljava/nio/file/Path;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystem;->rootPath:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getRootFileSystem()Ljava/nio/file/FileSystem;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystem;->rootFs:Ljava/nio/file/FileSystem;

    return-object v0
.end method

.method public getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystem;->rootFs:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystem;->rootFs:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystem;->rootFs:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic provider()Ljava/nio/file/spi/FileSystemProvider;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/root/RootedFileSystem;->provider()Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method public provider()Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;
    .locals 1

    .line 57
    invoke-super {p0}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;

    return-object v0
.end method

.method public supportedFileAttributeViews()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystem;->rootFs:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystem;->rootPath:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
