.class public Lorg/apache/sshd/server/forward/TcpipServerChannel;
.super Lorg/apache/sshd/server/channel/AbstractServerChannel;
.source "TcpipServerChannel.java"

# interfaces
.implements Lorg/apache/sshd/common/forward/ForwardingTunnelEndpointsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/server/forward/TcpipServerChannel$TcpipFactory;
    }
.end annotation


# instance fields
.field private connector:Lorg/apache/sshd/common/io/IoConnector;

.field private ioSession:Lorg/apache/sshd/common/io/IoSession;

.field private localAddress:Ljava/net/SocketAddress;

.field private originatorAddress:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field private out:Ljava/io/OutputStream;

.field private tunnelEntrance:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field private tunnelExit:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field private final type:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .param p2, "executor"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1, v0, p2}, Lorg/apache/sshd/server/channel/AbstractServerChannel;-><init>(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 106
    const-string v0, "No channel type specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    iput-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->type:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/server/forward/TcpipServerChannel;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/server/forward/TcpipServerChannel;

    .line 65
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/sshd/server/forward/TcpipServerChannel;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/server/forward/TcpipServerChannel;

    .line 65
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/sshd/server/forward/TcpipServerChannel;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/server/forward/TcpipServerChannel;

    .line 65
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/sshd/server/forward/TcpipServerChannel;)Lorg/apache/sshd/common/io/IoConnector;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/server/forward/TcpipServerChannel;

    .line 65
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->connector:Lorg/apache/sshd/common/io/IoConnector;

    return-object v0
.end method


