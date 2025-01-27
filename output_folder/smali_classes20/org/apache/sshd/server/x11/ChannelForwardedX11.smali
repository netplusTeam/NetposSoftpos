.class public Lorg/apache/sshd/server/x11/ChannelForwardedX11;
.super Lorg/apache/sshd/client/channel/AbstractClientChannel;
.source "ChannelForwardedX11.java"


# instance fields
.field private final serverSession:Lorg/apache/sshd/common/io/IoSession;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 1
    .param p1, "serverSession"    # Lorg/apache/sshd/common/io/IoSession;

    .line 46
    const-string/jumbo v0, "x11"

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->serverSession:Lorg/apache/sshd/common/io/IoSession;

    .line 48
    return-void
.end method


# virtual methods
.method protected declared-synchronized doOpen()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 81
    :try_start_0
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->Async:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    iget-object v1, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->streaming:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelOutputStream;

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->log:Lorg/slf4j/Logger;

    const/16 v5, 0x5e

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/sshd/common/channel/ChannelOutputStream;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;Lorg/slf4j/Logger;BZ)V

    iput-object v0, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->out:Ljava/io/OutputStream;

    .line 88
    iget-object v0, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->out:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->invertedIn:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lorg/apache/sshd/server/x11/ChannelForwardedX11;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asynchronous streaming isn\'t supported yet on this channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized doWriteData([BIJ)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 98
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    const-string v1, "Data length exceeds int boundaries: %d"

    invoke-static {v0, v1, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 100
    invoke-virtual {p0}, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v0

    .line 101
    .local v0, "wLocal":Lorg/apache/sshd/common/channel/Window;
    invoke-virtual {v0, p3, p4}, Lorg/apache/sshd/common/channel/Window;->consumeAndCheck(J)V

    .line 103
    long-to-int v1, p3

    invoke-static {p1, p2, v1}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->getCompactClone([BII)Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    move-result-object v1

    .line 104
    .local v1, "packet":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v2, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->serverSession:Lorg/apache/sshd/common/io/IoSession;

    invoke-interface {v2, v1}, Lorg/apache/sshd/common/io/IoSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 97
    .end local v0    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    .end local v1    # "packet":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p0    # "this":Lorg/apache/sshd/server/x11/ChannelForwardedX11;
    .end local p1    # "data":[B
    .end local p2    # "off":I
    .end local p3    # "len":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 4

    .line 93
    invoke-virtual {p0}, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/sshd/common/Closeable;

    iget-object v2, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->serverSession:Lorg/apache/sshd/common/io/IoSession;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-super {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getInnerCloseable()Lorg/apache/sshd/common/Closeable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->sequential([Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    return-object v0
.end method

.method public handleEof()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-super {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->handleEof()V

    .line 110
    iget-object v0, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->serverSession:Lorg/apache/sshd/common/io/IoSession;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/io/IoSession;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 111
    return-void
.end method

.method public declared-synchronized open()Lorg/apache/sshd/client/future/OpenFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->serverSession:Lorg/apache/sshd/common/io/IoSession;

    invoke-interface {v0}, Lorg/apache/sshd/common/io/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 53
    .local v0, "remote":Ljava/net/InetSocketAddress;
    iget-object v1, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v1}, Lorg/apache/sshd/common/future/CloseFuture;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    new-instance v1, Lorg/apache/sshd/client/future/DefaultOpenFuture;

    iget-object v2, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->futureLock:Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lorg/apache/sshd/client/future/DefaultOpenFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;

    .line 58
    invoke-virtual {p0}, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    .line 59
    .local v1, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v2, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->log:Lorg/slf4j/Logger;

    const-string v3, "open({}) SSH_MSG_CHANNEL_OPEN"

    invoke-interface {v2, v3, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .end local p0    # "this":Lorg/apache/sshd/server/x11/ChannelForwardedX11;
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 64
    .local v2, "remoteAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "remoteHost":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v4

    .line 66
    .local v4, "wLocal":Lorg/apache/sshd/common/channel/Window;
    invoke-virtual {p0}, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->getChannelType()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "type":Ljava/lang/String;
    const/16 v6, 0x5a

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x20

    .line 67
    invoke-interface {v1, v6, v7}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v6

    .line 69
    .local v6, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v6, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->getId()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 71
    invoke-virtual {v4}, Lorg/apache/sshd/common/channel/Window;->getSize()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 72
    invoke-virtual {v4}, Lorg/apache/sshd/common/channel/Window;->getPacketSize()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 73
    invoke-virtual {v6, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 75
    invoke-virtual {p0, v6}, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 76
    iget-object v7, p0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v7

    .line 54
    .end local v1    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v2    # "remoteAddress":Ljava/net/InetAddress;
    .end local v3    # "remoteHost":Ljava/lang/String;
    .end local v4    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_1
    :try_start_1
    new-instance v1, Lorg/apache/sshd/common/SshException;

    const-string v2, "Session has been closed"

    invoke-direct {v1, v2}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .end local v0    # "remote":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
