.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;
.super Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;
.source "Mqtt3ClientMessageDecoders.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;)V
    .locals 2
    .param p1, "connAckDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;
    .param p2, "publishDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;
    .param p3, "pubAckDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;
    .param p4, "pubRecDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;
    .param p5, "pubRelDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;
    .param p6, "pubCompDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;
    .param p7, "subAckDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;
    .param p8, "unsubAckDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;
    .param p9, "pingRespDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;-><init>()V

    .line 47
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->CONNACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v1

    aput-object p1, v0, v1

    .line 48
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v1

    aput-object p2, v0, v1

    .line 49
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v1

    aput-object p3, v0, v1

    .line 50
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBREC:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v1

    aput-object p4, v0, v1

    .line 51
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBREL:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v1

    aput-object p5, v0, v1

    .line 52
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBCOMP:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v1

    aput-object p6, v0, v1

    .line 53
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->SUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v1

    aput-object p7, v0, v1

    .line 54
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->UNSUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v1

    aput-object p8, v0, v1

    .line 55
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PINGRESP:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v1

    aput-object p9, v0, v1

    .line 56
    return-void
.end method
