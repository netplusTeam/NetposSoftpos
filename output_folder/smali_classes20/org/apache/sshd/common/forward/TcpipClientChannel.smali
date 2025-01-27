.class public Lorg/apache/sshd/common/forward/TcpipClientChannel;
.super Lorg/apache/sshd/client/channel/AbstractClientChannel;
.source "TcpipClientChannel.java"

# interfaces
.implements Lorg/apache/sshd/common/forward/ForwardingTunnelEndpointsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;
    }
.end annotation


# instance fields
.field protected localEntry:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field private final messagesQueue:Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;

.field protected final remote:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field protected final serverSession:Lorg/apache/sshd/common/io/IoSession;

.field private tunnelEntrance:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field private tunnelExit:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field private final typeEnum:Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;
    .param p2, "serverSession"    # Lorg/apache/sshd/common/io/IoSession;
    .param p3, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 85
    const-string v0, "No type specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    invoke-virtual {v0}, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->typeEnum:Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    .line 87
    const-string v0, "No server session provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/io/IoSession;

    iput-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->serverSession:Lorg/apache/sshd/common/io/IoSession;

    .line 88
    new-instance v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-interface {p2}, Lorg/apache/sshd/common/io/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/net/InetSocketAddress;)V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->localEntry:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 89
    iput-object p3, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->remote:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 90
    new-instance v0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;-><init>(Lorg/apache/sshd/client/channel/ClientChannel;)V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->messagesQueue:Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;

    .line 91
    return-void
.end method


