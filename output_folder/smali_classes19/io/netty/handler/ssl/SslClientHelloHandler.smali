.class public abstract Lio/netty/handler/ssl/SslClientHelloHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SslClientHelloHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelOutboundHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/codec/ByteToMessageDecoder;",
        "Lio/netty/channel/ChannelOutboundHandler;"
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private handshakeBuffer:Lio/netty/buffer/ByteBuf;

.field private handshakeFailed:Z

.field private readPending:Z

.field private suppressRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lio/netty/handler/ssl/SslClientHelloHandler;

    .line 40
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslClientHelloHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/buffer/ByteBuf;

    .line 37
    invoke-static {p0}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method static synthetic access$102(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslClientHelloHandler;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->suppressRead:Z

    return p1
.end method

.method static synthetic access$200(Lio/netty/handler/ssl/SslClientHelloHandler;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslClientHelloHandler;

    .line 37
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->readPending:Z

    return v0
.end method

.method static synthetic access$202(Lio/netty/handler/ssl/SslClientHelloHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslClientHelloHandler;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->readPending:Z

    return p1
.end method

.method private releaseHandshakeBuffer()V
    .locals 1

    .line 175
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    iget-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    .line 177
    return-void
.end method

.method private static releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 180
    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 183
    :cond_0
    return-void
.end method

.method private select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "clientHello"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/SslClientHelloHandler;->lookup(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    .line 189
    .local v0, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<TT;>;"
    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Future;)V

    goto :goto_0

    .line 192
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->suppressRead:Z

    .line 193
    move-object v1, p2

    .line 194
    .local v1, "finalClientHello":Lio/netty/buffer/ByteBuf;
    new-instance v2, Lio/netty/handler/ssl/SslClientHelloHandler$1;

    invoke-direct {v2, p0, v1, p1}, Lio/netty/handler/ssl/SslClientHelloHandler$1;-><init>(Lio/netty/handler/ssl/SslClientHelloHandler;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    const/4 p2, 0x0

    .line 224
    .end local v1    # "finalClientHello":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-static {p2}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    .line 225
    goto :goto_1

    .line 221
    .end local v0    # "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<TT;>;"
    :catchall_0
    move-exception v0

    .line 222
    .local v0, "cause":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 224
    .end local v0    # "cause":Ljava/lang/Throwable;
    invoke-static {p2}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    .line 225
    nop

    .line 226
    :goto_1
    return-void

    .line 224
    :catchall_1
    move-exception v0

    invoke-static {p2}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseIfNotNull(Lio/netty/buffer/ByteBuf;)V

    .line 225
    throw v0
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 280
    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 296
    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 286
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 12
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
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

    .line 49
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->suppressRead:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeFailed:Z

    if-nez v0, :cond_d

    .line 51
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    .line 52
    .local v1, "readerIndex":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 53
    .local v2, "readableBytes":I
    const/4 v3, -0x1

    .line 56
    .local v3, "handshakeLength":I
    :goto_0
    const/4 v4, 0x5

    if-lt v2, v4, :cond_b

    .line 57
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v5

    .line 58
    .local v5, "contentType":I
    const/4 v6, -0x1

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    .line 82
    :pswitch_0
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p2, v8}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v8

    .line 84
    .local v8, "majorVersion":I
    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    .line 85
    add-int/lit8 v9, v1, 0x3

    invoke-virtual {p2, v9}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v9

    add-int/2addr v9, v4

    .line 88
    .local v9, "packetLength":I
    if-ge v2, v9, :cond_0

    .line 90
    return-void

    .line 91
    :cond_0
    if-ne v9, v4, :cond_1

    .line 92
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 93
    return-void

    .line 96
    :cond_1
    add-int v10, v1, v9

    .line 99
    .local v10, "endOffset":I
    if-ne v3, v6, :cond_6

    .line 100
    add-int/lit8 v6, v1, 0x4

    if-le v6, v10, :cond_2

    .line 102
    return-void

    .line 105
    :cond_2
    add-int/lit8 v6, v1, 0x5

    invoke-virtual {p2, v6}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v6

    .line 110
    .local v6, "handshakeType":I
    if-eq v6, v7, :cond_3

    .line 111
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 112
    return-void

    .line 117
    :cond_3
    add-int/lit8 v11, v1, 0x5

    add-int/2addr v11, v7

    invoke-virtual {p2, v11}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result v7

    move v3, v7

    .line 121
    add-int/lit8 v1, v1, 0x4

    .line 122
    add-int/lit8 v9, v9, -0x4

    .line 124
    add-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v4

    if-gt v7, v9, :cond_4

    .line 127
    add-int/2addr v1, v4

    .line 128
    invoke-virtual {p2, v1, v3}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 129
    return-void

    .line 131
    :cond_4
    iget-object v4, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    if-nez v4, :cond_5

    .line 132
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    iput-object v4, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 135
    :cond_5
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 141
    .end local v6    # "handshakeType":I
    :cond_6
    :goto_1
    iget-object v4, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    add-int/lit8 v6, v1, 0x5

    add-int/lit8 v7, v9, -0x5

    invoke-virtual {v4, p2, v6, v7}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 143
    add-int/2addr v1, v9

    .line 144
    sub-int/2addr v2, v9

    .line 145
    iget-object v4, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    if-gt v3, v4, :cond_7

    .line 146
    iget-object v4, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 147
    .local v4, "clientHello":Lio/netty/buffer/ByteBuf;
    iput-object v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeBuffer:Lio/netty/buffer/ByteBuf;

    .line 149
    invoke-direct {p0, p1, v4}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 150
    return-void

    .line 160
    .end local v4    # "clientHello":Lio/netty/buffer/ByteBuf;
    .end local v5    # "contentType":I
    .end local v8    # "majorVersion":I
    .end local v9    # "packetLength":I
    .end local v10    # "endOffset":I
    :cond_7
    goto/16 :goto_0

    .line 62
    .restart local v5    # "contentType":I
    :pswitch_1
    invoke-static {p2, v1}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I

    move-result v4

    .line 65
    .local v4, "len":I
    const/4 v8, -0x2

    if-eq v4, v8, :cond_9

    .line 74
    if-ne v4, v6, :cond_8

    .line 76
    return-void

    .line 79
    :cond_8
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 80
    return-void

    .line 66
    :cond_9
    iput-boolean v7, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->handshakeFailed:Z

    .line 67
    new-instance v6, Lio/netty/handler/ssl/NotSslRecordException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not an SSL/TLS record: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 68
    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lio/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    .line 69
    .local v6, "e":Lio/netty/handler/ssl/NotSslRecordException;
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v8

    invoke-virtual {p2, v8}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 70
    new-instance v8, Lio/netty/handler/ssl/SniCompletionEvent;

    invoke-direct {v8, v6}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v8}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 71
    invoke-static {p1, v6, v7}, Lio/netty/handler/ssl/SslUtils;->handleHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Z)V

    .line 72
    nop

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v6

    .line 157
    .end local v4    # "len":I
    .end local v6    # "e":Lio/netty/handler/ssl/NotSslRecordException;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_a
    :goto_2
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catch Lio/netty/handler/ssl/NotSslRecordException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-void

    .line 170
    .end local v1    # "readerIndex":I
    .end local v2    # "readableBytes":I
    .end local v3    # "handshakeLength":I
    .end local v5    # "contentType":I
    :cond_b
    goto :goto_3

    .line 164
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lio/netty/handler/ssl/SslClientHelloHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected client hello packet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    :cond_c
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslClientHelloHandler;->select(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    goto :goto_3

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "e":Lio/netty/handler/ssl/NotSslRecordException;
    throw v0

    .line 172
    .end local v0    # "e":Lio/netty/handler/ssl/NotSslRecordException;
    :cond_d
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 301
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 290
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 291
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 311
    return-void
.end method

.method protected handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-direct {p0}, Lio/netty/handler/ssl/SslClientHelloHandler;->releaseHandshakeBuffer()V

    .line 232
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 233
    return-void
.end method

.method protected abstract lookup(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/util/concurrent/Future;
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
.end method

.method protected abstract onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Future;)V
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
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->suppressRead:Z

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslClientHelloHandler;->readPending:Z

    goto :goto_0

    .line 273
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 275
    :goto_0
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    .local p0, "this":Lio/netty/handler/ssl/SslClientHelloHandler;, "Lio/netty/handler/ssl/SslClientHelloHandler<TT;>;"
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 306
    return-void
.end method
