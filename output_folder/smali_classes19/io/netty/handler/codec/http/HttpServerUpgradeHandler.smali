.class public Lio/netty/handler/codec/http/HttpServerUpgradeHandler;
.super Lio/netty/handler/codec/http/HttpObjectAggregator;
.source "HttpServerUpgradeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;,
        Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodecFactory;,
        Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodec;,
        Lio/netty/handler/codec/http/HttpServerUpgradeHandler$SourceCodec;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private handlingUpgrade:Z

.field private final sourceCodec:Lio/netty/handler/codec/http/HttpServerUpgradeHandler$SourceCodec;

.field private final upgradeCodecFactory:Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodecFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpServerUpgradeHandler$SourceCodec;Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodecFactory;)V
    .locals 1
    .param p1, "sourceCodec"    # Lio/netty/handler/codec/http/HttpServerUpgradeHandler$SourceCodec;
    .param p2, "upgradeCodecFactory"    # Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodecFactory;

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;-><init>(Lio/netty/handler/codec/http/HttpServerUpgradeHandler$SourceCodec;Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodecFactory;I)V

    .line 190
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpServerUpgradeHandler$SourceCodec;Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodecFactory;I)V
    .locals 1
    .param p1, "sourceCodec"    # Lio/netty/handler/codec/http/HttpServerUpgradeHandler$SourceCodec;
    .param p2, "upgradeCodecFactory"    # Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodecFactory;
    .param p3, "maxContentLength"    # I

    .line 202
    invoke-direct {p0, p3}, Lio/netty/handler/codec/http/HttpObjectAggregator;-><init>(I)V

    .line 204
    const-string v0, "sourceCodec"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$SourceCodec;

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;->sourceCodec:Lio/netty/handler/codec/http/HttpServerUpgradeHandler$SourceCodec;

    .line 205
    const-string v0, "upgradeCodecFactory"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodecFactory;

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;->upgradeCodecFactory:Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodecFactory;

    .line 206
    return-void
.end method

.method private static createUpgradeResponse(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 5
    .param p0, "upgradeProtocol"    # Ljava/lang/CharSequence;

    .line 356
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;Z)V

    .line 358
    .local v0, "res":Lio/netty/handler/codec/http/DefaultFullHttpResponse;
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderValues;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 359
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2, p0}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 360
    return-object v0
.end method

