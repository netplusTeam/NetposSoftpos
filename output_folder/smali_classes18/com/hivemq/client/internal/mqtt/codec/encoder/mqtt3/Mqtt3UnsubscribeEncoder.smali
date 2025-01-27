.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;
.source "Mqtt3UnsubscribeEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder<",
        "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;",
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

    .line 36
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->UNSUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;->FIXED_HEADER:I

    return-void
.end method

.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;-><init>()V

    return-void
.end method

.method private encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V
    .locals 1
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "remainingLength"    # I

    .line 63
    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;->FIXED_HEADER:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 64
    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    .line 65
    return-void
.end method

.method private encodePayload(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;Lio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 72
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->getTopicFilters()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 74
    .local v0, "subscriptions":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 75
    invoke-interface {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-virtual {v2, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 68
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;->getPacketIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 69
    return-void
.end method


# virtual methods
.method bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lio/netty/buffer/ByteBuf;I)V
    .locals 0

    .line 33
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;Lio/netty/buffer/ByteBuf;I)V

    return-void
.end method

.method encode(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;Lio/netty/buffer/ByteBuf;I)V
    .locals 0
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "remainingLength"    # I

    .line 57
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;->encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;Lio/netty/buffer/ByteBuf;)V

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;->encodePayload(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;Lio/netty/buffer/ByteBuf;)V

    .line 60
    return-void
.end method

.method bridge synthetic remainingLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;)I
    .locals 0

    .line 33
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;->remainingLength(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;)I

    move-result p1

    return p1
.end method

.method remainingLength(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;)I
    .locals 4
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;

    .line 44
    const/4 v0, 0x2

    .line 46
    .local v0, "remainingLength":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->getTopicFilters()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    .line 48
    .local v1, "subscriptions":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 49
    invoke-interface {v1, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->encodedLength()I

    move-result v3

    add-int/2addr v0, v3

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "i":I
    :cond_0
    return v0
.end method
