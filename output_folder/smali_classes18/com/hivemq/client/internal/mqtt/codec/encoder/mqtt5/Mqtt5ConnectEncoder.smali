.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;
.source "Mqtt5ConnectEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<",
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final FIXED_HEADER:I

.field private static final PROTOCOL_VERSION:B = 0x5t

.field private static final VARIABLE_HEADER_FIXED_LENGTH:I = 0xa


# instance fields
.field private final publishEncoder:Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->CONNECT:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->FIXED_HEADER:I

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;)V
    .locals 0
    .param p1, "publishEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->publishEncoder:Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;

    .line 59
    return-void
.end method

.method private encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;IIIII)Lio/netty/buffer/ByteBuf;
    .locals 8
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    .param p2, "context"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;
    .param p3, "encodedLength"    # I
    .param p4, "remainingLength"    # I
    .param p5, "propertyLength"    # I
    .param p6, "willPropertyLength"    # I
    .param p7, "omittedProperties"    # I

    .line 93
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, p3, p3}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 94
    .local v0, "out":Lio/netty/buffer/ByteBuf;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;IIII)V

    .line 95
    return-object v0
.end method

.method private encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;IIII)V
    .locals 0
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "remainingLength"    # I
    .param p4, "propertyLength"    # I
    .param p5, "willPropertyLength"    # I
    .param p6, "omittedProperties"    # I

    .line 199
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V

    .line 200
    invoke-direct {p0, p1, p2, p4, p6}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;II)V

    .line 201
    invoke-direct {p0, p1, p2, p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encodePayload(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;I)V

    .line 202
    return-void
.end method

.method private encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V
    .locals 1
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "remainingLength"    # I

    .line 205
    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->FIXED_HEADER:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 206
    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    .line 207
    return-void
.end method

.method private encodePayload(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;I)V
    .locals 3
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "willPropertyLength"    # I

    .line 293
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 295
    .local v0, "stateless":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 297
    invoke-direct {p0, v0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encodeWillPublish(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lio/netty/buffer/ByteBuf;I)V

    .line 299
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v1

    .line 300
    .local v1, "simpleAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodeNullable(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    .line 302
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawPassword()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodeNullable(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    .line 304
    :cond_0
    return-void
.end method

.method private encodeProperties(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;II)V
    .locals 9
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "propertyLength"    # I
    .param p4, "omittedProperties"    # I

    .line 258
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 260
    .local v6, "stateless":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    .line 262
    nop

    .line 263
    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getSessionExpiryInterval()J

    move-result-wide v1

    .line 262
    const/16 v0, 0x11

    const-wide/16 v3, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeIntProperty(IJJLio/netty/buffer/ByteBuf;)V

    .line 265
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getEnhancedAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    move-result-object v7

    .line 266
    .local v7, "enhancedAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;
    if-eqz v7, :cond_0

    .line 267
    const/16 v0, 0x15

    invoke-virtual {v7}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    .line 268
    const/16 v0, 0x16

    invoke-virtual {v7}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;->getRawData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILjava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    .line 271
    :cond_0
    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    move-result-object v8

    .line 272
    .local v8, "restrictions":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    if-eq v8, v0, :cond_1

    .line 273
    const/16 v0, 0x21

    invoke-virtual {v8}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getReceiveMaximum()I

    move-result v1

    const v2, 0xffff

    invoke-static {v0, v1, v2, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeShortProperty(IIILio/netty/buffer/ByteBuf;)V

    .line 275
    const/16 v0, 0x27

    invoke-virtual {v8}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getMaximumPacketSize()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x10000004

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeIntProperty(IJJLio/netty/buffer/ByteBuf;)V

    .line 277
    const/16 v0, 0x22

    invoke-virtual {v8}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getTopicAliasMaximum()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeShortProperty(IIILio/netty/buffer/ByteBuf;)V

    .line 279
    const/16 v0, 0x19

    invoke-virtual {v8}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestResponseInformation()Z

    move-result v1

    invoke-static {v0, v1, v2, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeBooleanProperty(IZZLio/netty/buffer/ByteBuf;)V

    .line 281
    const/16 v0, 0x17

    invoke-virtual {v8}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestProblemInformation()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeBooleanProperty(IZZLio/netty/buffer/ByteBuf;)V

    .line 285
    :cond_1
    if-nez p4, :cond_2

    .line 286
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 288
    :cond_2
    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;II)V
    .locals 5
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "propertyLength"    # I
    .param p4, "omittedProperties"    # I

    .line 215
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 217
    .local v0, "stateless":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    sget-object v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->PROTOCOL_NAME:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 218
    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 220
    const/4 v1, 0x0

    .line 222
    .local v1, "connectFlags":I
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v2

    .line 223
    .local v2, "simpleAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 225
    or-int/lit16 v1, v1, 0x80

    .line 227
    :cond_0
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawPassword()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 228
    or-int/lit8 v1, v1, 0x40

    .line 232
    :cond_1
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v3

    .line 233
    .local v3, "willPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    if-eqz v3, :cond_3

    .line 234
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->isRetain()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 235
    or-int/lit8 v1, v1, 0x20

    .line 237
    :cond_2
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->getCode()I

    move-result v4

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v1, v4

    .line 238
    or-int/lit8 v1, v1, 0x4

    .line 241
    :cond_3
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->isCleanStart()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 242
    or-int/lit8 v1, v1, 0x2

    .line 245
    :cond_4
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 247
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getKeepAlive()I

    move-result v4

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 249
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encodeProperties(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;II)V

    .line 250
    return-void
.end method

.method private encodeWillPublish(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lio/netty/buffer/ByteBuf;I)V
    .locals 8
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "willPropertyLength"    # I

    .line 309
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    .line 310
    .local v0, "willPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    if-eqz v0, :cond_0

    .line 311
    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    .line 313
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->publishEncoder:Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;

    invoke-virtual {v1, v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encodeFixedProperties(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lio/netty/buffer/ByteBuf;)V

    .line 314
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 315
    const/16 v2, 0x18

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getDelayInterval()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeIntProperty(IJJLio/netty/buffer/ByteBuf;)V

    .line 318
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 319
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodeOrEmpty(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    .line 321
    :cond_0
    return-void
.end method

.method private propertyLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I
    .locals 7
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    .line 128
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 130
    .local v0, "stateless":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    const/4 v1, 0x0

    .line 132
    .local v1, "propertyLength":I
    nop

    .line 133
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getSessionExpiryInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->intPropertyEncodedLength(JJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 135
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    move-result-object v2

    .line 136
    .local v2, "restrictions":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;
    sget-object v3, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    if-eq v2, v3, :cond_0

    .line 137
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getReceiveMaximum()I

    move-result v3

    const v4, 0xffff

    invoke-static {v3, v4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->shortPropertyEncodedLength(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 139
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getMaximumPacketSize()I

    move-result v3

    int-to-long v3, v3

    const-wide/32 v5, 0x10000004

    invoke-static {v3, v4, v5, v6}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->intPropertyEncodedLength(JJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 141
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getTopicAliasMaximum()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->shortPropertyEncodedLength(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 143
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestResponseInformation()Z

    move-result v3

    invoke-static {v3, v4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->booleanPropertyEncodedLength(ZZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 145
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestProblemInformation()Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->booleanPropertyEncodedLength(ZZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength()I

    move-result v3

    add-int/2addr v1, v3

    .line 151
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getEnhancedAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    move-result-object v3

    .line 152
    .local v3, "enhancedAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;
    if-eqz v3, :cond_1

    .line 153
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v4

    invoke-static {v4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->propertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result v4

    add-int/2addr v1, v4

    .line 154
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;->getRawData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v1, v4

    .line 157
    :cond_1
    return v1
.end method

.method private propertyLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;II)I
    .locals 1
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    .param p2, "propertyLength"    # I
    .param p3, "omittedProperties"    # I

    .line 163
    packed-switch p3, :pswitch_data_0

    .line 169
    const/4 v0, -0x1

    return v0

    .line 167
    :pswitch_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength()I

    move-result v0

    sub-int v0, p2, v0

    return v0

    .line 165
    :pswitch_1
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private remainingLength(III)I
    .locals 2
    .param p1, "remainingLengthWithoutProperties"    # I
    .param p2, "propertyLength"    # I
    .param p3, "willPropertyLength"    # I

    .line 101
    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedLengthWithHeader(I)I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedLengthWithHeader(I)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 101
    return v0
.end method

.method private remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I
    .locals 5
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    .line 106
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 108
    .local v0, "stateless":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    const/16 v1, 0xa

    .line 110
    .local v1, "remainingLength":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->encodedLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 112
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v2

    .line 113
    .local v2, "simpleAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v3

    invoke-static {v3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->nullableEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result v3

    add-int/2addr v1, v3

    .line 115
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawPassword()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->nullableEncodedLength(Ljava/nio/ByteBuffer;)I

    move-result v3

    add-int/2addr v1, v3

    .line 118
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v3

    .line 119
    .local v3, "willPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    if-eqz v3, :cond_1

    .line 120
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->encodedLength()I

    move-result v4

    add-int/2addr v1, v4

    .line 121
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedOrEmptyLength(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v1, v4

    .line 124
    :cond_1
    return v1
.end method

.method private willPropertyLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I
    .locals 6
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    .line 174
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    .line 175
    .local v0, "willPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    if-nez v0, :cond_0

    .line 176
    const/4 v1, -0x1

    return v1

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->publishEncoder:Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->fixedPropertyLength(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)I

    move-result v1

    .line 180
    .local v1, "willPropertyLength":I
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 181
    nop

    .line 182
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getDelayInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->intPropertyEncodedLength(JJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 184
    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->isInRange(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    return v1

    .line 185
    :cond_1
    new-instance v2, Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    const-string v3, "Will properties exceeded maximum length."

    invoke-direct {v2, v3}, Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 46
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method protected encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 16
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    .param p2, "context"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;

    .line 65
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {p0 .. p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I

    move-result v0

    .line 66
    .local v0, "propertyLength":I
    invoke-direct/range {p0 .. p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->willPropertyLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I

    move-result v10

    .line 67
    .local v10, "willPropertyLength":I
    invoke-direct/range {p0 .. p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I

    move-result v11

    .line 68
    .local v11, "remainingLengthWithoutProperties":I
    invoke-direct {v8, v11, v0, v10}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->remainingLength(III)I

    move-result v1

    .line 69
    .local v1, "remainingLength":I
    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedPacketLength(I)I

    move-result v2

    .line 70
    .local v2, "encodedLength":I
    const/4 v3, 0x0

    move v12, v0

    move v13, v1

    move v14, v2

    move v15, v3

    .line 71
    .end local v0    # "propertyLength":I
    .end local v1    # "remainingLength":I
    .end local v2    # "encodedLength":I
    .local v12, "propertyLength":I
    .local v13, "remainingLength":I
    .local v14, "encodedLength":I
    .local v15, "omittedProperties":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getMaximumPacketSize()I

    move-result v0

    if-le v14, v0, :cond_1

    .line 72
    add-int/lit8 v15, v15, 0x1

    .line 73
    invoke-direct {v8, v9, v12, v15}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;II)I

    move-result v12

    .line 74
    if-ltz v12, :cond_0

    .line 77
    invoke-direct {v8, v11, v12, v10}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->remainingLength(III)I

    move-result v13

    .line 78
    invoke-static {v13}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedPacketLength(I)I

    move-result v14

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getMaximumPacketSize()I

    move-result v0

    invoke-static {v9, v14, v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->maximumPacketSizeExceeded(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;II)Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    move-result-object v0

    throw v0

    .line 80
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move v4, v13

    move v5, v12

    move v6, v10

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;IIIII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method