# virtual methods
.method protected doInit(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/client/future/OpenFuture;
    .locals 20
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 141
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "hostToConnect":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v9

    .line 143
    .local v9, "portToConnect":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v10

    .line 144
    .local v10, "originatorIpAddress":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v11

    .line 145
    .local v11, "originatorPort":I
    iget-object v0, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v12

    .line 146
    .local v12, "debugEnabled":Z
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v12, :cond_0

    .line 147
    iget-object v0, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v4

    aput-object v8, v6, v5

    .line 149
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v3

    aput-object v10, v6, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v1

    .line 147
    const-string v13, "doInit({}) Receiving request for direct tcpip: hostToConnect={}, portToConnect={}, originatorIpAddress={}, originatorPort={}"

    invoke-interface {v0, v13, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->getTcpipChannelType()Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    move-result-object v13

    .line 154
    .local v13, "channelType":Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    sget-object v0, Lorg/apache/sshd/server/forward/TcpipServerChannel$3;->$SwitchMap$org$apache$sshd$server$forward$TcpForwardingFilter$Type:[I

    iget-object v6, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->type:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    invoke-virtual {v6}, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_0

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown server channel type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :pswitch_0
    iget-object v0, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->service:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v0}, Lorg/apache/sshd/common/session/ConnectionService;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v0

    .line 160
    .local v0, "ff":Lorg/apache/sshd/common/forward/ForwardingFilter;
    invoke-interface {v0, v9}, Lorg/apache/sshd/common/forward/ForwardingFilter;->getForwardedPort(I)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v6

    .line 161
    .local v6, "address":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    move-object v14, v6

    goto :goto_0

    .line 156
    .end local v0    # "ff":Lorg/apache/sshd/common/forward/ForwardingFilter;
    .end local v6    # "address":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :pswitch_1
    new-instance v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-direct {v0, v8, v9}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v6, v0

    .line 157
    .restart local v6    # "address":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    move-object v14, v6

    .line 167
    .end local v6    # "address":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .local v14, "address":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :goto_0
    new-instance v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-direct {v0, v10, v11}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->originatorAddress:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 168
    new-instance v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-direct {v0, v8, v9}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->tunnelEntrance:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 169
    iput-object v14, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->tunnelExit:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 171
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v15

    .line 172
    .local v15, "session":Lorg/apache/sshd/common/session/Session;
    invoke-interface {v15}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    const-string v6, "No factory manager"

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lorg/apache/sshd/common/FactoryManager;

    .line 173
    .local v16, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface/range {v16 .. v16}, Lorg/apache/sshd/common/FactoryManager;->getTcpForwardingFilter()Lorg/apache/sshd/server/forward/TcpForwardingFilter;

    move-result-object v6

    .line 174
    .local v6, "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    new-instance v0, Lorg/apache/sshd/client/future/DefaultOpenFuture;

    invoke-direct {v0, v7, v7}, Lorg/apache/sshd/client/future/DefaultOpenFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v17, v0

    .line 176
    .local v17, "f":Lorg/apache/sshd/client/future/OpenFuture;
    const-string v2, ")["

    const-string v3, "doInit("

    if-eqz v14, :cond_2

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6, v13, v14, v15}, Lorg/apache/sshd/server/forward/TcpForwardingFilter;->canConnect(Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    move-object/from16 v19, v6

    move-object/from16 v6, v17

    goto :goto_1

    .line 195
    :cond_1
    nop

    .line 198
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelOutputStream;

    .line 199
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v3

    iget-object v4, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    const/16 v5, 0x5e

    const/16 v18, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v19, v6

    .end local v6    # "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .local v19, "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    move/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lorg/apache/sshd/common/channel/ChannelOutputStream;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;Lorg/slf4j/Logger;BZ)V

    iput-object v0, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->out:Ljava/io/OutputStream;

    .line 200
    new-instance v0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;

    invoke-direct {v0, v7, v12}, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;-><init>(Lorg/apache/sshd/server/forward/TcpipServerChannel;Z)V

    .line 238
    .local v0, "handler":Lorg/apache/sshd/common/io/IoHandler;
    invoke-interface/range {v16 .. v16}, Lorg/apache/sshd/common/FactoryManager;->getIoServiceFactory()Lorg/apache/sshd/common/io/IoServiceFactory;

    move-result-object v1

    .line 239
    .local v1, "ioServiceFactory":Lorg/apache/sshd/common/io/IoServiceFactory;
    invoke-interface {v1, v0}, Lorg/apache/sshd/common/io/IoServiceFactory;->createConnector(Lorg/apache/sshd/common/io/IoHandler;)Lorg/apache/sshd/common/io/IoConnector;

    move-result-object v2

    iput-object v2, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->connector:Lorg/apache/sshd/common/io/IoConnector;

    .line 241
    nop

    .line 242
    invoke-virtual {v14}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/sshd/common/io/IoConnector;->connect(Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/common/io/IoConnectFuture;

    move-result-object v2

    .line 243
    .local v2, "future":Lorg/apache/sshd/common/io/IoConnectFuture;
    new-instance v3, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda1;

    move-object/from16 v6, v17

    .end local v17    # "f":Lorg/apache/sshd/client/future/OpenFuture;
    .local v6, "f":Lorg/apache/sshd/client/future/OpenFuture;
    invoke-direct {v3, v7, v6}, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/server/forward/TcpipServerChannel;Lorg/apache/sshd/client/future/OpenFuture;)V

    invoke-interface {v2, v3}, Lorg/apache/sshd/common/io/IoConnectFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 244
    return-object v6

    .line 188
    .end local v0    # "handler":Lorg/apache/sshd/common/io/IoHandler;
    .end local v1    # "ioServiceFactory":Lorg/apache/sshd/common/io/IoServiceFactory;
    .end local v2    # "future":Lorg/apache/sshd/common/io/IoConnectFuture;
    .end local v19    # "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .local v6, "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .restart local v17    # "f":Lorg/apache/sshd/client/future/OpenFuture;
    :catch_0
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v6, v17

    .end local v17    # "f":Lorg/apache/sshd/client/future/OpenFuture;
    .local v6, "f":Lorg/apache/sshd/client/future/OpenFuture;
    .restart local v19    # "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    goto :goto_4

    .line 176
    .end local v19    # "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .local v6, "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .restart local v17    # "f":Lorg/apache/sshd/client/future/OpenFuture;
    :cond_2
    move-object/from16 v19, v6

    move-object/from16 v6, v17

    .line 177
    .end local v17    # "f":Lorg/apache/sshd/client/future/OpenFuture;
    .local v6, "f":Lorg/apache/sshd/client/future/OpenFuture;
    .restart local v19    # "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    :goto_1
    if-eqz v12, :cond_4

    .line 178
    :try_start_1
    iget-object v0, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->type:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "][haveFilter="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v19, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] filtered out "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 188
    :catch_1
    move-exception v0

    goto :goto_4

    .line 181
    :cond_4
    :goto_3
    :try_start_2
    new-instance v0, Lorg/apache/sshd/common/channel/exception/SshChannelOpenException;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->getId()I

    move-result v1

    const-string v4, "Connection denied"

    invoke-direct {v0, v1, v5, v4}, Lorg/apache/sshd/common/channel/exception/SshChannelOpenException;-><init>(IILjava/lang/String;)V

    invoke-interface {v6, v0}, Lorg/apache/sshd/client/future/OpenFuture;->setException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :try_start_3
    invoke-super {v7, v5}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 185
    nop

    .line 186
    return-object v6

    .line 184
    :catchall_0
    move-exception v0

    invoke-super {v7, v5}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 185
    nop

    .end local v6    # "f":Lorg/apache/sshd/client/future/OpenFuture;
    .end local v8    # "hostToConnect":Ljava/lang/String;
    .end local v9    # "portToConnect":I
    .end local v10    # "originatorIpAddress":Ljava/lang/String;
    .end local v11    # "originatorPort":I
    .end local v12    # "debugEnabled":Z
    .end local v13    # "channelType":Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .end local v14    # "address":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local v15    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v16    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .end local v19    # "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    throw v0
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    .line 189
    .local v0, "e":Ljava/lang/Error;
    .restart local v6    # "f":Lorg/apache/sshd/client/future/OpenFuture;
    .restart local v8    # "hostToConnect":Ljava/lang/String;
    .restart local v9    # "portToConnect":I
    .restart local v10    # "originatorIpAddress":Ljava/lang/String;
    .restart local v11    # "originatorPort":I
    .restart local v12    # "debugEnabled":Z
    .restart local v13    # "channelType":Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .restart local v14    # "address":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local v15    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v16    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .restart local v19    # "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .restart local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :goto_4
    iget-object v1, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v15, v4, v17

    aput-object v13, v4, v5

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x2

    aput-object v5, v4, v17

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x3

    aput-object v5, v4, v17

    .line 189
    const-string v5, "doInit({})[{}] failed ({}) to consult forwarding filter: {}"

    invoke-interface {v1, v5, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    if-eqz v12, :cond_5

    .line 192
    iget-object v1, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lorg/apache/sshd/server/forward/TcpipServerChannel;->type:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] filter consultation failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    :cond_5
    new-instance v1, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected doWriteData([BIJ)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
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

    .line 348
    long-to-int v0, p3

    invoke-static {p1, p2, v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->getCompactClone([BII)Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    move-result-object v0

    .line 349
    .local v0, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->ioSession:Lorg/apache/sshd/common/io/IoSession;

    invoke-interface {v1, v0}, Lorg/apache/sshd/common/io/IoSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p3, p4}, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda2;-><init>(Lorg/apache/sshd/server/forward/TcpipServerChannel;Lorg/apache/sshd/common/util/buffer/Buffer;J)V

    invoke-interface {v1, v2}, Lorg/apache/sshd/common/io/IoWriteFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 358
    return-void
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

    .line 362
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    invoke-virtual {p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->getTcpipChannelType()Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .locals 3

    .line 303
    invoke-virtual {p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 304
    invoke-virtual {p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/server/forward/TcpipServerChannel;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 322
    invoke-super {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->getInnerCloseable()Lorg/apache/sshd/common/Closeable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/server/forward/TcpipServerChannel$2;

    invoke-direct {v1, p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel$2;-><init>(Lorg/apache/sshd/server/forward/TcpipServerChannel;)V

    .line 323
    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 303
    return-object v0
.end method

.method public getIoSession()Lorg/apache/sshd/common/io/IoSession;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->ioSession:Lorg/apache/sshd/common/io/IoSession;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->localAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getOriginatorAddress()Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->originatorAddress:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    return-object v0
.end method

.method public getTcpipChannelType()Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->type:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    return-object v0
.end method

.method public getTunnelEntrance()Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->tunnelEntrance:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    return-object v0
.end method

.method public getTunnelExit()Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->tunnelExit:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    return-object v0
.end method

.method protected handleChannelConnectResult(Lorg/apache/sshd/client/future/OpenFuture;Lorg/apache/sshd/common/io/IoConnectFuture;)V
    .locals 4
    .param p1, "f"    # Lorg/apache/sshd/client/future/OpenFuture;
    .param p2, "future"    # Lorg/apache/sshd/common/io/IoConnectFuture;

    .line 249
    :try_start_0
    invoke-interface {p2}, Lorg/apache/sshd/common/io/IoConnectFuture;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {p2}, Lorg/apache/sshd/common/io/IoConnectFuture;->getSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->handleChannelOpenSuccess(Lorg/apache/sshd/client/future/OpenFuture;Lorg/apache/sshd/common/io/IoSession;)V

    .line 251
    return-void

    .line 254
    :cond_0
    invoke-interface {p2}, Lorg/apache/sshd/common/io/IoConnectFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 255
    .local v0, "problem":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->handleChannelOpenFailure(Lorg/apache/sshd/client/future/OpenFuture;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0    # "problem":Ljava/lang/Throwable;
    :cond_1
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "t":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 260
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->signalChannelOpenFailure(Ljava/lang/Throwable;)V

    .line 262
    :try_start_1
    invoke-interface {p1, v1}, Lorg/apache/sshd/client/future/OpenFuture;->setException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 265
    nop

    .line 267
    .end local v0    # "t":Ljava/lang/RuntimeException;
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 264
    .restart local v0    # "t":Ljava/lang/RuntimeException;
    .restart local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 265
    throw v2
.end method

.method protected handleChannelOpenFailure(Lorg/apache/sshd/client/future/OpenFuture;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "f"    # Lorg/apache/sshd/client/future/OpenFuture;
    .param p2, "problem"    # Ljava/lang/Throwable;

    .line 287
    invoke-virtual {p0, p2}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->signalChannelOpenFailure(Ljava/lang/Throwable;)V

    .line 288
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x1

    :try_start_0
    instance-of v1, p2, Ljava/net/ConnectException;

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Lorg/apache/sshd/common/channel/exception/SshChannelOpenException;

    .line 292
    invoke-virtual {p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->getId()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p2}, Lorg/apache/sshd/common/channel/exception/SshChannelOpenException;-><init>(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    invoke-interface {p1, v1}, Lorg/apache/sshd/client/future/OpenFuture;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/sshd/client/future/OpenFuture;->setException(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 298
    nop

    .line 299
    return-void

    .line 297
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 298
    throw v1
.end method

.method protected handleChannelOpenSuccess(Lorg/apache/sshd/client/future/OpenFuture;Lorg/apache/sshd/common/io/IoSession;)V
    .locals 4
    .param p1, "f"    # Lorg/apache/sshd/client/future/OpenFuture;
    .param p2, "session"    # Lorg/apache/sshd/common/io/IoSession;

    .line 270
    iput-object p2, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->ioSession:Lorg/apache/sshd/common/io/IoSession;

    .line 272
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "changeEvent":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->signalChannelOpenSuccess()V

    .line 275
    invoke-interface {p1}, Lorg/apache/sshd/client/future/OpenFuture;->setOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 283
    goto :goto_1

    .line 276
    :catchall_0
    move-exception v1

    .line 277
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 278
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 279
    invoke-virtual {p0, v2}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->signalChannelOpenFailure(Ljava/lang/Throwable;)V

    .line 280
    invoke-interface {p1, v2}, Lorg/apache/sshd/client/future/OpenFuture;->setException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 284
    :goto_1
    return-void

    .line 282
    :catchall_1
    move-exception v1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 283
    throw v1
.end method

.method protected handleWriteDataFailure(B[BIILjava/lang/Throwable;)V
    .locals 9
    .param p1, "cmd"    # B
    .param p2, "data"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "t"    # Ljava/lang/Throwable;

    .line 382
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 383
    .local v0, "debugEnabled":Z
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 384
    iget-object v5, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v4

    and-int/lit16 v7, p1, 0xff

    .line 385
    invoke-static {v7}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 386
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x4

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 384
    const-string v7, "handleWriteDataFailure({})[{}] failed ({}) to write len={}: {}"

    invoke-interface {v5, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_0
    iget-object v5, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 390
    iget-object v5, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleWriteDataFailure("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit16 v7, p1, 0xff

    .line 391
    invoke-static {v7}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " write failure details"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 390
    invoke-interface {v5, v6, p5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    :cond_1
    iget-object v5, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->ioSession:Lorg/apache/sshd/common/io/IoSession;

    invoke-interface {v5}, Lorg/apache/sshd/common/io/IoSession;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 397
    if-eqz v0, :cond_2

    .line 398
    iget-object v5, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    and-int/lit16 v6, p1, 0xff

    .line 399
    invoke-static {v6}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    iget-object v3, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->ioSession:Lorg/apache/sshd/common/io/IoSession;

    aput-object v3, v1, v2

    .line 398
    const-string v2, "handleWriteDataFailure({})[{}] closing session={}"

    invoke-interface {v5, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :cond_2
    invoke-virtual {p0, v4}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    goto :goto_0

    .line 404
    :cond_3
    if-eqz v0, :cond_4

    .line 405
    iget-object v1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->ioSession:Lorg/apache/sshd/common/io/IoSession;

    const-string v3, "Ignoring writeDataFailure {} because ioSession {} is already closing "

    invoke-interface {v1, v3, p5, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    :cond_4
    :goto_0
    return-void
.end method

.method protected handleWriteDataSuccess(B[BII)V
    .locals 6
    .param p1, "cmd"    # B
    .param p2, "data"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 367
    invoke-virtual {p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 369
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v1

    .line 370
    .local v1, "wLocal":Lorg/apache/sshd/common/channel/Window;
    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/channel/Window;->consumeAndCheck(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    .end local v1    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    goto :goto_0

    .line 371
    :catchall_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    and-int/lit16 v5, p1, 0xff

    .line 374
    invoke-static {v5}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 375
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 373
    const-string v4, "handleWriteDataSuccess({})[{}] failed ({}) to consume len={}: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    :cond_0
    invoke-interface {v0, v1}, Lorg/apache/sshd/common/session/Session;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 379
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method synthetic lambda$doInit$0$org-apache-sshd-server-forward-TcpipServerChannel(Lorg/apache/sshd/client/future/OpenFuture;Lorg/apache/sshd/common/io/IoConnectFuture;)V
    .locals 0
    .param p1, "f"    # Lorg/apache/sshd/client/future/OpenFuture;
    .param p2, "future1"    # Lorg/apache/sshd/common/io/IoConnectFuture;

    .line 243
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->handleChannelConnectResult(Lorg/apache/sshd/client/future/OpenFuture;Lorg/apache/sshd/common/io/IoConnectFuture;)V

    return-void
.end method

.method synthetic lambda$doWriteData$2$org-apache-sshd-server-forward-TcpipServerChannel(Lorg/apache/sshd/common/util/buffer/Buffer;JLorg/apache/sshd/common/io/IoWriteFuture;)V
    .locals 10
    .param p1, "buf"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "len"    # J
    .param p4, "future"    # Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 350
    invoke-interface {p4}, Lorg/apache/sshd/common/io/IoWriteFuture;->isWritten()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const/16 v0, 0x5e

    .line 352
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    long-to-int v3, p2

    .line 351
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->handleWriteDataSuccess(B[BII)V

    goto :goto_0

    .line 354
    :cond_0
    const/16 v5, 0x5e

    .line 355
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    long-to-int v8, p2

    invoke-interface {p4}, Lorg/apache/sshd/common/io/IoWriteFuture;->getException()Ljava/lang/Throwable;

    move-result-object v9

    .line 354
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->handleWriteDataFailure(B[BIILjava/lang/Throwable;)V

    .line 357
    :goto_0
    return-void
.end method

.method synthetic lambda$getInnerCloseable$1$org-apache-sshd-server-forward-TcpipServerChannel()V
    .locals 5

    .line 310
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 312
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "Closing channel output stream of {}"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_1

    .line 316
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 317
    .local v0, "ignored":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 318
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 317
    const-string/jumbo v3, "{} while closing channel output stream of {}: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    .end local v0    # "ignored":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setLocalAddress(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 118
    iput-object p1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel;->localAddress:Ljava/net/SocketAddress;

    .line 119
    return-void
.end method
