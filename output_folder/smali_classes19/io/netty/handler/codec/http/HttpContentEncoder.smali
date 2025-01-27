.class public abstract Lio/netty/handler/codec/http/HttpContentEncoder;
.super Lio/netty/handler/codec/MessageToMessageCodec;
.source "HttpContentEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpContentEncoder$Result;,
        Lio/netty/handler/codec/http/HttpContentEncoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageCodec<",
        "Lio/netty/handler/codec/http/HttpRequest;",
        "Lio/netty/handler/codec/http/HttpObject;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONTINUE_CODE:I

.field private static final ZERO_LENGTH_CONNECT:Ljava/lang/CharSequence;

.field private static final ZERO_LENGTH_HEAD:Ljava/lang/CharSequence;


# instance fields
.field private final acceptEncodingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private encoder:Lio/netty/channel/embedded/EmbeddedChannel;

.field private state:Lio/netty/handler/codec/http/HttpContentEncoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    nop

    .line 64
    const-string v0, "HEAD"

    sput-object v0, Lio/netty/handler/codec/http/HttpContentEncoder;->ZERO_LENGTH_HEAD:Ljava/lang/CharSequence;

    .line 65
    const-string v0, "CONNECT"

    sput-object v0, Lio/netty/handler/codec/http/HttpContentEncoder;->ZERO_LENGTH_CONNECT:Ljava/lang/CharSequence;

    .line 66
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    sput v0, Lio/netty/handler/codec/http/HttpContentEncoder;->CONTINUE_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageCodec;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->acceptEncodingQueue:Ljava/util/Queue;

    .line 70
    sget-object v0, Lio/netty/handler/codec/http/HttpContentEncoder$State;->AWAIT_HEADERS:Lio/netty/handler/codec/http/HttpContentEncoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->state:Lio/netty/handler/codec/http/HttpContentEncoder$State;

    return-void
.end method

.method private cleanup()V
    .locals 1

    .line 317
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->encoder:Lio/netty/channel/embedded/EmbeddedChannel;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->finishAndReleaseAll()Z

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->encoder:Lio/netty/channel/embedded/EmbeddedChannel;

    .line 322
    :cond_0
    return-void
.end method

