.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "MqttEncoder.java"


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ConnectionScope;
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "encoder"


# instance fields
.field private final context:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;

.field private final encoders:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

.field private inRead:Z

.field private pendingFlush:Z


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;)V
    .locals 2
    .param p1, "encoders"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 48
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->inRead:Z

    .line 45
    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->pendingFlush:Z

    .line 49
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->encoders:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

    .line 50
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;

    sget-object v1, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->context:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;

    .line 51
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->inRead:Z

    .line 88
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 89
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 93
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->inRead:Z

    .line 95
    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->pendingFlush:Z

    if-eqz v1, :cond_0

    .line 96
    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->pendingFlush:Z

    .line 97
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 99
    :cond_0
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 78
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->inRead:Z

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->pendingFlush:Z

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 83
    :goto_0
    return-void
.end method

.method public isSharable()Z
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onConnected(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;)V
    .locals 2
    .param p1, "connectionConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    .line 54
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->context:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSendMaximumPacketSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->setMaximumPacketSize(I)V

    .line 55
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 63
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/MqttMessage;

    if-eqz v0, :cond_1

    .line 64
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/MqttMessage;

    .line 65
    .local v0, "message":Lcom/hivemq/client/internal/mqtt/message/MqttMessage;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->encoders:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessage;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->get(I)Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    move-result-object v1

    .line 66
    .local v1, "messageEncoder":Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<*>;"
    if-eqz v1, :cond_0

    .line 69
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->context:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;

    invoke-virtual {v1, v0, v2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;->castAndEncode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 70
    .local v2, "out":Lio/netty/buffer/ByteBuf;
    invoke-interface {p1, v2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 71
    .end local v0    # "message":Lcom/hivemq/client/internal/mqtt/message/MqttMessage;
    .end local v1    # "messageEncoder":Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<*>;"
    .end local v2    # "out":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 67
    .restart local v0    # "message":Lcom/hivemq/client/internal/mqtt/message/MqttMessage;
    .restart local v1    # "messageEncoder":Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<*>;"
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 72
    .end local v0    # "message":Lcom/hivemq/client/internal/mqtt/message/MqttMessage;
    .end local v1    # "messageEncoder":Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<*>;"
    :cond_1
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 74
    :goto_0
    return-void
.end method
