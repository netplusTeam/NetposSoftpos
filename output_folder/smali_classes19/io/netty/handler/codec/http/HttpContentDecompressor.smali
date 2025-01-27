.class public Lio/netty/handler/codec/http/HttpContentDecompressor;
.super Lio/netty/handler/codec/http/HttpContentDecoder;
.source "HttpContentDecompressor.java"


# instance fields
.field private final strict:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/HttpContentDecompressor;-><init>(Z)V

    .line 41
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .line 49
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpContentDecoder;-><init>()V

    .line 50
    iput-boolean p1, p0, Lio/netty/handler/codec/http/HttpContentDecompressor;->strict:Z

    .line 51
    return-void
.end method


# virtual methods
.method protected newContentDecoder(Ljava/lang/String;)Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 8
    .param p1, "contentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->GZIP:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->X_GZIP:Lio/netty/util/AsciiString;

    .line 56
    invoke-virtual {v0, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 60
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->DEFLATE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->X_DEFLATE:Lio/netty/util/AsciiString;

    .line 61
    invoke-virtual {v0, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpContentDecompressor;->strict:Z

    if-eqz v0, :cond_3

    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    goto :goto_1

    :cond_3
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lio/netty/handler/codec/compression/ZlibWrapper;

    .line 64
    .local v0, "wrapper":Lio/netty/handler/codec/compression/ZlibWrapper;
    :goto_1
    new-instance v3, Lio/netty/channel/embedded/EmbeddedChannel;

    iget-object v4, p0, Lio/netty/handler/codec/http/HttpContentDecompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v4}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v4

    iget-object v5, p0, Lio/netty/handler/codec/http/HttpContentDecompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v5}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v5

    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentDecompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 65
    invoke-interface {v6}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v6

    invoke-interface {v6}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v6

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    invoke-static {v0}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->newZlibDecoder(Lio/netty/handler/codec/compression/ZlibWrapper;)Lio/netty/handler/codec/compression/ZlibDecoder;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-direct {v3, v4, v5, v6, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    .line 64
    return-object v3

    .line 57
    .end local v0    # "wrapper":Lio/netty/handler/codec/compression/ZlibWrapper;
    :cond_4
    :goto_2
    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel;

    iget-object v3, p0, Lio/netty/handler/codec/http/HttpContentDecompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v3

    iget-object v4, p0, Lio/netty/handler/codec/http/HttpContentDecompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v4}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v4

    iget-object v5, p0, Lio/netty/handler/codec/http/HttpContentDecompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 58
    invoke-interface {v5}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v5

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    sget-object v6, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    invoke-static {v6}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->newZlibDecoder(Lio/netty/handler/codec/compression/ZlibWrapper;)Lio/netty/handler/codec/compression/ZlibDecoder;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-direct {v0, v3, v4, v5, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    .line 57
    return-object v0
.end method
