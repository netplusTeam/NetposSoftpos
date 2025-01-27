.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder;
.super Ljava/lang/Object;
.source "Mqtt5AuthDecoder.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final FLAGS:I = 0x0

.field private static final MIN_REMAINING_LENGTH:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/MqttMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;
    .locals 16
    .param p1, "flags"    # I
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "context"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
        }
    .end annotation

    .line 58
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    move/from16 v3, p1

    invoke-static {v2, v3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->checkFixedHeaderFlags(II)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_3

    .line 64
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v2

    invoke-static {v2}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    move-result-object v2

    .line 65
    .local v2, "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;
    if-eqz v2, :cond_2

    .line 69
    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->checkPropertyLengthNoPayload(Lio/netty/buffer/ByteBuf;)V

    .line 71
    const/4 v4, 0x0

    .line 72
    .local v4, "method":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    const/4 v5, 0x0

    .line 73
    .local v5, "data":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .line 74
    .local v6, "reasonString":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    const/4 v7, 0x0

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    .line 76
    .end local v4    # "method":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v5    # "data":Ljava/nio/ByteBuffer;
    .end local v6    # "reasonString":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .local v10, "method":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .local v11, "data":Ljava/nio/ByteBuffer;
    .local v12, "reasonString":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .local v13, "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodePropertyIdentifier(Lio/netty/buffer/ByteBuf;)I

    move-result v4

    .line 79
    .local v4, "propertyIdentifier":I
    sparse-switch v4, :sswitch_data_0

    .line 97
    invoke-static {v4}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongProperty(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v5

    throw v5

    .line 93
    :sswitch_0
    invoke-static {v13, v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUserPropertyIfRequested(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;Lio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v5

    .line 94
    .end local v13    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .local v5, "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    move-object v13, v5

    goto :goto_1

    .line 89
    .end local v5    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v13    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    :sswitch_1
    invoke-static {v12, v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeReasonStringIfRequested(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v5

    .line 90
    .end local v12    # "reasonString":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .local v5, "reasonString":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    move-object v12, v5

    goto :goto_1

    .line 85
    .end local v5    # "reasonString":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .restart local v12    # "reasonString":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    :sswitch_2
    invoke-static {v11, v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeAuthData(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 86
    .end local v11    # "data":Ljava/nio/ByteBuffer;
    .local v5, "data":Ljava/nio/ByteBuffer;
    move-object v11, v5

    goto :goto_1

    .line 81
    .end local v5    # "data":Ljava/nio/ByteBuffer;
    .restart local v11    # "data":Ljava/nio/ByteBuffer;
    :sswitch_3
    invoke-static {v10, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeAuthMethod(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v5

    .line 82
    .end local v10    # "method":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .local v5, "method":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    move-object v10, v5

    .line 99
    .end local v4    # "propertyIdentifier":I
    .end local v5    # "method":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .restart local v10    # "method":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    :goto_1
    goto :goto_0

    .line 101
    :cond_0
    if-eqz v10, :cond_1

    .line 106
    invoke-static {v13}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->build(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v14

    .line 108
    .local v14, "userProperties":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    new-instance v15, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    move-object v4, v15

    move-object v5, v2

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v9, v14

    invoke-direct/range {v4 .. v9}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v15

    .line 102
    .end local v14    # "userProperties":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    :cond_1
    new-instance v4, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v6, "must not omit authentication method"

    invoke-direct {v4, v5, v6}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v4

    .line 66
    .end local v10    # "method":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v11    # "data":Ljava/nio/ByteBuffer;
    .end local v12    # "reasonString":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v13    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    :cond_2
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongReasonCode()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v4

    throw v4

    .line 61
    .end local v2    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;
    :cond_3
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v2

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x1f -> :sswitch_1
        0x26 -> :sswitch_0
    .end sparse-switch
.end method
