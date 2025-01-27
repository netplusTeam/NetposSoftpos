.class public Lio/netty/handler/ssl/OptionalSslHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "OptionalSslHandler.java"


# instance fields
.field private final sslContext:Lio/netty/handler/ssl/SslContext;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/SslContext;)V
    .locals 1
    .param p1, "sslContext"    # Lio/netty/handler/ssl/SslContext;

    .line 38
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 39
    const-string v0, "sslContext"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/SslContext;

    iput-object v0, p0, Lio/netty/handler/ssl/OptionalSslHandler;->sslContext:Lio/netty/handler/ssl/SslContext;

    .line 40
    return-void
.end method

.method private handleNonSsl(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;

    .line 70
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OptionalSslHandler;->newNonSslHandler(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 71
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/ssl/OptionalSslHandler;->newNonSslHandlerName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lio/netty/channel/ChannelPipeline;->replace(Lio/netty/channel/ChannelHandler;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 76
    :goto_0
    return-void
.end method

.method private handleSsl(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "sslHandler":Lio/netty/handler/ssl/SslHandler;
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OptionalSslHandler;->sslContext:Lio/netty/handler/ssl/SslContext;

    invoke-virtual {p0, p1, v1}, Lio/netty/handler/ssl/OptionalSslHandler;->newSslHandler(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/ssl/SslContext;)Lio/netty/handler/ssl/SslHandler;

    move-result-object v1

    move-object v0, v1

    .line 58
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/ssl/OptionalSslHandler;->newSslHandlerName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lio/netty/channel/ChannelPipeline;->replace(Lio/netty/channel/ChannelHandler;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const/4 v0, 0x0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 67
    :cond_0
    return-void

    .line 63
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 66
    :cond_1
    throw v1
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
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

    .line 44
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    invoke-static {p2}, Lio/netty/handler/ssl/SslHandler;->isEncrypted(Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/OptionalSslHandler;->handleSsl(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/OptionalSslHandler;->handleNonSsl(Lio/netty/channel/ChannelHandlerContext;)V

    .line 52
    :goto_0
    return-void
.end method

.method protected newNonSslHandler(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/channel/ChannelHandler;
    .locals 1
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method protected newNonSslHandlerName()Ljava/lang/String;
    .locals 1

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method protected newSslHandler(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/ssl/SslContext;)Lio/netty/handler/ssl/SslHandler;
    .locals 1
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "sslContext"    # Lio/netty/handler/ssl/SslContext;

    .line 97
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/netty/handler/ssl/SslContext;->newHandler(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/ssl/SslHandler;

    move-result-object v0

    return-object v0
.end method

.method protected newSslHandlerName()Ljava/lang/String;
    .locals 1

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method
