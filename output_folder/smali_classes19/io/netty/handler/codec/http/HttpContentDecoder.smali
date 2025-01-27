.class public abstract Lio/netty/handler/codec/http/HttpContentDecoder;
.super Lio/netty/handler/codec/MessageToMessageDecoder;
.source "HttpContentDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageDecoder<",
        "Lio/netty/handler/codec/http/HttpObject;",
        ">;"
    }
.end annotation


# static fields
.field static final IDENTITY:Ljava/lang/String;


# instance fields
.field private continueResponse:Z

.field protected ctx:Lio/netty/channel/ChannelHandlerContext;

.field private decoder:Lio/netty/channel/embedded/EmbeddedChannel;

.field private needRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->IDENTITY:Lio/netty/util/AsciiString;

    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpContentDecoder;->IDENTITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageDecoder;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    return-void
.end method

.method private cleanup()V
    .locals 1

    .line 235
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->finishAndReleaseAll()Z

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    .line 240
    :cond_0
    return-void
.end method

.method private cleanupSafely(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 244
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpContentDecoder;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    .line 248
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 250
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private decode(Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
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

    .line 254
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lio/netty/channel/embedded/EmbeddedChannel;->writeInbound([Ljava/lang/Object;)Z

    .line 255
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/HttpContentDecoder;->fetchDecoderOutput(Ljava/util/List;)V

    .line 256
    return-void
.end method

.method private decodeContent(Lio/netty/handler/codec/http/HttpContent;Ljava/util/List;)V
    .locals 5
    .param p1, "c"    # Lio/netty/handler/codec/http/HttpContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpContent;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 161
    .local v0, "content":Lio/netty/buffer/ByteBuf;
    invoke-direct {p0, v0, p2}, Lio/netty/handler/codec/http/HttpContentDecoder;->decode(Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 163
    instance-of v1, p1, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v1, :cond_1

    .line 164
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/HttpContentDecoder;->finishDecode(Ljava/util/List;)V

    .line 166
    move-object v1, p1

    check-cast v1, Lio/netty/handler/codec/http/LastHttpContent;

    .line 169
    .local v1, "last":Lio/netty/handler/codec/http/LastHttpContent;
    invoke-interface {v1}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    .line 170
    .local v2, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    sget-object v3, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_0
    new-instance v3, Lio/netty/handler/codec/http/ComposedLastHttpContent;

    sget-object v4, Lio/netty/handler/codec/DecoderResult;->SUCCESS:Lio/netty/handler/codec/DecoderResult;

    invoke-direct {v3, v2, v4}, Lio/netty/handler/codec/http/ComposedLastHttpContent;-><init>(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/DecoderResult;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v1    # "last":Lio/netty/handler/codec/http/LastHttpContent;
    .end local v2    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    :cond_1
    :goto_0
    return-void
.end method

.method private fetchDecoderOutput(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 267
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->readInbound()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 268
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    if-nez v0, :cond_0

    .line 269
    nop

    .line 277
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    return-void

    .line 271
    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 273
    goto :goto_0

    .line 275
    :cond_1
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    goto :goto_0
.end method

.method private finishDecode(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 259
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->finish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpContentDecoder;->fetchDecoderOutput(Ljava/util/List;)V

    .line 262
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    .line 263
    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpContentDecoder;->cleanupSafely(Lio/netty/channel/ChannelHandlerContext;)V

    .line 225
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 226
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    .line 181
    .local v0, "needRead":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    .line 184
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 190
    :cond_0
    return-void

    .line 186
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 189
    :cond_1
    throw v1
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V
    .locals 9
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

    .line 59
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_0
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 61
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->continueResponse:Z

    .line 65
    :cond_0
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    .line 66
    return-void

    .line 69
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->continueResponse:Z

    if-eqz v0, :cond_3

    .line 70
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_2

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->continueResponse:Z

    .line 74
    :cond_2
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    .line 75
    return-void

    .line 78
    :cond_3
    :try_start_2
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpMessage;

    if-eqz v0, :cond_c

    .line 79
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpContentDecoder;->cleanup()V

    .line 80
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpMessage;

    .line 81
    .local v0, "message":Lio/netty/handler/codec/http/HttpMessage;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    .line 84
    .local v1, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "contentEncoding":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 86
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 88
    :cond_4
    sget-object v3, Lio/netty/handler/codec/http/HttpContentDecoder;->IDENTITY:Ljava/lang/String;

    move-object v2, v3

    .line 90
    :goto_0
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/http/HttpContentDecoder;->newContentDecoder(Ljava/lang/String;)Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object v3

    iput-object v3, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    .line 92
    if-nez v3, :cond_6

    .line 93
    instance-of v3, v0, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v3, :cond_5

    .line 94
    move-object v3, v0

    check-cast v3, Lio/netty/handler/codec/http/HttpContent;

    invoke-interface {v3}, Lio/netty/handler/codec/http/HttpContent;->retain()Lio/netty/handler/codec/http/HttpContent;

    .line 96
    :cond_5
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    iput-boolean v3, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    .line 97
    return-void

    .line 104
    :cond_6
    :try_start_3
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v3}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 105
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v3}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 106
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderValues;->CHUNKED:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 112
    :cond_7
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/http/HttpContentDecoder;->getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "targetContentEncoding":Ljava/lang/CharSequence;
    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderValues;->IDENTITY:Lio/netty/util/AsciiString;

    invoke-virtual {v4, v3}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 116
    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v4}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_1

    .line 118
    :cond_8
    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v4, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 121
    :goto_1
    instance-of v4, v0, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v4, :cond_b

    .line 127
    instance-of v4, v0, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v4, :cond_9

    .line 128
    move-object v4, v0

    check-cast v4, Lio/netty/handler/codec/http/HttpRequest;

    .line 129
    .local v4, "r":Lio/netty/handler/codec/http/HttpRequest;
    new-instance v5, Lio/netty/handler/codec/http/DefaultHttpRequest;

    invoke-interface {v4}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v6

    invoke-interface {v4}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v7

    invoke-interface {v4}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lio/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    move-object v4, v5

    .line 130
    .local v4, "copy":Lio/netty/handler/codec/http/HttpMessage;
    goto :goto_2

    .end local v4    # "copy":Lio/netty/handler/codec/http/HttpMessage;
    :cond_9
    instance-of v4, v0, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v4, :cond_a

    .line 131
    move-object v4, v0

    check-cast v4, Lio/netty/handler/codec/http/HttpResponse;

    .line 132
    .local v4, "r":Lio/netty/handler/codec/http/HttpResponse;
    new-instance v5, Lio/netty/handler/codec/http/DefaultHttpResponse;

    invoke-interface {v4}, Lio/netty/handler/codec/http/HttpResponse;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v6

    invoke-interface {v4}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lio/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;)V

    move-object v4, v5

    .line 133
    .local v4, "copy":Lio/netty/handler/codec/http/HttpMessage;
    nop

    .line 137
    :goto_2
    invoke-interface {v4}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/netty/handler/codec/http/HttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 138
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpMessage;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/netty/handler/codec/http/HttpMessage;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 139
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    nop

    .end local v4    # "copy":Lio/netty/handler/codec/http/HttpMessage;
    goto :goto_3

    .line 134
    :cond_a
    new-instance v4, Lio/netty/handler/codec/CodecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object of class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not an HttpRequest or HttpResponse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/netty/handler/codec/CodecException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Lio/netty/handler/codec/http/HttpObject;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v4

    .line 141
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Lio/netty/handler/codec/http/HttpObject;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_b
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v0    # "message":Lio/netty/handler/codec/http/HttpMessage;
    .end local v1    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    .end local v2    # "contentEncoding":Ljava/lang/String;
    .end local v3    # "targetContentEncoding":Ljava/lang/CharSequence;
    :cond_c
    :goto_3
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v0, :cond_e

    .line 146
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpContent;

    .line 147
    .local v0, "c":Lio/netty/handler/codec/http/HttpContent;
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->decoder:Lio/netty/channel/embedded/EmbeddedChannel;

    if-nez v1, :cond_d

    .line 148
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->retain()Lio/netty/handler/codec/http/HttpContent;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 150
    :cond_d
    invoke-direct {p0, v0, p3}, Lio/netty/handler/codec/http/HttpContentDecoder;->decodeContent(Lio/netty/handler/codec/http/HttpContent;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    .end local v0    # "c":Lio/netty/handler/codec/http/HttpContent;
    :cond_e
    :goto_4
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    .line 155
    nop

    .line 156
    return-void

    .line 154
    :catchall_0
    move-exception v0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    iput-boolean v1, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->needRead:Z

    .line 155
    throw v0
.end method

.method protected bridge synthetic decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    check-cast p2, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpContentDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V

    return-void
.end method

.method protected getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "contentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    sget-object v0, Lio/netty/handler/codec/http/HttpContentDecoder;->IDENTITY:Ljava/lang/String;

    return-object v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentDecoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 231
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 232
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

    .line 218
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpContentDecoder;->cleanupSafely(Lio/netty/channel/ChannelHandlerContext;)V

    .line 219
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 220
    return-void
.end method

.method protected abstract newContentDecoder(Ljava/lang/String;)Lio/netty/channel/embedded/EmbeddedChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
