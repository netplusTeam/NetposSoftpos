.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;
.source "Mqtt5PublishEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder<",
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

    .line 46
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->FIXED_HEADER:I

    return-void
.end method

.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;-><init>()V

    return-void
.end method

.method private encodeFixedHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V
    .locals 3
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "remainingLength"    # I

    .line 142
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 144
    .local v0, "stateless":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    const/4 v1, 0x0

    .line 145
    .local v1, "flags":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->isDup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    or-int/lit8 v1, v1, 0x8

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->getCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    .line 149
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->isRetain()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    or-int/lit8 v1, v1, 0x1

    .line 153
    :cond_1
    sget v2, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->FIXED_HEADER:I

    or-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 155
    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    .line 156
    return-void
.end method

.method private encodePayload(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 209
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 210
    .local v0, "payload":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 213
    :cond_0
    return-void
.end method

.method private encodeProperties(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;II)V
    .locals 4
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "propertyLength"    # I
    .param p4, "omittedProperties"    # I

    .line 185
    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    .line 187
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {p0, v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encodeFixedProperties(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lio/netty/buffer/ByteBuf;)V

    .line 188
    invoke-virtual {p0, p1, p2, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encodeOmissibleProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;I)V

    .line 190
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getTopicAlias()I

    move-result v0

    const/16 v1, 0x23

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeShortProperty(IIILio/netty/buffer/ByteBuf;)V

    .line 192
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getSubscriptionIdentifiers()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    move-result-object v0

    .line 193
    .local v0, "subscriptionIdentifiers":Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 194
    const/16 v2, 0xb

    invoke-interface {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->get(I)I

    move-result v3

    invoke-static {v2, v3, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeVariableByteIntegerProperty(IILio/netty/buffer/ByteBuf;)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;II)V
    .locals 3
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "propertyLength"    # I
    .param p4, "omittedProperties"    # I

    .line 164
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 166
    .local v0, "stateless":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getTopicAlias()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->isNewTopicAlias()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encodeEmpty(Lio/netty/buffer/ByteBuf;)V

    goto :goto_1

    .line 167
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 172
    :goto_1
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v1, v2, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getPacketIdentifier()I

    move-result v1

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 176
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encodeProperties(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;II)V

    .line 177
    return-void
.end method


# virtual methods
.method bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;IIII)Lio/netty/buffer/ByteBuf;
    .locals 7

    .line 43
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;IIII)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;IIII)Lio/netty/buffer/ByteBuf;
    .locals 9
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .param p2, "context"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;
    .param p3, "encodedLength"    # I
    .param p4, "remainingLength"    # I
    .param p5, "propertyLength"    # I
    .param p6, "omittedProperties"    # I

    .line 113
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 114
    .local v0, "payload":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int v1, p3, v1

    .line 116
    .local v1, "encodedLengthWithoutPayload":I
    nop

    .line 117
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-interface {v2, v1, v1}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 118
    .local v2, "out":Lio/netty/buffer/ByteBuf;
    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;III)V

    .line 119
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

    .line 121
    .end local v1    # "encodedLengthWithoutPayload":I
    .end local v2    # "out":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1, p3, p3}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 122
    .local v1, "out":Lio/netty/buffer/ByteBuf;
    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;III)V

    .line 123
    return-object v1
.end method

.method bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;III)V
    .locals 6

    .line 43
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;III)V

    return-void
.end method

.method encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;III)V
    .locals 0
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "remainingLength"    # I
    .param p4, "propertyLength"    # I
    .param p5, "omittedProperties"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encodeFixedHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V

    .line 135
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;II)V

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encodePayload(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;)V

    .line 137
    return-void
.end method

.method final encodeFixedProperties(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lio/netty/buffer/ByteBuf;)V
    .locals 6
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 201
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawMessageExpiryInterval()J

    move-result-wide v1

    const/4 v0, 0x2

    const-wide v3, 0x7fffffffffffffffL

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeIntProperty(IJJLio/netty/buffer/ByteBuf;)V

    .line 202
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayloadFormatIndicator()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lio/netty/buffer/ByteBuf;)V

    .line 203
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawContentType()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    .line 204
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawResponseTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1, v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    .line 205
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawCorrelationData()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1, v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILjava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    .line 206
    return-void
.end method

.method final fixedPropertyLength(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)I
    .locals 5
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "propertyLength":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawMessageExpiryInterval()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->intPropertyEncodedLength(JJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayloadFormatIndicator()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawContentType()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawResponseTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawCorrelationData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    return v0
.end method

.method bridge synthetic propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 43
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)I

    move-result p1

    return p1
.end method

.method propertyLength(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)I
    .locals 4
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "propertyLength":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {p0, v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->fixedPropertyLength(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->omissiblePropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getTopicAlias()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->shortPropertyEncodedLength(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getSubscriptionIdentifiers()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    move-result-object v1

    .line 85
    .local v1, "subscriptionIdentifiers":Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 86
    invoke-interface {v1, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->get(I)I

    move-result v3

    invoke-static {v3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->variableByteIntegerPropertyEncodedLength(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method bridge synthetic remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 43
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)I

    move-result p1

    return p1
.end method

.method remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)I
    .locals 4
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    .line 53
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 55
    .local v0, "stateless":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    const/4 v1, 0x0

    .line 57
    .local v1, "remainingLength":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getTopicAlias()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->isNewTopicAlias()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    const/4 v1, 0x2

    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->encodedLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 63
    :goto_1
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v2

    sget-object v3, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v2, v3, :cond_2

    .line 64
    add-int/lit8 v1, v1, 0x2

    .line 67
    :cond_2
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 68
    .local v2, "payload":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_3

    .line 69
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v1, v3

    .line 72
    :cond_3
    return v1
.end method
