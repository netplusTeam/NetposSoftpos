.class public Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;
.super Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
.source "WebSocketServerHandshaker00.java"


# static fields
.field private static final BEGINNING_DIGIT:Ljava/util/regex/Pattern;

.field private static final BEGINNING_SPACE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, "[^0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->BEGINNING_DIGIT:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "[^ ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->BEGINNING_SPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "webSocketURL"    # Ljava/lang/String;
    .param p2, "subprotocols"    # Ljava/lang/String;
    .param p3, "maxFramePayloadLength"    # I

    .line 63
    invoke-static {}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->newBuilder()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->maxFramePayloadLength(I)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->build()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    move-result-object v0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V
    .locals 1
    .param p1, "webSocketURL"    # Ljava/lang/String;
    .param p2, "subprotocols"    # Ljava/lang/String;
    .param p3, "decoderConfig"    # Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    .line 80
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    .line 81
    return-void
.end method


# virtual methods
.method public close(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "frame"    # Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 207
    invoke-interface {p1, p2, p3}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected newHandshakeResponse(Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 16
    .param p1, "req"    # Lio/netty/handler/codec/http/FullHttpRequest;
    .param p2, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderValues;->UPGRADE:Lio/netty/util/AsciiString;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lio/netty/handler/codec/http/HttpHeaders;->containsValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->WEBSOCKET:Lio/netty/util/AsciiString;

    .line 128
    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 133
    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_KEY1:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 134
    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_KEY2:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v4}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    move v2, v5

    .line 136
    .local v2, "isHixie76":Z
    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->ORIGIN:Lio/netty/util/AsciiString;

    invoke-virtual {v4, v5}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "origin":Ljava/lang/String;
    if-nez v4, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    new-instance v3, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing origin header, got only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    invoke-virtual {v6}, Lio/netty/handler/codec/http/HttpHeaders;->names()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :cond_2
    :goto_1
    new-instance v5, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v6, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    new-instance v7, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v8, 0x65

    if-eqz v2, :cond_3

    const-string v9, "WebSocket Protocol Handshake"

    goto :goto_2

    :cond_3
    const-string v9, "Web Socket Protocol Handshake"

    :goto_2
    invoke-direct {v7, v8, v9}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    .line 145
    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/http/FullHttpRequest;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v8

    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v8

    invoke-interface {v8, v3}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    .line 146
    .local v5, "res":Lio/netty/handler/codec/http/FullHttpResponse;
    if-eqz v1, :cond_4

    .line 147
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    invoke-virtual {v6, v1}, Lio/netty/handler/codec/http/HttpHeaders;->add(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 150
    :cond_4
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderValues;->WEBSOCKET:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v7, v8}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 151
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderValues;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v7, v8}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 154
    if-eqz v2, :cond_7

    .line 156
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_ORIGIN:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v7, v4}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 157
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_LOCATION:Lio/netty/util/AsciiString;

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->uri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 159
    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_PROTOCOL:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v7}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "subprotocols":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 161
    invoke-virtual {v0, v6}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->selectSubprotocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, "selectedSubprotocol":Ljava/lang/String;
    if-nez v7, :cond_5

    .line 163
    sget-object v8, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v8}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 164
    sget-object v8, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v9, "Requested subprotocol(s) not supported: {}"

    invoke-interface {v8, v9, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 167
    :cond_5
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v8

    sget-object v9, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_PROTOCOL:Lio/netty/util/AsciiString;

    invoke-virtual {v8, v9, v7}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 172
    .end local v7    # "selectedSubprotocol":Ljava/lang/String;
    :cond_6
    :goto_3
    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v7

    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_KEY1:Lio/netty/util/AsciiString;

    invoke-virtual {v7, v8}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "key1":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v8

    sget-object v9, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_KEY2:Lio/netty/util/AsciiString;

    invoke-virtual {v8, v9}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, "key2":Ljava/lang/String;
    sget-object v9, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->BEGINNING_DIGIT:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sget-object v10, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->BEGINNING_SPACE:Ljava/util/regex/Pattern;

    .line 175
    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    int-to-long v14, v14

    div-long/2addr v12, v14

    long-to-int v12, v12

    .line 176
    .local v12, "a":I
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 177
    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    int-to-long v9, v9

    div-long/2addr v13, v9

    long-to-int v9, v13

    .line 178
    .local v9, "b":I
    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/http/FullHttpRequest;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v10

    invoke-virtual {v10}, Lio/netty/buffer/ByteBuf;->readLong()J

    move-result-wide v10

    .line 179
    .local v10, "c":J
    const/16 v13, 0x10

    new-array v13, v13, [B

    invoke-static {v13}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v13

    invoke-virtual {v13, v3, v3}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 180
    .local v3, "input":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v3, v12}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 181
    invoke-virtual {v3, v9}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 182
    invoke-virtual {v3, v10, v11}, Lio/netty/buffer/ByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 183
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpResponse;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v13

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v14

    invoke-static {v14}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->md5([B)[B

    move-result-object v14

    invoke-virtual {v13, v14}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 184
    .end local v3    # "input":Lio/netty/buffer/ByteBuf;
    .end local v6    # "subprotocols":Ljava/lang/String;
    .end local v7    # "key1":Ljava/lang/String;
    .end local v8    # "key2":Ljava/lang/String;
    .end local v9    # "b":I
    .end local v10    # "c":J
    .end local v12    # "a":I
    goto :goto_4

    .line 186
    :cond_7
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->WEBSOCKET_ORIGIN:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v6, v4}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 187
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->WEBSOCKET_LOCATION:Lio/netty/util/AsciiString;

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->uri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 189
    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->WEBSOCKET_PROTOCOL:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v6}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "protocol":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 191
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->WEBSOCKET_PROTOCOL:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->selectSubprotocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 194
    .end local v3    # "protocol":Ljava/lang/String;
    :cond_8
    :goto_4
    return-object v5

    .line 129
    .end local v2    # "isHixie76":Z
    .end local v4    # "origin":Ljava/lang/String;
    .end local v5    # "res":Lio/netty/handler/codec/http/FullHttpResponse;
    :cond_9
    new-instance v2, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const-string v3, "not a WebSocket handshake request: missing upgrade"

    invoke-direct {v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected newWebSocketEncoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;
    .locals 1

    .line 217
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;

    invoke-direct {v0}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;-><init>()V

    return-object v0
.end method

.method protected newWebsocketDecoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;
    .locals 2

    .line 212
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->decoderConfig()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    return-object v0
.end method
