.class Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "MqttWebsocketHandshakeHandler.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "ws.handshake"


# instance fields
.field private handshakeDone:Z

.field private handshakeStarted:Z

.field private final handshakeTimeoutMs:I

.field private final handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

.field private final onError:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final onSuccess:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;ILjava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 1
    .param p1, "handshaker"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .param p2, "handshakeTimeoutMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/Channel;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p3, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lio/netty/channel/Channel;>;"
    .local p4, "onError":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lio/netty/channel/Channel;Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeStarted:Z

    .line 46
    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeDone:Z

    .line 55
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    .line 56
    iput p2, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeTimeoutMs:I

    .line 57
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onSuccess:Ljava/util/function/Consumer;

    .line 58
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onError:Ljava/util/function/BiConsumer;

    .line 59
    return-void
.end method

.method private finishHandshake(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpResponse;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "response"    # Lio/netty/handler/codec/http/FullHttpResponse;

    .line 101
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->setHandshakeDone(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->finishHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpResponse;)V

    .line 104
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onSuccess:Ljava/util/function/Consumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onError:Ljava/util/function/BiConsumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpResponse;->release()Z

    .line 110
    return-void
.end method

.method private setHandshakeDone(Lio/netty/channel/ChannelHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 130
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeDone:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeDone:Z

    .line 132
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {v2, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 133
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    .line 134
    invoke-interface {v2, v1}, Lio/netty/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 137
    :cond_0
    return v0

    .line 139
    :cond_1
    return v1
.end method

.method private startHandshake(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 75
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeStarted:Z

    if-nez v0, :cond_1

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeStarted:Z

    .line 78
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeTimeoutMs:I

    if-lez v0, :cond_0

    .line 79
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;Lio/netty/channel/ChannelHandlerContext;)V

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeTimeoutMs:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 89
    :cond_1
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 70
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->startHandshake(Lio/netty/channel/ChannelHandlerContext;)V

    .line 71
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 72
    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 114
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->setHandshakeDone(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onError:Ljava/util/function/BiConsumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const-string v3, "connection was closed during handshake"

    invoke-direct {v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    .line 118
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 93
    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpResponse;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->finishHandshake(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpResponse;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 98
    :goto_0
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 122
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->setHandshakeDone(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onError:Ljava/util/function/BiConsumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 127
    :goto_0
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 63
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->startHandshake(Lio/netty/channel/ChannelHandlerContext;)V

    .line 66
    :cond_0
    return-void
.end method

.method public isSharable()Z
    .locals 1

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$startHandshake$0$com-hivemq-client-internal-mqtt-handler-websocket-MqttWebsocketHandshakeHandler(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 80
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->setHandshakeDone(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onError:Ljava/util/function/BiConsumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handshake timed out after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeTimeoutMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    :cond_0
    return-void
.end method
