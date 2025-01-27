.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;
.source "Mqtt3PublishEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder<",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final FIXED_HEADER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->FIXED_HEADER:I

    return-void
.end method

.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;-><init>()V

    return-void
.end method

.method private encodeFixedHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V
    .locals 3
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "remainingLength"    # I

    .line 94
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 96
    .local v0, "stateless":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    const/4 v1, 0x0

    .line 97
    .local v1, "flags":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->isDup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    or-int/lit8 v1, v1, 0x8

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->getCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    .line 101
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->isRetain()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    or-int/lit8 v1, v1, 0x1

    .line 105
    :cond_1
    sget v2, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->FIXED_HEADER:I

    or-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 107
    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    .line 108
    return-void
.end method

.method private encodePayload(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 121
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 122
    .local v0, "payload":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 125
    :cond_0
    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 111
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 113
    .local v0, "stateless":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 115
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v1, v2, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getPacketIdentifier()I

    move-result v1

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;II)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .param p2, "context"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;
    .param p3, "encodedLength"    # I
    .param p4, "remainingLength"    # I

    .line 71
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 72
    .local v0, "payload":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int v1, p3, v1

    .line 74
    .local v1, "encodedLengthWithoutPayload":I
    nop

    .line 75
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-interface {v2, v1, v1}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 76
    .local v2, "out":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p0, p1, v2, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V

    .line 77
    const/4 v3, 0x2

    new-array v3, v3, [Lio/netty/buffer/ByteBuf;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lio/netty/buffer/Unpooled;->wrappedUnmodifiableBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    return-object v3

    .line 79
    .end local v1    # "encodedLengthWithoutPayload":I
    .end local v2    # "out":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1, p3, p3}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 80
    .local v1, "out":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p0, p1, v1, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V

    .line 81
    return-object v1
.end method

.method bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lio/netty/buffer/ByteBuf;I)V
    .locals 0

    .line 36
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V

    return-void
.end method

.method encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V
    .locals 0
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "remainingLength"    # I

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encodeFixedHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;)V

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encodePayload(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;)V

    .line 89
    return-void
.end method

.method bridge synthetic remainingLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;)I
    .locals 0

    .line 36
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->remainingLength(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)I

    move-result p1

    return p1
.end method

.method remainingLength(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)I
    .locals 4
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    .line 46
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 48
    .local v0, "stateless":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    const/4 v1, 0x0

    .line 50
    .local v1, "remainingLength":I
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->encodedLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 52
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v2

    sget-object v3, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v2, v3, :cond_0

    .line 53
    add-int/lit8 v1, v1, 0x2

    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 57
    .local v2, "payload":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v1, v3

    .line 61
    :cond_1
    return v1
.end method
