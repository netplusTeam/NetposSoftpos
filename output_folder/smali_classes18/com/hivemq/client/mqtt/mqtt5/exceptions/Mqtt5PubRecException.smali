.class public Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;
.super Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;
.source "Mqtt5PubRecException.java"


# instance fields
.field private final pubRec:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;)V
    .locals 1
    .param p1, "e"    # Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;

    .line 36
    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;)V

    .line 37
    iget-object v0, p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;->pubRec:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;

    iput-object v0, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;->pubRec:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;Ljava/lang/String;)V
    .locals 0
    .param p1, "pubRec"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;
    .param p2, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5MessageException;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;->pubRec:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;

    .line 33
    return-void
.end method


# virtual methods
.method protected bridge synthetic copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;->copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;

    move-result-object v0

    return-object v0
.end method

.method protected copy()Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;
    .locals 1

    .line 42
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;

    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;)V

    return-object v0
.end method

.method public bridge synthetic getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;->getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;

    move-result-object v0

    return-object v0
.end method

.method public getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;->pubRec:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;

    return-object v0
.end method
