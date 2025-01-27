.class public Lio/netty/handler/codec/spdy/SpdyHttpDecoder;
.super Lio/netty/handler/codec/MessageToMessageDecoder;
.source "SpdyHttpDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageDecoder<",
        "Lio/netty/handler/codec/spdy/SpdyFrame;",
        ">;"
    }
.end annotation


# instance fields
.field private final maxContentLength:I

.field private final messageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/netty/handler/codec/http/FullHttpMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final spdyVersion:I

.field private final validateHeaders:Z


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;I)V
    .locals 2
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "maxContentLength"    # I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;ILjava/util/Map;Z)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;ILjava/util/Map;)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "maxContentLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/spdy/SpdyVersion;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/netty/handler/codec/http/FullHttpMessage;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p3, "messageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lio/netty/handler/codec/http/FullHttpMessage;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;ILjava/util/Map;Z)V

    .line 91
    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;ILjava/util/Map;Z)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "maxContentLength"    # I
    .param p4, "validateHeaders"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/spdy/SpdyVersion;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/netty/handler/codec/http/FullHttpMessage;",
            ">;Z)V"
        }
    .end annotation

    .line 104
    .local p3, "messageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lio/netty/handler/codec/http/FullHttpMessage;>;"
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageDecoder;-><init>()V

    .line 105
    const-string v0, "version"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyVersion;

    invoke-virtual {v0}, Lio/netty/handler/codec/spdy/SpdyVersion;->getVersion()I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    .line 106
    const-string v0, "maxContentLength"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->maxContentLength:I

    .line 107
    iput-object p3, p0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    .line 108
    iput-boolean p4, p0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->validateHeaders:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;IZ)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "maxContentLength"    # I
    .param p3, "validateHeaders"    # Z

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;ILjava/util/Map;Z)V

    .line 78
    return-void
.end method

