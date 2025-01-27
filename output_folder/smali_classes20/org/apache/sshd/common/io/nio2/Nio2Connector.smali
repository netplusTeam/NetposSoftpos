.class public Lorg/apache/sshd/common/io/nio2/Nio2Connector;
.super Lorg/apache/sshd/common/io/nio2/Nio2Service;
.source "Nio2Connector.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/io/nio2/Nio2Connector$DefaultIoConnectFuture;,
        Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;Ljava/nio/channels/AsynchronousChannelGroup;)V
    .locals 0
    .param p1, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .param p2, "handler"    # Lorg/apache/sshd/common/io/IoHandler;
    .param p3, "group"    # Ljava/nio/channels/AsynchronousChannelGroup;

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sshd/common/io/nio2/Nio2Service;-><init>(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;Ljava/nio/channels/AsynchronousChannelGroup;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/common/io/nio2/Nio2Connector;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    .line 42
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/sshd/common/io/nio2/Nio2Connector;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    .line 42
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/sshd/common/io/nio2/Nio2Connector;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    .line 42
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/sshd/common/io/nio2/Nio2Connector;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    .line 42
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/sshd/common/io/nio2/Nio2Connector;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    .line 42
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/sshd/common/io/nio2/Nio2Connector;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    .line 42
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/common/io/IoConnectFuture;
    .locals 17
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;

    .line 50
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    iget-object v0, v7, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v10

    .line 51
    .local v10, "debugEnabled":Z
    if-eqz v10, :cond_0

    .line 52
    iget-object v0, v7, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->log:Lorg/slf4j/Logger;

    const-string v1, "Connecting to {}"

    invoke-interface {v0, v1, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$DefaultIoConnectFuture;

    const/4 v11, 0x0

    invoke-direct {v0, v8, v11}, Lorg/apache/sshd/common/io/nio2/Nio2Connector$DefaultIoConnectFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v0

    .line 56
    .local v12, "future":Lorg/apache/sshd/common/io/IoConnectFuture;
    const/4 v1, 0x0

    .line 57
    .local v1, "channel":Ljava/nio/channels/AsynchronousSocketChannel;
    const/4 v2, 0x0

    .line 59
    .local v2, "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->getChannelGroup()Ljava/nio/channels/AsynchronousChannelGroup;

    move-result-object v0

    .line 60
    .local v0, "group":Ljava/nio/channels/AsynchronousChannelGroup;
    invoke-virtual {v7, v8, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->openAsynchronousSocketChannel(Ljava/net/SocketAddress;Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v13, v3

    .line 61
    .end local v1    # "channel":Ljava/nio/channels/AsynchronousSocketChannel;
    .local v13, "channel":Ljava/nio/channels/AsynchronousSocketChannel;
    :try_start_1
    invoke-virtual {v7, v13}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->setSocketOptions(Ljava/nio/channels/NetworkChannel;)Ljava/nio/channels/NetworkChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/AsynchronousSocketChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v14, v1

    .line 62
    .end local v2    # "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    .local v14, "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    if-eqz v9, :cond_1

    .line 63
    :try_start_2
    invoke-virtual {v14, v9}, Ljava/nio/channels/AsynchronousSocketChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/AsynchronousSocketChannel;

    .line 65
    :cond_1
    nop

    .line 68
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->getIoHandler()Lorg/apache/sshd/common/io/IoHandler;

    move-result-object v6

    .line 67
    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v14

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->createConnectionCompletionHandler(Lorg/apache/sshd/common/io/IoConnectFuture;Ljava/nio/channels/AsynchronousSocketChannel;Lorg/apache/sshd/common/AttributeRepository;Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;)Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;

    move-result-object v1

    const-string v2, "No connection completion handler created for %s"

    .line 66
    invoke-static {v1, v2, v8}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;

    .line 71
    .local v1, "completionHandler":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<Ljava/lang/Void;Ljava/lang/Object;>;"
    invoke-virtual {v14, v8, v11, v1}, Ljava/nio/channels/AsynchronousSocketChannel;->connect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .end local v0    # "group":Ljava/nio/channels/AsynchronousChannelGroup;
    .end local v1    # "completionHandler":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<Ljava/lang/Void;Ljava/lang/Object;>;"
    goto/16 :goto_5

    .line 72
    :catchall_0
    move-exception v0

    move-object v1, v13

    move-object v2, v14

    goto :goto_0

    .end local v14    # "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    .restart local v2    # "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    :catchall_1
    move-exception v0

    move-object v1, v13

    goto :goto_0

    .end local v13    # "channel":Ljava/nio/channels/AsynchronousSocketChannel;
    .local v1, "channel":Ljava/nio/channels/AsynchronousSocketChannel;
    :catchall_2
    move-exception v0

    :goto_0
    move-object v3, v0

    .line 73
    .local v3, "exc":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 74
    .local v4, "t":Ljava/lang/Throwable;
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x3

    if-eqz v10, :cond_2

    .line 75
    iget-object v0, v7, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->log:Lorg/slf4j/Logger;

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v8, v14, v11

    .line 76
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v5

    .line 75
    const-string v15, "connect({}) failed ({}) to schedule connection: {}"

    invoke-interface {v0, v15, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_2
    iget-object v0, v7, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, v7, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->log:Lorg/slf4j/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "connect("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") connection failure details"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    :cond_3
    if-eqz v2, :cond_4

    .line 84
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/AsynchronousSocketChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 87
    .local v0, "err":Ljava/io/IOException;
    if-eqz v10, :cond_5

    .line 88
    iget-object v14, v7, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->log:Lorg/slf4j/Logger;

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v8, v15, v11

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v5

    .line 88
    const-string v5, "connect({}) - failed ({}) to close socket: {}"

    invoke-interface {v14, v5, v15}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 91
    .end local v0    # "err":Ljava/io/IOException;
    :cond_4
    :goto_1
    nop

    .line 94
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 95
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/AsynchronousSocketChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 97
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 98
    .restart local v0    # "err":Ljava/io/IOException;
    if-eqz v10, :cond_7

    .line 99
    iget-object v5, v7, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->log:Lorg/slf4j/Logger;

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v8, v13, v11

    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x2

    aput-object v6, v13, v11

    .line 99
    const-string v6, "connect({}) - failed ({}) to close channel: {}"

    invoke-interface {v5, v6, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 102
    .end local v0    # "err":Ljava/io/IOException;
    :cond_6
    :goto_3
    nop

    .line 104
    :cond_7
    :goto_4
    invoke-interface {v12, v4}, Lorg/apache/sshd/common/io/IoConnectFuture;->setException(Ljava/lang/Throwable;)V

    move-object v13, v1

    move-object v14, v2

    .line 107
    .end local v1    # "channel":Ljava/nio/channels/AsynchronousSocketChannel;
    .end local v2    # "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    .end local v3    # "exc":Ljava/lang/Throwable;
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v13    # "channel":Ljava/nio/channels/AsynchronousSocketChannel;
    .restart local v14    # "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    :goto_5
    return-object v12
.end method

.method protected createConnectionCompletionHandler(Lorg/apache/sshd/common/io/IoConnectFuture;Ljava/nio/channels/AsynchronousSocketChannel;Lorg/apache/sshd/common/AttributeRepository;Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;)Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;
    .locals 8
    .param p1, "future"    # Lorg/apache/sshd/common/io/IoConnectFuture;
    .param p2, "socket"    # Ljava/nio/channels/AsynchronousSocketChannel;
    .param p3, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .param p4, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .param p5, "handler"    # Lorg/apache/sshd/common/io/IoHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/io/IoConnectFuture;",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "Lorg/apache/sshd/common/AttributeRepository;",
            "Lorg/apache/sshd/common/FactoryManager;",
            "Lorg/apache/sshd/common/io/IoHandler;",
            ")",
            "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<",
            "Ljava/lang/Void;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v7, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;-><init>(Lorg/apache/sshd/common/io/nio2/Nio2Connector;Lorg/apache/sshd/common/io/IoConnectFuture;Ljava/nio/channels/AsynchronousSocketChannel;Lorg/apache/sshd/common/AttributeRepository;Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;)V

    return-object v7
.end method

.method protected createSession(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;Ljava/nio/channels/AsynchronousSocketChannel;)Lorg/apache/sshd/common/io/nio2/Nio2Session;
    .locals 7
    .param p1, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .param p2, "handler"    # Lorg/apache/sshd/common/io/IoHandler;
    .param p3, "socket"    # Ljava/nio/channels/AsynchronousSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 216
    new-instance v6, Lorg/apache/sshd/common/io/nio2/Nio2Session;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/common/io/nio2/Nio2Session;-><init>(Lorg/apache/sshd/common/io/nio2/Nio2Service;Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;Ljava/nio/channels/AsynchronousSocketChannel;Ljava/net/SocketAddress;)V

    return-object v6
.end method

.method protected openAsynchronousSocketChannel(Ljava/net/SocketAddress;Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousSocketChannel;
    .locals 1
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "group"    # Ljava/nio/channels/AsynchronousChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-static {p2}, Ljava/nio/channels/AsynchronousSocketChannel;->open(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v0

    return-object v0
.end method
