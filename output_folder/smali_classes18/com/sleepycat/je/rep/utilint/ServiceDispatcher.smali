.class public Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "ServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;,
        Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;,
        Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;,
        Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;,
        Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;,
        Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;,
        Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private authOptions:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

.field private final channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

.field private errorCount:I

.field private final formatter:Ljava/util/logging/Formatter;

.field private final logger:Ljava/util/logging/Logger;

.field private final pool:Ljava/util/concurrent/ExecutorService;

.field private processAcceptRequests:Z

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private scKey:Ljava/nio/channels/SelectionKey;

.field private final selector:Ljava/nio/channels/Selector;

.field private serverChannel:Ljava/nio/channels/ServerSocketChannel;

.field private final serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;",
            ">;"
        }
    .end annotation
.end field

.field private socketAddress:Ljava/net/InetSocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V
    .locals 4
    .param p1, "socketAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p3, "channelFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceDispatcher-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-direct {p0, p2, v0}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->processAcceptRequests:Z

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->errorCount:I

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serviceMap:Ljava/util/Map;

    .line 176
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 177
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 178
    iput-object p3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 179
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->selector:Ljava/nio/channels/Selector;

    .line 181
    const-string v0, "ServiceDispatcherPool"

    .line 182
    .local v0, "poolName":Ljava/lang/String;
    sget-object v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 183
    .local v1, "nameIdPair":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    if-nez p2, :cond_0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFormatterNeeded(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    .line 187
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    new-instance v2, Lcom/sleepycat/je/utilint/StoppableThreadFactory;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    invoke-direct {v2, v0, v3}, Lcom/sleepycat/je/utilint/StoppableThreadFactory;-><init>(Ljava/lang/String;Ljava/util/logging/Logger;)V

    .line 192
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->pool:Ljava/util/concurrent/ExecutorService;

    .line 194
    new-instance v2, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    invoke-direct {v2, v1}, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    .line 196
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->bindSocket()V

    .line 198
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->setAuthOptions()V

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V
    .locals 1
    .param p1, "socketAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "channelFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;-><init>(Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/logging/Formatter;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->pool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private bindSocket()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 205
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->selector:Ljava/nio/channels/Selector;

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->scKey:Ljava/nio/channels/SelectionKey;

    .line 206
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    .line 208
    .local v0, "acceptSocket":Ljava/net/ServerSocket;
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 210
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 211
    .local v2, "bindAddress":Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    if-eqz v3, :cond_1

    .line 212
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepParams;->SO_REUSEADDR:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    sget-object v4, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    .line 217
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 216
    invoke-virtual {v3, v4, v6}, Ljava/nio/channels/ServerSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;

    .line 219
    invoke-virtual {v0, v5}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/rep/impl/RepParams;->BIND_INADDR_ANY:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    new-instance v3, Ljava/net/InetSocketAddress;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 224
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v2, v3

    .line 228
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    if-eqz v3, :cond_2

    .line 229
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->SO_BIND_WAIT_MS:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    goto :goto_0

    :cond_2
    nop

    .line 232
    .local v1, "limitMs":I
    :goto_0
    const/4 v3, 0x0

    .line 233
    .local v3, "bindException":Ljava/net/BindException;
    const/16 v4, 0x3e8

    .line 235
    .local v4, "retryWaitMs":I
    const/4 v5, 0x0

    .local v5, "totalWaitMs":I
    :goto_1
    if-gt v5, v1, :cond_3

    .line 238
    const/4 v3, 0x0

    .line 239
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_2

    .line 241
    :catch_0
    move-exception v6

    .line 242
    .local v6, "be":Ljava/net/BindException;
    move-object v3, v6

    .line 244
    const-wide/16 v7, 0x3e8

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    nop

    .line 236
    .end local v6    # "be":Ljava/net/BindException;
    add-int/lit16 v5, v5, 0x3e8

    goto :goto_1

    .line 245
    .restart local v6    # "be":Ljava/net/BindException;
    :catch_1
    move-exception v7

    .line 246
    .local v7, "e":Ljava/lang/InterruptedException;
    throw v3

    .line 251
    .end local v6    # "be":Ljava/net/BindException;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_2
    const-string v6, "ms"

    const-string v7, ":"

    const-string v8, "ServiceDispatcher HostPort="

    if-eqz v3, :cond_5

    .line 252
    iget-object v9, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v10, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v11, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v13, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 254
    invoke-virtual {v13}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 255
    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bind failed despite waiting for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-static {v9, v10, v11, v12, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 259
    if-lez v1, :cond_4

    .line 265
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v8, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v10, "jps"

    const-string v11, "-v"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    .line 266
    invoke-static {v10}, Lcom/sleepycat/je/rep/utilint/RepUtils;->exec([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 265
    invoke-static {v6, v7, v8, v9, v10}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 268
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v8, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v10, "netstat"

    const-string v11, "-lntp"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    .line 269
    invoke-static {v10}, Lcom/sleepycat/je/rep/utilint/RepUtils;->exec([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 268
    invoke-static {v6, v7, v8, v9, v10}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 273
    :cond_4
    throw v3

    .line 274
    :cond_5
    if-eqz v5, :cond_6

    .line 275
    iget-object v9, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v10, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v11, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v13, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 277
    invoke-virtual {v13}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 278
    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " become available after: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-static {v9, v10, v11, v12, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 282
    :cond_6
    return-void
.end method

.method private closeChannel(Ljava/nio/channels/Channel;)V
    .locals 7
    .param p1, "channel"    # Ljava/nio/channels/Channel;

    .line 726
    if-eqz p1, :cond_0

    .line 728
    :try_start_0
    invoke-interface {p1}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e1":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during cleanup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 732
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 730
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 735
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private closeDataChannelForcefully(Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 7
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 743
    if-eqz p1, :cond_0

    .line 745
    :try_start_0
    invoke-interface {p1}, Lcom/sleepycat/je/rep/net/DataChannel;->closeForcefully()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    goto :goto_0

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e1":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during cleanup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 749
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 747
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 752
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static doServiceHandshake(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;)V
    .locals 1
    .param p0, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
        }
    .end annotation

    .line 385
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->doServiceHandshake(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V

    .line 386
    return-void
.end method

.method public static doServiceHandshake(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V
    .locals 3
    .param p0, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "authInfo"    # [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
        }
    .end annotation

    .line 406
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;

    new-instance v1, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ByteChannelIOAdapter;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ByteChannelIOAdapter;-><init>(Ljava/nio/channels/ByteChannel;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;-><init>(Ljava/lang/String;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;)V

    .line 411
    .local v0, "handshake":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;->process()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v1

    .line 412
    .local v1, "response":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->OK:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    if-ne v1, v2, :cond_0

    .line 415
    return-void

    .line 413
    :cond_0
    new-instance v2, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;

    invoke-direct {v2, p1, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;)V

    throw v2
.end method

.method private ipChanged()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    if-nez v0, :cond_0

    .line 865
    const/4 v0, 0x0

    return v0

    .line 867
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 868
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "currentIP":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 870
    .local v2, "previousIP":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 871
    .local v3, "changed":Z
    if-eqz v3, :cond_1

    .line 872
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ServiceDispatcher IP changed, from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 873
    invoke-static {v4, v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 877
    :cond_1
    return v3
.end method

.method private processAccept()V
    .locals 8

    .line 639
    const/4 v0, 0x0

    .line 641
    .local v0, "socketChannel":Ljava/nio/channels/SocketChannel;
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    move-object v0, v1

    .line 643
    iget-boolean v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->processAcceptRequests:Z

    if-nez v1, :cond_0

    .line 644
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->closeChannel(Ljava/nio/channels/Channel;)V

    .line 645
    return-void

    .line 647
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 648
    nop

    .line 649
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sleepycat/je/rep/net/DataChannelFactory;->acceptChannel(Ljava/nio/channels/SocketChannel;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v2

    .line 657
    .local v2, "dataChannel":Lcom/sleepycat/je/rep/net/DataChannel;
    nop

    .line 658
    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->isTrustCapable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->authOptions:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    if-nez v3, :cond_1

    new-array v1, v1, [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->authOptions:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 662
    .local v1, "authInfo":[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    :goto_0
    new-instance v3, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    invoke-direct {v3, v2, p0, v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;-><init>(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V

    .line 666
    .local v3, "initState":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->selector:Ljava/nio/channels/Selector;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    nop

    .end local v1    # "authInfo":[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    .end local v2    # "dataChannel":Lcom/sleepycat/je/rep/net/DataChannel;
    .end local v3    # "initState":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;
    goto :goto_1

    .line 667
    :catch_0
    move-exception v1

    .line 668
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Server accept exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 670
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 668
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 671
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->closeChannel(Ljava/nio/channels/Channel;)V

    .line 673
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private processRead(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)Ljava/lang/String;
    .locals 8
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    .line 694
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->process()Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    move-result-object v1

    .line 695
    .local v1, "result":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->FAIL:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-ne v1, v2, :cond_0

    .line 697
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->closeDataChannelForcefully(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 698
    return-object v0

    .line 700
    :cond_0
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->REJECT:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-ne v1, v2, :cond_1

    .line 701
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->INVALID:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->byteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sleepycat/je/rep/net/DataChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 702
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->closeDataChannelForcefully(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 703
    return-object v0

    .line 706
    :cond_1
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;->DONE:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;

    if-ne v1, v2, :cond_2

    .line 707
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->getServiceName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 710
    :cond_2
    return-object v0

    .line 711
    .end local v1    # "result":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$InitResult;
    :catch_0
    move-exception v1

    .line 712
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception during read: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 714
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 712
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 715
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->closeDataChannelForcefully(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 716
    return-object v0
.end method

.method private processService(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;)V
    .locals 9
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 901
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serviceMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;

    .line 903
    .local v0, "service":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 904
    :try_start_0
    iget v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->errorCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->errorCount:I

    .line 905
    sget-object v1, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->UNKNOWN_SERVICE:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->byteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sleepycat/je/rep/net/DataChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 906
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->closeDataChannelForcefully(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 911
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request for unknown Service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Registered services: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serviceMap:Ljava/util/Map;

    .line 914
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 911
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 915
    return-void

    .line 917
    :cond_0
    sget-object v2, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->OK:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    .line 918
    .local v2, "response":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->isBusy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 919
    sget-object v3, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->BUSY:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-object v2, v3

    .line 921
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 925
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->byteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/sleepycat/je/rep/net/DataChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 930
    sget-object v3, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->OK:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    if-ne v2, v3, :cond_2

    .line 936
    invoke-interface {p1, v1}, Lcom/sleepycat/je/rep/net/DataChannel;->configureBlocking(Z)V

    .line 937
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->requestDispatch(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 945
    .end local v2    # "response":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    :cond_2
    goto :goto_0

    .line 926
    .restart local v2    # "response":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write byte. Send buffer size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 928
    invoke-interface {p1}, Lcom/sleepycat/je/rep/net/DataChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 927
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local v0    # "service":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;
    .end local p1    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    .end local p2    # "serviceName":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    .end local v2    # "response":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    .restart local v0    # "service":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;
    .restart local p1    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    .restart local p2    # "serviceName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 940
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->closeDataChannelForcefully(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 941
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error writing to channel for service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 944
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 941
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 946
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private rebindSocket()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 881
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    if-nez v0, :cond_0

    .line 882
    return-void

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->scKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 885
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 886
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getSocket()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 888
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->bindSocket()V

    .line 890
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rebind ServiceDispatcher socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 891
    invoke-virtual {v5}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 890
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method private setAuthOptions()V
    .locals 8

    .line 611
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 612
    iput-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->authOptions:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 613
    return-void

    .line 616
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getAuthenticator()Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    move-result-object v0

    .line 617
    .local v0, "auth":Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;
    if-nez v0, :cond_1

    .line 619
    iput-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->authOptions:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 620
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "No server auth method"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_1
    new-instance v1, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod;-><init>(Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;)V

    .line 624
    .local v1, "method":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->authOptions:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 625
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Server auth method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 627
    invoke-interface {v1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;->getMechanismName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 625
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 629
    .end local v1    # "method":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    :goto_0
    return-void
.end method


# virtual methods
.method addTestAuthentication([Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;)V
    .locals 0
    .param p1, "authOpts"    # [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 603
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->authOptions:[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 604
    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 580
    if-eqz p1, :cond_1

    .line 584
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;

    .line 586
    .local v0, "service":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;
    const-string v1, "Service: "

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->cancel()V

    .line 591
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " shut down."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v5, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 593
    return-void

    .line 587
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 581
    .end local v0    # "service":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;
    :cond_1
    nop

    .line 582
    const-string v0, "The serviceName argument must not be null."

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    return-object v0
.end method

.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getSocketBoundAddress()Ljava/net/InetAddress;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public isRegistered(Ljava/lang/String;)Z
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 553
    if-eqz p1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 554
    :cond_0
    nop

    .line 555
    const-string v0, "The serviceName argument must not be null"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method logMsg(Ljava/util/logging/Level;ZLjava/lang/String;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "noteError"    # Z
    .param p3, "msg"    # Ljava/lang/String;

    .line 363
    if-eqz p2, :cond_0

    .line 364
    iget v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->errorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->errorCount:I

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    invoke-static {v0, v1, v2, p1, p3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public preShutdown()V
    .locals 1

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->processAcceptRequests:Z

    .line 304
    return-void
.end method

.method public register(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;)V
    .locals 6
    .param p1, "service"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;

    .line 538
    if-eqz p1, :cond_1

    .line 543
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serviceMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Service: "

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " registered."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serviceMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    return-void

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is already registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 539
    :cond_1
    nop

    .line 540
    const-string v0, "The service argument must not be null"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public register(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sleepycat/je/rep/net/DataChannel;",
            ">;)V"
        }
    .end annotation

    .line 521
    .local p2, "serviceQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/sleepycat/je/rep/net/DataChannel;>;"
    if-eqz p1, :cond_2

    .line 525
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    if-eqz p2, :cond_0

    .line 533
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serviceMap:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;

    invoke-direct {v1, p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    return-void

    .line 530
    :cond_0
    nop

    .line 531
    const-string v0, "The serviceQueue argument must not be null"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 526
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is already registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 522
    :cond_2
    nop

    .line 523
    const-string v0, "The serviceName argument must not be null"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public run()V
    .locals 10

    .line 763
    const-string v0, "Server closing in-process handshake"

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started ServiceDispatcher. HostPort="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 765
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 766
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 763
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 767
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DataChannel factory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 769
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 767
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 787
    :goto_0
    const/4 v1, 0x0

    .line 789
    .local v1, "changed":Z
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->ipChanged()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 795
    goto :goto_1

    .line 846
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v1

    goto/16 :goto_6

    .line 790
    .restart local v1    # "changed":Z
    :catch_0
    move-exception v2

    .line 791
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while check IP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 794
    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 792
    invoke-static {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 796
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v1, :cond_0

    .line 797
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->rebindSocket()V

    .line 799
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->selector:Ljava/nio/channels/Selector;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/Selector;->select(J)I

    move-result v2

    .line 800
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->isShutdown()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 846
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 847
    .local v3, "skIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 848
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    .line 849
    .local v4, "key":Ljava/nio/channels/SelectionKey;
    nop

    .line 850
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    .line 851
    .local v5, "initState":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;
    if-eqz v5, :cond_1

    .line 852
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v8, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v6, v7, v8, v9, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->closeDataChannelForcefully(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 855
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 857
    .end local v4    # "key":Ljava/nio/channels/SelectionKey;
    .end local v5    # "initState":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;
    :cond_1
    goto :goto_2

    .line 858
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->closeChannel(Ljava/nio/channels/Channel;)V

    .line 859
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cleanup()V

    .line 801
    .end local v3    # "skIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    return-void

    .line 803
    :cond_3
    if-nez v2, :cond_4

    .line 804
    goto/16 :goto_0

    .line 812
    .end local v1    # "changed":Z
    .end local v2    # "result":I
    :cond_4
    nop

    .line 813
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    .line 814
    .local v1, "skeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 815
    .local v3, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 834
    new-instance v2, Ljava/lang/StringBuilder;

    goto :goto_5

    .line 818
    :sswitch_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->processAccept()V

    .line 819
    goto :goto_4

    .line 822
    :sswitch_1
    nop

    .line 823
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    .line 825
    .local v4, "initState":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;
    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->processRead(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)Ljava/lang/String;

    move-result-object v5

    .line 826
    .local v5, "serviceName":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 827
    goto :goto_4

    .line 829
    :cond_5
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 830
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->processService(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;)V

    .line 831
    nop

    .line 837
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    .end local v4    # "initState":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;
    .end local v5    # "serviceName":Ljava/lang/String;
    :goto_4
    goto :goto_3

    .line 834
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    :goto_5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected ops bit set: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 835
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 839
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 840
    .end local v1    # "skeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    goto/16 :goto_0

    .line 806
    :catch_1
    move-exception v1

    .line 807
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Server socket exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 810
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 808
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 811
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 846
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 847
    .local v2, "skIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 848
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 849
    .restart local v3    # "key":Ljava/nio/channels/SelectionKey;
    nop

    .line 850
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    .line 851
    .restart local v4    # "initState":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;
    if-eqz v4, :cond_7

    .line 852
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v5, v6, v7, v8, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;->getChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->closeDataChannelForcefully(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 855
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 857
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    .end local v4    # "initState":Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;
    :cond_7
    goto :goto_7

    .line 858
    :cond_8
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->closeChannel(Ljava/nio/channels/Channel;)V

    .line 859
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cleanup()V

    .line 860
    .end local v2    # "skIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    throw v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public setSimulateIOException(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "simulateException"    # Z

    .line 563
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;

    .line 564
    .local v0, "service":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;
    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->setSimulateIOException(Z)V

    .line 570
    return-void

    .line 565
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public shutdown()V
    .locals 8

    .line 312
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->shutdownDone(Ljava/util/logging/Logger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceDispatcher shutdown starting. HostPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 318
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 319
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Registered services: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serviceMap:Ljava/util/Map;

    .line 320
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 324
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serviceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 325
    .local v1, "serviceName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 326
    .end local v1    # "serviceName":Ljava/lang/String;
    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serverChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 332
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring I/O error during close: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 337
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-static {v1, v2, v3, v4, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 339
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ServiceDispatcher shutdown completed. HostPort="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 341
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->socketAddress:Ljava/net/InetSocketAddress;

    .line 342
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public takeChannel(Ljava/lang/String;I)Lcom/sleepycat/je/rep/net/DataChannel;
    .locals 11
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "soTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 432
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->serviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;

    .line 433
    .local v0, "service":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;
    const-string v1, "Service: "

    if-eqz v0, :cond_3

    .line 437
    instance-of v2, v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;

    if-eqz v2, :cond_2

    .line 441
    const/4 v1, 0x0

    .line 442
    .local v1, "socket":Ljava/net/Socket;
    const/4 v2, 0x0

    .line 444
    .local v2, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :try_start_0
    move-object v3, v0

    check-cast v3, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->take()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v3

    move-object v2, v3

    .line 445
    if-eqz v2, :cond_1

    .line 447
    sget-object v3, Lcom/sleepycat/je/rep/utilint/RepUtils;->CHANNEL_EOF_MARKER:Lcom/sleepycat/je/rep/net/DataChannel;

    if-ne v2, v3, :cond_0

    .line 449
    const/4 v3, 0x0

    return-object v3

    .line 452
    :cond_0
    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    move-object v1, v3

    .line 453
    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 462
    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->flush()Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    .line 464
    return-object v2

    .line 445
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "service":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;
    .end local v1    # "socket":Ljava/net/Socket;
    .end local v2    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    .end local p1    # "serviceName":Ljava/lang/String;
    .end local p2    # "soTimeout":I
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .restart local v0    # "service":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;
    .restart local v1    # "socket":Ljava/net/Socket;
    .restart local v2    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    .restart local p1    # "serviceName":Ljava/lang/String;
    .restart local p2    # "soTimeout":I
    :catch_0
    move-exception v3

    .line 466
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to configure channel for \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 469
    invoke-static {v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 466
    invoke-static {v4, v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 471
    :try_start_1
    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 477
    goto :goto_1

    .line 472
    :catch_1
    move-exception v4

    .line 473
    .local v4, "e1":Ljava/io/IOException;
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->formatter:Ljava/util/logging/Formatter;

    sget-object v8, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cleanup failed for service: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 476
    invoke-static {v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 473
    invoke-static {v5, v6, v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 479
    .end local v4    # "e1":Ljava/io/IOException;
    :goto_1
    goto/16 :goto_0

    .line 438
    .end local v1    # "socket":Ljava/net/Socket;
    .end local v2    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a queuing service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 434
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method
