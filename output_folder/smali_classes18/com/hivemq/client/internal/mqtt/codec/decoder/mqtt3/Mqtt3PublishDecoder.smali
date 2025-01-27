.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;
.super Ljava/lang/Object;
.source "Mqtt3PublishDecoder.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final MIN_REMAINING_LENGTH:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 47
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

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .locals 9
    .param p1, "flags"    # I
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "context"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
        }
    .end annotation

    .line 54
    and-int/lit8 v0, p1, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 55
    .local v0, "dup":Z
    :goto_0
    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->decodePublishQos(IZ)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v3

    .line 56
    .local v3, "qos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 58
    .local v1, "retain":Z
    :goto_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    .line 62
    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v4

    .line 63
    .local v4, "topic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    if-eqz v4, :cond_3

    .line 67
    invoke-static {v3, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->decodePublishPacketIdentifier(Lcom/hivemq/client/mqtt/datatypes/MqttQos;Lio/netty/buffer/ByteBuf;)I

    move-result v5

    .line 69
    .local v5, "packetIdentifier":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    .line 70
    .local v6, "payloadLength":I
    const/4 v7, 0x0

    .line 71
    .local v7, "payload":Ljava/nio/ByteBuffer;
    if-lez v6, :cond_2

    .line 72
    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->useDirectBufferPayload()Z

    move-result v8

    invoke-static {v6, v8}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->allocate(IZ)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 73
    invoke-virtual {p2, v7}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 74
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    :cond_2
    invoke-static {v4, v7, v3, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->delegate(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;Z)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v2

    .line 79
    .local v2, "publish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    invoke-static {v2, v5, v0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->statefulDelegate(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;IZ)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object v8

    return-object v8

    .line 64
    .end local v2    # "publish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .end local v5    # "packetIdentifier":I
    .end local v6    # "payloadLength":I
    .end local v7    # "payload":Ljava/nio/ByteBuffer;
    :cond_3
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->malformedTopic()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v2

    throw v2

    .line 59
    .end local v4    # "topic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    :cond_4
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v2

    throw v2
.end method
