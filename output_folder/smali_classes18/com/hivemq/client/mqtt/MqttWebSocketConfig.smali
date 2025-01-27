.class public interface abstract Lcom/hivemq/client/mqtt/MqttWebSocketConfig;
.super Ljava/lang/Object;
.source "MqttWebSocketConfig.java"


# static fields
.field public static final DEFAULT_HANDSHAKE_TIMEOUT_MS:I = 0x2710

.field public static final DEFAULT_MQTT_SUBPROTOCOL:Ljava/lang/String; = "mqtt"

.field public static final DEFAULT_QUERY_STRING:Ljava/lang/String; = ""

.field public static final DEFAULT_SERVER_PATH:Ljava/lang/String; = ""


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder;
    .locals 1

    .line 61
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder;
.end method

.method public abstract getHandshakeTimeoutMs()I
.end method

.method public abstract getQueryString()Ljava/lang/String;
.end method

.method public abstract getServerPath()Ljava/lang/String;
.end method

.method public abstract getSubprotocol()Ljava/lang/String;
.end method
