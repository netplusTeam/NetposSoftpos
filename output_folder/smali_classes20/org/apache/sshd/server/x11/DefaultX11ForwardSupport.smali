.class public Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;
.super Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;
.source "DefaultX11ForwardSupport.java"

# interfaces
.implements Lorg/apache/sshd/server/x11/X11ForwardSupport;


# instance fields
.field private acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

.field private final service:Lorg/apache/sshd/common/session/ConnectionService;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/session/ConnectionService;)V
    .locals 1
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;

    .line 52
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;-><init>()V

    .line 53
    const-string v0, "No connection service"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/ConnectionService;

    iput-object v0, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->service:Lorg/apache/sshd/common/session/ConnectionService;

    .line 54
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 59
    return-void
.end method

.method public declared-synchronized createDisplay(ZLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 24
    .param p1, "singleConnection"    # Z
    .param p2, "authenticationProtocol"    # Ljava/lang/String;
    .param p3, "authenticationCookie"    # Ljava/lang/String;
    .param p4, "screen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p4

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    move v3, v0

    .line 72
    .local v3, "debugEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->isClosed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 75
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->isClosing()Z

    move-result v0

    if-nez v0, :cond_e

    .line 80
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isWin32()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    .line 81
    if-eqz v3, :cond_0

    .line 82
    iget-object v0, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    const-string v9, "createDisplay(auth={}, cookie={}, screen={}) Windows O/S N/A"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v6

    aput-object p3, v7, v8

    .line 83
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    .line 82
    invoke-interface {v0, v9, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 85
    .end local p0    # "this":Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;
    :cond_0
    monitor-exit p0

    return-object v4

    .line 88
    :cond_1
    :try_start_1
    iget-object v0, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->service:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v0}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    const-string v9, "No session"

    invoke-static {v0, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/Session;

    move-object v9, v0

    .line 89
    .local v9, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v0, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    if-nez v0, :cond_2

    .line 90
    invoke-interface {v9}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    const-string v10, "No factory manager"

    invoke-static {v0, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/FactoryManager;

    .line 91
    .local v0, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface {v0}, Lorg/apache/sshd/common/FactoryManager;->getIoServiceFactory()Lorg/apache/sshd/common/io/IoServiceFactory;

    move-result-object v10

    const-string v11, "No I/O service factory"

    invoke-static {v10, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/sshd/common/io/IoServiceFactory;

    .line 92
    .local v10, "factory":Lorg/apache/sshd/common/io/IoServiceFactory;
    invoke-interface {v10, v1}, Lorg/apache/sshd/common/io/IoServiceFactory;->createAcceptor(Lorg/apache/sshd/common/io/IoHandler;)Lorg/apache/sshd/common/io/IoAcceptor;

    move-result-object v11

    iput-object v11, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    .line 95
    .end local v0    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .end local v10    # "factory":Lorg/apache/sshd/common/io/IoServiceFactory;
    :cond_2
    const-string/jumbo v0, "x11-fwd-display-offset"

    const/16 v10, 0xa

    invoke-interface {v9, v0, v10}, Lorg/apache/sshd/common/session/Session;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    move v10, v0

    .line 96
    .local v10, "minDisplayNumber":I
    const-string/jumbo v0, "x11-fwd-max-display"

    const/16 v11, 0x3e8

    invoke-interface {v9, v0, v11}, Lorg/apache/sshd/common/session/Session;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    move v11, v0

    .line 97
    .local v11, "maxDisplayNumber":I
    const-string/jumbo v0, "x11-fwd-base-port"

    const/16 v12, 0x1770

    invoke-interface {v9, v0, v12}, Lorg/apache/sshd/common/session/Session;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    move v12, v0

    .line 98
    .local v12, "basePort":I
    const-string/jumbo v0, "x11-fwd-bind-host"

    const-string v13, "127.0.0.1"

    invoke-interface {v9, v0, v13}, Lorg/apache/sshd/common/session/Session;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 99
    .local v13, "bindHost":Ljava/lang/String;
    const/4 v0, 0x0

    .line 102
    .local v0, "addr":Ljava/net/InetSocketAddress;
    move v14, v10

    .local v14, "displayNumber":I
    :goto_0
    if-ge v14, v11, :cond_4

    .line 103
    add-int v15, v12, v14

    .line 104
    .local v15, "port":I
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v13, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 106
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .local v4, "addr":Ljava/net/InetSocketAddress;
    :try_start_2
    iget-object v0, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-interface {v0, v4}, Lorg/apache/sshd/common/io/IoAcceptor;->bind(Ljava/net/SocketAddress;)V
    :try_end_2
    .catch Ljava/net/BindException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "bindErr":Ljava/net/BindException;
    if-eqz v3, :cond_3

    .line 110
    :try_start_3
    iget-object v7, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    const-string v5, "createDisplay(auth={}, cookie={}, screen={}) failed ({}) to bind to address={}: {}"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v6

    const/16 v20, 0x1

    aput-object p3, v8, v20

    .line 111
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v19, 0x2

    aput-object v21, v8, v19

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v21

    const/16 v18, 0x3

    aput-object v21, v8, v18

    const/16 v17, 0x4

    aput-object v4, v8, v17

    invoke-virtual {v0}, Ljava/net/BindException;->getMessage()Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x5

    aput-object v17, v8, v16

    .line 110
    invoke-interface {v7, v5, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_3
    const/4 v0, 0x0

    .line 102
    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .end local v15    # "port":I
    .local v0, "addr":Ljava/net/InetSocketAddress;
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    move-object v4, v0

    .line 119
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v14    # "displayNumber":I
    .restart local v4    # "addr":Ljava/net/InetSocketAddress;
    :goto_1
    if-nez v4, :cond_8

    .line 120
    iget-object v0, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    const-string v5, "createDisplay(auth={}, cookie={}, screen={}) failed to allocate internet-domain X11 display socket in range {}-{}"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v6

    const/4 v8, 0x1

    aput-object p3, v7, v8

    .line 122
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x2

    aput-object v8, v7, v14

    .line 123
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x3

    aput-object v8, v7, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x4

    aput-object v8, v7, v14

    .line 120
    invoke-interface {v0, v5, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-interface {v0}, Lorg/apache/sshd/common/io/IoAcceptor;->getBoundAddresses()Ljava/util/Set;

    move-result-object v0

    .line 125
    .local v0, "boundAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/SocketAddress;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 126
    if-eqz v3, :cond_5

    .line 127
    iget-object v5, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    const-string v7, "createDisplay(auth={}, cookie={}, screen={}) closing - no more bound addresses"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v6

    const/4 v6, 0x1

    aput-object p3, v8, v6

    .line 128
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x2

    aput-object v6, v8, v14

    .line 127
    invoke-interface {v5, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->close()V

    goto :goto_2

    .line 132
    :cond_6
    if-eqz v3, :cond_7

    .line 133
    iget-object v5, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    const-string v7, "createDisplay(auth={}, cookie={}, screen={}) closing - remaining bound addresses: {}"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v6

    const/4 v6, 0x1

    aput-object p3, v8, v6

    .line 134
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x2

    aput-object v6, v8, v14

    const/4 v6, 0x3

    aput-object v0, v8, v6

    .line 133
    invoke-interface {v5, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 138
    :cond_7
    :goto_2
    monitor-exit p0

    const/4 v5, 0x0

    return-object v5

    .line 141
    .end local v0    # "boundAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/SocketAddress;>;"
    :cond_8
    :try_start_4
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    move v5, v0

    .line 142
    .local v5, "port":I
    sub-int v7, v5, v12

    .line 143
    .local v7, "displayNumber":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unix:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v8, v0

    .line 145
    .local v8, "authDisplay":Ljava/lang/String;
    :try_start_5
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/String;

    sget-object v14, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->XAUTH_COMMAND:Ljava/lang/String;

    aput-object v14, v15, v6

    const-string v14, "remove"

    const/16 v20, 0x1

    aput-object v14, v15, v20

    const/4 v14, 0x2

    aput-object v8, v15, v14

    invoke-direct {v0, v15}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 146
    .local v0, "p":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v14

    .line 147
    .local v14, "result":I
    if-eqz v3, :cond_9

    .line 148
    iget-object v15, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    const-string v6, "createDisplay({}) {} remove result={}"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v23, v0

    move-object/from16 v22, v4

    const/4 v4, 0x3

    .end local v0    # "p":Ljava/lang/Process;
    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .local v22, "addr":Ljava/net/InetSocketAddress;
    .local v23, "p":Ljava/lang/Process;
    :try_start_6
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v0, v4

    sget-object v4, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->XAUTH_COMMAND:Ljava/lang/String;

    const/16 v20, 0x1

    aput-object v4, v0, v20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v19, 0x2

    aput-object v4, v0, v19

    invoke-interface {v15, v6, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 147
    .end local v22    # "addr":Ljava/net/InetSocketAddress;
    .end local v23    # "p":Ljava/lang/Process;
    .restart local v0    # "p":Ljava/lang/Process;
    .restart local v4    # "addr":Ljava/net/InetSocketAddress;
    :cond_9
    move-object/from16 v23, v0

    move-object/from16 v22, v4

    .line 151
    .end local v0    # "p":Ljava/lang/Process;
    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .restart local v22    # "addr":Ljava/net/InetSocketAddress;
    .restart local v23    # "p":Ljava/lang/Process;
    :goto_3
    if-nez v14, :cond_b

    .line 152
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    sget-object v6, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->XAUTH_COMMAND:Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v6, v4, v15

    const-string v6, "add"

    const/4 v15, 0x1

    aput-object v6, v4, v15

    const/4 v6, 0x2

    aput-object v8, v4, v6

    const/4 v6, 0x3

    aput-object p2, v4, v6

    const/4 v6, 0x4

    aput-object p3, v4, v6

    invoke-direct {v0, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 153
    .end local v23    # "p":Ljava/lang/Process;
    .restart local v0    # "p":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v4

    move v14, v4

    .line 155
    if-eqz v3, :cond_a

    .line 156
    iget-object v4, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    const-string v6, "createDisplay({}) {} add result={}"

    move-object/from16 v16, v0

    const/4 v15, 0x3

    .end local v0    # "p":Ljava/lang/Process;
    .local v16, "p":Ljava/lang/Process;
    new-array v0, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v0, v15

    sget-object v15, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->XAUTH_COMMAND:Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v15, v0, v17

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x2

    aput-object v15, v0, v17

    invoke-interface {v4, v6, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 155
    .end local v16    # "p":Ljava/lang/Process;
    .restart local v0    # "p":Ljava/lang/Process;
    :cond_a
    move-object/from16 v16, v0

    .line 160
    .end local v0    # "p":Ljava/lang/Process;
    .restart local v16    # "p":Ljava/lang/Process;
    :goto_4
    move-object/from16 v0, v16

    goto :goto_5

    .line 165
    .end local v14    # "result":I
    .end local v16    # "p":Ljava/lang/Process;
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 151
    .restart local v14    # "result":I
    .restart local v23    # "p":Ljava/lang/Process;
    :cond_b
    move-object/from16 v0, v23

    .line 160
    .end local v23    # "p":Ljava/lang/Process;
    .restart local v0    # "p":Ljava/lang/Process;
    :goto_5
    if-nez v14, :cond_c

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v4

    .line 161
    :cond_c
    :try_start_7
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v15, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->XAUTH_COMMAND:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " invocation result: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "debugEnabled":Z
    .end local v5    # "port":I
    .end local v7    # "displayNumber":I
    .end local v8    # "authDisplay":Ljava/lang/String;
    .end local v9    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v10    # "minDisplayNumber":I
    .end local v11    # "maxDisplayNumber":I
    .end local v12    # "basePort":I
    .end local v13    # "bindHost":Ljava/lang/String;
    .end local v22    # "addr":Ljava/net/InetSocketAddress;
    .end local p1    # "singleConnection":Z
    .end local p2    # "authenticationProtocol":Ljava/lang/String;
    .end local p3    # "authenticationCookie":Ljava/lang/String;
    .end local p4    # "screen":I
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 165
    .end local v0    # "p":Ljava/lang/Process;
    .end local v14    # "result":I
    .restart local v3    # "debugEnabled":Z
    .restart local v4    # "addr":Ljava/net/InetSocketAddress;
    .restart local v5    # "port":I
    .restart local v7    # "displayNumber":I
    .restart local v8    # "authDisplay":Ljava/lang/String;
    .restart local v9    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v10    # "minDisplayNumber":I
    .restart local v11    # "maxDisplayNumber":I
    .restart local v12    # "basePort":I
    .restart local v13    # "bindHost":Ljava/lang/String;
    .restart local p1    # "singleConnection":Z
    .restart local p2    # "authenticationProtocol":Ljava/lang/String;
    .restart local p3    # "authenticationCookie":Ljava/lang/String;
    .restart local p4    # "screen":I
    :catchall_1
    move-exception v0

    move-object/from16 v22, v4

    .line 166
    .end local v4    # "addr":Ljava/net/InetSocketAddress;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v22    # "addr":Ljava/net/InetSocketAddress;
    :goto_6
    :try_start_8
    iget-object v4, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    const-string v6, "createDisplay({}) failed ({}) run xauth: {}"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v14, v16

    .line 166
    invoke-interface {v4, v6, v14}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    if-eqz v3, :cond_d

    .line 169
    iget-object v4, v1, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createDisplay("

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, ") xauth failure details"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 171
    :cond_d
    monitor-exit p0

    const/4 v4, 0x0

    return-object v4

    .line 76
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v5    # "port":I
    .end local v7    # "displayNumber":I
    .end local v8    # "authDisplay":Ljava/lang/String;
    .end local v9    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v10    # "minDisplayNumber":I
    .end local v11    # "maxDisplayNumber":I
    .end local v12    # "basePort":I
    .end local v13    # "bindHost":Ljava/lang/String;
    .end local v22    # "addr":Ljava/net/InetSocketAddress;
    :cond_e
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "X11ForwardSupport is closing"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "X11ForwardSupport is closed"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 70
    .end local v3    # "debugEnabled":Z
    .end local p1    # "singleConnection":Z
    .end local p2    # "authenticationProtocol":Ljava/lang/String;
    .end local p3    # "authenticationCookie":Ljava/lang/String;
    .end local p4    # "screen":I
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public exceptionCaught(Lorg/apache/sshd/common/io/IoSession;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 216
    const-class v0, Lorg/apache/sshd/server/x11/X11ForwardingExceptionMarker;

    invoke-interface {p1, v0, p2}, Lorg/apache/sshd/common/io/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "exceptionCaught({}) {}: {}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exceptionCaught("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") caught exception details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    :cond_1
    invoke-interface {p1, v1}, Lorg/apache/sshd/common/io/IoSession;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 224
    return-void
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 2

    .line 63
    invoke-virtual {p0}, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    return-object v0
.end method

.method public messageReceived(Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/util/Readable;)V
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .param p2, "message"    # Lorg/apache/sshd/common/util/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    const-class v0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/io/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;

    .line 203
    .local v0, "channel":Lorg/apache/sshd/server/x11/ChannelForwardedX11;
    new-instance v1, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-interface {p2}, Lorg/apache/sshd/common/util/Readable;->available()I

    move-result v2

    add-int/lit8 v2, v2, 0x40

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    .line 204
    .local v1, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v1, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;)V

    .line 206
    iget-object v2, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const/4 v3, 0x2

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "messageReceived({}) channel={}, len={}"

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_0
    invoke-virtual {v0}, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->getInvertedIn()Ljava/io/OutputStream;

    move-result-object v2

    .line 210
    .local v2, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v4

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 211
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 212
    return-void
.end method

.method public sessionClosed(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 8
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    const-class v0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/io/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;

    .line 189
    .local v0, "channel":Lorg/apache/sshd/server/x11/ChannelForwardedX11;
    const-class v1, Lorg/apache/sshd/server/x11/X11ForwardingExceptionMarker;

    invoke-interface {p1, v1}, Lorg/apache/sshd/common/io/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 190
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 191
    iget-object v2, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object v0, v5, v3

    const/4 v6, 0x2

    if-nez v1, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    :goto_0
    aput-object v7, v5, v6

    .line 192
    const-string v6, "sessionClosed({}) close channel={} - cause={}"

    invoke-interface {v2, v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 198
    :cond_3
    return-void
.end method

.method public sessionCreated(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    new-instance v0, Lorg/apache/sshd/server/x11/ChannelForwardedX11;

    invoke-direct {v0, p1}, Lorg/apache/sshd/server/x11/ChannelForwardedX11;-><init>(Lorg/apache/sshd/common/io/IoSession;)V

    .line 178
    .local v0, "channel":Lorg/apache/sshd/server/x11/ChannelForwardedX11;
    const-class v1, Lorg/apache/sshd/server/x11/ChannelForwardedX11;

    invoke-interface {p1, v1, v0}, Lorg/apache/sshd/common/io/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->log:Lorg/slf4j/Logger;

    const-string v2, "sessionCreated({}) channel{}"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->service:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v1, v0}, Lorg/apache/sshd/common/session/ConnectionService;->registerChannel(Lorg/apache/sshd/common/channel/Channel;)I

    .line 183
    invoke-virtual {v0}, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->open()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v1

    sget-wide v2, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->DEFAULT_CHANNEL_OPEN_TIMEOUT:J

    const-string/jumbo v4, "x11-fwd-open-timeout"

    invoke-virtual {v0, v4, v2, v3}, Lorg/apache/sshd/server/x11/ChannelForwardedX11;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/sshd/client/future/OpenFuture;->verify(J)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/server/x11/DefaultX11ForwardSupport;->service:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
