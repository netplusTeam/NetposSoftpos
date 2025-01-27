.class public Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;
.super Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
.source "WebSocketClientHandshaker00.java"


# static fields
.field private static final WEBSOCKET:Lio/netty/util/AsciiString;


# instance fields
.field private expectedChallengeResponseBytes:Lio/netty/buffer/ByteBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "WebSocket"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->WEBSOCKET:Lio/netty/util/AsciiString;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;I)V
    .locals 8
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p5, "maxFramePayloadLength"    # I

    .line 67
    const-wide/16 v6, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJ)V
    .locals 9
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p5, "maxFramePayloadLength"    # I
    .param p6, "forceCloseTimeoutMillis"    # J

    .line 91
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJZ)V

    .line 92
    return-void
.end method

.method constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJZ)V
    .locals 0
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p5, "maxFramePayloadLength"    # I
    .param p6, "forceCloseTimeoutMillis"    # J
    .param p8, "absoluteUpgradeUrl"    # Z

    .line 117
    invoke-direct/range {p0 .. p8}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJZ)V

    .line 119
    return-void
.end method

.method private static insertRandomCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;

    .line 256
    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v0

    .line 258
    .local v0, "count":I
    new-array v1, v0, [C

    .line 259
    .local v1, "randomChars":[C
    const/4 v2, 0x0

    .line 260
    .local v2, "randCount":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 261
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x405f800000000000L    # 126.0

    mul-double/2addr v3, v5

    const-wide v5, 0x4040800000000000L    # 33.0

    add-double/2addr v3, v5

    double-to-int v3, v3

    .line 262
    .local v3, "rand":I
    const/16 v4, 0x21

    if-ge v4, v3, :cond_0

    const/16 v4, 0x2f

    if-lt v3, v4, :cond_1

    :cond_0
    const/16 v4, 0x3a

    if-ge v4, v3, :cond_2

    const/16 v4, 0x7e

    if-ge v3, v4, :cond_2

    .line 263
    :cond_1
    int-to-char v4, v3

    aput-char v4, v1, v2

    .line 264
    add-int/lit8 v2, v2, 0x1

    .line 266
    .end local v3    # "rand":I
    :cond_2
    goto :goto_0

    .line 268
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v4

    .line 270
    .local v4, "split":I
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "part1":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "part2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-char v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 268
    .end local v4    # "split":I
    .end local v5    # "part1":Ljava/lang/String;
    .end local v6    # "part2":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 275
    .end local v3    # "i":I
    :cond_4
    return-object p0
.end method

.method private static insertSpaces(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "spaces"    # I

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v2, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v1

    .line 281
    .local v1, "split":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "part1":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "part2":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 279
    .end local v1    # "split":I
    .end local v2    # "part1":Ljava/lang/String;
    .end local v3    # "part2":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method


# virtual methods
.method protected newHandshakeRequest()Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 22

    .line 142
    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v3

    .line 143
    .local v3, "spaces1":I
    invoke-static {v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v1

    .line 145
    .local v1, "spaces2":I
    const v2, 0x7fffffff

    div-int v4, v2, v3

    .line 146
    .local v4, "max1":I
    div-int/2addr v2, v1

    .line 148
    .local v2, "max2":I
    const/4 v5, 0x0

    invoke-static {v5, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v6

    .line 149
    .local v6, "number1":I
    invoke-static {v5, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v7

    .line 151
    .local v7, "number2":I
    mul-int v8, v6, v3

    .line 152
    .local v8, "product1":I
    mul-int v9, v7, v1

    .line 154
    .local v9, "product2":I
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, "key1":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 157
    .local v11, "key2":Ljava/lang/String;
    invoke-static {v10}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->insertRandomCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 158
    invoke-static {v11}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->insertRandomCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 160
    invoke-static {v10, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->insertSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 161
    invoke-static {v11, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->insertSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 163
    const/16 v12, 0x8

    invoke-static {v12}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->randomBytes(I)[B

    move-result-object v13

    .line 165
    .local v13, "key3":[B
    const/4 v14, 0x4

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 166
    .local v15, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v15, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 167
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 168
    .local v12, "number1Array":[B
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 169
    invoke-virtual {v15, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 170
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 172
    .local v5, "number2Array":[B
    const/16 v14, 0x10

    new-array v14, v14, [B

    .line 173
    .local v14, "challenge":[B
    move/from16 v19, v1

    move/from16 v17, v2

    const/4 v1, 0x4

    const/4 v2, 0x0

    .end local v1    # "spaces2":I
    .end local v2    # "max2":I
    .local v17, "max2":I
    .local v19, "spaces2":I
    invoke-static {v12, v2, v14, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    invoke-static {v5, v2, v14, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    const/16 v1, 0x8

    invoke-static {v13, v2, v14, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    invoke-static {v14}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->md5([B)[B

    move-result-object v1

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iput-object v1, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->expectedChallengeResponseBytes:Lio/netty/buffer/ByteBuf;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->uri()Ljava/net/URI;

    move-result-object v1

    .line 181
    .local v1, "wsURL":Ljava/net/URI;
    new-instance v2, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    move/from16 v16, v3

    .end local v3    # "spaces1":I
    .local v16, "spaces1":I
    sget-object v3, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    move/from16 v18, v4

    .end local v4    # "max1":I
    .local v18, "max1":I
    sget-object v4, Lio/netty/handler/codec/http/HttpMethod;->GET:Lio/netty/handler/codec/http/HttpMethod;

    move-object/from16 v20, v5

    .end local v5    # "number2Array":[B
    .local v20, "number2Array":[B
    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->upgradeUrl(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v5

    .line 182
    move/from16 v21, v6

    .end local v6    # "number1":I
    .local v21, "number1":I
    invoke-static {v13}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V

    .line 183
    .local v2, "request":Lio/netty/handler/codec/http/FullHttpRequest;
    invoke-interface {v2}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    .line 185
    .local v3, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    iget-object v4, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    if-eqz v4, :cond_0

    .line 186
    iget-object v4, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->add(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 189
    :cond_0
    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    sget-object v5, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->WEBSOCKET:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v4, v5}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->UPGRADE:Lio/netty/util/AsciiString;

    .line 190
    invoke-virtual {v4, v5, v6}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    .line 191
    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->websocketHostValue(Ljava/net/URI;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_KEY1:Lio/netty/util/AsciiString;

    .line 192
    invoke-virtual {v4, v5, v10}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_KEY2:Lio/netty/util/AsciiString;

    .line 193
    invoke-virtual {v4, v5, v11}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 195
    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->ORIGIN:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 196
    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->ORIGIN:Lio/netty/util/AsciiString;

    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->websocketOriginValue(Ljava/net/URI;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 199
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->expectedSubprotocol()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "expectedSubprotocol":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 201
    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_PROTOCOL:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v5, v4}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 206
    :cond_2
    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    array-length v6, v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 207
    return-object v2
.end method

.method protected newWebSocketEncoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;
    .locals 1

    .line 296
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;

    invoke-direct {v0}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;-><init>()V

    return-object v0
.end method

.method protected newWebsocketDecoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;
    .locals 2

    .line 291
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->maxFramePayloadLength()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;-><init>(I)V

    return-object v0
.end method

.method public setForceCloseTimeoutMillis(J)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;
    .locals 0
    .param p1, "forceCloseTimeoutMillis"    # J

    .line 301
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->setForceCloseTimeoutMillis(J)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    .line 302
    return-object p0
.end method

.method public bridge synthetic setForceCloseTimeoutMillis(J)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->setForceCloseTimeoutMillis(J)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;

    move-result-object p1

    return-object p1
.end method

.method protected verify(Lio/netty/handler/codec/http/FullHttpResponse;)V
    .locals 5
    .param p1, "response"    # Lio/netty/handler/codec/http/FullHttpResponse;

    .line 232
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 238
    .local v0, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "upgrade":Ljava/lang/CharSequence;
    sget-object v2, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->WEBSOCKET:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderValues;->UPGRADE:Lio/netty/util/AsciiString;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->containsValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpResponse;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 250
    .local v2, "challenge":Lio/netty/buffer/ByteBuf;
    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->expectedChallengeResponseBytes:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    return-void

    .line 251
    :cond_0
    new-instance v3, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const-string v4, "Invalid challenge"

    invoke-direct {v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 245
    .end local v2    # "challenge":Lio/netty/buffer/ByteBuf;
    :cond_1
    new-instance v2, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handshake response connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    .line 246
    invoke-virtual {v0, v4}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_2
    new-instance v2, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handshake response upgrade: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    .end local v0    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    .end local v1    # "upgrade":Ljava/lang/CharSequence;
    :cond_3
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid handshake response getStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
