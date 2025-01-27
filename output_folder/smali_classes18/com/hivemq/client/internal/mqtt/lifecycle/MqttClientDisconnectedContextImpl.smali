.class public Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;
.super Ljava/lang/Object;
.source "MqttClientDisconnectedContextImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientDisconnectedContext;


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final reconnector:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

.field private final source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)V
    .locals 0
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "source"    # Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "reconnector"    # Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 56
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    .line 57
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->cause:Ljava/lang/Throwable;

    .line 58
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->reconnector:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 59
    return-void
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;
    .locals 2
    .param p0, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p1, "source"    # Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "reconnector"    # Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 38
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_3_1_1:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v0, v1, :cond_0

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)V

    return-object v0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getClientConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    return-object v0
.end method

.method public bridge synthetic getClientConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->getClientConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClientConfig()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->getClientConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public getReconnector()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->reconnector:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    return-object v0
.end method

.method public bridge synthetic getReconnector()Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->getReconnector()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReconnector()Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->getReconnector()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    return-object v0
.end method
