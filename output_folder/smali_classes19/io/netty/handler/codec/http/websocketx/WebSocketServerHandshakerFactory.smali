.class public Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;
.super Ljava/lang/Object;
.source "WebSocketServerHandshakerFactory.java"


# instance fields
.field private final decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

.field private final subprotocols:Ljava/lang/String;

.field private final webSocketURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V
    .locals 1
    .param p1, "webSocketURL"    # Ljava/lang/String;
    .param p2, "subprotocols"    # Ljava/lang/String;
    .param p3, "decoderConfig"    # Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    .line 120
    const-string v0, "decoderConfig"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "webSocketURL"    # Ljava/lang/String;
    .param p2, "subprotocols"    # Ljava/lang/String;
    .param p3, "allowExtensions"    # Z

    .line 55
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 6
    .param p1, "webSocketURL"    # Ljava/lang/String;
    .param p2, "subprotocols"    # Ljava/lang/String;
    .param p3, "allowExtensions"    # Z
    .param p4, "maxFramePayloadLength"    # I

    .line 75
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 1
    .param p1, "webSocketURL"    # Ljava/lang/String;
    .param p2, "subprotocols"    # Ljava/lang/String;
    .param p3, "allowExtensions"    # Z
    .param p4, "maxFramePayloadLength"    # I
    .param p5, "allowMaskMismatch"    # Z

    .line 98
    invoke-static {}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->newBuilder()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->allowExtensions(Z)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p4}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->maxFramePayloadLength(I)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p5}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->allowMaskMismatch(Z)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->build()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    move-result-object v0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    .line 103
    return-void
.end method

.method public static sendUnsupportedVersionResponse(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p0, "channel"    # Lio/netty/channel/Channel;

    .line 166
    invoke-interface {p0}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->sendUnsupportedVersionResponse(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static sendUnsupportedVersionResponse(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 5
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 173
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->UPGRADE_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 175
    invoke-interface {p0}, Lio/netty/channel/Channel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    .line 176
    .local v0, "res":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_VERSION:Lio/netty/util/AsciiString;

    sget-object v3, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v3}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->toHttpHeaderValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 177
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lio/netty/handler/codec/http/HttpUtil;->setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V

    .line 178
    invoke-interface {p0, v0, p1}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1
.end method

.method public static sendUnsupportedWebSocketVersionResponse(Lio/netty/channel/Channel;)V
    .locals 0
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-static {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->sendUnsupportedVersionResponse(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    .line 160
    return-void
.end method


# virtual methods
.method public newHandshaker(Lio/netty/handler/codec/http/HttpRequest;)Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
    .locals 5
    .param p1, "req"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 131
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_VERSION:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "version":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    .line 133
    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->toHttpHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;

    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    iget-object v4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-direct {v1, v2, v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    return-object v1

    .line 137
    :cond_0
    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->toHttpHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker08;

    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    iget-object v4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-direct {v1, v2, v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker08;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    return-object v1

    .line 141
    :cond_1
    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->toHttpHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07;

    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    iget-object v4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-direct {v1, v2, v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    return-object v1

    .line 146
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 150
    :cond_3
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;

    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    iget-object v4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-direct {v1, v2, v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    return-object v1
.end method