.method private static isUpgradeRequest(Lio/netty/handler/codec/http/HttpObject;)Z
    .locals 2
    .param p0, "msg"    # Lio/netty/handler/codec/http/HttpObject;

    .line 254
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static splitHeader(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 5
    .param p0, "header"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 369
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    .local v1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 371
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 372
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 374
    goto :goto_1

    .line 376
    :cond_0
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 381
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_3
    return-object v1
.end method

.method private upgrade(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpRequest;)Z
    .locals 13
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "request"    # Lio/netty/handler/codec/http/FullHttpRequest;

    .line 267
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;->splitHeader(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 268
    .local v0, "requestedProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 269
    .local v1, "numRequestedProtocols":I
    const/4 v2, 0x0

    .line 270
    .local v2, "upgradeCodec":Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodec;
    const/4 v3, 0x0

    .line 271
    .local v3, "upgradeProtocol":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 272
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 273
    .local v5, "p":Ljava/lang/CharSequence;
    iget-object v6, p0, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;->upgradeCodecFactory:Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodecFactory;

    invoke-interface {v6, v5}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodecFactory;->newUpgradeCodec(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodec;

    move-result-object v6

    .line 274
    .local v6, "c":Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodec;
    if-eqz v6, :cond_0

    .line 275
    move-object v3, v5

    .line 276
    move-object v2, v6

    .line 277
    goto :goto_1

    .line 271
    .end local v5    # "p":Ljava/lang/CharSequence;
    .end local v6    # "c":Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodec;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 281
    .end local v4    # "i":I
    :cond_1
    :goto_1
    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 283
    return v4

    .line 287
    :cond_2
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v5

    .line 289
    .local v5, "connectionHeaderValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_3

    .line 290
    return v4

    .line 293
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0xa

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 294
    .local v6, "concatenatedConnectionValue":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 295
    .local v8, "connectionHeaderValue":Ljava/lang/CharSequence;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    .end local v8    # "connectionHeaderValue":Ljava/lang/CharSequence;
    goto :goto_2

    .line 297
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 300
    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodec;->requiredUpgradeHeaders()Ljava/util/Collection;

    move-result-object v7

    .line 301
    .local v7, "requiredHeaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/CharSequence;>;"
    invoke-static {v6}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;->splitHeader(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v9

    .line 302
    .local v9, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    sget-object v10, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-static {v9, v10}, Lio/netty/util/AsciiString;->containsContentEqualsIgnoreCase(Ljava/util/Collection;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 303
    invoke-static {v9, v7}, Lio/netty/util/AsciiString;->containsAllContentEqualsIgnoreCase(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_4

    .line 308
    :cond_5
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    .line 309
    .local v11, "requiredHeader":Ljava/lang/CharSequence;
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v12

    invoke-virtual {v12, v11}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 310
    return v4

    .line 312
    .end local v11    # "requiredHeader":Ljava/lang/CharSequence;
    :cond_6
    goto :goto_3

    .line 316
    :cond_7
    invoke-static {v3}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;->createUpgradeResponse(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v10

    .line 317
    .local v10, "upgradeResponse":Lio/netty/handler/codec/http/FullHttpResponse;
    invoke-interface {v10}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v11

    invoke-interface {v2, p1, p2, v11}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodec;->prepareUpgradeResponse(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/HttpHeaders;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 318
    return v4

    .line 322
    :cond_8
    new-instance v4, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;

    invoke-direct {v4, v3, p2}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;-><init>(Ljava/lang/CharSequence;Lio/netty/handler/codec/http/FullHttpRequest;)V

    .line 329
    .local v4, "event":Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;
    :try_start_0
    invoke-interface {p1, v10}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v11

    .line 331
    .local v11, "writeComplete":Lio/netty/channel/ChannelFuture;
    iget-object v12, p0, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;->sourceCodec:Lio/netty/handler/codec/http/HttpServerUpgradeHandler$SourceCodec;

    invoke-interface {v12, p1}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$SourceCodec;->upgradeFrom(Lio/netty/channel/ChannelHandlerContext;)V

    .line 332
    invoke-interface {v2, p1, p2}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodec;->upgradeTo(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpRequest;)V

    .line 335
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v12

    invoke-interface {v12, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 339
    invoke-virtual {v4}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;->retain()Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;

    move-result-object v12

    invoke-interface {p1, v12}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 344
    sget-object v12, Lio/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v11, v12}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    nop

    .end local v11    # "writeComplete":Lio/netty/channel/ChannelFuture;
    invoke-virtual {v4}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;->release()Z

    .line 348
    nop

    .line 349
    return v8

    .line 347
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;->release()Z

    .line 348
    throw v8

    .line 304
    .end local v4    # "event":Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;
    .end local v10    # "upgradeResponse":Lio/netty/handler/codec/http/FullHttpResponse;
    :cond_9
    :goto_4
    return v4
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V
    .locals 2
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

    .line 212
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;->handlingUpgrade:Z

    invoke-static {p2}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;->isUpgradeRequest(Lio/netty/handler/codec/http/HttpObject;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;->handlingUpgrade:Z

    .line 213
    if-nez v0, :cond_0

    .line 215
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void

    .line 221
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpRequest;

    if-eqz v0, :cond_1

    .line 222
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/FullHttpRequest;

    .line 223
    .local v0, "fullRequest":Lio/netty/handler/codec/http/FullHttpRequest;
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v0    # "fullRequest":Lio/netty/handler/codec/http/FullHttpRequest;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectAggregator;->decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V

    .line 228
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    return-void

    .line 234
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;->handlingUpgrade:Z

    .line 236
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/FullHttpRequest;

    .line 239
    .restart local v0    # "fullRequest":Lio/netty/handler/codec/http/FullHttpRequest;
    :goto_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;->upgrade(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpRequest;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 248
    :cond_3
    return-void

    .line 234
    .end local v0    # "fullRequest":Lio/netty/handler/codec/http/FullHttpRequest;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected bridge synthetic decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    check-cast p2, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V

    return-void
.end method
