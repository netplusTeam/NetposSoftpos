.class public Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
.super Ljava/lang/Object;
.source "MqttClientConfig.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

.field private final clientComponent:Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

.field private volatile clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

.field private final connectDefaults:Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

.field private final connectedListeners:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile connectionConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

.field private currentSslContext:Lio/netty/handler/ssl/SslContext;

.field private currentTransportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

.field private final disconnectedListeners:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile eventLoop:Lio/netty/channel/EventLoop;

.field private eventLoopAcquireCount:J

.field private eventLoopAcquires:I

.field private final executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

.field private final mqttVersion:Lcom/hivemq/client/mqtt/MqttVersion;

.field private republishIfSessionExpired:Z

.field private resubscribeIfSessionExpired:Z

.field private final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/hivemq/client/mqtt/MqttClientState;",
            ">;"
        }
    .end annotation
.end field

.field private final transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/mqtt/MqttVersion;Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/util/collections/ImmutableList;)V
    .locals 2
    .param p1, "mqttVersion"    # Lcom/hivemq/client/mqtt/MqttVersion;
    .param p2, "clientIdentifier"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .param p3, "transportConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .param p4, "executorConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;
    .param p5, "advancedConfig"    # Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;
    .param p6, "connectDefaults"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttVersion;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;",
            "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;",
            ">;",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p7, "connectedListeners":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;>;"
    .local p8, "disconnectedListeners":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->mqttVersion:Lcom/hivemq/client/mqtt/MqttVersion;

    .line 85
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    .line 86
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 87
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    .line 88
    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    .line 89
    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectDefaults:Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    .line 90
    iput-object p7, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectedListeners:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 91
    iput-object p8, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->disconnectedListeners:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 93
    sget-object v0, Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;->INSTANCE:Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;->clientComponentBuilder()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;->clientConfig(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;->build()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->clientComponent:Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 96
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentTransportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 97
    return-void
.end method


# virtual methods
.method public acquireEventLoop()Lio/netty/channel/EventLoop;
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->state:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 178
    :try_start_0
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquires:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquires:I

    .line 179
    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquireCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquireCount:J

    .line 180
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoop:Lio/netty/channel/EventLoop;

    .line 181
    .local v1, "eventLoop":Lio/netty/channel/EventLoop;
    if-nez v1, :cond_0

    .line 182
    sget-object v2, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->INSTANCE:Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    .line 183
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getRawNettyExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    .line 184
    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getRawNettyThreads()I

    move-result v4

    .line 183
    invoke-virtual {v2, v3, v4}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->acquireEventLoop(Ljava/util/concurrent/Executor;I)Lio/netty/channel/EventLoop;

    move-result-object v2

    move-object v1, v2

    iput-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoop:Lio/netty/channel/EventLoop;

    .line 186
    :cond_0
    monitor-exit v0

    return-object v1

    .line 187
    .end local v1    # "eventLoop":Lio/netty/channel/EventLoop;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeInEventLoop(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 209
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoop:Lio/netty/channel/EventLoop;

    .line 210
    .local v0, "eventLoop":Lio/netty/channel/EventLoop;
    if-nez v0, :cond_0

    .line 211
    const/4 v1, 0x0

    return v1

    .line 213
    :cond_0
    invoke-static {v0, p1}, Lcom/hivemq/client/internal/util/ExecutorUtil;->execute(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z

    move-result v1

    return v1
.end method

.method public getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    return-object v0
.end method

.method public bridge synthetic getAdvancedConfig()Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfig;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAutomaticReconnect()Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->disconnectedListeners:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->iterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;

    .line 155
    .local v1, "disconnectedListener":Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;
    instance-of v2, v1, Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;

    if-eqz v2, :cond_0

    .line 156
    move-object v0, v1

    check-cast v0, Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 158
    .end local v1    # "disconnectedListener":Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;
    :cond_0
    goto :goto_0

    .line 159
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->clientComponent:Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    return-object v0
.end method

.method public getClientIdentifier()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->REQUEST_CLIENT_IDENTIFIER_FROM_SERVER:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    .line 107
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0
.end method

.method public getConnectDefaults()Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectDefaults:Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    return-object v0
.end method

.method public getConnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectedListeners:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getConnectedListeners()Ljava/util/List;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getConnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionConfig()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectionConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSslContext()Lio/netty/handler/ssl/SslContext;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentSslContext:Lio/netty/handler/ssl/SslContext;

    return-object v0
.end method

.method public getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentTransportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    return-object v0
.end method

.method public getDisconnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->disconnectedListeners:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getDisconnectedListeners()Ljava/util/List;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getDisconnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getEnhancedAuthMechanism()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectDefaults:Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    iget-object v0, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    return-object v0
.end method

.method public bridge synthetic getExecutorConfig()Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getExecutorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->mqttVersion:Lcom/hivemq/client/mqtt/MqttVersion;

    return-object v0
.end method

.method public getRawClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    return-object v0
.end method

.method public getRawConnectionConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectionConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    return-object v0
.end method

.method public getRawState()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/hivemq/client/mqtt/MqttClientState;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->state:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public getSimpleAuth()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectDefaults:Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    iget-object v0, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/hivemq/client/mqtt/MqttClientState;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientState;

    return-object v0
.end method

.method public getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    return-object v0
.end method

.method public bridge synthetic getTransportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfig;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public getWillPublish()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublish;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectDefaults:Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    iget-object v0, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public isRepublishIfSessionExpired()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->republishIfSessionExpired:Z

    return v0
.end method

.method public isResubscribeIfSessionExpired()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->resubscribeIfSessionExpired:Z

    return v0
.end method

.method synthetic lambda$releaseEventLoop$0$com-hivemq-client-internal-mqtt-MqttClientConfig(J)V
    .locals 3
    .param p1, "eventLoopAcquireCount"    # J

    .line 197
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->state:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquireCount:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 199
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoop:Lio/netty/channel/EventLoop;

    .line 200
    sget-object v1, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->INSTANCE:Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getRawNettyExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->releaseEventLoop(Ljava/util/concurrent/Executor;)V

    .line 202
    :cond_0
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseEventLoop()V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->state:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 192
    :try_start_0
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquires:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquires:I

    if-nez v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoop:Lio/netty/channel/EventLoop;

    .line 194
    .local v1, "eventLoop":Lio/netty/channel/EventLoop;
    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquireCount:J

    .line 195
    .local v2, "eventLoopAcquireCount":J
    if-eqz v1, :cond_0

    .line 196
    new-instance v4, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v3}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;J)V

    invoke-interface {v1, v4}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 195
    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "eventLoopAcquires was > 0 -> eventLoop != null"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 205
    .end local v1    # "eventLoop":Lio/netty/channel/EventLoop;
    .end local v2    # "eventLoopAcquireCount":J
    :cond_1
    :goto_0
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setClientIdentifier(Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;)V
    .locals 0
    .param p1, "clientIdentifier"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    .line 115
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    .line 116
    return-void
.end method

.method public setConnectionConfig(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;)V
    .locals 0
    .param p1, "connectionConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    .line 235
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectionConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    .line 236
    return-void
.end method

.method public setCurrentSslContext(Lio/netty/handler/ssl/SslContext;)V
    .locals 0
    .param p1, "currentSslContext"    # Lio/netty/handler/ssl/SslContext;

    .line 254
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentSslContext:Lio/netty/handler/ssl/SslContext;

    .line 255
    return-void
.end method

.method public setCurrentTransportConfig(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V
    .locals 1
    .param p1, "currentTransportConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 243
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentTransportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentTransportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentSslContext:Lio/netty/handler/ssl/SslContext;

    .line 247
    :cond_0
    return-void
.end method

.method public setRepublishIfSessionExpired(Z)V
    .locals 0
    .param p1, "republishIfSessionExpired"    # Z

    .line 270
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->republishIfSessionExpired:Z

    .line 271
    return-void
.end method

.method public setResubscribeIfSessionExpired(Z)V
    .locals 0
    .param p1, "resubscribeIfSessionExpired"    # Z

    .line 262
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->resubscribeIfSessionExpired:Z

    .line 263
    return-void
.end method
