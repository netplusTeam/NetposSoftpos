.class public Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "NativeFileSystemFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/file/FileSystemFactory;


# static fields
.field public static final DEFAULT_USERS_HOME:Ljava/lang/String; = "/home"

.field public static final INSTANCE:Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;


# instance fields
.field private createHome:Z

.field private usersHomeDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;

    invoke-direct {v0}, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;->INSTANCE:Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;-><init>(Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "createHome"    # Z

    .line 52
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 46
    const-string v0, "/home"

    iput-object v0, p0, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;->usersHomeDir:Ljava/lang/String;

    .line 53
    iput-boolean p1, p0, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;->createHome:Z

    .line 54
    return-void
.end method


# virtual methods
.method public createFileSystem(Lorg/apache/sshd/common/session/Session;)Ljava/nio/file/FileSystem;
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Lorg/apache/sshd/common/session/Session;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "userName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;->isCreateHome()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;->getUsersHomeDir()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "homeRoot":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v2

    .line 100
    .local v2, "homeDir":Ljava/nio/file/Path;
    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    new-array v3, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v3, Ljava/nio/file/NotDirectoryException;

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_1
    new-array v3, v3, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v3

    .line 106
    .local v3, "p":Ljava/nio/file/Path;
    iget-object v4, p0, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;->log:Lorg/slf4j/Logger;

    const-string v5, "createFileSystem({}) created {}"

    invoke-interface {v4, v5, p1, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .end local v1    # "homeRoot":Ljava/lang/String;
    .end local v2    # "homeDir":Ljava/nio/file/Path;
    .end local v3    # "p":Ljava/nio/file/Path;
    :cond_2
    :goto_0
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    return-object v1
.end method

.method public getUsersHomeDir()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;->usersHomeDir:Ljava/lang/String;

    return-object v0
.end method

.method public isCreateHome()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;->createHome:Z

    return v0
.end method

.method public setCreateHome(Z)V
    .locals 0
    .param p1, "createHome"    # Z

    .line 90
    iput-boolean p1, p0, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;->createHome:Z

    .line 91
    return-void
.end method

.method public setUsersHomeDir(Ljava/lang/String;)V
    .locals 1
    .param p1, "usersHomeDir"    # Ljava/lang/String;

    .line 70
    const-string v0, "No users home dir"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/file/nativefs/NativeFileSystemFactory;->usersHomeDir:Ljava/lang/String;

    .line 71
    return-void
.end method
