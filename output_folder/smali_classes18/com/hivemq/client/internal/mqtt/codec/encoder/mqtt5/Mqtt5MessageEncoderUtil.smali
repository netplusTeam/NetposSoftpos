.class final Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;
.super Ljava/lang/Object;
.source "Mqtt5MessageEncoderUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static booleanPropertyEncodedLength(ZZ)I
    .locals 1
    .param p0, "value"    # Z
    .param p1, "defaultValue"    # Z

    .line 53
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method static encodeBooleanProperty(IZZLio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "propertyIdentifier"    # I
    .param p1, "value"    # Z
    .param p2, "defaultValue"    # Z
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;

    .line 110
    if-eq p1, p2, :cond_0

    .line 111
    invoke-virtual {p3, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 112
    invoke-virtual {p3, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 114
    :cond_0
    return-void
.end method

.method static encodeIntProperty(IJJLio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p0, "propertyIdentifier"    # I
    .param p1, "value"    # J
    .param p3, "defaultValue"    # J
    .param p5, "out"    # Lio/netty/buffer/ByteBuf;

    .line 128
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p5, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 130
    long-to-int v0, p1

    invoke-virtual {p5, v0}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 132
    :cond_0
    return-void
.end method

.method static encodeNullableProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "propertyIdentifier"    # I
    .param p1, "string"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    .line 85
    :cond_0
    return-void
.end method

.method static encodeNullableProperty(ILcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p0, "propertyIdentifier"    # I
    .param p1, "payloadFormatIndicator"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 103
    invoke-virtual {p1}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;->getCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 105
    :cond_0
    return-void
.end method

.method static encodeNullableProperty(ILjava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "propertyIdentifier"    # I
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 92
    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encode(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    .line 94
    :cond_0
    return-void
.end method

.method static encodeProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "propertyIdentifier"    # I
    .param p1, "string"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 75
    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 76
    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 77
    return-void
.end method

.method static encodeShortProperty(IIILio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "propertyIdentifier"    # I
    .param p1, "value"    # I
    .param p2, "defaultValue"    # I
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;

    .line 119
    if-eq p1, p2, :cond_0

    .line 120
    invoke-virtual {p3, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 121
    invoke-virtual {p3, p1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 123
    :cond_0
    return-void
.end method

.method static encodeVariableByteIntegerProperty(IIJLio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p0, "propertyIdentifier"    # I
    .param p1, "value"    # I
    .param p2, "defaultValue"    # J
    .param p4, "out"    # Lio/netty/buffer/ByteBuf;

    .line 144
    int-to-long v0, p1

    cmp-long v0, v0, p2

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p0, p1, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeVariableByteIntegerProperty(IILio/netty/buffer/ByteBuf;)V

    .line 147
    :cond_0
    return-void
.end method

.method static encodeVariableByteIntegerProperty(IILio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "propertyIdentifier"    # I
    .param p1, "value"    # I
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 137
    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 138
    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    .line 139
    return-void
.end method

.method static intPropertyEncodedLength(JJ)I
    .locals 1
    .param p0, "value"    # J
    .param p2, "defaultValue"    # J

    .line 61
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0
.end method

.method static nullablePropertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I
    .locals 1
    .param p0, "string"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 41
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->propertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result v0

    :goto_0
    return v0
.end method

.method static nullablePropertyEncodedLength(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;)I
    .locals 1
    .param p0, "payloadFormatIndicator"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    .line 49
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method static nullablePropertyEncodedLength(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 45
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encodedLength(Ljava/nio/ByteBuffer;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method static propertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I
    .locals 1
    .param p0, "string"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 37
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encodedLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static shortPropertyEncodedLength(II)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "defaultValue"    # I

    .line 57
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method static variableByteIntegerPropertyEncodedLength(I)I
    .locals 1
    .param p0, "value"    # I

    .line 65
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encodedLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static variableByteIntegerPropertyEncodedLength(II)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "defaultValue"    # I

    .line 69
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->variableByteIntegerPropertyEncodedLength(I)I

    move-result v0

    :goto_0
    return v0
.end method
