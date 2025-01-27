.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;
.source "Mqtt5ClientMessageEncoders.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubAckEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubRecEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubRelEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubCompEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5DisconnectEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;)V
    .locals 2
    .param p1, "connectEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;
    .param p2, "publishEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;
    .param p3, "pubAckEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubAckEncoder;
    .param p4, "pubRecEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubRecEncoder;
    .param p5, "pubRelEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubRelEncoder;
    .param p6, "pubCompEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PubCompEncoder;
    .param p7, "subscribeEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;
    .param p8, "unsubscribeEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder;
    .param p9, "pingReqEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;
    .param p10, "disconnectEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5DisconnectEncoder;
    .param p11, "authEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->CONNECT:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p1, v0, v1

    .line 50
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p2, v0, v1

    .line 51
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBACK:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p3, v0, v1

    .line 52
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBREC:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p4, v0, v1

    .line 53
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBREL:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p5, v0, v1

    .line 54
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBCOMP:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p6, v0, v1

    .line 55
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->SUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p7, v0, v1

    .line 56
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->UNSUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p8, v0, v1

    .line 57
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PINGREQ:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p9, v0, v1

    .line 58
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->DISCONNECT:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p10, v0, v1

    .line 59
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->AUTH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p11, v0, v1

    .line 60
    return-void
.end method
