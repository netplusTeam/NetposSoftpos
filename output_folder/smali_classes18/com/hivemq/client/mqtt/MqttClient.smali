.class public interface abstract Lcom/hivemq/client/mqtt/MqttClient;
.super Ljava/lang/Object;
.source "MqttClient.java"


# static fields
.field public static final DEFAULT_SERVER_HOST:Ljava/lang/String; = "localhost"

.field public static final DEFAULT_SERVER_PORT:I = 0x75b

.field public static final DEFAULT_SERVER_PORT_SSL:I = 0x22b3

.field public static final DEFAULT_SERVER_PORT_WEBSOCKET:I = 0x50

.field public static final DEFAULT_SERVER_PORT_WEBSOCKET_SSL:I = 0x1bb


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/MqttClientBuilder;
    .locals 1

    .line 59
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
.end method

.method public getState()Lcom/hivemq/client/mqtt/MqttClientState;
    .locals 1

    .line 72
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/MqttClient;->getConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/MqttClientConfig;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    return-object v0
.end method
