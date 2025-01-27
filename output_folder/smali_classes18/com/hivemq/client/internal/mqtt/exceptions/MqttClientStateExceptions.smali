.class public final Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;
.super Ljava/lang/Object;
.source "MqttClientStateExceptions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alreadyConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;
    .locals 2

    .line 32
    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    const-string v1, "MQTT client is already connected or connecting."

    invoke-direct {v0, v1}, Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;
    .locals 2

    .line 28
    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    const-string v1, "MQTT client is not connected."

    invoke-direct {v0, v1}, Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
