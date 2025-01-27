.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;
.super Ljava/lang/Object;
.source "Mqtt5ConnAckDecoder.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FLAGS:I = 0x0

.field private static final MIN_REMAINING_LENGTH:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 48
    return-void
.end method

.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 55
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

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    .locals 49
    .param p1, "flags"    # I
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "context"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
        }
    .end annotation

    .line 62
    move-object/from16 v0, p2

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->checkFixedHeaderFlags(II)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 65
    move-object/from16 v3, p0

    invoke-virtual {v3, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;->tryDecodeMqtt3(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    move-result-object v1

    return-object v1

    .line 68
    :cond_0
    move-object/from16 v3, p0

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v4

    .line 69
    .local v4, "connAckFlags":S
    and-int/lit16 v5, v4, 0xfe

    if-nez v5, :cond_19

    .line 72
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v1

    .line 74
    .local v5, "sessionPresent":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v7

    invoke-static {v7}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    move-result-object v15

    .line 75
    .local v15, "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    if-eqz v15, :cond_18

    .line 79
    sget-object v7, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    if-eq v15, v7, :cond_3

    if-nez v5, :cond_2

    goto :goto_1

    .line 80
    :cond_2
    new-instance v1, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string/jumbo v6, "session present must be 0 if reason code is not SUCCESS"

    invoke-direct {v1, v6}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_3
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->checkPropertyLengthNoPayload(Lio/netty/buffer/ByteBuf;)V

    .line 85
    const-wide/16 v7, -0x1

    .line 86
    .local v7, "sessionExpiryInterval":J
    const/4 v9, 0x0

    .line 87
    .local v9, "assignedClientIdentifier":Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    const/4 v10, -0x1

    .line 89
    .local v10, "serverKeepAlive":I
    const/4 v11, 0x0

    .line 90
    .local v11, "authMethod":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    const/4 v12, 0x0

    .line 92
    .local v12, "authData":Ljava/nio/ByteBuffer;
    const v13, 0xffff

    .line 93
    .local v13, "receiveMaximum":I
    const/4 v14, 0x0

    .line 94
    .local v14, "receiveMaximumPresent":Z
    const/16 v16, 0x0

    .line 95
    .local v16, "topicAliasMaximum":I
    const/16 v17, 0x0

    .line 96
    .local v17, "topicAliasMaximumPresent":Z
    sget-object v18, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckRestrictions;->DEFAULT_MAXIMUM_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 97
    .local v18, "maximumQos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    const/16 v19, 0x0

    .line 98
    .local v19, "maximumQosPresent":Z
    const/16 v20, 0x1

    .line 99
    .local v20, "retainAvailable":Z
    const/16 v21, 0x0

    .line 100
    .local v21, "retainAvailablePresent":Z
    const v22, 0x10000004

    .line 101
    .local v22, "maximumPacketSize":I
    const/16 v23, 0x0

    .line 102
    .local v23, "maximumPacketSizePresent":Z
    const/16 v24, 0x1

    .line 103
    .local v24, "wildCardSubscriptionAvailable":Z
    const/16 v25, 0x0

    .line 104
    .local v25, "wildCardSubscriptionAvailablePresent":Z
    const/16 v26, 0x1

    .line 105
    .local v26, "subscriptionIdentifiersAvailable":Z
    const/16 v27, 0x0

    .line 106
    .local v27, "subscriptionIdentifiersAvailablePresent":Z
    const/16 v28, 0x1

    .line 107
    .local v28, "sharedSubscriptionAvailable":Z
    const/16 v29, 0x0

    .line 109
    .local v29, "sharedSubscriptionAvailablePresent":Z
    const/16 v30, 0x0

    .line 110
    .local v30, "responseInformation":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    const/16 v31, 0x0

    .line 111
    .local v31, "serverReference":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    const/16 v32, 0x0

    .line 112
    .local v32, "reasonString":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    const/16 v33, 0x0

    .line 114
    .local v33, "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    const/16 v34, 0x0

    move/from16 v41, v4

    move/from16 v42, v5

    move/from16 v1, v21

    move/from16 v35, v23

    move/from16 v36, v24

    move/from16 v37, v25

    move/from16 v38, v26

    move/from16 v39, v27

    move/from16 v40, v28

    move/from16 v6, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    move/from16 v43, v34

    move/from16 v30, v13

    move/from16 v31, v16

    move-object/from16 v32, v18

    move/from16 v33, v20

    move/from16 v34, v22

    move-object/from16 v20, v9

    move v9, v14

    move-wide v13, v7

    move/from16 v8, v17

    move/from16 v7, v19

    move-object/from16 v48, v12

    move v12, v10

    move-object v10, v11

    move-object/from16 v11, v48

    .line 116
    .end local v14    # "receiveMaximumPresent":Z
    .end local v16    # "topicAliasMaximum":I
    .end local v17    # "topicAliasMaximumPresent":Z
    .end local v18    # "maximumQos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .end local v19    # "maximumQosPresent":Z
    .end local v21    # "retainAvailablePresent":Z
    .end local v22    # "maximumPacketSize":I
    .end local v23    # "maximumPacketSizePresent":Z
    .end local v24    # "wildCardSubscriptionAvailable":Z
    .end local v25    # "wildCardSubscriptionAvailablePresent":Z
    .end local v26    # "subscriptionIdentifiersAvailable":Z
    .end local v27    # "subscriptionIdentifiersAvailablePresent":Z
    .end local v28    # "sharedSubscriptionAvailable":Z
    .end local v29    # "sharedSubscriptionAvailablePresent":Z
    .local v1, "retainAvailablePresent":Z
    .local v2, "responseInformation":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .local v3, "serverReference":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .local v4, "reasonString":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .local v5, "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .local v6, "sharedSubscriptionAvailablePresent":Z
    .local v7, "maximumQosPresent":Z
    .local v8, "topicAliasMaximumPresent":Z
    .local v9, "receiveMaximumPresent":Z
    .local v10, "authMethod":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .local v11, "authData":Ljava/nio/ByteBuffer;
    .local v12, "serverKeepAlive":I
    .local v13, "sessionExpiryInterval":J
    .local v20, "assignedClientIdentifier":Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .local v30, "receiveMaximum":I
    .local v31, "topicAliasMaximum":I
    .local v32, "maximumQos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .local v33, "retainAvailable":Z
    .local v34, "maximumPacketSize":I
    .local v35, "maximumPacketSizePresent":Z
    .local v36, "wildCardSubscriptionAvailable":Z
    .local v37, "wildCardSubscriptionAvailablePresent":Z
    .local v38, "subscriptionIdentifiersAvailable":Z
    .local v39, "subscriptionIdentifiersAvailablePresent":Z
    .local v40, "sharedSubscriptionAvailable":Z
    .local v41, "connAckFlags":S
    .local v42, "sessionPresent":Z
    .local v43, "restrictionsPresent":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 117
    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodePropertyIdentifier(Lio/netty/buffer/ByteBuf;)I

    move-result v18

    .line 119
    .local v18, "propertyIdentifier":I
    move-object/from16 v19, v15

    .end local v15    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    .local v19, "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    const-string/jumbo v15, "receive maximum"

    packed-switch v18, :pswitch_data_0

    .line 239
    :pswitch_0
    move-wide v14, v13

    .end local v13    # "sessionExpiryInterval":J
    .local v14, "sessionExpiryInterval":J
    invoke-static/range {v18 .. v18}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongProperty(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v13

    throw v13

    .line 211
    .end local v14    # "sessionExpiryInterval":J
    .restart local v13    # "sessionExpiryInterval":J
    :pswitch_1
    nop

    .line 212
    const-string/jumbo v15, "shared subscription available"

    invoke-static {v6, v15, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->booleanOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z

    move-result v15

    .line 213
    .end local v40    # "sharedSubscriptionAvailable":Z
    .local v15, "sharedSubscriptionAvailable":Z
    const/4 v6, 0x1

    .line 214
    move/from16 v21, v6

    const/4 v6, 0x1

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .local v21, "sharedSubscriptionAvailablePresent":Z
    if-eq v15, v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    or-int v6, v43, v6

    .line 215
    .end local v43    # "restrictionsPresent":Z
    .local v6, "restrictionsPresent":Z
    move/from16 v43, v6

    move-wide/from16 v45, v13

    move/from16 v40, v15

    move/from16 v44, v21

    const/4 v13, 0x1

    move-object/from16 v6, p3

    goto/16 :goto_b

    .line 203
    .end local v15    # "sharedSubscriptionAvailable":Z
    .end local v21    # "sharedSubscriptionAvailablePresent":Z
    .local v6, "sharedSubscriptionAvailablePresent":Z
    .restart local v40    # "sharedSubscriptionAvailable":Z
    .restart local v43    # "restrictionsPresent":Z
    :pswitch_2
    const-string/jumbo v15, "subscription identifier available"

    move/from16 v44, v6

    move/from16 v6, v39

    .end local v39    # "subscriptionIdentifiersAvailablePresent":Z
    .local v6, "subscriptionIdentifiersAvailablePresent":Z
    .local v44, "sharedSubscriptionAvailablePresent":Z
    invoke-static {v6, v15, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->booleanOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z

    move-result v15

    .line 205
    .end local v38    # "subscriptionIdentifiersAvailable":Z
    .local v15, "subscriptionIdentifiersAvailable":Z
    const/4 v6, 0x1

    .line 206
    move/from16 v21, v6

    const/4 v6, 0x1

    .end local v6    # "subscriptionIdentifiersAvailablePresent":Z
    .local v21, "subscriptionIdentifiersAvailablePresent":Z
    if-eq v15, v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    or-int v6, v43, v6

    .line 208
    .end local v43    # "restrictionsPresent":Z
    .local v6, "restrictionsPresent":Z
    move/from16 v43, v6

    move-wide/from16 v45, v13

    move/from16 v38, v15

    move/from16 v39, v21

    const/4 v13, 0x1

    move-object/from16 v6, p3

    goto/16 :goto_b

    .line 195
    .end local v15    # "subscriptionIdentifiersAvailable":Z
    .end local v21    # "subscriptionIdentifiersAvailablePresent":Z
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .local v6, "sharedSubscriptionAvailablePresent":Z
    .restart local v38    # "subscriptionIdentifiersAvailable":Z
    .restart local v39    # "subscriptionIdentifiersAvailablePresent":Z
    .restart local v43    # "restrictionsPresent":Z
    :pswitch_3
    move/from16 v44, v6

    move/from16 v6, v39

    .line 196
    .end local v39    # "subscriptionIdentifiersAvailablePresent":Z
    .local v6, "subscriptionIdentifiersAvailablePresent":Z
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    const-string/jumbo v15, "wildcard subscription available"

    move/from16 v6, v37

    .end local v37    # "wildCardSubscriptionAvailablePresent":Z
    .local v6, "wildCardSubscriptionAvailablePresent":Z
    .restart local v39    # "subscriptionIdentifiersAvailablePresent":Z
    invoke-static {v6, v15, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->booleanOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z

    move-result v15

    .line 198
    .end local v36    # "wildCardSubscriptionAvailable":Z
    .local v15, "wildCardSubscriptionAvailable":Z
    const/4 v6, 0x1

    .line 199
    move/from16 v21, v6

    const/4 v6, 0x1

    .end local v6    # "wildCardSubscriptionAvailablePresent":Z
    .local v21, "wildCardSubscriptionAvailablePresent":Z
    if-eq v15, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    or-int v6, v43, v6

    .line 200
    .end local v43    # "restrictionsPresent":Z
    .local v6, "restrictionsPresent":Z
    move/from16 v43, v6

    move-wide/from16 v45, v13

    move/from16 v36, v15

    move/from16 v37, v21

    const/4 v13, 0x1

    move-object/from16 v6, p3

    goto/16 :goto_b

    .line 181
    .end local v15    # "wildCardSubscriptionAvailable":Z
    .end local v21    # "wildCardSubscriptionAvailablePresent":Z
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .local v6, "sharedSubscriptionAvailablePresent":Z
    .restart local v36    # "wildCardSubscriptionAvailable":Z
    .restart local v37    # "wildCardSubscriptionAvailablePresent":Z
    .restart local v43    # "restrictionsPresent":Z
    :pswitch_4
    move/from16 v44, v6

    move/from16 v6, v37

    .line 182
    .end local v37    # "wildCardSubscriptionAvailablePresent":Z
    .local v6, "wildCardSubscriptionAvailablePresent":Z
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    const-string v15, "maximum packet size"

    move-wide/from16 v45, v13

    move/from16 v6, v35

    .end local v13    # "sessionExpiryInterval":J
    .end local v35    # "maximumPacketSizePresent":Z
    .local v6, "maximumPacketSizePresent":Z
    .restart local v37    # "wildCardSubscriptionAvailablePresent":Z
    .local v45, "sessionExpiryInterval":J
    invoke-static {v6, v15, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedIntOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)J

    move-result-wide v13

    .line 183
    .local v13, "maximumPacketSizeTemp":J
    const-wide/16 v21, 0x0

    cmp-long v15, v13, v21

    if-eqz v15, :cond_8

    .line 187
    const/4 v6, 0x1

    .line 188
    const-wide/32 v21, 0x10000004

    cmp-long v15, v13, v21

    if-gez v15, :cond_7

    .line 189
    long-to-int v15, v13

    .line 190
    .end local v34    # "maximumPacketSize":I
    .local v15, "maximumPacketSize":I
    const/16 v21, 0x1

    move/from16 v35, v6

    move/from16 v34, v15

    move/from16 v43, v21

    const/4 v13, 0x1

    move-object/from16 v6, p3

    .end local v43    # "restrictionsPresent":Z
    .local v21, "restrictionsPresent":Z
    goto/16 :goto_b

    .line 188
    .end local v15    # "maximumPacketSize":I
    .end local v21    # "restrictionsPresent":Z
    .restart local v34    # "maximumPacketSize":I
    .restart local v43    # "restrictionsPresent":Z
    :cond_7
    move/from16 v35, v6

    const/4 v13, 0x1

    move-object/from16 v6, p3

    goto/16 :goto_b

    .line 184
    :cond_8
    new-instance v15, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move/from16 v35, v6

    .end local v6    # "maximumPacketSizePresent":Z
    .restart local v35    # "maximumPacketSizePresent":Z
    sget-object v6, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    move-wide/from16 v21, v13

    .end local v13    # "maximumPacketSizeTemp":J
    .local v21, "maximumPacketSizeTemp":J
    const-string v13, "maximum packet size must not be 0"

    invoke-direct {v15, v6, v13}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v15

    .line 235
    .end local v21    # "maximumPacketSizeTemp":J
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .local v6, "sharedSubscriptionAvailablePresent":Z
    .local v13, "sessionExpiryInterval":J
    :pswitch_5
    move/from16 v44, v6

    move-wide/from16 v45, v13

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    .restart local v45    # "sessionExpiryInterval":J
    invoke-static {v5, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUserProperty(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v5

    .line 236
    move-object/from16 v6, p3

    const/4 v13, 0x1

    goto/16 :goto_b

    .line 175
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .restart local v6    # "sharedSubscriptionAvailablePresent":Z
    .restart local v13    # "sessionExpiryInterval":J
    :pswitch_6
    move/from16 v44, v6

    move-wide/from16 v45, v13

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    .restart local v45    # "sessionExpiryInterval":J
    const-string/jumbo v6, "retain available"

    invoke-static {v1, v6, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->booleanOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z

    move-result v6

    .line 176
    .end local v33    # "retainAvailable":Z
    .local v6, "retainAvailable":Z
    const/4 v1, 0x1

    .line 177
    const/4 v13, 0x1

    if-eq v6, v13, :cond_9

    const/4 v13, 0x1

    goto :goto_6

    :cond_9
    const/4 v13, 0x0

    :goto_6
    or-int v13, v43, v13

    .line 178
    .end local v43    # "restrictionsPresent":Z
    .local v13, "restrictionsPresent":Z
    move/from16 v33, v6

    move/from16 v43, v13

    const/4 v13, 0x1

    move-object/from16 v6, p3

    goto/16 :goto_b

    .line 164
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .local v6, "sharedSubscriptionAvailablePresent":Z
    .local v13, "sessionExpiryInterval":J
    .restart local v33    # "retainAvailable":Z
    .restart local v43    # "restrictionsPresent":Z
    :pswitch_7
    move/from16 v44, v6

    move-wide/from16 v45, v13

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    .restart local v45    # "sessionExpiryInterval":J
    const-string v6, "maximum Qos"

    invoke-static {v7, v6, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedByteOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)S

    move-result v6

    .line 165
    .local v6, "maximumQosCode":S
    if-eqz v6, :cond_b

    const/4 v13, 0x1

    if-ne v6, v13, :cond_a

    goto :goto_7

    .line 166
    :cond_a
    new-instance v13, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v14, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string/jumbo v15, "wrong maximum Qos"

    invoke-direct {v13, v14, v15}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v13

    .line 165
    :cond_b
    const/4 v13, 0x1

    .line 168
    :goto_7
    invoke-static {v6}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->fromCode(I)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v14

    .line 169
    .end local v32    # "maximumQos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .local v14, "maximumQos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    if-eqz v14, :cond_d

    .line 170
    const/4 v7, 0x1

    .line 171
    sget-object v15, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckRestrictions;->DEFAULT_MAXIMUM_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v14, v15, :cond_c

    move v15, v13

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    :goto_8
    or-int v15, v43, v15

    .line 172
    .end local v43    # "restrictionsPresent":Z
    .local v15, "restrictionsPresent":Z
    move-object/from16 v6, p3

    move-object/from16 v32, v14

    move/from16 v43, v15

    goto/16 :goto_b

    .line 169
    .end local v15    # "restrictionsPresent":Z
    .restart local v43    # "restrictionsPresent":Z
    :cond_d
    new-instance v13, Ljava/lang/AssertionError;

    const-string v15, "maximumQosCode = 0 or = 1"

    invoke-direct {v13, v15}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 158
    .end local v14    # "maximumQos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .local v6, "sharedSubscriptionAvailablePresent":Z
    .restart local v13    # "sessionExpiryInterval":J
    .restart local v32    # "maximumQos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    :pswitch_8
    move/from16 v44, v6

    move-wide/from16 v45, v13

    const/4 v13, 0x1

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    .restart local v45    # "sessionExpiryInterval":J
    invoke-static {v8, v15, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedShortOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)I

    move-result v6

    .line 159
    .end local v31    # "topicAliasMaximum":I
    .local v6, "topicAliasMaximum":I
    const/4 v8, 0x1

    .line 160
    if-eqz v6, :cond_e

    move v14, v13

    goto :goto_9

    :cond_e
    const/4 v14, 0x0

    :goto_9
    or-int v14, v43, v14

    .line 161
    .end local v43    # "restrictionsPresent":Z
    .local v14, "restrictionsPresent":Z
    move/from16 v31, v6

    move/from16 v43, v14

    move-object/from16 v6, p3

    goto/16 :goto_b

    .line 148
    .end local v14    # "restrictionsPresent":Z
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .local v6, "sharedSubscriptionAvailablePresent":Z
    .restart local v13    # "sessionExpiryInterval":J
    .restart local v31    # "topicAliasMaximum":I
    .restart local v43    # "restrictionsPresent":Z
    :pswitch_9
    move/from16 v44, v6

    move-wide/from16 v45, v13

    const/4 v13, 0x1

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    .restart local v45    # "sessionExpiryInterval":J
    invoke-static {v9, v15, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedShortOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)I

    move-result v6

    .line 149
    .end local v30    # "receiveMaximum":I
    .local v6, "receiveMaximum":I
    if-eqz v6, :cond_10

    .line 153
    const/4 v9, 0x1

    .line 154
    const v14, 0xffff

    if-eq v6, v14, :cond_f

    move v14, v13

    goto :goto_a

    :cond_f
    const/4 v14, 0x0

    :goto_a
    or-int v14, v43, v14

    .line 155
    .end local v43    # "restrictionsPresent":Z
    .restart local v14    # "restrictionsPresent":Z
    move/from16 v30, v6

    move/from16 v43, v14

    move-object/from16 v6, p3

    goto/16 :goto_b

    .line 150
    .end local v14    # "restrictionsPresent":Z
    .restart local v43    # "restrictionsPresent":Z
    :cond_10
    new-instance v13, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v14, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string/jumbo v15, "receive maximum must not be 0"

    invoke-direct {v13, v14, v15}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v13

    .line 231
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .local v6, "sharedSubscriptionAvailablePresent":Z
    .restart local v13    # "sessionExpiryInterval":J
    .restart local v30    # "receiveMaximum":I
    :pswitch_a
    move/from16 v44, v6

    move-wide/from16 v45, v13

    const/4 v13, 0x1

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    .restart local v45    # "sessionExpiryInterval":J
    invoke-static {v4, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeReasonString(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v4

    .line 232
    move-object/from16 v6, p3

    goto/16 :goto_b

    .line 227
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .restart local v6    # "sharedSubscriptionAvailablePresent":Z
    .restart local v13    # "sessionExpiryInterval":J
    :pswitch_b
    move/from16 v44, v6

    move-wide/from16 v45, v13

    const/4 v13, 0x1

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    .restart local v45    # "sessionExpiryInterval":J
    invoke-static {v3, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeServerReference(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v3

    .line 228
    move-object/from16 v6, p3

    goto/16 :goto_b

    .line 218
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .restart local v6    # "sharedSubscriptionAvailablePresent":Z
    .restart local v13    # "sessionExpiryInterval":J
    :pswitch_c
    move/from16 v44, v6

    move-wide/from16 v45, v13

    const/4 v13, 0x1

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    .restart local v45    # "sessionExpiryInterval":J
    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->isResponseInformationRequested()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 223
    const-string/jumbo v6, "response information"

    invoke-static {v2, v6, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUTF8StringOnlyOnce(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v2

    .line 224
    move-object/from16 v6, p3

    goto :goto_b

    .line 219
    :cond_11
    new-instance v6, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v13, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string/jumbo v14, "response information must not be included if it was not requested"

    invoke-direct {v6, v13, v14}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v6

    .line 144
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .restart local v6    # "sharedSubscriptionAvailablePresent":Z
    .restart local v13    # "sessionExpiryInterval":J
    :pswitch_d
    move/from16 v44, v6

    move-wide/from16 v45, v13

    const/4 v13, 0x1

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    .restart local v45    # "sessionExpiryInterval":J
    move-object/from16 v6, p3

    invoke-static {v11, v0, v6}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeAuthData(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 145
    goto :goto_b

    .line 140
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .restart local v6    # "sharedSubscriptionAvailablePresent":Z
    .restart local v13    # "sessionExpiryInterval":J
    :pswitch_e
    move/from16 v44, v6

    move-wide/from16 v45, v13

    const/4 v13, 0x1

    move-object/from16 v6, p3

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    .restart local v45    # "sessionExpiryInterval":J
    invoke-static {v10, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeAuthMethod(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v10

    .line 141
    goto :goto_b

    .line 135
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .restart local v6    # "sharedSubscriptionAvailablePresent":Z
    .restart local v13    # "sessionExpiryInterval":J
    :pswitch_f
    move/from16 v44, v6

    move-wide/from16 v45, v13

    const/4 v13, 0x1

    move-object/from16 v6, p3

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    .restart local v45    # "sessionExpiryInterval":J
    const/4 v14, -0x1

    .line 136
    const-string/jumbo v15, "server keep alive"

    invoke-static {v12, v14, v15, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedShortOnlyOnce(IILjava/lang/String;Lio/netty/buffer/ByteBuf;)I

    move-result v12

    .line 137
    goto :goto_b

    .line 125
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .restart local v6    # "sharedSubscriptionAvailablePresent":Z
    .restart local v13    # "sessionExpiryInterval":J
    :pswitch_10
    move/from16 v44, v6

    move-wide/from16 v45, v13

    const/4 v13, 0x1

    move-object/from16 v6, p3

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    .restart local v45    # "sessionExpiryInterval":J
    const-string v14, "client identifier"

    if-nez v20, :cond_13

    .line 128
    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v15

    .line 129
    .end local v20    # "assignedClientIdentifier":Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .local v15, "assignedClientIdentifier":Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    if-eqz v15, :cond_12

    move-object/from16 v20, v15

    goto :goto_b

    .line 130
    :cond_12
    invoke-static {v14}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->malformedUTF8String(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v13

    throw v13

    .line 126
    .end local v15    # "assignedClientIdentifier":Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .restart local v20    # "assignedClientIdentifier":Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    :cond_13
    invoke-static {v14}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->moreThanOnce(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v13

    throw v13

    .line 121
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .restart local v6    # "sharedSubscriptionAvailablePresent":Z
    .restart local v13    # "sessionExpiryInterval":J
    :pswitch_11
    move/from16 v44, v6

    move-wide/from16 v45, v13

    const/4 v13, 0x1

    move-object/from16 v6, p3

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    .restart local v45    # "sessionExpiryInterval":J
    move-wide/from16 v14, v45

    .end local v45    # "sessionExpiryInterval":J
    .local v14, "sessionExpiryInterval":J
    invoke-static {v14, v15, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeSessionExpiryInterval(JLio/netty/buffer/ByteBuf;)J

    move-result-wide v14

    .line 122
    move-wide/from16 v45, v14

    .line 241
    .end local v14    # "sessionExpiryInterval":J
    .end local v18    # "propertyIdentifier":I
    .restart local v45    # "sessionExpiryInterval":J
    :goto_b
    move-object/from16 v15, v19

    move/from16 v6, v44

    move-wide/from16 v13, v45

    goto/16 :goto_2

    .line 243
    .end local v19    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .end local v45    # "sessionExpiryInterval":J
    .restart local v6    # "sharedSubscriptionAvailablePresent":Z
    .restart local v13    # "sessionExpiryInterval":J
    .local v15, "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    :cond_14
    move/from16 v44, v6

    move-object/from16 v19, v15

    move-object/from16 v6, p3

    move-wide v14, v13

    .end local v6    # "sharedSubscriptionAvailablePresent":Z
    .end local v13    # "sessionExpiryInterval":J
    .end local v15    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    .restart local v14    # "sessionExpiryInterval":J
    .restart local v19    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    .restart local v44    # "sharedSubscriptionAvailablePresent":Z
    const/4 v13, 0x0

    .line 244
    .local v13, "enhancedAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;
    if-eqz v10, :cond_15

    .line 245
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    invoke-direct {v0, v10, v11}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;)V

    move-object v13, v0

    goto :goto_c

    .line 246
    :cond_15
    if-nez v11, :cond_17

    move-object v0, v13

    .line 251
    .end local v13    # "enhancedAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;
    .local v0, "enhancedAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;
    :goto_c
    sget-object v13, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    .line 252
    .local v13, "restrictions":Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;
    if-eqz v43, :cond_16

    .line 253
    new-instance v16, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    move-object/from16 v21, v16

    move/from16 v22, v30

    move/from16 v23, v34

    move/from16 v24, v31

    move-object/from16 v25, v32

    move/from16 v26, v33

    move/from16 v27, v36

    move/from16 v28, v40

    move/from16 v29, v38

    invoke-direct/range {v21 .. v29}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;-><init>(IIILcom/hivemq/client/mqtt/datatypes/MqttQos;ZZZZ)V

    move-object/from16 v13, v16

    move-object/from16 v21, v13

    goto :goto_d

    .line 252
    :cond_16
    move-object/from16 v21, v13

    .line 258
    .end local v13    # "restrictions":Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;
    .local v21, "restrictions":Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;
    :goto_d
    invoke-static {v5}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->build(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v22

    .line 260
    .local v22, "userProperties":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    new-instance v23, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    move/from16 v24, v7

    .end local v7    # "maximumQosPresent":Z
    .local v24, "maximumQosPresent":Z
    move-object/from16 v7, v23

    move/from16 v25, v8

    .end local v8    # "topicAliasMaximumPresent":Z
    .local v25, "topicAliasMaximumPresent":Z
    move-object/from16 v8, v19

    move/from16 v26, v9

    .end local v9    # "receiveMaximumPresent":Z
    .local v26, "receiveMaximumPresent":Z
    move/from16 v9, v42

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    .end local v10    # "authMethod":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v11    # "authData":Ljava/nio/ByteBuffer;
    .local v27, "authMethod":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .local v28, "authData":Ljava/nio/ByteBuffer;
    move-wide v10, v14

    move/from16 v29, v12

    .end local v12    # "serverKeepAlive":I
    .local v29, "serverKeepAlive":I
    move-wide/from16 v45, v14

    .end local v14    # "sessionExpiryInterval":J
    .restart local v45    # "sessionExpiryInterval":J
    move-object/from16 v13, v20

    move-object v14, v0

    move-object/from16 v47, v19

    .end local v19    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    .local v47, "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    move-object/from16 v15, v21

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v22

    invoke-direct/range {v7 .. v19}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;ZJILcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v23

    .line 247
    .end local v0    # "enhancedAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;
    .end local v21    # "restrictions":Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;
    .end local v22    # "userProperties":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .end local v24    # "maximumQosPresent":Z
    .end local v25    # "topicAliasMaximumPresent":Z
    .end local v26    # "receiveMaximumPresent":Z
    .end local v27    # "authMethod":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v28    # "authData":Ljava/nio/ByteBuffer;
    .end local v29    # "serverKeepAlive":I
    .end local v45    # "sessionExpiryInterval":J
    .end local v47    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    .restart local v7    # "maximumQosPresent":Z
    .restart local v8    # "topicAliasMaximumPresent":Z
    .restart local v9    # "receiveMaximumPresent":Z
    .restart local v10    # "authMethod":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .restart local v11    # "authData":Ljava/nio/ByteBuffer;
    .restart local v12    # "serverKeepAlive":I
    .local v13, "enhancedAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;
    .restart local v14    # "sessionExpiryInterval":J
    .restart local v19    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    :cond_17
    move/from16 v24, v7

    move/from16 v25, v8

    .end local v7    # "maximumQosPresent":Z
    .end local v8    # "topicAliasMaximumPresent":Z
    .restart local v24    # "maximumQosPresent":Z
    .restart local v25    # "topicAliasMaximumPresent":Z
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v7, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v8, "auth data must not be included if auth method is absent"

    invoke-direct {v0, v7, v8}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    .line 76
    .end local v1    # "retainAvailablePresent":Z
    .end local v2    # "responseInformation":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v3    # "serverReference":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v9    # "receiveMaximumPresent":Z
    .end local v10    # "authMethod":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v11    # "authData":Ljava/nio/ByteBuffer;
    .end local v12    # "serverKeepAlive":I
    .end local v13    # "enhancedAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;
    .end local v14    # "sessionExpiryInterval":J
    .end local v19    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    .end local v20    # "assignedClientIdentifier":Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .end local v24    # "maximumQosPresent":Z
    .end local v25    # "topicAliasMaximumPresent":Z
    .end local v30    # "receiveMaximum":I
    .end local v31    # "topicAliasMaximum":I
    .end local v32    # "maximumQos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .end local v33    # "retainAvailable":Z
    .end local v34    # "maximumPacketSize":I
    .end local v35    # "maximumPacketSizePresent":Z
    .end local v36    # "wildCardSubscriptionAvailable":Z
    .end local v37    # "wildCardSubscriptionAvailablePresent":Z
    .end local v38    # "subscriptionIdentifiersAvailable":Z
    .end local v39    # "subscriptionIdentifiersAvailablePresent":Z
    .end local v40    # "sharedSubscriptionAvailable":Z
    .end local v41    # "connAckFlags":S
    .end local v42    # "sessionPresent":Z
    .end local v43    # "restrictionsPresent":Z
    .end local v44    # "sharedSubscriptionAvailablePresent":Z
    .local v4, "connAckFlags":S
    .local v5, "sessionPresent":Z
    .restart local v15    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    :cond_18
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongReasonCode()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    .line 70
    .end local v5    # "sessionPresent":Z
    .end local v15    # "reasonCode":Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    :cond_19
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string/jumbo v1, "wrong CONNACK flags, bits 7-1 must be 0"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public tryDecodeMqtt3(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    .locals 15
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
        }
    .end annotation

    .line 266
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 267
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 268
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    invoke-static {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    move-result-object v0

    .line 269
    .local v0, "returnCode":Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;
    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->UNSUPPORTED_PROTOCOL_VERSION:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    if-ne v0, v1, :cond_0

    .line 270
    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    sget-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->UNSUPPORTED_PROTOCOL_VERSION:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-object v2, v1

    invoke-direct/range {v2 .. v14}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;ZJILcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v1

    .line 275
    .end local v0    # "returnCode":Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;
    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0
.end method