.method private cleanupSafely(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 326
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpContentEncoder;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    .line 330
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 332
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private encode(Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 4
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 336
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->encoder:Lio/netty/channel/embedded/EmbeddedChannel;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lio/netty/channel/embedded/EmbeddedChannel;->writeOutbound([Ljava/lang/Object;)Z

    .line 337
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/HttpContentEncoder;->fetchEncoderOutput(Ljava/util/List;)V

    .line 338
    return-void
.end method

.method private encodeContent(Lio/netty/handler/codec/http/HttpContent;Ljava/util/List;)Z
    .locals 5
    .param p1, "c"    # Lio/netty/handler/codec/http/HttpContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpContent;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 267
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 269
    .local v0, "content":Lio/netty/buffer/ByteBuf;
    invoke-direct {p0, v0, p2}, Lio/netty/handler/codec/http/HttpContentEncoder;->encode(Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 271
    instance-of v1, p1, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v1, :cond_1

    .line 272
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/HttpContentEncoder;->finishEncode(Ljava/util/List;)V

    .line 273
    move-object v1, p1

    check-cast v1, Lio/netty/handler/codec/http/LastHttpContent;

    .line 277
    .local v1, "last":Lio/netty/handler/codec/http/LastHttpContent;
    invoke-interface {v1}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    .line 278
    .local v2, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    sget-object v3, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_0
    new-instance v3, Lio/netty/handler/codec/http/ComposedLastHttpContent;

    sget-object v4, Lio/netty/handler/codec/DecoderResult;->SUCCESS:Lio/netty/handler/codec/DecoderResult;

    invoke-direct {v3, v2, v4}, Lio/netty/handler/codec/http/ComposedLastHttpContent;-><init>(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/DecoderResult;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 285
    .end local v1    # "last":Lio/netty/handler/codec/http/LastHttpContent;
    .end local v2    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private encodeFullResponse(Lio/netty/handler/codec/http/HttpResponse;Lio/netty/handler/codec/http/HttpContent;Ljava/util/List;)V
    .locals 5
    .param p1, "newRes"    # Lio/netty/handler/codec/http/HttpResponse;
    .param p2, "content"    # Lio/netty/handler/codec/http/HttpContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpResponse;",
            "Lio/netty/handler/codec/http/HttpContent;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 227
    .local v0, "existingMessages":I
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http/HttpContentEncoder;->encodeContent(Lio/netty/handler/codec/http/HttpContent;Ljava/util/List;)Z

    .line 229
    invoke-static {p1}, Lio/netty/handler/codec/http/HttpUtil;->isContentLengthSet(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "messageSize":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 233
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 234
    .local v3, "item":Ljava/lang/Object;
    instance-of v4, v3, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v4, :cond_0

    .line 235
    move-object v4, v3

    check-cast v4, Lio/netty/handler/codec/http/HttpContent;

    invoke-interface {v4}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    add-int/2addr v1, v4

    .line 232
    .end local v3    # "item":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v2    # "i":I
    :cond_1
    int-to-long v2, v1

    invoke-static {p1, v2, v3}, Lio/netty/handler/codec/http/HttpUtil;->setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V

    .line 239
    .end local v1    # "messageSize":I
    goto :goto_1

    .line 240
    :cond_2
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderValues;->CHUNKED:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 242
    :goto_1
    return-void
.end method

.method private static ensureContent(Lio/netty/handler/codec/http/HttpObject;)V
    .locals 3
    .param p0, "msg"    # Lio/netty/handler/codec/http/HttpObject;

    .line 259
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v0, :cond_0

    .line 264
    return-void

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lio/netty/handler/codec/http/HttpContent;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static ensureHeaders(Lio/netty/handler/codec/http/HttpObject;)V
    .locals 3
    .param p0, "msg"    # Lio/netty/handler/codec/http/HttpObject;

    .line 251
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_0

    .line 256
    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lio/netty/handler/codec/http/HttpResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fetchEncoderOutput(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 349
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->encoder:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->readOutbound()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 350
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    if-nez v0, :cond_0

    .line 351
    nop

    .line 359
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    return-void

    .line 353
    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 354
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 355
    goto :goto_0

    .line 357
    :cond_1
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    goto :goto_0
.end method

.method private finishEncode(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 341
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->encoder:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->finish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpContentEncoder;->fetchEncoderOutput(Ljava/util/List;)V

    .line 344
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->encoder:Lio/netty/channel/embedded/EmbeddedChannel;

    .line 345
    return-void
.end method

.method private static isPassthru(Lio/netty/handler/codec/http/HttpVersion;ILjava/lang/CharSequence;)Z
    .locals 2
    .param p0, "version"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p1, "code"    # I
    .param p2, "httpMethod"    # Ljava/lang/CharSequence;

    .line 245
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_2

    const/16 v1, 0xcc

    if-eq p1, v1, :cond_2

    const/16 v1, 0x130

    if-eq p1, v1, :cond_2

    sget-object v1, Lio/netty/handler/codec/http/HttpContentEncoder;->ZERO_LENGTH_HEAD:Ljava/lang/CharSequence;

    if-eq p2, v1, :cond_2

    sget-object v1, Lio/netty/handler/codec/http/HttpContentEncoder;->ZERO_LENGTH_CONNECT:Ljava/lang/CharSequence;

    if-ne p2, v1, :cond_0

    if-eq p1, v0, :cond_2

    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lio/netty/handler/codec/http/HttpVersion;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpContent;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected abstract beginEncode(Lio/netty/handler/codec/http/HttpResponse;Ljava/lang/String;)Lio/netty/handler/codec/http/HttpContentEncoder$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 312
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpContentEncoder;->cleanupSafely(Lio/netty/channel/ChannelHandlerContext;)V

    .line 313
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageCodec;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 314
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;Ljava/util/List;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/handler/codec/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/HttpRequest;",
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

    .line 80
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->ACCEPT_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "acceptEncodingHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 90
    const-string v1, ","

    invoke-static {v1, v0}, Lio/netty/util/internal/StringUtil;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "acceptEncoding":Ljava/lang/CharSequence;
    goto :goto_0

    .line 86
    .end local v1    # "acceptEncoding":Ljava/lang/CharSequence;
    :pswitch_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 87
    .restart local v1    # "acceptEncoding":Ljava/lang/CharSequence;
    goto :goto_0

    .line 83
    .end local v1    # "acceptEncoding":Ljava/lang/CharSequence;
    :pswitch_1
    sget-object v1, Lio/netty/handler/codec/http/HttpContentDecoder;->IDENTITY:Ljava/lang/String;

    .line 84
    .restart local v1    # "acceptEncoding":Ljava/lang/CharSequence;
    nop

    .line 94
    :goto_0
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v2

    .line 95
    .local v2, "method":Lio/netty/handler/codec/http/HttpMethod;
    sget-object v3, Lio/netty/handler/codec/http/HttpMethod;->HEAD:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v3, v2}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    sget-object v1, Lio/netty/handler/codec/http/HttpContentEncoder;->ZERO_LENGTH_HEAD:Ljava/lang/CharSequence;

    goto :goto_1

    .line 97
    :cond_0
    sget-object v3, Lio/netty/handler/codec/http/HttpMethod;->CONNECT:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v3, v2}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    sget-object v1, Lio/netty/handler/codec/http/HttpContentEncoder;->ZERO_LENGTH_CONNECT:Ljava/lang/CharSequence;

    .line 101
    :cond_1
    :goto_1
    iget-object v3, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->acceptEncodingQueue:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    check-cast p2, Lio/netty/handler/codec/http/HttpRequest;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpContentEncoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;Ljava/util/List;)V

    return-void
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V
    .locals 8
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

    .line 107
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    .local v0, "isFull":Z
    :goto_0
    sget-object v1, Lio/netty/handler/codec/http/HttpContentEncoder$1;->$SwitchMap$io$netty$handler$codec$http$HttpContentEncoder$State:[I

    iget-object v2, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->state:Lio/netty/handler/codec/http/HttpContentEncoder$State;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpContentEncoder$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 214
    :pswitch_0
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpContentEncoder;->ensureContent(Lio/netty/handler/codec/http/HttpObject;)V

    .line 215
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    instance-of v1, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v1, :cond_b

    .line 218
    sget-object v1, Lio/netty/handler/codec/http/HttpContentEncoder$State;->AWAIT_HEADERS:Lio/netty/handler/codec/http/HttpContentEncoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->state:Lio/netty/handler/codec/http/HttpContentEncoder$State;

    goto/16 :goto_2

    .line 110
    :pswitch_1
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpContentEncoder;->ensureHeaders(Lio/netty/handler/codec/http/HttpObject;)V

    .line 111
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->encoder:Lio/netty/channel/embedded/EmbeddedChannel;

    if-nez v1, :cond_a

    .line 113
    move-object v1, p2

    check-cast v1, Lio/netty/handler/codec/http/HttpResponse;

    .line 114
    .local v1, "res":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v2

    .line 116
    .local v2, "code":I
    sget v3, Lio/netty/handler/codec/http/HttpContentEncoder;->CONTINUE_CODE:I

    if-ne v2, v3, :cond_1

    .line 119
    const/4 v3, 0x0

    .local v3, "acceptEncoding":Ljava/lang/CharSequence;
    goto :goto_1

    .line 122
    .end local v3    # "acceptEncoding":Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->acceptEncodingQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 123
    .restart local v3    # "acceptEncoding":Ljava/lang/CharSequence;
    if-eqz v3, :cond_9

    .line 141
    :goto_1
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lio/netty/handler/codec/http/HttpContentEncoder;->isPassthru(Lio/netty/handler/codec/http/HttpVersion;ILjava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    if-eqz v0, :cond_2

    .line 143
    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 145
    :cond_2
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v4, Lio/netty/handler/codec/http/HttpContentEncoder$State;->PASS_THROUGH:Lio/netty/handler/codec/http/HttpContentEncoder$State;

    iput-object v4, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->state:Lio/netty/handler/codec/http/HttpContentEncoder$State;

    .line 149
    goto/16 :goto_2

    .line 152
    :cond_3
    if-eqz v0, :cond_4

    .line 154
    move-object v4, v1

    check-cast v4, Lio/netty/buffer/ByteBufHolder;

    invoke-interface {v4}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 155
    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    goto/16 :goto_2

    .line 161
    :cond_4
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lio/netty/handler/codec/http/HttpContentEncoder;->beginEncode(Lio/netty/handler/codec/http/HttpResponse;Ljava/lang/String;)Lio/netty/handler/codec/http/HttpContentEncoder$Result;

    move-result-object v4

    .line 164
    .local v4, "result":Lio/netty/handler/codec/http/HttpContentEncoder$Result;
    if-nez v4, :cond_6

    .line 165
    if-eqz v0, :cond_5

    .line 166
    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 168
    :cond_5
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v5, Lio/netty/handler/codec/http/HttpContentEncoder$State;->PASS_THROUGH:Lio/netty/handler/codec/http/HttpContentEncoder$State;

    iput-object v5, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->state:Lio/netty/handler/codec/http/HttpContentEncoder$State;

    .line 172
    goto/16 :goto_2

    .line 175
    :cond_6
    invoke-virtual {v4}, Lio/netty/handler/codec/http/HttpContentEncoder$Result;->contentEncoder()Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object v5

    iput-object v5, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->encoder:Lio/netty/channel/embedded/EmbeddedChannel;

    .line 179
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v4}, Lio/netty/handler/codec/http/HttpContentEncoder$Result;->targetContentEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 182
    if-eqz v0, :cond_7

    .line 184
    new-instance v5, Lio/netty/handler/codec/http/DefaultHttpResponse;

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v6

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lio/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;)V

    .line 185
    .local v5, "newRes":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v5}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/netty/handler/codec/http/HttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 186
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpContentEncoder;->ensureContent(Lio/netty/handler/codec/http/HttpObject;)V

    .line 189
    move-object v6, v1

    check-cast v6, Lio/netty/handler/codec/http/HttpContent;

    invoke-direct {p0, v5, v6, p3}, Lio/netty/handler/codec/http/HttpContentEncoder;->encodeFullResponse(Lio/netty/handler/codec/http/HttpResponse;Lio/netty/handler/codec/http/HttpContent;Ljava/util/List;)V

    .line 190
    goto :goto_2

    .line 193
    .end local v5    # "newRes":Lio/netty/handler/codec/http/HttpResponse;
    :cond_7
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 194
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderValues;->CHUNKED:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6, v7}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 196
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v5, Lio/netty/handler/codec/http/HttpContentEncoder$State;->AWAIT_CONTENT:Lio/netty/handler/codec/http/HttpContentEncoder$State;

    iput-object v5, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->state:Lio/netty/handler/codec/http/HttpContentEncoder$State;

    .line 198
    instance-of v5, p2, Lio/netty/handler/codec/http/HttpContent;

    if-nez v5, :cond_8

    .line 201
    goto :goto_2

    .line 207
    .end local v1    # "res":Lio/netty/handler/codec/http/HttpResponse;
    .end local v2    # "code":I
    .end local v3    # "acceptEncoding":Ljava/lang/CharSequence;
    .end local v4    # "result":Lio/netty/handler/codec/http/HttpContentEncoder$Result;
    :cond_8
    :pswitch_2
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpContentEncoder;->ensureContent(Lio/netty/handler/codec/http/HttpObject;)V

    .line 208
    move-object v1, p2

    check-cast v1, Lio/netty/handler/codec/http/HttpContent;

    invoke-direct {p0, v1, p3}, Lio/netty/handler/codec/http/HttpContentEncoder;->encodeContent(Lio/netty/handler/codec/http/HttpContent;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 209
    sget-object v1, Lio/netty/handler/codec/http/HttpContentEncoder$State;->AWAIT_HEADERS:Lio/netty/handler/codec/http/HttpContentEncoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpContentEncoder;->state:Lio/netty/handler/codec/http/HttpContentEncoder$State;

    goto :goto_2

    .line 124
    .restart local v1    # "res":Lio/netty/handler/codec/http/HttpResponse;
    .restart local v2    # "code":I
    .restart local v3    # "acceptEncoding":Ljava/lang/CharSequence;
    :cond_9
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "cannot send more responses than requests"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 111
    .end local v1    # "res":Lio/netty/handler/codec/http/HttpResponse;
    .end local v2    # "code":I
    .end local v3    # "acceptEncoding":Ljava/lang/CharSequence;
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 223
    :cond_b
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    check-cast p2, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpContentEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 306
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpContentEncoder;->cleanupSafely(Lio/netty/channel/ChannelHandlerContext;)V

    .line 307
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageCodec;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 308
    return-void
.end method
