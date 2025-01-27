.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "MqttDecoder.java"


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ConnectionScope;
.end annotation


# static fields
.field private static final MIN_FIXED_HEADER_LENGTH:I = 0x2

.field public static final NAME:Ljava/lang/String; = "decoder"


# instance fields
.field private final context:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;

.field private final decoders:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V
    .locals 11
    .param p1, "decoders"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;
    .param p2, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p3, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 55
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;->decoders:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;

    .line 58
    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    move-result-object v0

    .line 59
    .local v0, "restrictions":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;
    new-instance v10, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getMaximumPacketSize()I

    move-result v2

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getTopicAliasMaximum()I

    move-result v3

    .line 60
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestProblemInformation()Z

    move-result v4

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestResponseInformation()Z

    move-result v5

    .line 61
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->isValidatePayloadFormat()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;-><init>(IIZZZZZZ)V

    iput-object v10, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;->context:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;

    .line 62
    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 16
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    .line 73
    .local v3, "readerIndexBeforeFixedHeader":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v4

    .line 74
    .local v4, "fixedHeader":S
    shr-int/lit8 v5, v4, 0x4

    .line 75
    .local v5, "messageType":I
    and-int/lit8 v6, v4, 0xf

    .line 76
    .local v6, "flags":I
    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->decode(Lio/netty/buffer/ByteBuf;)I

    move-result v7

    .line 79
    .local v7, "remainingLength":I
    if-gez v7, :cond_2

    .line 80
    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 81
    :try_start_0
    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 82
    return-void

    .line 84
    :cond_1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v8, "malformed remaining length"

    invoke-direct {v0, v8}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    .end local v3    # "readerIndexBeforeFixedHeader":I
    .end local v4    # "fixedHeader":S
    .end local v5    # "messageType":I
    .end local v6    # "flags":I
    .end local v7    # "remainingLength":I
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0

    .line 87
    .restart local v3    # "readerIndexBeforeFixedHeader":I
    .restart local v4    # "fixedHeader":S
    .restart local v5    # "messageType":I
    .restart local v6    # "flags":I
    .restart local v7    # "remainingLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 88
    .local v0, "readerIndexAfterFixedHeader":I
    sub-int v8, v0, v3

    .line 89
    .local v8, "fixedHeaderLength":I
    add-int v9, v8, v7

    .line 91
    .local v9, "packetSize":I
    iget-object v10, v1, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;->context:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;

    invoke-virtual {v10}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->getMaximumPacketSize()I

    move-result v10

    if-gt v9, v10, :cond_5

    .line 96
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v10

    .line 97
    .local v10, "writerIndex":I
    add-int v11, v0, v7

    if-ge v10, v11, :cond_3

    .line 98
    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 99
    return-void

    .line 102
    :cond_3
    iget-object v11, v1, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;->decoders:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;

    invoke-virtual {v11, v5}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->get(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    move-result-object v11

    .line 103
    .local v11, "decoder":Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;
    if-eqz v11, :cond_4

    .line 108
    add-int v12, v0, v7

    invoke-virtual {v2, v12}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 109
    iget-object v12, v1, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;->context:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;

    invoke-interface {v11, v6, v2, v12}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/MqttMessage;

    move-result-object v12
    :try_end_0
    .catch Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v13, p3

    :try_start_1
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v2, v10}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 118
    nop

    .end local v0    # "readerIndexAfterFixedHeader":I
    .end local v8    # "fixedHeaderLength":I
    .end local v9    # "packetSize":I
    .end local v10    # "writerIndex":I
    .end local v11    # "decoder":Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;
    goto :goto_2

    .line 104
    .restart local v0    # "readerIndexAfterFixedHeader":I
    .restart local v8    # "fixedHeaderLength":I
    .restart local v9    # "packetSize":I
    .restart local v10    # "writerIndex":I
    .restart local v11    # "decoder":Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;
    :cond_4
    move-object/from16 v13, p3

    new-instance v12, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v14, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v15, "must not receive this packet type"

    invoke-direct {v12, v14, v15}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .end local v3    # "readerIndexBeforeFixedHeader":I
    .end local v4    # "fixedHeader":S
    .end local v5    # "messageType":I
    .end local v6    # "flags":I
    .end local v7    # "remainingLength":I
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v12

    .line 92
    .end local v10    # "writerIndex":I
    .end local v11    # "decoder":Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;
    .restart local v3    # "readerIndexBeforeFixedHeader":I
    .restart local v4    # "fixedHeader":S
    .restart local v5    # "messageType":I
    .restart local v6    # "flags":I
    .restart local v7    # "remainingLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    move-object/from16 v13, p3

    new-instance v10, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v11, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PACKET_TOO_LARGE:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v12, "incoming packet exceeded maximum packet size"

    invoke-direct {v10, v11, v12}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .end local v3    # "readerIndexBeforeFixedHeader":I
    .end local v4    # "fixedHeader":S
    .end local v5    # "messageType":I
    .end local v6    # "flags":I
    .end local v7    # "remainingLength":I
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v10
    :try_end_1
    .catch Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .end local v0    # "readerIndexAfterFixedHeader":I
    .end local v8    # "fixedHeaderLength":I
    .end local v9    # "packetSize":I
    .restart local v3    # "readerIndexBeforeFixedHeader":I
    .restart local v4    # "fixedHeader":S
    .restart local v5    # "messageType":I
    .restart local v6    # "flags":I
    .restart local v7    # "remainingLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v13, p3

    .line 113
    .local v0, "e":Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 114
    invoke-static {v5}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v8

    .line 115
    .local v8, "type":Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while decoding "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v8, :cond_6

    const-string v10, "UNKNOWN"

    goto :goto_1

    :cond_6
    move-object v10, v8

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 116
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, "message":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v10

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    move-result-object v11

    new-instance v12, Lcom/hivemq/client/mqtt/exceptions/MqttDecodeException;

    invoke-direct {v12, v9}, Lcom/hivemq/client/mqtt/exceptions/MqttDecodeException;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11, v12}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    .line 119
    .end local v0    # "e":Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .end local v8    # "type":Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .end local v9    # "message":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method public isSharable()Z
    .locals 1

    .line 123
    const/4 v0, 0x0

    return v0
.end method
