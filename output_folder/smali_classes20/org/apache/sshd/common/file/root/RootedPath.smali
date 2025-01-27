.class public Lorg/apache/sshd/common/file/root/RootedPath;
.super Lorg/apache/sshd/common/file/util/BasePath;
.source "RootedPath.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/file/util/BasePath<",
        "Lorg/apache/sshd/common/file/root/RootedPath;",
        "Lorg/apache/sshd/common/file/root/RootedFileSystem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/file/root/RootedFileSystem;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "fileSystem"    # Lorg/apache/sshd/common/file/root/RootedFileSystem;
    .param p2, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/file/root/RootedFileSystem;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sshd/common/file/util/BasePath;-><init>(Lorg/apache/sshd/common/file/util/BaseFileSystem;Ljava/lang/String;Ljava/util/List;)V

    .line 37
    return-void
.end method


# virtual methods
.method public toFile()Ljava/io/File;
    .locals 5

    .line 41
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/root/RootedPath;->toAbsolutePath()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/file/root/RootedPath;

    .line 42
    .local v0, "absolute":Lorg/apache/sshd/common/file/root/RootedPath;
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/root/RootedPath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/file/root/RootedFileSystem;

    .line 43
    .local v1, "fs":Lorg/apache/sshd/common/file/root/RootedFileSystem;
    invoke-virtual {v1}, Lorg/apache/sshd/common/file/root/RootedFileSystem;->getRoot()Ljava/nio/file/Path;

    move-result-object v2

    .line 44
    .local v2, "path":Ljava/nio/file/Path;
    iget-object v3, v0, Lorg/apache/sshd/common/file/root/RootedPath;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 45
    .local v4, "n":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 46
    .end local v4    # "n":Ljava/lang/String;
    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/root/RootedPath;->toRealPath([Ljava/nio/file/LinkOption;)Lorg/apache/sshd/common/file/root/RootedPath;

    move-result-object p1

    return-object p1
.end method

.method public varargs toRealPath([Ljava/nio/file/LinkOption;)Lorg/apache/sshd/common/file/root/RootedPath;
    .locals 4
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/root/RootedPath;->toAbsolutePath()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/file/root/RootedPath;

    .line 53
    .local v0, "absolute":Lorg/apache/sshd/common/file/root/RootedPath;
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/root/RootedPath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v1

    .line 54
    .local v1, "fs":Ljava/nio/file/FileSystem;
    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v2

    .line 55
    .local v2, "provider":Ljava/nio/file/spi/FileSystemProvider;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/AccessMode;

    invoke-virtual {v2, v0, v3}, Ljava/nio/file/spi/FileSystemProvider;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V

    .line 56
    return-object v0
.end method
