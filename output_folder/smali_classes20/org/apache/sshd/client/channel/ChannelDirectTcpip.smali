.class public Lorg/apache/sshd/client/channel/ChannelDirectTcpip;
.super Lorg/apache/sshd/client/channel/AbstractClientChannel;
.source "ChannelDirectTcpip.java"


# instance fields
.field private final local:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field private pipe:Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;

.field private final remote:Lorg/apache/sshd/common/util/net/SshdSocketAddress;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 4
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 52
    const-string v0, "direct-tcpip"

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;-><init>(Ljava/lang/String;)V

    .line 53
    if-nez p1, :cond_0

    .line 55
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 56
    .local v0, "localHost":Ljava/net/InetAddress;
    new-instance v1, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    .line 59
    .end local v0    # "localHost":Ljava/net/InetAddress;
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to retrieve local host name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 64
    iput-object p1, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->local:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 65
    iput-object p2, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->remote:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 66
    return-void

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Remote address must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected doOpen()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->streaming:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    sget-object v1, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->Async:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    if-ne v0, v1, :cond_0

    .line 101
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    const/16 v1, 0x5e

    invoke-direct {v0, p0, v1}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;-><init>(Lorg/apache/sshd/common/channel/Channel;B)V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->asyncIn:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 102
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;-><init>(Lorg/apache/sshd/common/channel/Channel;)V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->asyncOut:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelOutputStream;

    .line 105
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->log:Lorg/slf4j/Logger;

    const/16 v5, 0x5e

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/sshd/common/channel/ChannelOutputStream;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;Lorg/slf4j/Logger;BZ)V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->out:Ljava/io/OutputStream;

    .line 106
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->out:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->invertedIn:Ljava/io/OutputStream;

    .line 108
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;

    .line 109
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;-><init>(Lorg/apache/sshd/common/PropertyResolver;Lorg/apache/sshd/common/channel/Window;)V

    .line 110
    .local v0, "pis":Lorg/apache/sshd/common/channel/ChannelPipedInputStream;
    new-instance v1, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;-><init>(Lorg/apache/sshd/common/channel/ChannelPipedSink;)V

    iput-object v1, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->pipe:Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;

    .line 111
    iput-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->in:Ljava/io/InputStream;

    .line 112
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->in:Ljava/io/InputStream;

    iput-object v1, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->invertedOut:Ljava/io/InputStream;

    .line 114
    .end local v0    # "pis":Lorg/apache/sshd/common/channel/ChannelPipedInputStream;
    :goto_0
    return-void
.end method

.method protected doWriteData([BIJ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Data length exceeds int boundaries: %d"

    invoke-static {v0, v1, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 120
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->pipe:Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;

    long-to-int v1, p3

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->write([BII)V

    .line 121
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->pipe:Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;->flush()V

    .line 123
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v0

    .line 124
    .local v0, "wLocal":Lorg/apache/sshd/common/channel/Window;
    invoke-virtual {v0, p3, p4}, Lorg/apache/sshd/common/channel/Window;->consumeAndCheck(J)V

    .line 125
    return-void
.end method

.method public getLocalSocketAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->local:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    return-object v0
.end method

.method public getRemoteSocketAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->remote:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    return-object v0
.end method

.method public declared-synchronized open()Lorg/apache/sshd/client/future/OpenFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lorg/apache/sshd/client/future/DefaultOpenFuture;

    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->remote:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iget-object v2, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->futureLock:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/client/future/DefaultOpenFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;

    .line 75
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->log:Lorg/slf4j/Logger;

    const-string v1, "open({}) SSH_MSG_CHANNEL_OPEN"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .end local p0    # "this":Lorg/apache/sshd/client/channel/ChannelDirectTcpip;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 80
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->remote:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "remoteName":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->local:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "localName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v3

    .line 83
    .local v3, "wLocal":Lorg/apache/sshd/common/channel/Window;
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->getChannelType()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "type":Ljava/lang/String;
    const/16 v5, 0x5a

    .line 85
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x40

    .line 84
    invoke-interface {v0, v5, v6}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v5

    .line 86
    .local v5, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v5, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->getId()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 88
    invoke-virtual {v3}, Lorg/apache/sshd/common/channel/Window;->getSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 89
    invoke-virtual {v3}, Lorg/apache/sshd/common/channel/Window;->getPacketSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 90
    invoke-virtual {v5, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 91
    iget-object v6, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->remote:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v6}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 92
    invoke-virtual {v5, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 93
    iget-object v6, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->local:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v6}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 94
    invoke-virtual {p0, v5}, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 95
    iget-object v6, p0, Lorg/apache/sshd/client/channel/ChannelDirectTcpip;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v6

    .line 71
    .end local v0    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v1    # "remoteName":Ljava/lang/String;
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_1
    :try_start_1
    new-instance v0, Lorg/apache/sshd/common/SshException;

    const-string v1, "Session has been closed"

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
