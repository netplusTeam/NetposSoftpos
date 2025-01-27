.class public Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;
.super Lio/reactivex/Single;
.source "MqttConnAckSingle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Single<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V
    .locals 1
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 54
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 56
    invoke-virtual {p2, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->setDefaults(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 57
    return-void
.end method

.method private static connect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 5
    .param p0, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p2, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
    .param p3, "eventLoop"    # Lio/netty/channel/EventLoop;

    .line 77
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    .line 79
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->connectionComponentBuilder()Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;

    move-result-object v0

    .line 83
    invoke-interface {v0, p1}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;->connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;

    move-result-object v0

    .line 84
    invoke-interface {v0, p2}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;->connAckFlow(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;->build()Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent;->bootstrap()Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    .line 88
    .local v0, "bootstrap":Lio/netty/bootstrap/Bootstrap;
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v1

    .line 90
    .local v1, "transportConfig":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    invoke-virtual {v0, p3}, Lio/netty/bootstrap/Bootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v2

    check-cast v2, Lio/netty/bootstrap/Bootstrap;

    .line 91
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda2;

    invoke-direct {v3, p3, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda2;-><init>(Lio/netty/channel/EventLoop;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)V

    .line 92
    invoke-interface {v2, v3}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 106
    .end local v0    # "bootstrap":Lio/netty/bootstrap/Bootstrap;
    .end local v1    # "transportConfig":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    :goto_0
    return-void
.end method

.method static synthetic lambda$connect$1(Lio/netty/channel/EventLoop;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/util/concurrent/Future;)V
    .locals 10
    .param p0, "eventLoop"    # Lio/netty/channel/EventLoop;
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p3, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
    .param p4, "future"    # Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    invoke-interface {p4}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 94
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 95
    new-instance v3, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    invoke-direct {v3, v0}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/Throwable;)V

    .line 96
    .local v3, "e":Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;
    invoke-interface {p0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    sget-object v2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda3;

    move-object v4, v1

    move-object v5, p1

    move-object v6, v3

    move-object v7, p2

    move-object v8, p3

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    invoke-interface {p0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 104
    .end local v3    # "e":Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$null$0(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 6
    .param p0, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p1, "e"    # Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;
    .param p2, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p3, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
    .param p4, "eventLoop"    # Lio/netty/channel/EventLoop;

    .line 100
    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void
.end method

.method static synthetic lambda$null$2(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "reconnector"    # Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
    .param p3, "eventLoop"    # Lio/netty/channel/EventLoop;
    .param p4, "ignored"    # Ljava/lang/Object;
    .param p5, "throwable"    # Ljava/lang/Throwable;

    .line 157
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isReconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    sget-object v2, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTING_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setCurrentTransportConfig(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V

    .line 161
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    invoke-direct {v1, p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;-><init>(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)V

    invoke-static {p1, v0, v1, p3}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->connect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    sget-object v2, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    .line 166
    if-eqz p2, :cond_2

    .line 167
    if-nez p5, :cond_1

    .line 168
    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    const-string v1, "Reconnect was cancelled."

    invoke-direct {v0, v1}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    invoke-direct {v0, p5}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->onError(Ljava/lang/Throwable;)V

    .line 174
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$reconnect$3(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 2
    .param p0, "reconnector"    # Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
    .param p3, "eventLoop"    # Lio/netty/channel/EventLoop;

    .line 156
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 175
    return-void
.end method

.method private static reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;ILcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 7
    .param p0, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p1, "source"    # Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p4, "attempts"    # I
    .param p5, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
    .param p6, "eventLoop"    # Lio/netty/channel/EventLoop;

    .line 140
    new-instance v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 141
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v1

    invoke-direct {v0, p6, p4, p3, v1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;-><init>(Lio/netty/channel/EventLoop;ILcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V

    .line 142
    .local v0, "reconnector":Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;
    nop

    .line 143
    invoke-static {p0, p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;

    move-result-object v1

    .line 145
    .local v1, "context":Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getDisconnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->iterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;

    .line 147
    .local v3, "disconnectedListener":Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;
    :try_start_0
    invoke-interface {v3, v1}, Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;->onDisconnected(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    goto :goto_1

    .line 148
    :catchall_0
    move-exception v4

    .line 149
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v5, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v6, "Unexpected exception thrown by disconnected listener."

    invoke-interface {v5, v6, v4}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .end local v3    # "disconnectedListener":Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isReconnect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    sget-object v3, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 155
    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0, p5, p6}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 175
    invoke-virtual {v0, v3}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 155
    invoke-interface {p6, v2, v3, v4, v5}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 176
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isResubscribeIfSessionExpired()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setResubscribeIfSessionExpired(Z)V

    .line 177
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isRepublishIfSessionExpired()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setRepublishIfSessionExpired(Z)V

    .line 178
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->afterOnDisconnected()V

    goto :goto_2

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    sget-object v3, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    .line 182
    if-eqz p5, :cond_2

    .line 183
    invoke-virtual {p5, p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->onError(Ljava/lang/Throwable;)V

    .line 186
    :cond_2
    :goto_2
    return-void
.end method

.method public static reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 8
    .param p0, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p1, "source"    # Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p4, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
    .param p5, "eventLoop"    # Lio/netty/channel/EventLoop;

    .line 116
    invoke-virtual {p4}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->setDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p4}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->getAttempts()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;ILcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    .line 119
    :cond_0
    return-void
.end method

.method public static reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lio/netty/channel/EventLoop;)V
    .locals 7
    .param p0, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p1, "source"    # Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p4, "eventLoop"    # Lio/netty/channel/EventLoop;

    .line 128
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;ILcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    .line 129
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    sget-object v2, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTING:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->alreadyConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v0

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    .line 63
    return-void

    .line 66
    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    invoke-direct {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;-><init>(Lio/reactivex/SingleObserver;)V

    .line 67
    .local v0, "flow":Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 68
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->acquireEventLoop()Lio/netty/channel/EventLoop;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->connect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    .line 69
    return-void
.end method
