.class public Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;
.super Lorg/apache/sshd/common/io/nio2/Nio2Service;
.source "Nio2Acceptor.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;
    }
.end annotation


# instance fields
.field private backlog:I

.field protected final channels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/SocketAddress;",
            "Ljava/nio/channels/AsynchronousServerSocketChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;Ljava/nio/channels/AsynchronousChannelGroup;)V
    .locals 2
    .param p1, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .param p2, "handler"    # Lorg/apache/sshd/common/io/IoHandler;
    .param p3, "group"    # Ljava/nio/channels/AsynchronousChannelGroup;

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sshd/common/io/nio2/Nio2Service;-><init>(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;Ljava/nio/channels/AsynchronousChannelGroup;)V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->channels:Ljava/util/Map;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->backlog:I

    .line 55
    const-string v1, "socket-backlog"

    invoke-interface {p1, v1, v0}, Lorg/apache/sshd/common/FactoryManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->backlog:I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->bind(Ljava/util/Collection;)V

    .line 176
    return-void
.end method

.method public bind(Ljava/util/Collection;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/net/SocketAddress;>;"
    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    return-void

    .line 64
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->getChannelGroup()Ljava/nio/channels/AsynchronousChannelGroup;

    move-result-object v2

    .line 65
    .local v2, "group":Ljava/nio/channels/AsynchronousChannelGroup;
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    .line 67
    .local v3, "bound":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/Closeable;>;"
    :try_start_0
    iget-object v0, v1, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    move v4, v0

    .line 68
    .local v4, "debugEnabled":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/SocketAddress;

    .line 69
    .local v5, "address":Ljava/net/SocketAddress;
    if-eqz v4, :cond_1

    .line 70
    iget-object v6, v1, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    const-string v7, "bind({}) binding to address"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    nop

    .line 75
    const/4 v6, 0x3

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v1, v5, v2}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->openAsynchronousServerSocketChannel(Ljava/net/SocketAddress;Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object v10

    .line 77
    .local v10, "asyncChannel":Ljava/nio/channels/AsynchronousServerSocketChannel;
    nop

    .line 78
    invoke-virtual {v1, v5, v10}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->protectInProgressBinding(Ljava/net/SocketAddress;Ljava/nio/channels/AsynchronousServerSocketChannel;)Ljava/io/Closeable;

    move-result-object v11

    .line 79
    .local v11, "protector":Ljava/io/Closeable;
    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v1, v10}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->setSocketOptions(Ljava/nio/channels/NetworkChannel;)Ljava/nio/channels/NetworkChannel;

    move-result-object v12

    check-cast v12, Ljava/nio/channels/AsynchronousServerSocketChannel;

    .line 82
    .local v12, "socket":Ljava/nio/channels/AsynchronousServerSocketChannel;
    iget v13, v1, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->backlog:I

    invoke-virtual {v12, v5, v13}, Ljava/nio/channels/AsynchronousServerSocketChannel;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/AsynchronousServerSocketChannel;

    .line 84
    invoke-virtual {v12}, Ljava/nio/channels/AsynchronousServerSocketChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v13

    .line 85
    .local v13, "local":Ljava/net/SocketAddress;
    if-eqz v4, :cond_2

    .line 86
    iget-object v14, v1, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    const-string v15, "bind({}) bound to {}"

    invoke-interface {v14, v15, v5, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    :cond_2
    iget-object v14, v1, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->channels:Ljava/util/Map;

    invoke-interface {v14, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/nio/channels/AsynchronousServerSocketChannel;

    .line 90
    .local v14, "prev":Ljava/nio/channels/AsynchronousServerSocketChannel;
    if-eqz v14, :cond_3

    .line 91
    if-eqz v4, :cond_3

    .line 92
    iget-object v15, v1, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    const-string v7, "bind({}) replaced previous channel ({}) for {}"

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v5, v8, v9

    .line 93
    invoke-virtual {v14}, Ljava/nio/channels/AsynchronousServerSocketChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v18

    const/16 v17, 0x1

    aput-object v18, v8, v17

    const/16 v16, 0x2

    aput-object v13, v8, v16

    .line 92
    invoke-interface {v15, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_3
    iget-object v7, v1, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->channels:Ljava/util/Map;

    .line 98
    invoke-virtual {v1, v7, v12}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->createSocketCompletionHandler(Ljava/util/Map;Ljava/nio/channels/AsynchronousServerSocketChannel;)Ljava/nio/channels/CompletionHandler;

    move-result-object v7

    const-string v8, "No completion handler created for address=%s[%s]"

    const/4 v15, 0x2

    new-array v6, v15, [Ljava/lang/Object;

    aput-object v5, v6, v9

    const/4 v15, 0x1

    aput-object v13, v6, v15

    invoke-static {v7, v8, v6}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/CompletionHandler;

    .line 101
    .local v6, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;-Ljava/net/SocketAddress;>;"
    invoke-virtual {v12, v13, v6}, Ljava/nio/channels/AsynchronousServerSocketChannel;->accept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v6    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;-Ljava/net/SocketAddress;>;"
    .end local v10    # "asyncChannel":Ljava/nio/channels/AsynchronousServerSocketChannel;
    .end local v11    # "protector":Ljava/io/Closeable;
    .end local v12    # "socket":Ljava/nio/channels/AsynchronousServerSocketChannel;
    .end local v13    # "local":Ljava/net/SocketAddress;
    .end local v14    # "prev":Ljava/nio/channels/AsynchronousServerSocketChannel;
    nop

    .line 110
    .end local v5    # "address":Ljava/net/SocketAddress;
    goto :goto_0

    .line 102
    .restart local v5    # "address":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    iget-object v6, v1, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    const-string v7, "bind({}) - failed ({}) to bind: {}"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 103
    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    if-eqz v4, :cond_4

    .line 106
    iget-object v6, v1, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bind("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") failure details"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    :cond_4
    nop

    .end local v2    # "group":Ljava/nio/channels/AsynchronousChannelGroup;
    .end local v3    # "bound":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/Closeable;>;"
    .end local p1    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/net/SocketAddress;>;"
    throw v0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "address":Ljava/net/SocketAddress;
    .restart local v2    # "group":Ljava/nio/channels/AsynchronousChannelGroup;
    .restart local v3    # "bound":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/Closeable;>;"
    .restart local p1    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/net/SocketAddress;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Collection;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .end local v4    # "debugEnabled":Z
    invoke-static {v3}, Lorg/apache/sshd/common/util/io/IoUtils;->closeQuietly(Ljava/util/Collection;)Ljava/io/IOException;

    move-result-object v0

    .line 115
    .local v0, "err":Ljava/io/IOException;
    if-nez v0, :cond_6

    .line 118
    .end local v0    # "err":Ljava/io/IOException;
    nop

    .line 119
    return-void

    .line 116
    .restart local v0    # "err":Ljava/io/IOException;
    :cond_6
    throw v0

    .line 114
    .end local v0    # "err":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lorg/apache/sshd/common/util/io/IoUtils;->closeQuietly(Ljava/util/Collection;)Ljava/io/IOException;

    move-result-object v4

    .line 115
    .local v4, "err":Ljava/io/IOException;
    if-eqz v4, :cond_7

    .line 116
    throw v4

    .line 118
    .end local v4    # "err":Ljava/io/IOException;
    :cond_7
    throw v0
.end method

.method protected closeImmediately0()V
    .locals 9

    .line 240
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->getBoundAddresses()Ljava/util/Set;

    move-result-object v0

    .line 241
    .local v0, "boundAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/SocketAddress;>;"
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 242
    .local v1, "debugEnabled":Z
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    .line 243
    .local v3, "address":Ljava/net/SocketAddress;
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->channels:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/AsynchronousServerSocketChannel;

    .line 244
    .local v4, "asyncChannel":Ljava/nio/channels/AsynchronousServerSocketChannel;
    if-nez v4, :cond_0

    .line 245
    goto :goto_0

    .line 249
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/channels/AsynchronousServerSocketChannel;->close()V

    .line 250
    if-eqz v1, :cond_1

    .line 251
    iget-object v5, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    const-string v6, "doCloseImmediately({}) closed channel"

    invoke-interface {v5, v6, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_1
    goto :goto_1

    .line 253
    :catch_0
    move-exception v5

    .line 254
    .local v5, "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 255
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught while closing channel of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    .end local v3    # "address":Ljava/net/SocketAddress;
    .end local v4    # "asyncChannel":Ljava/nio/channels/AsynchronousServerSocketChannel;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    goto :goto_0

    .line 259
    :cond_3
    return-void
.end method

.method protected createSocketCompletionHandler(Ljava/util/Map;Ljava/nio/channels/AsynchronousServerSocketChannel;)Ljava/nio/channels/CompletionHandler;
    .locals 1
    .param p2, "socket"    # Ljava/nio/channels/AsynchronousServerSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/net/SocketAddress;",
            "Ljava/nio/channels/AsynchronousServerSocketChannel;",
            ">;",
            "Ljava/nio/channels/AsynchronousServerSocketChannel;",
            ")",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "-",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    .local p1, "channelsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/SocketAddress;Ljava/nio/channels/AsynchronousServerSocketChannel;>;"
    new-instance v0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;

    invoke-direct {v0, p0, p2}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;-><init>(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;Ljava/nio/channels/AsynchronousServerSocketChannel;)V

    return-object v0
.end method

.method public getBoundAddresses()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->channels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 3

    .line 233
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 234
    invoke-super {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Service;->getInnerCloseable()Lorg/apache/sshd/common/Closeable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 233
    return-object v0
.end method

.method protected openAsynchronousServerSocketChannel(Ljava/net/SocketAddress;Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .locals 1
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "group"    # Ljava/nio/channels/AsynchronousChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-static {p2}, Ljava/nio/channels/AsynchronousServerSocketChannel;->open(Ljava/nio/channels/AsynchronousChannelGroup;)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method protected preClose()V
    .locals 0

    .line 227
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->unbind()V

    .line 228
    invoke-super {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Service;->preClose()V

    .line 229
    return-void
.end method

.method protected protectInProgressBinding(Ljava/net/SocketAddress;Ljava/nio/channels/AsynchronousServerSocketChannel;)Ljava/io/Closeable;
    .locals 2
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "asyncChannel"    # Ljava/nio/channels/AsynchronousServerSocketChannel;

    .line 123
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 125
    .local v0, "debugEnabled":Z
    new-instance v1, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;

    invoke-direct {v1, p0, p2, v0, p1}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;-><init>(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;Ljava/nio/channels/AsynchronousServerSocketChannel;ZLjava/net/SocketAddress;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 263
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

    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->getBoundAddresses()Ljava/util/Set;

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

.method public unbind()V
    .locals 3

    .line 180
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->getBoundAddresses()Ljava/util/Set;

    move-result-object v0

    .line 181
    .local v0, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/SocketAddress;>;"
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    const-string v2, "Unbinding {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->unbind(Ljava/util/Collection;)V

    .line 186
    return-void
.end method

.method public unbind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "address"    # Ljava/net/SocketAddress;

    .line 217
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->unbind(Ljava/util/Collection;)V

    .line 218
    return-void
.end method

.method public unbind(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/net/SocketAddress;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 191
    .local v0, "debugEnabled":Z
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    .line 192
    .local v1, "traceEnabled":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    .line 193
    .local v3, "address":Ljava/net/SocketAddress;
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->channels:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/AsynchronousServerSocketChannel;

    .line 194
    .local v4, "channel":Ljava/nio/channels/AsynchronousServerSocketChannel;
    if-eqz v4, :cond_2

    .line 196
    if-eqz v1, :cond_0

    .line 197
    :try_start_0
    iget-object v5, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    const-string/jumbo v6, "unbind({})"

    invoke-interface {v5, v6, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    :cond_0
    invoke-virtual {v4}, Ljava/nio/channels/AsynchronousServerSocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_1
    :goto_1
    goto :goto_2

    .line 200
    :catch_0
    move-exception v5

    .line 201
    .local v5, "e":Ljava/io/IOException;
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    .line 202
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 201
    const-string/jumbo v8, "unbind({}) {} while unbinding channel: {}"

    invoke-interface {v6, v8, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    if-eqz v0, :cond_1

    .line 204
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unbind("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") failure details"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 208
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v1, :cond_3

    .line 209
    iget-object v5, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->log:Lorg/slf4j/Logger;

    const-string v6, "No active channel to unbind for {}"

    invoke-interface {v5, v6, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    .end local v3    # "address":Ljava/net/SocketAddress;
    .end local v4    # "channel":Ljava/nio/channels/AsynchronousServerSocketChannel;
    :cond_3
    :goto_2
    goto :goto_0

    .line 213
    :cond_4
    return-void
.end method
