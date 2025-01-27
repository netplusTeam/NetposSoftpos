.class public Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;
.super Ljava/lang/Object;
.source "MqttClientConnectedContextImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientConnectedContext;


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final connAck:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

.field private final connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 0
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p3, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 54
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 55
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->connAck:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    .line 56
    return-void
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;
    .locals 2
    .param p0, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p2, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    .line 38
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_3_1_1:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v0, v1, :cond_0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    return-object v0
.end method


# virtual methods
.method public getClientConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    return-object v0
.end method

.method public bridge synthetic getClientConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->getClientConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClientConfig()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->getClientConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConnAck()Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->connAck:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    return-object v0
.end method

.method public bridge synthetic getConnAck()Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->getConnAck()Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    move-result-object v0

    return-object v0
.end method

.method public getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    return-object v0
.end method

.method public bridge synthetic getConnect()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    return-object v0
.end method
