.class public Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "MqttWebSocketCodec.java"


# annotations
.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "ws.mqtt"


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 41
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 45
    instance-of v0, p2, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    if-eqz v0, :cond_5

    .line 46
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    .line 47
    .local v0, "webSocketFrame":Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    instance-of v1, p2, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    if-nez v1, :cond_4

    instance-of v1, p2, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    instance-of v1, p2, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->release()Z

    .line 51
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    const-string v2, "Must not receive text websocket frames"

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->close(Lio/netty/channel/Channel;Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_1
    instance-of v1, p2, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    if-eqz v1, :cond_2

    .line 53
    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->release()Z

    .line 54
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 55
    :cond_2
    instance-of v1, p2, Lio/netty/handler/codec/http/websocketx/PingWebSocketFrame;

    if-eqz v1, :cond_3

    .line 56
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/http/websocketx/PongWebSocketFrame;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/http/websocketx/PongWebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {v1, v2}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->release()Z

    goto :goto_1

    .line 48
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 60
    .end local v0    # "webSocketFrame":Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    :goto_1
    goto :goto_2

    .line 61
    :cond_5
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 63
    :goto_2
    return-void
.end method

.method public isSharable()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 71
    instance-of v0, p2, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    move-object v1, p2

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p1, v0, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 76
    :goto_0
    return-void
.end method
