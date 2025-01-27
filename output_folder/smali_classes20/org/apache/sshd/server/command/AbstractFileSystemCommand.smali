.class public abstract Lorg/apache/sshd/server/command/AbstractFileSystemCommand;
.super Lorg/apache/sshd/server/command/AbstractCommandSupport;
.source "AbstractFileSystemCommand.java"

# interfaces
.implements Lorg/apache/sshd/common/file/FileSystemAware;


# instance fields
.field protected fileSystem:Ljava/nio/file/FileSystem;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "executorService"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/server/command/AbstractCommandSupport;-><init>(Ljava/lang/String;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 41
    return-void
.end method


# virtual methods
.method public destroy(Lorg/apache/sshd/server/channel/ChannelSession;)V
    .locals 10
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    const-string v0, "destroy({}) - failed ({}) to close file system={}: {}"

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/sshd/server/command/AbstractCommandSupport;->destroy(Lorg/apache/sshd/server/channel/ChannelSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    iget-object v7, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->fileSystem:Ljava/nio/file/FileSystem;

    if-eqz v7, :cond_1

    .line 59
    :try_start_1
    invoke-virtual {v7}, Ljava/nio/file/FileSystem;->close()V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :cond_0
    :goto_0
    iput-object v6, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->fileSystem:Ljava/nio/file/FileSystem;

    .line 67
    goto :goto_3

    .line 66
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 60
    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    .line 61
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    iget-object v8, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 62
    iget-object v8, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    .line 63
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    iget-object v3, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->fileSystem:Ljava/nio/file/FileSystem;

    aput-object v3, v5, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 62
    invoke-interface {v8, v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 66
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    iput-object v6, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->fileSystem:Ljava/nio/file/FileSystem;

    .line 67
    throw v0

    .line 70
    :cond_1
    :goto_3
    return-void

    .line 57
    :catchall_1
    move-exception v7

    iget-object v8, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->fileSystem:Ljava/nio/file/FileSystem;

    if-eqz v8, :cond_3

    .line 59
    :try_start_3
    iget-object v8, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->fileSystem:Ljava/nio/file/FileSystem;

    invoke-virtual {v8}, Ljava/nio/file/FileSystem;->close()V
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 66
    :cond_2
    :goto_4
    iput-object v6, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->fileSystem:Ljava/nio/file/FileSystem;

    .line 67
    goto :goto_7

    .line 66
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 60
    :catch_2
    move-exception v8

    goto :goto_5

    :catch_3
    move-exception v8

    .line 61
    .local v8, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_4
    iget-object v9, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 62
    iget-object v9, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    .line 63
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    iget-object v3, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->fileSystem:Ljava/nio/file/FileSystem;

    aput-object v3, v5, v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 62
    invoke-interface {v9, v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 66
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_6
    iput-object v6, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->fileSystem:Ljava/nio/file/FileSystem;

    .line 67
    throw v0

    .line 69
    :cond_3
    :goto_7
    throw v7
.end method

.method public getFileSystem()Ljava/nio/file/FileSystem;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->fileSystem:Ljava/nio/file/FileSystem;

    return-object v0
.end method

.method public setFileSystem(Ljava/nio/file/FileSystem;)V
    .locals 0
    .param p1, "fileSystem"    # Ljava/nio/file/FileSystem;

    .line 49
    iput-object p1, p0, Lorg/apache/sshd/server/command/AbstractFileSystemCommand;->fileSystem:Ljava/nio/file/FileSystem;

    .line 50
    return-void
.end method
