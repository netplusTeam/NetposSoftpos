.class public Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;
.super Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
.source "Mqtt3RxClientViewBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<",
        "Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;"
    }
.end annotation


# instance fields
.field private simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

.field private willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<",
            "*>;)V"
        }
    .end annotation

    .line 47
    .local p1, "clientBuilder":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<*>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V

    .line 48
    return-void
.end method

.method private buildAsyncDelegate()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->buildRxDelegate()Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->toAsync()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    move-result-object v0

    return-object v0
.end method

.method private buildBlockingDelegate()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->buildRxDelegate()Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->toBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    move-result-object v0

    return-object v0
.end method

.method private buildClientConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .locals 5

    .line 112
    sget-object v0, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_3_1_1:Lcom/hivemq/client/mqtt/MqttVersion;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->DEFAULT:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    .line 113
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->of(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;)Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    move-result-object v2

    .line 112
    invoke-virtual {p0, v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->buildClientConfig(Lcom/hivemq/client/mqtt/MqttVersion;Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;)Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method private buildRxDelegate()Lcom/hivemq/client/internal/mqtt/MqttRxClient;
    .locals 2

    .line 100
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->buildClientConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addConnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->addConnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addDisconnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->addDisconnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic automaticReconnect(Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->automaticReconnect(Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic automaticReconnect()Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder$Nested;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->automaticReconnect()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic automaticReconnectWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->automaticReconnectWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object v0
.end method

.method public build()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->buildRx()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3Client;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->build()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;

    move-result-object v0

    return-object v0
.end method

.method public buildAsync()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;
    .locals 2

    .line 91
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->buildAsyncDelegate()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;)V

    return-object v0
.end method

.method public bridge synthetic buildAsync()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->buildAsync()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;

    move-result-object v0

    return-object v0
.end method

.method public buildBlocking()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;
    .locals 2

    .line 96
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->buildBlockingDelegate()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;)V

    return-object v0
.end method

.method public bridge synthetic buildBlocking()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->buildBlocking()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;

    move-result-object v0

    return-object v0
.end method

.method public buildRx()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;
    .locals 2

    .line 86
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->buildRxDelegate()Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V

    return-object v0
.end method

.method public bridge synthetic buildRx()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->buildRx()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic executorConfig(Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig(Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic executorConfig()Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilder$Nested;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic identifier(Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier(Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic identifier(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method protected bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;
    .locals 0

    .line 76
    return-object p0
.end method

.method public bridge synthetic serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverHost(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverPort(I)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public simpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Nested<",
            "Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public simpleAuth(Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;)Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;
    .locals 2
    .param p1, "simpleAuth"    # Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;

    .line 52
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    .line 53
    const-string v1, "Simple auth"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 54
    return-object p0
.end method

.method public bridge synthetic simpleAuth(Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;)Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->simpleAuth(Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;)Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic simpleAuth()Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilder$Nested;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->simpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sslConfig()Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder$Nested;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslConfig()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sslWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object v0
.end method

.method public bridge synthetic transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic transportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder$Nested;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic webSocketConfig()Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder$Nested;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketConfig()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic webSocketWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object v0
.end method

.method public willPublish()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillNested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillNested<",
            "Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillNested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillNested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public willPublish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;
    .locals 2
    .param p1, "willPublish"    # Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;

    .line 64
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    .line 65
    const-string v1, "Will publish"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    .line 66
    return-object p0
.end method

.method public bridge synthetic willPublish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->willPublish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic willPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3WillPublishBuilder$Nested;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;->willPublish()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillNested;

    move-result-object v0

    return-object v0
.end method
