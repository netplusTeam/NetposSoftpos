.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder;
.super Ljava/lang/Object;
.source "Mqtt5PublishDecoder.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final MIN_REMAINING_LENGTH:I = 0x3


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 54
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .locals 35
    .param p1, "flags"    # I
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "context"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
        }
    .end annotation

    .line 61
    move/from16 v0, p1

    move-object/from16 v7, p2

    and-int/lit8 v1, v0, 0x8

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    move v10, v1

    .line 62
    .local v10, "dup":Z
    invoke-static {v0, v10}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->decodePublishQos(IZ)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v14

    .line 63
    .local v14, "qos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    move v15, v8

    .line 65
    .local v15, "retain":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_17

    .line 69
    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->decode(Lio/netty/buffer/ByteBuf;)[B

    move-result-object v13

    .line 70
    .local v13, "topicBinary":[B
    if-eqz v13, :cond_16

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "topic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    array-length v2, v13

    if-eqz v2, :cond_3

    .line 75
    invoke-static {v13}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_2

    move-object v11, v1

    goto :goto_2

    .line 77
    :cond_2
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->malformedTopic()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v2

    throw v2

    .line 74
    :cond_3
    move-object v11, v1

    .line 81
    .end local v1    # "topic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .local v11, "topic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    :goto_2
    invoke-static {v14, v7}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->decodePublishPacketIdentifier(Lcom/hivemq/client/mqtt/datatypes/MqttQos;Lio/netty/buffer/ByteBuf;)I

    move-result v12

    .line 83
    .local v12, "packetIdentifier":I
    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodePropertyLength(Lio/netty/buffer/ByteBuf;)I

    move-result v6

    .line 85
    .local v6, "propertyLength":I
    const-wide v1, 0x7fffffffffffffffL

    .line 86
    .local v1, "messageExpiryInterval":J
    const/4 v3, 0x0

    .line 87
    .local v3, "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    const/4 v4, 0x0

    .line 88
    .local v4, "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    const/4 v5, 0x0

    .line 89
    .local v5, "responseTopic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    const/16 v16, 0x0

    .line 90
    .local v16, "correlationData":Ljava/nio/ByteBuffer;
    const/16 v17, 0x0

    .line 91
    .local v17, "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    const/16 v18, 0x0

    .line 92
    .local v18, "topicAlias":I
    const/16 v19, 0x0

    .line 94
    .local v19, "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v24

    move-wide/from16 v25, v1

    move-object/from16 v27, v5

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v28, v19

    move-object v5, v3

    move-object v3, v4

    move-object/from16 v4, v16

    .line 96
    .end local v16    # "correlationData":Ljava/nio/ByteBuffer;
    .end local v17    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v18    # "topicAlias":I
    .end local v19    # "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .local v1, "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .local v2, "topicAlias":I
    .local v3, "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .local v4, "correlationData":Ljava/nio/ByteBuffer;
    .local v5, "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .local v24, "propertiesStartIndex":I
    .local v25, "messageExpiryInterval":J
    .local v27, "responseTopic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .local v28, "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v16

    sub-int v9, v16, v24

    move/from16 v29, v9

    .local v29, "readPropertyLength":I
    if-ge v9, v6, :cond_c

    .line 98
    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodePropertyIdentifier(Lio/netty/buffer/ByteBuf;)I

    move-result v9

    .line 100
    .local v9, "propertyIdentifier":I
    sparse-switch v9, :sswitch_data_0

    .line 164
    move-object/from16 v30, v1

    .end local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .local v30, "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    invoke-static {v9}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongProperty(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v1

    throw v1

    .line 137
    .end local v30    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    :sswitch_0
    invoke-static {v1, v7}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUserProperty(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v1

    .line 138
    move v0, v6

    goto/16 :goto_6

    .line 141
    :sswitch_1
    const-string/jumbo v0, "topic alias"

    invoke-static {v2, v8, v0, v7}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedShortOnlyOnce(IILjava/lang/String;Lio/netty/buffer/ByteBuf;)I

    move-result v0

    .line 142
    .end local v2    # "topicAlias":I
    .local v0, "topicAlias":I
    if-eqz v0, :cond_4

    move v2, v0

    move v0, v6

    goto/16 :goto_6

    .line 143
    :cond_4
    new-instance v2, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v8, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_ALIAS_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    move/from16 v16, v0

    .end local v0    # "topicAlias":I
    .local v16, "topicAlias":I
    const-string/jumbo v0, "topic alias must not be 0"

    invoke-direct {v2, v8, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v2

    .line 149
    .end local v16    # "topicAlias":I
    .restart local v2    # "topicAlias":I
    :sswitch_2
    if-nez v28, :cond_5

    .line 150
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->builder()Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    goto :goto_4

    .line 149
    :cond_5
    move-object/from16 v0, v28

    .line 152
    .end local v28    # "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .local v0, "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    :goto_4
    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->decode(Lio/netty/buffer/ByteBuf;)I

    move-result v8

    .line 153
    .local v8, "subscriptionIdentifier":I
    if-ltz v8, :cond_7

    .line 156
    if-eqz v8, :cond_6

    .line 160
    invoke-virtual {v0, v8}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->add(I)Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;

    .line 161
    move-object/from16 v28, v0

    move v0, v6

    goto/16 :goto_6

    .line 157
    :cond_6
    move-object/from16 v18, v0

    .end local v0    # "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .local v18, "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-object/from16 v19, v1

    .end local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .local v19, "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    move/from16 v20, v2

    .end local v2    # "topicAlias":I
    .local v20, "topicAlias":I
    const-string/jumbo v2, "subscription identifier must not be 0"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    .line 154
    .end local v18    # "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .end local v19    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v20    # "topicAlias":I
    .restart local v0    # "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .restart local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v2    # "topicAlias":I
    :cond_7
    move-object/from16 v18, v0

    move-object/from16 v19, v1

    .end local v0    # "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .end local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v18    # "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .restart local v19    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "malformed subscription identifier"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    .end local v8    # "subscriptionIdentifier":I
    .end local v18    # "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .end local v19    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v28    # "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    :sswitch_3
    move-object/from16 v19, v1

    move/from16 v20, v2

    .line 133
    .end local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v2    # "topicAlias":I
    .restart local v19    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v20    # "topicAlias":I
    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->useDirectBufferCorrelationData()Z

    move-result v0

    .line 132
    const-string v1, "correlation data"

    invoke-static {v4, v1, v7, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeBinaryDataOnlyOnce(Ljava/nio/ByteBuffer;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 134
    .end local v4    # "correlationData":Ljava/nio/ByteBuffer;
    .local v0, "correlationData":Ljava/nio/ByteBuffer;
    move-object v4, v0

    move v0, v6

    move-object/from16 v1, v19

    goto/16 :goto_6

    .line 121
    .end local v0    # "correlationData":Ljava/nio/ByteBuffer;
    .end local v19    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v20    # "topicAlias":I
    .restart local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v2    # "topicAlias":I
    .restart local v4    # "correlationData":Ljava/nio/ByteBuffer;
    :sswitch_4
    move-object/from16 v19, v1

    move/from16 v20, v2

    .end local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v2    # "topicAlias":I
    .restart local v19    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v20    # "topicAlias":I
    if-nez v27, :cond_9

    .line 124
    invoke-static/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    .line 125
    .end local v27    # "responseTopic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .local v0, "responseTopic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    if-eqz v0, :cond_8

    move-object/from16 v27, v0

    move v0, v6

    move-object/from16 v1, v19

    move/from16 v2, v20

    goto/16 :goto_6

    .line 126
    :cond_8
    new-instance v1, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_NAME_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v8, "malformed response topic"

    invoke-direct {v1, v2, v8}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v1

    .line 122
    .end local v0    # "responseTopic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .restart local v27    # "responseTopic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    :cond_9
    const-string/jumbo v0, "response topic"

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->moreThanOnce(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    .line 117
    .end local v19    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v20    # "topicAlias":I
    .restart local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v2    # "topicAlias":I
    :sswitch_5
    move-object/from16 v19, v1

    move/from16 v20, v2

    .end local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v2    # "topicAlias":I
    .restart local v19    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v20    # "topicAlias":I
    const-string v0, "content type"

    invoke-static {v3, v0, v7}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUTF8StringOnlyOnce(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    .line 118
    .end local v3    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .local v0, "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    move-object v3, v0

    move v0, v6

    goto/16 :goto_6

    .line 102
    .end local v0    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v19    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v20    # "topicAlias":I
    .restart local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v2    # "topicAlias":I
    .restart local v3    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    :sswitch_6
    move-object/from16 v19, v1

    move/from16 v20, v2

    .end local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v2    # "topicAlias":I
    .restart local v19    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v20    # "topicAlias":I
    const-wide v21, 0x7fffffffffffffffL

    .line 103
    const-string v0, "message expiry interval"

    move-object/from16 v30, v19

    move/from16 v8, v20

    .end local v19    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v20    # "topicAlias":I
    .local v8, "topicAlias":I
    .restart local v30    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    move-wide/from16 v1, v25

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    .end local v3    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v4    # "correlationData":Ljava/nio/ByteBuffer;
    .local v31, "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .local v32, "correlationData":Ljava/nio/ByteBuffer;
    move-wide/from16 v3, v21

    move-object/from16 v33, v5

    .end local v5    # "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .local v33, "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    move-object v5, v0

    move v0, v6

    .end local v6    # "propertyLength":I
    .local v0, "propertyLength":I
    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedIntOnlyOnce(JJLjava/lang/String;Lio/netty/buffer/ByteBuf;)J

    move-result-wide v1

    .line 105
    .end local v25    # "messageExpiryInterval":J
    .local v1, "messageExpiryInterval":J
    move-wide/from16 v25, v1

    move v2, v8

    move-object/from16 v1, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    goto :goto_6

    .line 108
    .end local v0    # "propertyLength":I
    .end local v8    # "topicAlias":I
    .end local v30    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v31    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v32    # "correlationData":Ljava/nio/ByteBuffer;
    .end local v33    # "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .local v1, "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v2    # "topicAlias":I
    .restart local v3    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .restart local v4    # "correlationData":Ljava/nio/ByteBuffer;
    .restart local v5    # "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .restart local v6    # "propertyLength":I
    .restart local v25    # "messageExpiryInterval":J
    :sswitch_7
    move-object/from16 v30, v1

    move v8, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move v0, v6

    .end local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v2    # "topicAlias":I
    .end local v3    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v4    # "correlationData":Ljava/nio/ByteBuffer;
    .end local v5    # "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .end local v6    # "propertyLength":I
    .restart local v0    # "propertyLength":I
    .restart local v8    # "topicAlias":I
    .restart local v30    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v31    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .restart local v32    # "correlationData":Ljava/nio/ByteBuffer;
    .restart local v33    # "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    move-object/from16 v3, v33

    .end local v33    # "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .local v3, "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    if-eqz v3, :cond_a

    const/4 v1, 0x1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    .line 109
    :goto_5
    const-string v2, "payload format indicator"

    invoke-static {v1, v2, v7}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedByteOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)S

    move-result v1

    .line 110
    .local v1, "payloadFormatIndicatorByte":S
    invoke-static {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    move-result-object v2

    .line 111
    .end local v3    # "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .local v2, "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    if-eqz v2, :cond_b

    move-object v5, v2

    move v2, v8

    move-object/from16 v1, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    .line 166
    .end local v8    # "topicAlias":I
    .end local v9    # "propertyIdentifier":I
    .end local v30    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v31    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v32    # "correlationData":Ljava/nio/ByteBuffer;
    .local v1, "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .local v2, "topicAlias":I
    .local v3, "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .restart local v4    # "correlationData":Ljava/nio/ByteBuffer;
    .restart local v5    # "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    :goto_6
    move v6, v0

    const/4 v8, 0x0

    move/from16 v0, p1

    goto/16 :goto_3

    .line 112
    .end local v3    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v4    # "correlationData":Ljava/nio/ByteBuffer;
    .end local v5    # "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .local v1, "payloadFormatIndicatorByte":S
    .local v2, "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .restart local v8    # "topicAlias":I
    .restart local v9    # "propertyIdentifier":I
    .restart local v30    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v31    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .restart local v32    # "correlationData":Ljava/nio/ByteBuffer;
    :cond_b
    new-instance v3, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wrong payload format indicator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    .end local v0    # "propertyLength":I
    .end local v8    # "topicAlias":I
    .end local v9    # "propertyIdentifier":I
    .end local v30    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v31    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v32    # "correlationData":Ljava/nio/ByteBuffer;
    .local v1, "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .local v2, "topicAlias":I
    .restart local v3    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .restart local v4    # "correlationData":Ljava/nio/ByteBuffer;
    .restart local v5    # "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .restart local v6    # "propertyLength":I
    :cond_c
    move-object/from16 v30, v1

    move v8, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-object v3, v5

    move v0, v6

    .end local v1    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v2    # "topicAlias":I
    .end local v4    # "correlationData":Ljava/nio/ByteBuffer;
    .end local v5    # "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .end local v6    # "propertyLength":I
    .restart local v0    # "propertyLength":I
    .local v3, "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .restart local v8    # "topicAlias":I
    .restart local v30    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .restart local v31    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .restart local v32    # "correlationData":Ljava/nio/ByteBuffer;
    move/from16 v1, v29

    .end local v29    # "readPropertyLength":I
    .local v1, "readPropertyLength":I
    if-ne v1, v0, :cond_15

    .line 172
    if-eqz v8, :cond_10

    .line 173
    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->getTopicAliasMapping()[Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v2

    .line 174
    .local v2, "topicAliasMapping":[Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    if-eqz v2, :cond_f

    array-length v4, v2

    if-gt v8, v4, :cond_f

    .line 178
    if-nez v11, :cond_e

    .line 179
    add-int/lit8 v4, v8, -0x1

    aget-object v11, v2, v4

    .line 180
    if-eqz v11, :cond_d

    move v2, v8

    goto :goto_7

    .line 181
    :cond_d
    new-instance v4, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_ALIAS_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string/jumbo v6, "topic alias has no mapping"

    invoke-direct {v4, v5, v6}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_e
    add-int/lit8 v4, v8, -0x1

    aput-object v11, v2, v4

    .line 186
    const/high16 v4, 0x10000

    or-int/2addr v4, v8

    move v2, v4

    .line 188
    .end local v8    # "topicAlias":I
    .local v2, "topicAlias":I
    :goto_7
    move-object v4, v11

    goto :goto_8

    .line 175
    .local v2, "topicAliasMapping":[Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .restart local v8    # "topicAlias":I
    :cond_f
    new-instance v4, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_ALIAS_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string/jumbo v6, "topic alias must not exceed topic alias maximum"

    invoke-direct {v4, v5, v6}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v4

    .line 188
    .end local v2    # "topicAliasMapping":[Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    :cond_10
    if-eqz v11, :cond_14

    move v2, v8

    move-object v4, v11

    .line 193
    .end local v8    # "topicAlias":I
    .end local v11    # "topic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .local v2, "topicAlias":I
    .local v4, "topic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    .line 194
    .local v5, "payloadLength":I
    const/4 v6, 0x0

    .line 195
    .local v6, "payload":Ljava/nio/ByteBuffer;
    if-lez v5, :cond_12

    .line 196
    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->useDirectBufferPayload()Z

    move-result v8

    invoke-static {v5, v8}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->allocate(IZ)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 197
    invoke-virtual {v7, v6}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 198
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 200
    sget-object v8, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;->UTF_8:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    if-ne v3, v8, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->validatePayloadFormat()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 201
    invoke-static {v6}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/hivemq/client/internal/util/Utf8Util;->isWellFormed([B)J

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmp-long v8, v8, v16

    if-nez v8, :cond_11

    goto :goto_9

    .line 202
    :cond_11
    new-instance v8, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v9, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PAYLOAD_FORMAT_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v11, "payload is not valid UTF-8"

    invoke-direct {v8, v9, v11}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v8

    .line 207
    :cond_12
    :goto_9
    invoke-static/range {v30 .. v30}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->build(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v8

    .line 209
    .local v8, "userProperties":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    new-instance v9, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    const/16 v23, 0x0

    move-object v11, v9

    move/from16 v29, v0

    move v0, v12

    .end local v12    # "packetIdentifier":I
    .local v0, "packetIdentifier":I
    .local v29, "propertyLength":I
    move-object v12, v4

    move-object/from16 v33, v13

    .end local v13    # "topicBinary":[B
    .local v33, "topicBinary":[B
    move-object v13, v6

    move-object/from16 v34, v14

    .end local v14    # "qos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .local v34, "qos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    move-wide/from16 v16, v25

    move-object/from16 v18, v3

    move-object/from16 v19, v31

    move-object/from16 v20, v27

    move-object/from16 v21, v32

    move-object/from16 v22, v8

    invoke-direct/range {v11 .. v23}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Lcom/hivemq/client/internal/checkpoint/Confirmable;)V

    .line 213
    .local v9, "publish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    if-nez v28, :cond_13

    sget-object v11, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->DEFAULT_NO_SUBSCRIPTION_IDENTIFIERS:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    goto :goto_a

    .line 215
    :cond_13
    invoke-virtual/range {v28 .. v28}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    move-result-object v11

    :goto_a
    nop

    .line 217
    .local v11, "subscriptionIdentifiers":Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    invoke-virtual {v9, v0, v10, v2, v11}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->createStateful(IZILcom/hivemq/client/internal/util/collections/ImmutableIntList;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object v12

    return-object v12

    .line 189
    .end local v2    # "topicAlias":I
    .end local v4    # "topic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .end local v5    # "payloadLength":I
    .end local v6    # "payload":Ljava/nio/ByteBuffer;
    .end local v9    # "publish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .end local v29    # "propertyLength":I
    .end local v33    # "topicBinary":[B
    .end local v34    # "qos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .local v0, "propertyLength":I
    .local v8, "topicAlias":I
    .local v11, "topic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .restart local v12    # "packetIdentifier":I
    .restart local v13    # "topicBinary":[B
    .restart local v14    # "qos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    :cond_14
    new-instance v2, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string/jumbo v5, "topic alias must be present if topic name is zero length"

    invoke-direct {v2, v4, v5}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_15
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->malformedPropertyLength()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v2

    throw v2

    .line 71
    .end local v0    # "propertyLength":I
    .end local v1    # "readPropertyLength":I
    .end local v3    # "payloadFormatIndicator":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .end local v8    # "topicAlias":I
    .end local v11    # "topic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .end local v12    # "packetIdentifier":I
    .end local v24    # "propertiesStartIndex":I
    .end local v25    # "messageExpiryInterval":J
    .end local v27    # "responseTopic":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .end local v28    # "subscriptionIdentifiersBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableIntList$Builder;
    .end local v30    # "userPropertiesBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;>;"
    .end local v31    # "contentType":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .end local v32    # "correlationData":Ljava/nio/ByteBuffer;
    :cond_16
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->malformedTopic()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    .line 66
    .end local v13    # "topicBinary":[B
    :cond_17
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xb -> :sswitch_2
        0x23 -> :sswitch_1
        0x26 -> :sswitch_0
    .end sparse-switch
.end method
