.class public Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;
.super Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;
.source "Mqtt3UnsubAckException.java"


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;)V
    .locals 0
    .param p1, "e"    # Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;

    .line 35
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;->copy()Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;

    move-result-object v0

    return-object v0
.end method

.method protected copy()Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;
    .locals 1

    .line 40
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;)V

    return-object v0
.end method

.method public bridge synthetic getMqttMessage()Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3Message;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3UnsubAckException;->getMqttMessage()Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/unsuback/Mqtt3UnsubAck;

    move-result-object v0

    return-object v0
.end method

.method public getMqttMessage()Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/unsuback/Mqtt3UnsubAck;
    .locals 1

    .line 45
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/mqtt3/Mqtt3UnsubAckView;->INSTANCE:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/mqtt3/Mqtt3UnsubAckView;

    return-object v0
.end method
