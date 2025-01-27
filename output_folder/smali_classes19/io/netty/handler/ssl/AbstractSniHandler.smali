.class public abstract Lio/netty/handler/ssl/AbstractSniHandler;
.super Lio/netty/handler/ssl/SslClientHelloHandler;
.source "AbstractSniHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/ssl/SslClientHelloHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private hostname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler;, "Lio/netty/handler/ssl/AbstractSniHandler<TT;>;"
    invoke-direct {p0}, Lio/netty/handler/ssl/SslClientHelloHandler;-><init>()V

    return-void
.end method

.method private static extractSniHostname(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 13
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;

    .line 55
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 56
    .local v0, "offset":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 57
    .local v1, "endOffset":I
    add-int/lit8 v0, v0, 0x22

    .line 59
    sub-int v2, v1, v0

    const/4 v3, 0x6

    if-lt v2, v3, :cond_4

    .line 60
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v2

    .line 61
    .local v2, "sessionIdLength":I
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v3

    .line 63
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v3

    .line 64
    .local v3, "cipherSuitesLength":I
    add-int/lit8 v4, v3, 0x2

    add-int/2addr v0, v4

    .line 66
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v4

    .line 67
    .local v4, "compressionMethodLength":I
    add-int/lit8 v5, v4, 0x1

    add-int/2addr v0, v5

    .line 69
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v5

    .line 70
    .local v5, "extensionsLength":I
    add-int/lit8 v0, v0, 0x2

    .line 71
    add-int v6, v0, v5

    .line 74
    .local v6, "extensionsLimit":I
    if-gt v6, v1, :cond_4

    .line 75
    :goto_0
    sub-int v7, v6, v0

    const/4 v8, 0x4

    if-lt v7, v8, :cond_4

    .line 76
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v7

    .line 77
    .local v7, "extensionType":I
    add-int/lit8 v0, v0, 0x2

    .line 79
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v8

    .line 80
    .local v8, "extensionLength":I
    add-int/lit8 v0, v0, 0x2

    .line 82
    sub-int v9, v6, v0

    if-ge v9, v8, :cond_0

    .line 83
    goto :goto_1

    .line 88
    :cond_0
    if-nez v7, :cond_3

    .line 89
    add-int/lit8 v0, v0, 0x2

    .line 90
    sub-int v9, v6, v0

    const/4 v10, 0x3

    if-ge v9, v10, :cond_1

    .line 91
    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v9

    .line 95
    .local v9, "serverNameType":I
    add-int/lit8 v0, v0, 0x1

    .line 97
    if-nez v9, :cond_4

    .line 98
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v10

    .line 99
    .local v10, "serverNameLength":I
    add-int/lit8 v0, v0, 0x2

    .line 101
    sub-int v11, v6, v0

    if-ge v11, v10, :cond_2

    .line 102
    goto :goto_1

    .line 105
    :cond_2
    sget-object v11, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v10, v11}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    .line 106
    .local v11, "hostname":Ljava/lang/String;
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 113
    .end local v9    # "serverNameType":I
    .end local v10    # "serverNameLength":I
    .end local v11    # "hostname":Ljava/lang/String;
    :cond_3
    add-int/2addr v0, v8

    .line 114
    .end local v7    # "extensionType":I
    .end local v8    # "extensionLength":I
    goto :goto_0

    .line 117
    .end local v2    # "sessionIdLength":I
    .end local v3    # "cipherSuitesLength":I
    .end local v4    # "compressionMethodLength":I
    .end local v5    # "extensionsLength":I
    .end local v6    # "extensionsLimit":I
    :cond_4
    :goto_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private fireSniCompletionEvent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler;, "Lio/netty/handler/ssl/AbstractSniHandler<TT;>;"
    .local p3, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<TT;>;"
    invoke-interface {p3}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 153
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 154
    new-instance v1, Lio/netty/handler/ssl/SniCompletionEvent;

    invoke-direct {v1, p2}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    .line 156
    :cond_0
    new-instance v1, Lio/netty/handler/ssl/SniCompletionEvent;

    invoke-direct {v1, p2, v0}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 158
    :goto_0
    return-void
.end method


# virtual methods
.method protected lookup(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/util/concurrent/Future;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "clientHello"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler;, "Lio/netty/handler/ssl/AbstractSniHandler<TT;>;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lio/netty/handler/ssl/AbstractSniHandler;->extractSniHostname(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->hostname:Ljava/lang/String;

    .line 126
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/ssl/AbstractSniHandler;->lookup(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected abstract lookup(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Future;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    .local p0, "this":Lio/netty/handler/ssl/AbstractSniHandler;, "Lio/netty/handler/ssl/AbstractSniHandler<TT;>;"
    .local p2, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<TT;>;"
    iget-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->hostname:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/ssl/AbstractSniHandler;->fireSniCompletionEvent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V

    .line 132
    iget-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler;->hostname:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/handler/ssl/AbstractSniHandler;->onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V

    .line 133
    return-void
.end method

.method protected abstract onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
