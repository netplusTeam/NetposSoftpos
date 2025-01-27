.class public Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;
.super Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
.source "MqttRxClientBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<",
        "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;"
    }
.end annotation


# instance fields
.field private advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

.field private enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

.field private simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

.field private willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;-><init>()V

    .line 41
    sget-object v0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->DEFAULT:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<",
            "*>;)V"
        }
    .end annotation

    .line 49
    .local p1, "clientBuilder":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<*>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V

    .line 41
    sget-object v0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->DEFAULT:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    .line 50
    return-void
.end method

.method private buildClientConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .locals 5

    .line 118
    sget-object v0, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    .line 119
    invoke-static {v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->of(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;)Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    move-result-object v2

    .line 118
    invoke-virtual {p0, v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->buildClientConfig(Lcom/hivemq/client/mqtt/MqttVersion;Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;)Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addConnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->addConnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addDisconnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->addDisconnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public advancedConfig(Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;
    .locals 2
    .param p1, "advancedConfig"    # Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfig;

    .line 59
    const-class v0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    const-string v1, "Advanced config"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    .line 60
    return-object p0
.end method

.method public advancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested<",
            "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic advancedConfig(Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfig;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->advancedConfig(Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic advancedConfig()Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilder$Nested;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->advancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic automaticReconnect(Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->automaticReconnect(Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic automaticReconnect()Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder$Nested;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->automaticReconnect()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic automaticReconnectWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->automaticReconnectWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object v0
.end method

.method public build()Lcom/hivemq/client/internal/mqtt/MqttRxClient;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->buildRx()Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5Client;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->build()Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    move-result-object v0

    return-object v0
.end method

.method public buildAsync()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->buildRx()Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->toAsync()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildAsync()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->buildAsync()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    move-result-object v0

    return-object v0
.end method

.method public buildBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->buildRx()Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->toBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildBlocking()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->buildBlocking()Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    move-result-object v0

    return-object v0
.end method

.method public buildRx()Lcom/hivemq/client/internal/mqtt/MqttRxClient;
    .locals 2

    .line 104
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->buildClientConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    return-object v0
.end method

.method public bridge synthetic buildRx()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5RxClient;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->buildRx()Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    move-result-object v0

    return-object v0
.end method

.method public enhancedAuth(Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;
    .locals 0
    .param p1, "enhancedAuthMechanism"    # Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    .line 81
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    .line 82
    return-object p0
.end method

.method public bridge synthetic enhancedAuth(Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->enhancedAuth(Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic executorConfig(Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig(Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic executorConfig()Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilder$Nested;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic identifier(Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier(Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic identifier(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method protected bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;
    .locals 0

    .line 54
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverHost(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverPort(I)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;
    .locals 2
    .param p1, "simpleAuth"    # Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;

    .line 70
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    const-string v1, "Simple auth"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplementedOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 71
    return-object p0
.end method

.method public simpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested<",
            "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic simpleAuth()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Nested;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->simpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sslConfig()Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder$Nested;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslConfig()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sslWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object v0
.end method

.method public bridge synthetic transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic transportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder$Nested;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic webSocketConfig()Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder$Nested;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketConfig()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic webSocketWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object v0
.end method

.method public willPublish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;
    .locals 2
    .param p1, "willPublish"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    .line 87
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 88
    const-string v1, "Will publish"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    .line 89
    return-object p0
.end method

.method public willPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillNested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillNested<",
            "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillNested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillNested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic willPublish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->willPublish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic willPublish()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Nested;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;->willPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillNested;

    move-result-object v0

    return-object v0
.end method
