.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;
.source "Mqtt5SubscribeEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final FIXED_HEADER:I

.field private static final VARIABLE_HEADER_FIXED_LENGTH:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->SUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->FIXED_HEADER:I

    return-void
.end method

.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;-><init>()V

    return-void
.end method

.method private encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V
    .locals 1
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "remainingLength"    # I

    .line 85
    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->FIXED_HEADER:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 86
    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    .line 87
    return-void
.end method

.method private encodePayload(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 112
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 114
    .local v0, "subscriptions":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 115
    invoke-interface {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    .line 117
    .local v2, "subscription":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 118
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->encodeSubscriptionOptions()B

    move-result v3

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 114
    .end local v2    # "subscription":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private encodeProperties(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;II)V
    .locals 4
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "propertyLength"    # I
    .param p4, "omittedProperties"    # I

    .line 105
    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    .line 106
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->getSubscriptionIdentifier()I

    move-result v0

    const/16 v1, 0xb

    const-wide/16 v2, -0x1

    invoke-static {v1, v0, v2, v3, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeVariableByteIntegerProperty(IIJLio/netty/buffer/ByteBuf;)V

    .line 108
    invoke-virtual {p0, p1, p2, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->encodeOmissibleProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;I)V

    .line 109
    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;II)V
    .locals 1
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "propertyLength"    # I
    .param p4, "omittedProperties"    # I

    .line 95
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->getPacketIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->encodeProperties(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;II)V

    .line 97
    return-void
.end method


# virtual methods
.method bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;III)V
    .locals 6

    .line 38
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;III)V

    return-void
.end method

.method encode(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;III)V
    .locals 0
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "remainingLength"    # I
    .param p4, "propertyLength"    # I
    .param p5, "omittedProperties"    # I

    .line 79
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V

    .line 80
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;II)V

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->encodePayload(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;)V

    .line 82
    return-void
.end method

.method bridge synthetic propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 38
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;)I

    move-result p1

    return p1
.end method

.method propertyLength(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;)I
    .locals 3
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;

    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "propertyLength":I
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->omissiblePropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->getSubscriptionIdentifier()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->variableByteIntegerPropertyEncodedLength(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    return v0
.end method

.method bridge synthetic remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 38
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;)I

    move-result p1

    return p1
.end method

.method remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;)I
    .locals 4
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;

    .line 49
    const/4 v0, 0x2

    .line 51
    .local v0, "remainingLength":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    .line 53
    .local v1, "subscriptions":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 54
    invoke-interface {v1, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->encodedLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "i":I
    :cond_0
    return v0
.end method
