.class public Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;
.super Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;
.source "Mqtt3ConnAckException.java"


# instance fields
.field private final connAck:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;)V
    .locals 1
    .param p1, "e"    # Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;

    .line 39
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;)V

    .line 40
    iget-object v0, p1, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;->connAck:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;

    iput-object v0, p0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;->connAck:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "connAck"    # Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 34
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;->connAck:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;

    .line 36
    return-void
.end method


# virtual methods
.method protected bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;->copy()Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;

    move-result-object v0

    return-object v0
.end method

.method protected copy()Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;
    .locals 1

    .line 45
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;)V

    return-object v0
.end method

.method public bridge synthetic getMqttMessage()Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3Message;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;->getMqttMessage()Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;

    move-result-object v0

    return-object v0
.end method

.method public getMqttMessage()Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3ConnAckException;->connAck:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;

    return-object v0
.end method
