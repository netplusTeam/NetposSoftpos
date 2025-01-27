.class public Lio/netty/handler/codec/spdy/SpdyHttpEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "SpdyHttpEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Lio/netty/handler/codec/http/HttpObject;",
        ">;"
    }
.end annotation


# instance fields
.field private currentStreamId:I

.field private final headersToLowerCase:Z

.field private final validateHeaders:Z


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;

    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;ZZ)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;ZZ)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "headersToLowerCase"    # Z
    .param p3, "validateHeaders"    # Z

    .line 147
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    .line 148
    const-string v0, "version"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    iput-boolean p2, p0, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->headersToLowerCase:Z

    .line 150
    iput-boolean p3, p0, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->validateHeaders:Z

    .line 151
    return-void
.end method

.method private createHeadersFrame(Lio/netty/handler/codec/http/HttpResponse;)Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .locals 9
    .param p1, "httpResponse"    # Lio/netty/handler/codec/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 279
    .local v0, "httpHeaders":Lio/netty/handler/codec/http/HttpHeaders;
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->STREAM_ID:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 280
    .local v1, "streamId":I
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->STREAM_ID:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 284
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 285
    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 286
    const-string v2, "Proxy-Connection"

    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 287
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 290
    invoke-static {v1}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->isServerId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    new-instance v2, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;

    iget-boolean v3, p0, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->validateHeaders:Z

    invoke-direct {v2, v1, v3}, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;-><init>(IZ)V

    .local v2, "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    goto :goto_0

    .line 293
    .end local v2    # "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    :cond_0
    new-instance v2, Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;

    iget-boolean v3, p0, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->validateHeaders:Z

    invoke-direct {v2, v1, v3}, Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;-><init>(IZ)V

    .line 295
    .restart local v2    # "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    :goto_0
    invoke-interface {v2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v3

    .line 297
    .local v3, "frameHeaders":Lio/netty/handler/codec/spdy/SpdyHeaders;
    sget-object v4, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->STATUS:Lio/netty/util/AsciiString;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v5

    invoke-virtual {v5}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeAsText()Lio/netty/util/AsciiString;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/netty/handler/codec/spdy/SpdyHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 298
    sget-object v4, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->VERSION:Lio/netty/util/AsciiString;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v5

    invoke-virtual {v5}, Lio/netty/handler/codec/http/HttpVersion;->text()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/netty/handler/codec/spdy/SpdyHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 301
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->iteratorCharSequence()Ljava/util/Iterator;

    move-result-object v4

    .line 302
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 303
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 304
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    iget-boolean v6, p0, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->headersToLowerCase:Z

    if-eqz v6, :cond_1

    .line 305
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v6

    invoke-virtual {v6}, Lio/netty/util/AsciiString;->toLowerCase()Lio/netty/util/AsciiString;

    move-result-object v6

    goto :goto_2

    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 306
    .local v6, "headerName":Ljava/lang/CharSequence;
    :goto_2
    invoke-interface {v2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lio/netty/handler/codec/spdy/SpdyHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 307
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    .end local v6    # "headerName":Ljava/lang/CharSequence;
    goto :goto_1

    .line 309
    :cond_2
    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->currentStreamId:I

    .line 310
    invoke-static {p1}, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->isLast(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v5

    invoke-interface {v2, v5}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 312
    return-object v2
.end method

.method private createSynStreamFrame(Lio/netty/handler/codec/http/HttpRequest;)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .locals 12
    .param p1, "httpRequest"    # Lio/netty/handler/codec/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 221
    .local v0, "httpHeaders":Lio/netty/handler/codec/http/HttpHeaders;
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->STREAM_ID:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 222
    .local v1, "streamId":I
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->ASSOCIATED_TO_STREAM_ID:Lio/netty/util/AsciiString;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 223
    .local v2, "associatedToStreamId":I
    sget-object v4, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->PRIORITY:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v4, v3}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;I)I

    move-result v3

    int-to-byte v3, v3

    .line 224
    .local v3, "priority":B
    sget-object v4, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->SCHEME:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v4}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "scheme":Ljava/lang/CharSequence;
    sget-object v5, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->STREAM_ID:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 226
    sget-object v5, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->ASSOCIATED_TO_STREAM_ID:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 227
    sget-object v5, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->PRIORITY:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 228
    sget-object v5, Lio/netty/handler/codec/spdy/SpdyHttpHeaders$Names;->SCHEME:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 232
    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 233
    const-string v5, "Keep-Alive"

    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 234
    const-string v5, "Proxy-Connection"

    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 235
    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 237
    new-instance v5, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;

    iget-boolean v6, p0, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->validateHeaders:Z

    invoke-direct {v5, v1, v2, v3, v6}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;-><init>(IIBZ)V

    .line 241
    .local v5, "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    invoke-interface {v5}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v6

    .line 242
    .local v6, "frameHeaders":Lio/netty/handler/codec/spdy/SpdyHeaders;
    sget-object v7, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->METHOD:Lio/netty/util/AsciiString;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v8

    invoke-virtual {v8}, Lio/netty/handler/codec/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lio/netty/handler/codec/spdy/SpdyHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 243
    sget-object v7, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->PATH:Lio/netty/util/AsciiString;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lio/netty/handler/codec/spdy/SpdyHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 244
    sget-object v7, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->VERSION:Lio/netty/util/AsciiString;

    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v8

    invoke-virtual {v8}, Lio/netty/handler/codec/http/HttpVersion;->text()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lio/netty/handler/codec/spdy/SpdyHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 247
    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v7}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, "host":Ljava/lang/CharSequence;
    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v8}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 249
    sget-object v8, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->HOST:Lio/netty/util/AsciiString;

    invoke-interface {v6, v8, v7}, Lio/netty/handler/codec/spdy/SpdyHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 252
    if-nez v4, :cond_0

    .line 253
    const-string v4, "https"

    .line 255
    :cond_0
    sget-object v8, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->SCHEME:Lio/netty/util/AsciiString;

    invoke-interface {v6, v8, v4}, Lio/netty/handler/codec/spdy/SpdyHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 258
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->iteratorCharSequence()Ljava/util/Iterator;

    move-result-object v8

    .line 259
    .local v8, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 260
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 261
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    iget-boolean v10, p0, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->headersToLowerCase:Z

    if-eqz v10, :cond_1

    .line 262
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v10

    invoke-virtual {v10}, Lio/netty/util/AsciiString;->toLowerCase()Lio/netty/util/AsciiString;

    move-result-object v10

    goto :goto_1

    :cond_1
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    .line 263
    .local v10, "headerName":Ljava/lang/CharSequence;
    :goto_1
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Lio/netty/handler/codec/spdy/SpdyHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 264
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    .end local v10    # "headerName":Ljava/lang/CharSequence;
    goto :goto_0

    .line 265
    :cond_2
    invoke-interface {v5}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->streamId()I

    move-result v9

    iput v9, p0, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->currentStreamId:I

    .line 266
    if-nez v2, :cond_3

    .line 267
    invoke-static {p1}, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->isLast(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v9

    invoke-interface {v5, v9}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    goto :goto_2

    .line 269
    :cond_3
    const/4 v9, 0x1

    invoke-interface {v5, v9}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->setUnidirectional(Z)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    .line 272
    :goto_2
    return-object v5
.end method

.method private static isLast(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 2
    .param p0, "httpMessage"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 322
    instance-of v0, p0, Lio/netty/handler/codec/http/FullHttpMessage;

    if-eqz v0, :cond_0

    .line 323
    move-object v0, p0

    check-cast v0, Lio/netty/handler/codec/http/FullHttpMessage;

    .line 324
    .local v0, "fullMessage":Lio/netty/handler/codec/http/FullHttpMessage;
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpMessage;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    const/4 v1, 0x1

    return v1

    .line 329
    .end local v0    # "fullMessage":Lio/netty/handler/codec/http/FullHttpMessage;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V
    .locals 16
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/handler/codec/http/HttpObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/HttpObject;",
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

    .line 156
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 157
    .local v3, "valid":Z
    const/4 v4, 0x0

    .line 159
    .local v4, "last":Z
    instance-of v5, v1, Lio/netty/handler/codec/http/HttpRequest;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 161
    move-object v5, v1

    check-cast v5, Lio/netty/handler/codec/http/HttpRequest;

    .line 162
    .local v5, "httpRequest":Lio/netty/handler/codec/http/HttpRequest;
    invoke-direct {v0, v5}, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->createSynStreamFrame(Lio/netty/handler/codec/http/HttpRequest;)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    move-result-object v8

    .line 163
    .local v8, "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v8}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v8}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->isUnidirectional()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    move v9, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v7

    :goto_1
    move v4, v9

    .line 166
    const/4 v3, 0x1

    .line 168
    .end local v5    # "httpRequest":Lio/netty/handler/codec/http/HttpRequest;
    .end local v8    # "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    :cond_2
    instance-of v5, v1, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v5, :cond_3

    .line 170
    move-object v5, v1

    check-cast v5, Lio/netty/handler/codec/http/HttpResponse;

    .line 171
    .local v5, "httpResponse":Lio/netty/handler/codec/http/HttpResponse;
    invoke-direct {v0, v5}, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->createHeadersFrame(Lio/netty/handler/codec/http/HttpResponse;)Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    move-result-object v8

    .line 172
    .local v8, "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v8}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->isLast()Z

    move-result v4

    .line 175
    const/4 v3, 0x1

    .line 177
    .end local v5    # "httpResponse":Lio/netty/handler/codec/http/HttpResponse;
    .end local v8    # "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    :cond_3
    instance-of v5, v1, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v5, :cond_8

    if-nez v4, :cond_8

    .line 179
    move-object v5, v1

    check-cast v5, Lio/netty/handler/codec/http/HttpContent;

    .line 181
    .local v5, "chunk":Lio/netty/handler/codec/http/HttpContent;
    invoke-interface {v5}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v8

    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    .line 182
    new-instance v8, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    iget v9, v0, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->currentStreamId:I

    invoke-interface {v5}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(ILio/netty/buffer/ByteBuf;)V

    .line 183
    .local v8, "spdyDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    instance-of v9, v5, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v9, :cond_7

    .line 184
    move-object v9, v5

    check-cast v9, Lio/netty/handler/codec/http/LastHttpContent;

    .line 185
    .local v9, "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    invoke-interface {v9}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v10

    .line 186
    .local v10, "trailers":Lio/netty/handler/codec/http/HttpHeaders;
    invoke-virtual {v10}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 187
    invoke-interface {v8, v7}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    .line 188
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 191
    :cond_4
    new-instance v11, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;

    iget v12, v0, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->currentStreamId:I

    iget-boolean v13, v0, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->validateHeaders:Z

    invoke-direct {v11, v12, v13}, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;-><init>(IZ)V

    .line 192
    .local v11, "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    invoke-interface {v11, v7}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 193
    invoke-virtual {v10}, Lio/netty/handler/codec/http/HttpHeaders;->iteratorCharSequence()Ljava/util/Iterator;

    move-result-object v7

    .line 194
    .local v7, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 195
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 196
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    iget-boolean v13, v0, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->headersToLowerCase:Z

    if-eqz v13, :cond_5

    .line 197
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v13

    invoke-virtual {v13}, Lio/netty/util/AsciiString;->toLowerCase()Lio/netty/util/AsciiString;

    move-result-object v13

    goto :goto_3

    :cond_5
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    .line 198
    .local v13, "headerName":Ljava/lang/CharSequence;
    :goto_3
    invoke-interface {v11}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v14

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v13, v15}, Lio/netty/handler/codec/spdy/SpdyHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 199
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    .end local v13    # "headerName":Ljava/lang/CharSequence;
    goto :goto_2

    .line 202
    :cond_6
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v7    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;>;"
    .end local v9    # "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    .end local v10    # "trailers":Lio/netty/handler/codec/http/HttpHeaders;
    .end local v11    # "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    :goto_4
    goto :goto_5

    .line 206
    :cond_7
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :goto_5
    const/4 v3, 0x1

    .line 212
    .end local v5    # "chunk":Lio/netty/handler/codec/http/HttpContent;
    .end local v8    # "spdyDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    :cond_8
    if-eqz v3, :cond_9

    .line 215
    return-void

    .line 213
    :cond_9
    new-instance v5, Lio/netty/handler/codec/UnsupportedMessageTypeException;

    new-array v6, v6, [Ljava/lang/Class;

    invoke-direct {v5, v1, v6}, Lio/netty/handler/codec/UnsupportedMessageTypeException;-><init>(Ljava/lang/Object;[Ljava/lang/Class;)V

    throw v5
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    check-cast p2, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V

    return-void
.end method
