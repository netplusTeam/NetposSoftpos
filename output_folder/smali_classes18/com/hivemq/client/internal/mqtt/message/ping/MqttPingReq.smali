.class public Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;
.super Ljava/lang/Object;
.source "MqttPingReq.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/message/MqttMessage;
.implements Lcom/hivemq/client/mqtt/mqtt5/message/ping/Mqtt5PingReq;


# static fields
.field public static final INSTANCE:Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;->INSTANCE:Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 48
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PINGREQ:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->ordinal()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "MqttPingReq{}"

    return-object v0
.end method
