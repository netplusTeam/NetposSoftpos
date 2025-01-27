.class public Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;
.super Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
.source "Mqtt5PubAckException.java"


# instance fields
.field private final pubAck:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;)V
    .locals 1
    .param p1, "e"    # Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;

    .line 36
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)V

    .line 37
    iget-object v0, p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;->pubAck:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;

    iput-object v0, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;->pubAck:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;Ljava/lang/String;)V
    .locals 0
    .param p1, "pubAck"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;
    .param p2, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;->pubAck:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;

    .line 33
    return-void
.end method


# virtual methods
.method protected bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;->copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;

    move-result-object v0

    return-object v0
.end method

.method protected copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;
    .locals 1

    .line 42
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;)V

    return-object v0
.end method

.method public bridge synthetic getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;->getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;

    move-result-object v0

    return-object v0
.end method

.method public getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;->pubAck:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;

    return-object v0
.end method
