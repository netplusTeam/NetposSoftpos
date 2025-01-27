.class public Lorg/apache/sshd/common/file/virtualfs/VirtualFileSystemFactory;
.super Ljava/lang/Object;
.source "VirtualFileSystemFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/file/FileSystemFactory;


# instance fields
.field private defaultHomeDir:Ljava/nio/file/Path;

.field private final homeDirs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/file/virtualfs/VirtualFileSystemFactory;->homeDirs:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "defaultHomeDir"    # Ljava/nio/file/Path;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/file/virtualfs/VirtualFileSystemFactory;->homeDirs:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lorg/apache/sshd/common/file/virtualfs/VirtualFileSystemFactory;->defaultHomeDir:Ljava/nio/file/Path;

    .line 49
    return-void
.end method


# virtual methods
.method protected computeRootDir(Lorg/apache/sshd/common/session/Session;)Ljava/nio/file/Path;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Lorg/apache/sshd/common/session/Session;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "username":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/virtualfs/VirtualFileSystemFactory;->getUserHomeDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 82
    .local v1, "homeDir":Ljava/nio/file/Path;
    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/virtualfs/VirtualFileSystemFactory;->getDefaultHomeDir()Ljava/nio/file/Path;

    move-result-object v1

    .line 86
    :cond_0
    return-object v1
.end method

.method public createFileSystem(Lorg/apache/sshd/common/session/Session;)Ljava/nio/file/FileSystem;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Lorg/apache/sshd/common/session/Session;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "username":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/virtualfs/VirtualFileSystemFactory;->computeRootDir(Lorg/apache/sshd/common/session/Session;)Ljava/nio/file/Path;

    move-result-object v1

    .line 72
    .local v1, "dir":Ljava/nio/file/Path;
    if-eqz v1, :cond_0

    .line 76
    new-instance v2, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;

    invoke-direct {v2}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->newFileSystem(Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v2

    return-object v2

    .line 73
    :cond_0
    new-instance v2, Ljava/nio/file/InvalidPathException;

    const-string v3, "Cannot resolve home directory"

    invoke-direct {v2, v0, v3}, Ljava/nio/file/InvalidPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public getDefaultHomeDir()Ljava/nio/file/Path;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/sshd/common/file/virtualfs/VirtualFileSystemFactory;->defaultHomeDir:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getUserHomeDir(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lorg/apache/sshd/common/file/virtualfs/VirtualFileSystemFactory;->homeDirs:Ljava/util/Map;

    const-string v1, "No username"

    invoke-static {p1, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    return-object v0
.end method

.method public setDefaultHomeDir(Ljava/nio/file/Path;)V
    .locals 0
    .param p1, "defaultHomeDir"    # Ljava/nio/file/Path;

    .line 52
    iput-object p1, p0, Lorg/apache/sshd/common/file/virtualfs/VirtualFileSystemFactory;->defaultHomeDir:Ljava/nio/file/Path;

    .line 53
    return-void
.end method

.method public setUserHomeDir(Ljava/lang/String;Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "userHomeDir"    # Ljava/nio/file/Path;

    .line 60
    iget-object v0, p0, Lorg/apache/sshd/common/file/virtualfs/VirtualFileSystemFactory;->homeDirs:Ljava/util/Map;

    const-string v1, "No username"

    invoke-static {p1, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v2, "No home dir"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method