# virtual methods
.method protected declared-synchronized doOpen()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->streaming:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    sget-object v1, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->Async:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    if-eq v0, v1, :cond_0

    .line 169
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelOutputStream;

    .line 170
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->log:Lorg/slf4j/Logger;

    const/16 v6, 0x5e

    const/4 v7, 0x1

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/sshd/common/channel/ChannelOutputStream;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;Lorg/slf4j/Logger;BZ)V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->out:Ljava/io/OutputStream;

    .line 171
    iget-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->out:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->invertedIn:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 166
    .end local p0    # "this":Lorg/apache/sshd/common/forward/TcpipClientChannel;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asynchronous streaming isn\'t supported yet on this channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
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

    .line 199
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

    .line 202
    long-to-int v0, p3

    invoke-static {p1, p2, v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->getCompactClone([BII)Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    move-result-object v0

    .line 203
    .local v0, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v1

    .line 204
    .local v1, "wLocal":Lorg/apache/sshd/common/channel/Window;
    invoke-virtual {v1, p3, p4}, Lorg/apache/sshd/common/channel/Window;->consumeAndCheck(J)V

    .line 205
    iget-object v2, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->serverSession:Lorg/apache/sshd/common/io/IoSession;

    invoke-interface {v2, v0}, Lorg/apache/sshd/common/io/IoSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 198
    .end local v0    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v1    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    .end local p0    # "this":Lorg/apache/sshd/common/forward/TcpipClientChannel;
    .end local p1    # "data":[B
    .end local p2    # "off":I
    .end local p3    # "len":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected doWriteExtendedData([BIJ)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getChannelType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Tcpip channel does not support extended data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 4

    .line 192
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/sshd/common/Closeable;

    iget-object v2, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->serverSession:Lorg/apache/sshd/common/io/IoSession;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 193
    invoke-super {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getInnerCloseable()Lorg/apache/sshd/common/Closeable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->sequential([Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 192
    return-object v0
.end method

.method public getOpenFuture()Lorg/apache/sshd/client/future/OpenFuture;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;

    return-object v0
.end method

.method public getPendingMessagesQueue()Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->messagesQueue:Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;

    return-object v0
.end method

.method public getTcpipChannelType()Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->typeEnum:Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    return-object v0
.end method

.method public getTunnelEntrance()Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->tunnelEntrance:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    return-object v0
.end method

.method public getTunnelExit()Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->tunnelExit:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    return-object v0
.end method

.method public handleEof()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-super {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->handleEof()V

    .line 227
    iget-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->serverSession:Lorg/apache/sshd/common/io/IoSession;

    invoke-interface {v0}, Lorg/apache/sshd/common/io/IoSession;->shudownOutputStream()V

    .line 228
    return-void
.end method

.method public declared-synchronized open()Lorg/apache/sshd/client/future/OpenFuture;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->serverSession:Lorg/apache/sshd/common/io/IoSession;

    invoke-interface {v0}, Lorg/apache/sshd/common/io/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 115
    .local v0, "loc":Ljava/net/InetSocketAddress;
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getTcpipChannelType()Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    move-result-object v1

    .line 116
    .local v1, "openType":Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;
    sget-object v2, Lorg/apache/sshd/common/forward/TcpipClientChannel$1;->$SwitchMap$org$apache$sshd$common$forward$TcpipClientChannel$Type:[I

    invoke-virtual {v1}, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 130
    .end local p0    # "this":Lorg/apache/sshd/common/forward/TcpipClientChannel;
    new-instance v2, Lorg/apache/sshd/common/SshException;

    goto/16 :goto_1

    .line 124
    .restart local p0    # "this":Lorg/apache/sshd/common/forward/TcpipClientChannel;
    :pswitch_0
    iget-object v2, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->serverSession:Lorg/apache/sshd/common/io/IoSession;

    invoke-interface {v2}, Lorg/apache/sshd/common/io/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 125
    .local v2, "src":Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->localEntry:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 126
    .local v3, "dst":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    new-instance v4, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->tunnelEntrance:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 127
    new-instance v4, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->tunnelExit:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 128
    goto :goto_0

    .line 118
    .end local v2    # "src":Ljava/net/InetSocketAddress;
    .end local v3    # "dst":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local p0    # "this":Lorg/apache/sshd/common/forward/TcpipClientChannel;
    :pswitch_1
    iget-object v2, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->serverSession:Lorg/apache/sshd/common/io/IoSession;

    invoke-interface {v2}, Lorg/apache/sshd/common/io/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 119
    .restart local v2    # "src":Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->remote:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 120
    .restart local v3    # "dst":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    new-instance v4, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->tunnelEntrance:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 121
    new-instance v4, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v3}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->tunnelExit:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 122
    nop

    .line 133
    :goto_0
    iget-object v4, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v4}, Lorg/apache/sshd/common/future/CloseFuture;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 138
    new-instance v4, Lorg/apache/sshd/client/future/DefaultOpenFuture;

    iget-object v5, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->futureLock:Ljava/lang/Object;

    invoke-direct {v4, v2, v5}, Lorg/apache/sshd/client/future/DefaultOpenFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getPendingMessagesQueue()Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/sshd/client/future/DefaultOpenFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/client/future/OpenFuture;

    iput-object v4, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;

    .line 140
    iget-object v4, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    iget-object v4, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->log:Lorg/slf4j/Logger;

    const-string v5, "open({}) send SSH_MSG_CHANNEL_OPEN"

    invoke-interface {v4, v5, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v4

    .line 145
    .local v4, "session":Lorg/apache/sshd/common/session/Session;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "srcHost":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "dstHost":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v7

    .line 148
    .local v7, "wLocal":Lorg/apache/sshd/common/channel/Window;
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getChannelType()Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "type":Ljava/lang/String;
    const/16 v9, 0x5a

    .line 150
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x40

    .line 149
    invoke-interface {v4, v9, v10}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v9

    .line 151
    .local v9, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v9, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getId()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 153
    invoke-virtual {v7}, Lorg/apache/sshd/common/channel/Window;->getSize()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 154
    invoke-virtual {v7}, Lorg/apache/sshd/common/channel/Window;->getPacketSize()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 155
    invoke-virtual {v9, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 157
    invoke-virtual {v9, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 159
    invoke-virtual {p0, v9}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 160
    iget-object v10, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v10

    .line 134
    .end local v4    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v5    # "srcHost":Ljava/lang/String;
    .end local v6    # "dstHost":Ljava/lang/String;
    .end local v7    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_1
    :try_start_1
    new-instance v4, Lorg/apache/sshd/common/SshException;

    const-string v5, "Session has been closed"

    invoke-direct {v4, v5}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 130
    .end local v2    # "src":Ljava/net/InetSocketAddress;
    .end local v3    # "dst":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown client channel type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v0    # "loc":Ljava/net/InetSocketAddress;
    .end local v1    # "openType":Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected preClose()V
    .locals 5

    .line 176
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getPendingMessagesQueue()Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)Ljava/io/IOException;

    move-result-object v0

    .line 177
    .local v0, "err":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 178
    iget-object v1, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 179
    const-string v3, "preClose({}) Failed ({}) to close pending messages queue: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preClose("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") pending messages queue close failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    :cond_1
    invoke-super {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->preClose()V

    .line 188
    return-void
.end method

.method public updateLocalForwardingEntry(Lorg/apache/sshd/common/forward/LocalForwardingEntry;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/sshd/common/forward/LocalForwardingEntry;

    .line 106
    const-string v0, "No local forwarding entry provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {p1}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel;->localEntry:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 108
    return-void
.end method
