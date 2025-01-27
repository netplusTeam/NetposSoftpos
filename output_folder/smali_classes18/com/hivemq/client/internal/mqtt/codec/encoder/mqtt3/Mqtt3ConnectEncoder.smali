.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;
.source "Mqtt3ConnectEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder<",
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final FIXED_HEADER:I

.field private static final PROTOCOL_VERSION:B = 0x4t

.field private static final VARIABLE_HEADER_FIXED_LENGTH:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->CONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->FIXED_HEADER:I

    return-void
.end method

.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;-><init>()V

    return-void
.end method

.method private encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V
    .locals 1
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "remainingLength"    # I

    .line 79
    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->FIXED_HEADER:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 80
    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    .line 81
    return-void
.end method

.method private encodePayload(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 120
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->encodeWillPublish(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;)V

    .line 124
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v0

    .line 125
    .local v0, "simpleAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodeNullable(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    .line 127
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawPassword()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodeNullable(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    .line 129
    :cond_0
    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;)V
    .locals 5
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 84
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 86
    .local v0, "stateless":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    sget-object v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->PROTOCOL_NAME:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 87
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "connectFlags":I
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v2

    .line 92
    .local v2, "simpleAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 94
    or-int/lit16 v1, v1, 0x80

    .line 96
    :cond_0
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawPassword()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 97
    or-int/lit8 v1, v1, 0x40

    .line 101
    :cond_1
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v3

    .line 102
    .local v3, "willPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    if-eqz v3, :cond_2

    .line 103
    or-int/lit8 v1, v1, 0x4

    .line 104
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->getCode()I

    move-result v4

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v1, v4

    .line 105
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->isRetain()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    or-int/lit8 v1, v1, 0x20

    .line 110
    :cond_2
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->isCleanStart()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    or-int/lit8 v1, v1, 0x2

    .line 114
    :cond_3
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 116
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getKeepAlive()I

    move-result v4

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 117
    return-void
.end method

.method private encodeWillPublish(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 132
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    .line 133
    .local v0, "willPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 135
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodeNullable(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lio/netty/buffer/ByteBuf;I)V
    .locals 0

    .line 37
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;I)V

    return-void
.end method

.method encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;I)V
    .locals 0
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "remainingLength"    # I

    .line 73
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;)V

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->encodePayload(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;)V

    .line 76
    return-void
.end method

.method bridge synthetic remainingLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;)I
    .locals 0

    .line 37
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->remainingLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I

    move-result p1

    return p1
.end method

.method remainingLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I
    .locals 5
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    .line 50
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 52
    .local v0, "stateless":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    const/16 v1, 0xa

    .line 54
    .local v1, "remainingLength":I
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->encodedLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 56
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v2

    .line 57
    .local v2, "simpleAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v3

    invoke-static {v3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->nullableEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result v3

    add-int/2addr v1, v3

    .line 59
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawPassword()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->nullableEncodedLength(Ljava/nio/ByteBuffer;)I

    move-result v3

    add-int/2addr v1, v3

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v3

    .line 63
    .local v3, "willPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->encodedLength()I

    move-result v4

    add-int/2addr v1, v4

    .line 65
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedOrEmptyLength(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v1, v4

    .line 68
    :cond_1
    return v1
.end method
