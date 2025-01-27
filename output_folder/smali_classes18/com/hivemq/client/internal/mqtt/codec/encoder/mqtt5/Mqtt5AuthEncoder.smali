.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;
.source "Mqtt5AuthEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason<",
        "Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final FIXED_HEADER:I

.field private static final VARIABLE_HEADER_FIXED_LENGTH:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->AUTH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->FIXED_HEADER:I

    return-void
.end method

.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;-><init>()V

    return-void
.end method

.method private encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V
    .locals 1
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "remainingLength"    # I

    .line 73
    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->FIXED_HEADER:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 74
    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    .line 75
    return-void
.end method

.method private encodeProperties(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/buffer/ByteBuf;II)V
    .locals 2
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "propertyLength"    # I
    .param p4, "omittedProperties"    # I

    .line 93
    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    .line 94
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v1, v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    .line 95
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getRawData()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v1, v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILjava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    .line 96
    invoke-virtual {p0, p1, p2, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->encodeOmissibleProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;Lio/netty/buffer/ByteBuf;I)V

    .line 97
    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/buffer/ByteBuf;II)V
    .locals 1
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "propertyLength"    # I
    .param p4, "omittedProperties"    # I

    .line 83
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->getCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->encodeProperties(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/buffer/ByteBuf;II)V

    .line 85
    return-void
.end method


# virtual methods
.method bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;III)V
    .locals 6

    .line 35
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/buffer/ByteBuf;III)V

    return-void
.end method

.method encode(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/buffer/ByteBuf;III)V
    .locals 0
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "remainingLength"    # I
    .param p4, "propertyLength"    # I
    .param p5, "omittedProperties"    # I

    .line 68
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V

    .line 69
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/buffer/ByteBuf;II)V

    .line 70
    return-void
.end method

.method bridge synthetic propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 35
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)I

    move-result p1

    return p1
.end method

.method propertyLength(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)I
    .locals 2
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "propertyLength":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->propertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getRawData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->omissiblePropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    return v0
.end method

.method bridge synthetic remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 35
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)I

    move-result p1

    return p1
.end method

.method remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)I
    .locals 1
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    .line 46
    const/4 v0, 0x1

    return v0
.end method
