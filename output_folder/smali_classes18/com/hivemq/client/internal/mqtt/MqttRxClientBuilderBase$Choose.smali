.class public Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;
.super Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
.source "MqttRxClientBuilderBase.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Choose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<",
        "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;",
        ">;",
        "Lcom/hivemq/client/mqtt/MqttClientBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addConnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->addConnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addDisconnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->addDisconnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic automaticReconnect(Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->automaticReconnect(Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic automaticReconnect()Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder$Nested;
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->automaticReconnect()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic automaticReconnectWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->automaticReconnectWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object v0
.end method

.method public bridge synthetic executorConfig(Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig(Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic executorConfig()Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilder$Nested;
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic identifier(Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier(Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic identifier(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method protected bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;
    .locals 0

    .line 220
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serverHost(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serverPort(I)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sslConfig()Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder$Nested;
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslConfig()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sslWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object v0
.end method

.method public bridge synthetic transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic transportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder$Nested;
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public useMqttVersion3()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;
    .locals 1

    .line 225
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V

    return-object v0
.end method

.method public bridge synthetic useMqttVersion3()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;->useMqttVersion3()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public useMqttVersion5()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;
    .locals 1

    .line 230
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V

    return-object v0
.end method

.method public bridge synthetic useMqttVersion5()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;->useMqttVersion5()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object p1
.end method

.method public bridge synthetic webSocketConfig()Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder$Nested;
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketConfig()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic webSocketWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    return-object v0
.end method
