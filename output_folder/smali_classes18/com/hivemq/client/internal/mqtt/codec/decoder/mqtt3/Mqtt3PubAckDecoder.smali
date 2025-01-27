.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;
.super Ljava/lang/Object;
.source "Mqtt3PubAckDecoder.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final FLAGS:I = 0x0

.field private static final REMAINING_LENGTH:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/MqttMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;
    .locals 2
    .param p1, "flags"    # I
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "context"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->checkFixedHeaderFlags(II)V

    .line 52
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->checkRemainingLength(II)V

    .line 54
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    .line 56
    .local v0, "packetIdentifier":I
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/mqtt3/Mqtt3PubAckView;->delegate(I)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    move-result-object v1

    return-object v1
.end method
