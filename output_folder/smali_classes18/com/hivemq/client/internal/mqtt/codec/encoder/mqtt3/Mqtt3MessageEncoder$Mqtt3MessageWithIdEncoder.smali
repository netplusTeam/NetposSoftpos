.class abstract Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;
.source "Mqtt3MessageEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Mqtt3MessageWithIdEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<",
        "TM;>;"
    }
.end annotation


# static fields
.field private static final ENCODED_LENGTH:I = 0x4

.field private static final REMAINING_LENGTH:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder<TM;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;-><init>()V

    return-void
.end method

.method private encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lio/netty/buffer/ByteBuf;",
            ")V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder<TM;>;"
    .local p1, "message":Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;, "TM;"
    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;->encodeFixedHeader(Lio/netty/buffer/ByteBuf;)V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;Lio/netty/buffer/ByteBuf;)V

    .line 84
    return-void
.end method

.method private encodeFixedHeader(Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 87
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder<TM;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;->getFixedHeader()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 88
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 89
    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lio/netty/buffer/ByteBuf;",
            ")V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder<TM;>;"
    .local p1, "message":Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;, "TM;"
    invoke-interface {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;->getPacketIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 93
    return-void
.end method


# virtual methods
.method protected encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p2, "context"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;",
            ")",
            "Lio/netty/buffer/ByteBuf;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder<TM;>;"
    .local p1, "message":Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;, "TM;"
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getMaximumPacketSize()I

    move-result v0

    const/4 v1, 0x4

    if-gt v1, v0, :cond_0

    .line 76
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 77
    .local v0, "out":Lio/netty/buffer/ByteBuf;
    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;Lio/netty/buffer/ByteBuf;)V

    .line 78
    return-object v0

    .line 74
    .end local v0    # "out":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getMaximumPacketSize()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->maximumPacketSizeExceeded(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;II)Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    move-result-object v0

    throw v0
.end method

.method protected bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 66
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder<TM;>;"
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method abstract getFixedHeader()I
.end method
