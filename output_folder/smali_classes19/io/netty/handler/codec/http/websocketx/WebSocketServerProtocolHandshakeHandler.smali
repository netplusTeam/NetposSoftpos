.class Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "WebSocketServerProtocolHandshakeHandler.java"


# instance fields
.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private handshakePromise:Lio/netty/channel/ChannelPromise;

.field private final serverConfig:Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;)V
    .locals 1
    .param p1, "serverConfig"    # Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;

    .line 51
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 52
    const-string v0, "serverConfig"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->serverConfig:Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;

    .line 45
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method private applyHandshakeTimeout()V
    .locals 6

    .line 139
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->handshakePromise:Lio/netty/channel/ChannelPromise;

    .line 140
    .local v0, "localHandshakePromise":Lio/netty/channel/ChannelPromise;
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->serverConfig:Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->handshakeTimeoutMillis()J

    move-result-wide v1

    .line 141
    .local v1, "handshakeTimeoutMillis":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    new-instance v4, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler$2;

    invoke-direct {v4, p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler$2;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;Lio/netty/channel/ChannelPromise;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v1, v2, v5}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v3

    .line 158
    .local v3, "timeoutFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    new-instance v4, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler$3;

    invoke-direct {v4, p0, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler$3;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;Lio/netty/util/concurrent/Future;)V

    invoke-interface {v0, v4}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 164
    return-void

    .line 142
    .end local v3    # "timeoutFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private static getWebSocketLocation(Lio/netty/channel/ChannelPipeline;Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cp"    # Lio/netty/channel/ChannelPipeline;
    .param p1, "req"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "path"    # Ljava/lang/String;

    .line 129
    const-string v0, "ws"

    .line 130
    .local v0, "protocol":Ljava/lang/String;
    const-class v1, Lio/netty/handler/ssl/SslHandler;

    invoke-interface {p0, v1}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    const-string v0, "wss"

    .line 134
    :cond_0
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "host":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isNotWebSocketPath(Lio/netty/handler/codec/http/FullHttpRequest;)Z
    .locals 4
    .param p1, "req"    # Lio/netty/handler/codec/http/FullHttpRequest;

    .line 117
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->serverConfig:Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->websocketPath()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "websocketPath":Ljava/lang/String;
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->serverConfig:Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->checkStartsWith()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpRequest;->uri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpRequest;->uri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method private static sendHttpResponse(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 3
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "req"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "res"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 122
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 123
    .local v0, "f":Lio/netty/channel/ChannelFuture;
    invoke-static {p1}, Lio/netty/handler/codec/http/HttpUtil;->isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 124
    :cond_0
    sget-object v1, Lio/netty/channel/ChannelFutureListener;->CLOSE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 126
    :cond_1
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 11
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    move-object v6, p2

    check-cast v6, Lio/netty/handler/codec/http/FullHttpRequest;

    .line 64
    .local v6, "req":Lio/netty/handler/codec/http/FullHttpRequest;
    invoke-direct {p0, v6}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->isNotWebSocketPath(Lio/netty/handler/codec/http/FullHttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 66
    return-void

    .line 70
    :cond_0
    :try_start_0
    sget-object v0, Lio/netty/handler/codec/http/HttpMethod;->GET:Lio/netty/handler/codec/http/HttpMethod;

    invoke-interface {v6}, Lio/netty/handler/codec/http/FullHttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    invoke-static {p1, v6, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->sendHttpResponse(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/HttpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-interface {v6}, Lio/netty/handler/codec/http/FullHttpRequest;->release()Z

    .line 72
    return-void

    .line 75
    :cond_1
    :try_start_1
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;

    .line 76
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->serverConfig:Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->websocketPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->getWebSocketLocation(Lio/netty/channel/ChannelPipeline;Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->serverConfig:Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;

    .line 77
    invoke-virtual {v2}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->subprotocols()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->serverConfig:Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;

    invoke-virtual {v3}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->decoderConfig()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    move-object v7, v0

    .line 78
    .local v7, "wsFactory":Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;
    invoke-virtual {v7, v6}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->newHandshaker(Lio/netty/handler/codec/http/HttpRequest;)Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

    move-result-object v0

    move-object v8, v0

    .line 79
    .local v8, "handshaker":Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->handshakePromise:Lio/netty/channel/ChannelPromise;

    .line 80
    .local v2, "localHandshakePromise":Lio/netty/channel/ChannelPromise;
    if-nez v8, :cond_2

    .line 81
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->sendUnsupportedVersionResponse(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 88
    :cond_2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, v8}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;->setHandshaker(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;)V

    .line 89
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 91
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {v8, v0, v6}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpRequest;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    move-object v9, v0

    .line 92
    .local v9, "handshakeFuture":Lio/netty/channel/ChannelFuture;
    new-instance v10, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler$1;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler$1;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;)V

    invoke-interface {v9, v10}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 109
    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->applyHandshakeTimeout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v2    # "localHandshakePromise":Lio/netty/channel/ChannelPromise;
    .end local v7    # "wsFactory":Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;
    .end local v8    # "handshaker":Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
    .end local v9    # "handshakeFuture":Lio/netty/channel/ChannelFuture;
    :goto_0
    invoke-interface {v6}, Lio/netty/handler/codec/http/FullHttpRequest;->release()Z

    .line 113
    nop

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Lio/netty/handler/codec/http/FullHttpRequest;->release()Z

    .line 113
    throw v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 57
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 58
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->handshakePromise:Lio/netty/channel/ChannelPromise;

    .line 59
    return-void
.end method
