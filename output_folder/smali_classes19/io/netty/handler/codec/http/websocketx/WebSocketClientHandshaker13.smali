.class public Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;
.super Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
.source "WebSocketClientHandshaker13.java"


# static fields
.field public static final MAGIC_GUID:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final allowExtensions:Z

.field private final allowMaskMismatch:Z

.field private expectedChallengeResponseString:Ljava/lang/String;

.field private final performMasking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;I)V
    .locals 9
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "allowExtensions"    # Z
    .param p5, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p6, "maxFramePayloadLength"    # I

    .line 72
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZ)V
    .locals 11
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "allowExtensions"    # Z
    .param p5, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p6, "maxFramePayloadLength"    # I
    .param p7, "performMasking"    # Z
    .param p8, "allowMaskMismatch"    # Z

    .line 103
    const-wide/16 v9, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJ)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJ)V
    .locals 12
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "allowExtensions"    # Z
    .param p5, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p6, "maxFramePayloadLength"    # I
    .param p7, "performMasking"    # Z
    .param p8, "allowMaskMismatch"    # Z
    .param p9, "forceCloseTimeoutMillis"    # J

    .line 137
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJZ)V

    .line 139
    return-void
.end method

.method constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJZ)V
    .locals 10
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "allowExtensions"    # Z
    .param p5, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p6, "maxFramePayloadLength"    # I
    .param p7, "performMasking"    # Z
    .param p8, "allowMaskMismatch"    # Z
    .param p9, "forceCloseTimeoutMillis"    # J
    .param p11, "absoluteUpgradeUrl"    # Z

    .line 174
    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p9

    move/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJZ)V

    .line 176
    move v0, p4

    iput-boolean v0, v9, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->allowExtensions:Z

    .line 177
    move/from16 v1, p7

    iput-boolean v1, v9, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->performMasking:Z

    .line 178
    move/from16 v2, p8

    iput-boolean v2, v9, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->allowMaskMismatch:Z

    .line 179
    return-void
.end method


# virtual methods
.method protected newHandshakeRequest()Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 10

    .line 201
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->uri()Ljava/net/URI;

    move-result-object v0

    .line 204
    .local v0, "wsURL":Ljava/net/URI;
    const/16 v1, 0x10

    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->randomBytes(I)[B

    move-result-object v1

    .line 205
    .local v1, "nonce":[B
    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->base64([B)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "acceptSeed":Ljava/lang/String;
    sget-object v4, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v4}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->sha1([B)[B

    move-result-object v4

    .line 209
    .local v4, "sha1":[B
    invoke-static {v4}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->base64([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->expectedChallengeResponseString:Ljava/lang/String;

    .line 211
    sget-object v5, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 212
    iget-object v6, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->expectedChallengeResponseString:Ljava/lang/String;

    const-string v7, "WebSocket version 13 client handshake key: {}, expected response: {}"

    invoke-interface {v5, v7, v2, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    :cond_0
    new-instance v5, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    sget-object v6, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v7, Lio/netty/handler/codec/http/HttpMethod;->GET:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->upgradeUrl(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v5, v6, v7, v8, v9}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V

    .line 220
    .local v5, "request":Lio/netty/handler/codec/http/FullHttpRequest;
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    .line 222
    .local v6, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    iget-object v7, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    if-eqz v7, :cond_1

    .line 223
    iget-object v7, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v6, v7}, Lio/netty/handler/codec/http/HttpHeaders;->add(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 224
    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v7}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 228
    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-static {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->websocketHostValue(Ljava/net/URI;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 231
    :cond_1
    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-static {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->websocketHostValue(Ljava/net/URI;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 234
    :cond_2
    :goto_0
    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderValues;->WEBSOCKET:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v7, v8}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v7

    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v9, Lio/netty/handler/codec/http/HttpHeaderValues;->UPGRADE:Lio/netty/util/AsciiString;

    .line 235
    invoke-virtual {v7, v8, v9}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v7

    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_KEY:Lio/netty/util/AsciiString;

    .line 236
    invoke-virtual {v7, v8, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 238
    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->ORIGIN:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v7}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 239
    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->ORIGIN:Lio/netty/util/AsciiString;

    invoke-static {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->websocketOriginValue(Ljava/net/URI;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 242
    :cond_3
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->expectedSubprotocol()Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "expectedSubprotocol":Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 244
    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_PROTOCOL:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v8, v7}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 247
    :cond_4
    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_VERSION:Lio/netty/util/AsciiString;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->version()Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-result-object v9

    invoke-virtual {v9}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->toAsciiString()Lio/netty/util/AsciiString;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 248
    return-object v5
.end method

.method protected newWebSocketEncoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;
    .locals 2

    .line 301
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocket13FrameEncoder;

    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->performMasking:Z

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocket13FrameEncoder;-><init>(Z)V

    return-object v0
.end method

.method protected newWebsocketDecoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;
    .locals 5

    .line 296
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocket13FrameDecoder;

    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->allowExtensions:Z

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->maxFramePayloadLength()I

    move-result v2

    iget-boolean v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->allowMaskMismatch:Z

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocket13FrameDecoder;-><init>(ZZIZ)V

    return-object v0
.end method

.method public setForceCloseTimeoutMillis(J)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;
    .locals 0
    .param p1, "forceCloseTimeoutMillis"    # J

    .line 306
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->setForceCloseTimeoutMillis(J)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    .line 307
    return-object p0
.end method

.method public bridge synthetic setForceCloseTimeoutMillis(J)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->setForceCloseTimeoutMillis(J)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;

    move-result-object p1

    return-object p1
.end method

.method protected verify(Lio/netty/handler/codec/http/FullHttpResponse;)V
    .locals 8
    .param p1, "response"    # Lio/netty/handler/codec/http/FullHttpResponse;

    .line 270
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 271
    .local v0, "status":Lio/netty/handler/codec/http/HttpResponseStatus;
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    .line 273
    .local v1, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "upgrade":Ljava/lang/CharSequence;
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderValues;->WEBSOCKET:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderValues;->UPGRADE:Lio/netty/util/AsciiString;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lio/netty/handler/codec/http/HttpHeaders;->containsValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_ACCEPT:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v3}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "accept":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->expectedChallengeResponseString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    return-void

    .line 289
    :cond_0
    new-instance v4, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    iget-object v7, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;->expectedChallengeResponseString:Ljava/lang/String;

    aput-object v7, v6, v5

    const-string v5, "Invalid challenge. Actual: %s. Expected: %s"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 283
    .end local v3    # "accept":Ljava/lang/CharSequence;
    :cond_1
    new-instance v3, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid handshake response connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    .line 284
    invoke-virtual {v1, v5}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 279
    :cond_2
    new-instance v3, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid handshake response upgrade: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 274
    .end local v2    # "upgrade":Ljava/lang/CharSequence;
    :cond_3
    new-instance v2, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handshake response getStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
