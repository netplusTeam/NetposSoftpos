.class public Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;
.super Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;
.source "Mqtt3SubAckException.java"


# instance fields
.field private final subAck:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;)V
    .locals 1
    .param p1, "e"    # Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;

    .line 39
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;)V

    .line 40
    iget-object v0, p1, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;->subAck:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;

    iput-object v0, p0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;->subAck:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "subAck"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 34
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3MessageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;->subAck:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;

    .line 36
    return-void
.end method


# virtual methods
.method protected bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;->copy()Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;

    move-result-object v0

    return-object v0
.end method

.method protected copy()Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;
    .locals 1

    .line 45
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;)V

    return-object v0
.end method

.method public bridge synthetic getMqttMessage()Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3Message;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;->getMqttMessage()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;

    move-result-object v0

    return-object v0
.end method

.method public getMqttMessage()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/hivemq/client/mqtt/mqtt3/exceptions/Mqtt3SubAckException;->subAck:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;

    return-object v0
.end method
