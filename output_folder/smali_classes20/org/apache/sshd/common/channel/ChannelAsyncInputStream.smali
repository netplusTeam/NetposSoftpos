.class public Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;
.super Lorg/apache/sshd/common/util/closeable/AbstractCloseable;
.source "ChannelAsyncInputStream.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoInputStream;
.implements Lorg/apache/sshd/common/channel/ChannelHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;
    }
.end annotation


# instance fields
.field private final buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

.field private final channelInstance:Lorg/apache/sshd/common/channel/Channel;

.field private pending:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;

.field private final readFutureId:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/channel/Channel;)V
    .locals 1
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;

    .line 46
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;-><init>()V

    .line 42
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 47
    const-string v0, "No channel"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/Channel;

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->channelInstance:Lorg/apache/sshd/common/channel/Channel;

    .line 48
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->readFutureId:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method private doRead(Z)V
    .locals 7
    .param p1, "resume"    # Z

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "future":Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;
    const/4 v1, 0x0

    .line 115
    .local v1, "nbRead":I
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    .line 116
    .local v2, "debugEnabled":Z
    iget-object v3, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    monitor-enter v3

    .line 117
    :try_start_0
    iget-object v4, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v4

    if-lez v4, :cond_1

    .line 118
    if-eqz p1, :cond_0

    .line 119
    if-eqz v2, :cond_0

    .line 120
    iget-object v4, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->log:Lorg/slf4j/Logger;

    const-string v5, "Resuming read due to incoming data on {}"

    invoke-interface {v4, v5, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    :cond_0
    iget-object v4, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->pending:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;

    move-object v0, v4

    .line 124
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->pending:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;

    .line 125
    if-eqz v0, :cond_2

    .line 126
    invoke-static {v0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->access$000(Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;Z)I

    move-result v4

    move v1, v4

    .line 127
    iget-object v4, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->compact()V

    goto :goto_0

    .line 130
    :cond_1
    if-nez p1, :cond_2

    .line 131
    if-eqz v2, :cond_2

    .line 132
    iget-object v4, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->log:Lorg/slf4j/Logger;

    const-string v5, "Delaying read until data is available on {}"

    invoke-interface {v4, v5, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    :cond_2
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    if-lez v1, :cond_3

    .line 138
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->getChannel()Lorg/apache/sshd/common/channel/Channel;

    move-result-object v3

    .line 140
    .local v3, "channel":Lorg/apache/sshd/common/channel/Channel;
    :try_start_1
    invoke-interface {v3}, Lorg/apache/sshd/common/channel/Channel;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v4

    .line 141
    .local v4, "wLocal":Lorg/apache/sshd/common/channel/Window;
    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Lorg/apache/sshd/common/channel/Window;->consumeAndCheck(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .end local v4    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    goto :goto_1

    .line 142
    :catch_0
    move-exception v4

    .line 143
    .local v4, "e":Ljava/io/IOException;
    invoke-interface {v3}, Lorg/apache/sshd/common/channel/Channel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v5

    .line 144
    .local v5, "session":Lorg/apache/sshd/common/session/Session;
    invoke-interface {v5, v4}, Lorg/apache/sshd/common/session/Session;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 146
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "session":Lorg/apache/sshd/common/session/Session;
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->setValue(Ljava/lang/Object;)V

    .line 148
    .end local v3    # "channel":Lorg/apache/sshd/common/channel/Channel;
    :cond_3
    return-void

    .line 136
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method


# virtual methods
.method protected doCloseGracefully()Lorg/apache/sshd/common/future/CloseFuture;
    .locals 3

    .line 106
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->pending:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;

    invoke-virtual {v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->when(Lorg/apache/sshd/common/future/SshFuture;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/apache/sshd/common/Closeable;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getChannel()Lorg/apache/sshd/common/channel/Channel;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->channelInstance:Lorg/apache/sshd/common/channel/Channel;

    return-object v0
.end method

.method protected preClose()V
    .locals 4

    .line 94
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->pending:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;

    if-eqz v1, :cond_0

    .line 97
    new-instance v2, Lorg/apache/sshd/common/SshException;

    const-string v3, "Closed"

    invoke-direct {v2, v3}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->setValue(Ljava/lang/Object;)V

    .line 100
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-super {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->preClose()V

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public read(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoReadFuture;
    .locals 5
    .param p1, "buf"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 65
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;

    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->readFutureId:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;-><init>(Ljava/lang/Object;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 66
    .local v0, "future":Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->isClosing()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v3, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->pending:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;

    if-nez v3, :cond_1

    .line 71
    iget-object v3, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v3

    if-lez v3, :cond_0

    .line 72
    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->getBuffer()Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v3

    .line 73
    .local v3, "fb":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v4, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v3, v4, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;Z)I

    move-result v2

    .line 74
    .local v2, "nbRead":I
    iget-object v4, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->compact()V

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->setValue(Ljava/lang/Object;)V

    .line 76
    .end local v2    # "nbRead":I
    .end local v3    # "fb":Lorg/apache/sshd/common/util/buffer/Buffer;
    goto :goto_0

    .line 77
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;->setValue(Ljava/lang/Object;)V

    .line 79
    :goto_0
    monitor-exit v1

    goto :goto_1

    .line 69
    :cond_1
    new-instance v2, Lorg/apache/sshd/common/io/ReadPendingException;

    const-string v3, "Previous pending read not handled"

    invoke-direct {v2, v3}, Lorg/apache/sshd/common/io/ReadPendingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "future":Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;
    .end local p1    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    throw v2

    .line 79
    .restart local v0    # "future":Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;
    .restart local p1    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 81
    :cond_2
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    monitor-enter v1

    .line 82
    :try_start_1
    iget-object v3, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->pending:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;

    if-nez v3, :cond_3

    .line 85
    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->pending:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;

    .line 86
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    invoke-direct {p0, v2}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->doRead(Z)V

    .line 89
    :goto_1
    return-object v0

    .line 83
    :cond_3
    :try_start_2
    new-instance v2, Lorg/apache/sshd/common/io/ReadPendingException;

    const-string v3, "Previous pending read not handled"

    invoke-direct {v2, v3}, Lorg/apache/sshd/common/io/ReadPendingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "future":Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;
    .end local p1    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    throw v2

    .line 86
    .restart local v0    # "future":Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl;
    .restart local p1    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->getChannel()Lorg/apache/sshd/common/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/apache/sshd/common/util/Readable;)V
    .locals 2
    .param p1, "src"    # Lorg/apache/sshd/common/util/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v1, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;)V

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->doRead(Z)V

    .line 61
    return-void

    .line 59
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
