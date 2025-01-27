.class public final Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;
.super Ljava/lang/Object;
.source "MqttMessageEncoderUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeNullable(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "string"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 70
    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 73
    :cond_0
    return-void
.end method

.method public static encodeNullable(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 76
    if-eqz p0, :cond_0

    .line 77
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encode(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static encodeOrEmpty(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 82
    if-eqz p0, :cond_0

    .line 83
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encode(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encodeEmpty(Lio/netty/buffer/ByteBuf;)V

    .line 87
    :goto_0
    return-void
.end method

.method public static encodedLengthWithHeader(I)I
    .locals 1
    .param p0, "encodedLength"    # I

    .line 54
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encodedLength(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static encodedOrEmptyLength(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 66
    if-nez p0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encodedLength(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static encodedPacketLength(I)I
    .locals 1
    .param p0, "remainingLength"    # I

    .line 44
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedLengthWithHeader(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static maximumPacketSizeExceeded(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;II)Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;
    .locals 3
    .param p0, "message"    # Lcom/hivemq/client/internal/mqtt/message/MqttMessage;
    .param p1, "encodedLength"    # I
    .param p2, "maxPacketSize"    # I

    .line 92
    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-interface {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessage;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeded maximum packet size, minimal possible encoded length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;-><init>(Ljava/lang/String;)V

    .line 92
    return-object v0
.end method

.method public static nullableEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I
    .locals 1
    .param p0, "string"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 58
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encodedLength()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static nullableEncodedLength(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 62
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encodedLength(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_0
    return v0
.end method
