.class public Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;
.super Ljava/lang/Object;
.source "Mqtt3ClientConnectedContextView.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientConnectedContext;


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

.field private final connAck:Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

.field private final connect:Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;)V
    .locals 0
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;
    .param p2, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;
    .param p3, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    .line 53
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    .line 54
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->connAck:Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    .line 55
    return-void
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;
    .locals 4
    .param p0, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p2, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    .line 39
    new-instance v0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    .line 40
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->of(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    move-result-object v2

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->of(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public getClientConfig()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    return-object v0
.end method

.method public bridge synthetic getClientConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->getClientConfig()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClientConfig()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->getClientConfig()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    move-result-object v0

    return-object v0
.end method

.method public getConnAck()Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->connAck:Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    return-object v0
.end method

.method public bridge synthetic getConnAck()Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->getConnAck()Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    move-result-object v0

    return-object v0
.end method

.method public getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    return-object v0
.end method

.method public bridge synthetic getConnect()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientConnectedContextView;->getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    move-result-object v0

    return-object v0
.end method
