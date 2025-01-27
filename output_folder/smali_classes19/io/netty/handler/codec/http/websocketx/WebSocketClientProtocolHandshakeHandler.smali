.class Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "WebSocketClientProtocolHandshakeHandler.java"


# static fields
.field private static final DEFAULT_HANDSHAKE_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private handshakePromise:Lio/netty/channel/ChannelPromise;

.field private final handshakeTimeoutMillis:J

.field private final handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;)V
    .locals 2
    .param p1, "handshaker"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    .line 41
    const-wide/16 v0, 0x2710

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;J)V

    .line 42
    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;J)V
    .locals 2
    .param p1, "handshaker"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .param p2, "handshakeTimeoutMillis"    # J

    .line 44
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    .line 46
    const-string v0, "handshakeTimeoutMillis"

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakeTimeoutMillis:J

    .line 47
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;)Lio/netty/channel/ChannelPromise;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;

    .line 32
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakePromise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;

    .line 32
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method private applyHandshakeTimeout()V
    .locals 6

    .line 97
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakePromise:Lio/netty/channel/ChannelPromise;

    .line 98
    .local v0, "localHandshakePromise":Lio/netty/channel/ChannelPromise;
    iget-wide v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakeTimeoutMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$2;

    invoke-direct {v2, p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$2;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;Lio/netty/channel/ChannelPromise;)V

    iget-wide v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakeTimeoutMillis:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 118
    .local v1, "timeoutFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    new-instance v2, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$3;

    invoke-direct {v2, p0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$3;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;Lio/netty/util/concurrent/Future;)V

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 124
    return-void

    .line 99
    .end local v1    # "timeoutFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 58
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->handshake(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$1;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler$1;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 70
    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->applyHandshakeTimeout()V

    .line 71
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpResponse;

    if-nez v0, :cond_0

    .line 76
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 77
    return-void

    .line 80
    :cond_0
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/FullHttpResponse;

    .line 82
    .local v0, "response":Lio/netty/handler/codec/http/FullHttpResponse;
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->isHandshakeComplete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->finishHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpResponse;)V

    .line 84
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakePromise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v1}, Lio/netty/channel/ChannelPromise;->trySuccess()Z

    .line 85
    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler$ClientHandshakeStateEvent;->HANDSHAKE_COMPLETE:Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler$ClientHandshakeStateEvent;

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 87
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->release()Z

    .line 88
    return-void

    .line 90
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WebSocketClientHandshaker should have been non finished yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "response":Lio/netty/handler/codec/http/FullHttpResponse;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .restart local v0    # "response":Lio/netty/handler/codec/http/FullHttpResponse;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->release()Z

    .line 93
    throw v1
.end method

.method getHandshakeFuture()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 132
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakePromise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 52
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;->handshakePromise:Lio/netty/channel/ChannelPromise;

    .line 53
    return-void
.end method