.method private static createHttpRequest(Lio/netty/handler/codec/spdy/SpdyHeadersFrame;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 13
    .param p0, "requestFrame"    # Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 360
    invoke-interface {p0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v0

    .line 361
    .local v0, "headers":Lio/netty/handler/codec/spdy/SpdyHeaders;
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->METHOD:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/spdy/SpdyHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpMethod;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v1

    .line 362
    .local v1, "method":Lio/netty/handler/codec/http/HttpMethod;
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->PATH:Lio/netty/util/AsciiString;

    invoke-interface {v0, v2}, Lio/netty/handler/codec/spdy/SpdyHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "url":Ljava/lang/String;
    sget-object v3, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->VERSION:Lio/netty/util/AsciiString;

    invoke-interface {v0, v3}, Lio/netty/handler/codec/spdy/SpdyHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/netty/handler/codec/http/HttpVersion;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v3

    .line 364
    .local v3, "httpVersion":Lio/netty/handler/codec/http/HttpVersion;
    sget-object v4, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->METHOD:Lio/netty/util/AsciiString;

    invoke-interface {v0, v4}, Lio/netty/handler/codec/spdy/SpdyHeaders;->remove(Ljava/lang/Object;)Z

    .line 365
    sget-object v4, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->PATH:Lio/netty/util/AsciiString;

    invoke-interface {v0, v4}, Lio/netty/handler/codec/spdy/SpdyHeaders;->remove(Ljava/lang/Object;)Z

    .line 366
    sget-object v4, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->VERSION:Lio/netty/util/AsciiString;

    invoke-interface {v0, v4}, Lio/netty/handler/codec/spdy/SpdyHeaders;->remove(Ljava/lang/Object;)Z

    .line 368
    const/4 v4, 0x1

    .line 369
    .local v4, "release":Z
    invoke-interface {p1}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v5

    .line 371
    .local v5, "buffer":Lio/netty/buffer/ByteBuf;
    :try_start_0
    new-instance v6, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    invoke-direct {v6, v3, v1, v2, v5}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V

    .line 374
    .local v6, "req":Lio/netty/handler/codec/http/FullHttpRequest;
    sget-object v7, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->SCHEME:Lio/netty/util/AsciiString;

    invoke-interface {v0, v7}, Lio/netty/handler/codec/spdy/SpdyHeaders;->remove(Ljava/lang/Object;)Z

    .line 377
    sget-object v7, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->HOST:Lio/netty/util/AsciiString;

    invoke-interface {v0, v7}, Lio/netty/handler/codec/spdy/SpdyHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 378
    .local v7, "host":Ljava/lang/CharSequence;
    sget-object v8, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->HOST:Lio/netty/util/AsciiString;

    invoke-interface {v0, v8}, Lio/netty/handler/codec/spdy/SpdyHeaders;->remove(Ljava/lang/Object;)Z

    .line 379
    invoke-interface {v6}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v8

    sget-object v9, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-virtual {v8, v9, v7}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 381
    invoke-interface {p0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v8

    invoke-interface {v8}, Lio/netty/handler/codec/spdy/SpdyHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 382
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {v6}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 383
    nop

    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    goto :goto_0

    .line 386
    :cond_0
    const/4 v8, 0x1

    invoke-static {v6, v8}, Lio/netty/handler/codec/http/HttpUtil;->setKeepAlive(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 389
    invoke-interface {v6}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v8

    sget-object v9, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v8, v9}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    const/4 v4, 0x0

    .line 391
    nop

    .line 393
    if-eqz v4, :cond_1

    .line 394
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 391
    :cond_1
    return-object v6

    .line 393
    .end local v6    # "req":Lio/netty/handler/codec/http/FullHttpRequest;
    .end local v7    # "host":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_2

    .line 394
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 396
    :cond_2
    throw v6
.end method

.method private static createHttpResponse(Lio/netty/handler/codec/spdy/SpdyHeadersFrame;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 11
    .param p0, "responseFrame"    # Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "validateHeaders"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 403
    invoke-interface {p0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v0

    .line 404
    .local v0, "headers":Lio/netty/handler/codec/spdy/SpdyHeaders;
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->STATUS:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/spdy/SpdyHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->parseLine(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    .line 405
    .local v1, "status":Lio/netty/handler/codec/http/HttpResponseStatus;
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->VERSION:Lio/netty/util/AsciiString;

    invoke-interface {v0, v2}, Lio/netty/handler/codec/spdy/SpdyHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/handler/codec/http/HttpVersion;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    .line 406
    .local v2, "version":Lio/netty/handler/codec/http/HttpVersion;
    sget-object v3, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->STATUS:Lio/netty/util/AsciiString;

    invoke-interface {v0, v3}, Lio/netty/handler/codec/spdy/SpdyHeaders;->remove(Ljava/lang/Object;)Z

    .line 407
    sget-object v3, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->VERSION:Lio/netty/util/AsciiString;

    invoke-interface {v0, v3}, Lio/netty/handler/codec/spdy/SpdyHeaders;->remove(Ljava/lang/Object;)Z

    .line 409
    const/4 v3, 0x1

    .line 410
    .local v3, "release":Z
    invoke-interface {p1}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 412
    .local v4, "buffer":Lio/netty/buffer/ByteBuf;
    :try_start_0
    new-instance v5, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    invoke-direct {v5, v2, v1, v4, p2}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;Z)V

    .line 413
    .local v5, "res":Lio/netty/handler/codec/http/FullHttpResponse;
    invoke-interface {p0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v6

    invoke-interface {v6}, Lio/netty/handler/codec/spdy/SpdyHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 414
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 415
    nop

    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    goto :goto_0

    .line 418
    :cond_0
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lio/netty/handler/codec/http/HttpUtil;->setKeepAlive(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 421
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v7}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 422
    invoke-interface {v5}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->TRAILER:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v7}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    const/4 v3, 0x0

    .line 425
    nop

    .line 427
    if-eqz v3, :cond_1

    .line 428
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 425
    :cond_1
    return-object v5

    .line 427
    .end local v5    # "res":Lio/netty/handler/codec/http/FullHttpResponse;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    .line 428
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 430
    :cond_2
    throw v5
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 115
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/netty/handler/codec/http/FullHttpMessage;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 116
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/netty/handler/codec/http/FullHttpMessage;>;"
    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 118
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 119
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdyFrame;Ljava/util/List;)V
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/handler/codec/spdy/SpdyFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/spdy/SpdyFrame;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    if-eqz v0, :cond_6

    .line 139
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    .line 140
    .local v0, "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->streamId()I

    move-result v1

    .line 142
    .local v1, "streamId":I
    invoke-static {v1}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->isServerId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->associatedStreamId()I

    move-result v2

    .line 148
    .local v2, "associatedToStreamId":I
    if-nez v2, :cond_0

    .line 149
    new-instance v3, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v4, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v3, v1, v4}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 151
    .local v3, "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {p1, v3}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 152
    return-void

    .line 158
    .end local v3    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    :cond_0
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    new-instance v3, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v4, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v3, v1, v4}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 161
    .restart local v3    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {p1, v3}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 162
    return-void

    .line 167
    .end local v3    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    :cond_1
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->isTruncated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    new-instance v3, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v4, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->INTERNAL_ERROR:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v3, v1, v4}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 170
    .restart local v3    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {p1, v3}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 171
    return-void

    .line 175
    .end local v3    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    :cond_2
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    invoke-static {v0, v3}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->createHttpRequest(Lio/netty/handler/codec/spdy/SpdyHeadersFrame;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v3

    .line 178
    .local v3, "httpRequestWithEntity":Lio/netty/handler/codec/http/FullHttpRequest;
    invoke-interface {v3}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    sget-object v5, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->STREAM_ID:Lio/netty/util/AsciiString;

    invoke-virtual {v4, v5, v1}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 179
    invoke-interface {v3}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    sget-object v5, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->ASSOCIATED_TO_STREAM_ID:Lio/netty/util/AsciiString;

    invoke-virtual {v4, v5, v2}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 180
    invoke-interface {v3}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    sget-object v5, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->PRIORITY:Lio/netty/util/AsciiString;

    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->priority()B

    move-result v6

    invoke-virtual {v4, v5, v6}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 182
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    nop

    .end local v3    # "httpRequestWithEntity":Lio/netty/handler/codec/http/FullHttpRequest;
    goto :goto_0

    .line 184
    :catchall_0
    move-exception v3

    .line 185
    .local v3, "ignored":Ljava/lang/Throwable;
    new-instance v4, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v5, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v4, v1, v5}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 187
    .local v4, "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {p1, v4}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 189
    .end local v2    # "associatedToStreamId":I
    .end local v3    # "ignored":Ljava/lang/Throwable;
    .end local v4    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    :goto_0
    goto :goto_2

    .line 194
    :cond_3
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->isTruncated()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 195
    new-instance v2, Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;

    invoke-direct {v2, v1}, Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;-><init>(I)V

    .line 196
    .local v2, "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    invoke-interface {v2, v3}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    .line 197
    invoke-interface {v2}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v3

    .line 198
    .local v3, "frameHeaders":Lio/netty/handler/codec/spdy/SpdyHeaders;
    sget-object v4, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->STATUS:Lio/netty/util/AsciiString;

    sget-object v5, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_HEADER_FIELDS_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v5}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lio/netty/handler/codec/spdy/SpdyHeaders;->setInt(Ljava/lang/Object;I)Lio/netty/handler/codec/Headers;

    .line 199
    sget-object v4, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->VERSION:Lio/netty/util/AsciiString;

    sget-object v5, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lio/netty/handler/codec/http/HttpVersion;

    invoke-interface {v3, v4, v5}, Lio/netty/handler/codec/spdy/SpdyHeaders;->setObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 200
    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 201
    return-void

    .line 205
    .end local v2    # "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v3    # "frameHeaders":Lio/netty/handler/codec/spdy/SpdyHeaders;
    :cond_4
    :try_start_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-static {v0, v2}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->createHttpRequest(Lio/netty/handler/codec/spdy/SpdyHeadersFrame;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v2

    .line 208
    .local v2, "httpRequestWithEntity":Lio/netty/handler/codec/http/FullHttpRequest;
    invoke-interface {v2}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    sget-object v5, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->STREAM_ID:Lio/netty/util/AsciiString;

    invoke-virtual {v4, v5, v1}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 210
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 211
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    :cond_5
    invoke-virtual {p0, v1, v2}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->putMessage(ILio/netty/handler/codec/http/FullHttpMessage;)Lio/netty/handler/codec/http/FullHttpMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    .end local v2    # "httpRequestWithEntity":Lio/netty/handler/codec/http/FullHttpRequest;
    :goto_1
    goto :goto_2

    .line 216
    :catchall_1
    move-exception v2

    .line 220
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v4, Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;

    invoke-direct {v4, v1}, Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;-><init>(I)V

    .line 221
    .local v4, "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    invoke-interface {v4, v3}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    .line 222
    invoke-interface {v4}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v3

    .line 223
    .restart local v3    # "frameHeaders":Lio/netty/handler/codec/spdy/SpdyHeaders;
    sget-object v5, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->STATUS:Lio/netty/util/AsciiString;

    sget-object v6, Lio/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v6}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v6

    invoke-interface {v3, v5, v6}, Lio/netty/handler/codec/spdy/SpdyHeaders;->setInt(Ljava/lang/Object;I)Lio/netty/handler/codec/Headers;

    .line 224
    sget-object v5, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->VERSION:Lio/netty/util/AsciiString;

    sget-object v6, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lio/netty/handler/codec/http/HttpVersion;

    invoke-interface {v3, v5, v6}, Lio/netty/handler/codec/spdy/SpdyHeaders;->setObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 225
    invoke-interface {p1, v4}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 229
    .end local v0    # "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v1    # "streamId":I
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "frameHeaders":Lio/netty/handler/codec/spdy/SpdyHeaders;
    .end local v4    # "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    :goto_2
    goto/16 :goto_9

    :cond_6
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    .line 231
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    .line 232
    .local v0, "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->streamId()I

    move-result v3

    .line 236
    .local v3, "streamId":I
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->isTruncated()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 237
    new-instance v1, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v2, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->INTERNAL_ERROR:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v1, v3, v2}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 239
    .local v1, "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 240
    return-void

    .line 244
    .end local v1    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    :cond_7
    nop

    .line 245
    :try_start_2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v4

    iget-boolean v5, p0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->validateHeaders:Z

    invoke-static {v0, v4, v5}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->createHttpResponse(Lio/netty/handler/codec/spdy/SpdyHeadersFrame;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v4

    .line 248
    .local v4, "httpResponseWithEntity":Lio/netty/handler/codec/http/FullHttpResponse;
    invoke-interface {v4}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->STREAM_ID:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6, v3}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 250
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->isLast()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 251
    invoke-static {v4, v1, v2}, Lio/netty/handler/codec/http/HttpUtil;->setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V

    .line 252
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 255
    :cond_8
    invoke-virtual {p0, v3, v4}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->putMessage(ILio/netty/handler/codec/http/FullHttpMessage;)Lio/netty/handler/codec/http/FullHttpMessage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 263
    .end local v4    # "httpResponseWithEntity":Lio/netty/handler/codec/http/FullHttpResponse;
    :goto_3
    goto :goto_4

    .line 257
    :catchall_2
    move-exception v1

    .line 260
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v4, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v2, v3, v4}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 262
    .local v2, "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 265
    .end local v0    # "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    .end local v3    # "streamId":I
    :goto_4
    goto/16 :goto_9

    :cond_9
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    if-eqz v0, :cond_10

    .line 267
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 268
    .local v0, "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->streamId()I

    move-result v3

    .line 269
    .restart local v3    # "streamId":I
    invoke-virtual {p0, v3}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->getMessage(I)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v4

    .line 271
    .local v4, "fullHttpMessage":Lio/netty/handler/codec/http/FullHttpMessage;
    if-nez v4, :cond_d

    .line 273
    invoke-static {v3}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->isServerId(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 277
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->isTruncated()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 278
    new-instance v1, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v2, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->INTERNAL_ERROR:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v1, v3, v2}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 280
    .local v1, "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 281
    return-void

    .line 285
    .end local v1    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    :cond_a
    :try_start_3
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v5

    iget-boolean v6, p0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->validateHeaders:Z

    invoke-static {v0, v5, v6}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->createHttpResponse(Lio/netty/handler/codec/spdy/SpdyHeadersFrame;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v5

    move-object v4, v5

    .line 288
    invoke-interface {v4}, Lio/netty/handler/codec/http/FullHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->STREAM_ID:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6, v3}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 290
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->isLast()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 291
    invoke-static {v4, v1, v2}, Lio/netty/handler/codec/http/HttpUtil;->setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V

    .line 292
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 295
    :cond_b
    invoke-virtual {p0, v3, v4}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->putMessage(ILio/netty/handler/codec/http/FullHttpMessage;)Lio/netty/handler/codec/http/FullHttpMessage;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 303
    :goto_5
    goto :goto_6

    .line 297
    :catchall_3
    move-exception v1

    .line 300
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v5, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v2, v3, v5}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 302
    .restart local v2    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 305
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    :cond_c
    :goto_6
    return-void

    .line 309
    :cond_d
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->isTruncated()Z

    move-result v1

    if-nez v1, :cond_e

    .line 310
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/spdy/SpdyHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 311
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {v4}, Lio/netty/handler/codec/http/FullHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 312
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    goto :goto_7

    .line 315
    :cond_e
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->isLast()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 316
    invoke-interface {v4}, Lio/netty/handler/codec/http/FullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v4, v1, v2}, Lio/netty/handler/codec/http/HttpUtil;->setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V

    .line 317
    invoke-virtual {p0, v3}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->removeMessage(I)Lio/netty/handler/codec/http/FullHttpMessage;

    .line 318
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v0    # "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .end local v3    # "streamId":I
    .end local v4    # "fullHttpMessage":Lio/netty/handler/codec/http/FullHttpMessage;
    :cond_f
    goto/16 :goto_9

    :cond_10
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyDataFrame;

    if-eqz v0, :cond_13

    .line 323
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyDataFrame;

    .line 324
    .local v0, "spdyDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->streamId()I

    move-result v1

    .line 325
    .local v1, "streamId":I
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->getMessage(I)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v2

    .line 328
    .local v2, "fullHttpMessage":Lio/netty/handler/codec/http/FullHttpMessage;
    if-nez v2, :cond_11

    .line 329
    return-void

    .line 332
    :cond_11
    invoke-interface {v2}, Lio/netty/handler/codec/http/FullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 333
    .local v3, "content":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    iget v5, p0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->maxContentLength:I

    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v6

    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_12

    .line 339
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 340
    .local v4, "spdyDataFrameData":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    .line 341
    .local v5, "spdyDataFrameDataLen":I
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    invoke-virtual {v3, v4, v6, v5}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 343
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 344
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v2, v6, v7}, Lio/netty/handler/codec/http/HttpUtil;->setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V

    .line 345
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->removeMessage(I)Lio/netty/handler/codec/http/FullHttpMessage;

    .line 346
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 334
    .end local v4    # "spdyDataFrameData":Lio/netty/buffer/ByteBuf;
    .end local v5    # "spdyDataFrameDataLen":I
    :cond_12
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->removeMessage(I)Lio/netty/handler/codec/http/FullHttpMessage;

    .line 335
    new-instance v4, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP content length exceeded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->maxContentLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 349
    .end local v0    # "spdyDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .end local v1    # "streamId":I
    .end local v2    # "fullHttpMessage":Lio/netty/handler/codec/http/FullHttpMessage;
    .end local v3    # "content":Lio/netty/buffer/ByteBuf;
    :cond_13
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    if-eqz v0, :cond_14

    .line 351
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    .line 352
    .local v0, "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;->streamId()I

    move-result v1

    .line 353
    .restart local v1    # "streamId":I
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->removeMessage(I)Lio/netty/handler/codec/http/FullHttpMessage;

    goto :goto_9

    .line 349
    .end local v0    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    .end local v1    # "streamId":I
    :cond_14
    :goto_8
    nop

    .line 355
    :goto_9
    return-void
.end method

.method protected bridge synthetic decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    check-cast p2, Lio/netty/handler/codec/spdy/SpdyFrame;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdyFrame;Ljava/util/List;)V

    return-void
.end method

.method protected getMessage(I)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 2
    .param p1, "streamId"    # I

    .line 126
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/FullHttpMessage;

    return-object v0
.end method

.method protected putMessage(ILio/netty/handler/codec/http/FullHttpMessage;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "message"    # Lio/netty/handler/codec/http/FullHttpMessage;

    .line 122
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/FullHttpMessage;

    return-object v0
.end method

.method protected removeMessage(I)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 2
    .param p1, "streamId"    # I

    .line 130
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/FullHttpMessage;

    return-object v0
.end method
