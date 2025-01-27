.class final enum Lio/netty/handler/ssl/SslHandler$SslEngineType$1;
.super Lio/netty/handler/ssl/SslHandler$SslEngineType;
.source "SslHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SslHandler$SslEngineType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZLio/netty/handler/codec/ByteToMessageDecoder$Cumulator;)V
    .locals 6
    .param p3, "wantsDirectBuffer"    # Z
    .param p4, "cumulator"    # Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    .line 183
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/ssl/SslHandler$SslEngineType;-><init>(Ljava/lang/String;IZLio/netty/handler/codec/ByteToMessageDecoder$Cumulator;Lio/netty/handler/ssl/SslHandler$1;)V

    return-void
.end method


# virtual methods
.method allocateWrapBuffer(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "handler"    # Lio/netty/handler/ssl/SslHandler;
    .param p2, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "pendingBytes"    # I
    .param p4, "numComponents"    # I

    .line 215
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 216
    invoke-virtual {v0, p3, p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->calculateMaxLengthForWrap(II)I

    move-result v0

    .line 215
    invoke-interface {p2, v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method calculatePendingData(Lio/netty/handler/ssl/SslHandler;I)I
    .locals 2
    .param p1, "handler"    # Lio/netty/handler/ssl/SslHandler;
    .param p2, "guess"    # I

    .line 221
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-virtual {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslPending()I

    move-result v0

    .line 222
    .local v0, "sslPending":I
    if-lez v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method jdkCompatibilityMode(Ljavax/net/ssl/SSLEngine;)Z
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 227
    move-object v0, p1

    check-cast v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    iget-boolean v0, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    return v0
.end method

.method unwrap(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .param p1, "handler"    # Lio/netty/handler/ssl/SslHandler;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "readerIndex"    # I
    .param p4, "len"    # I
    .param p5, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 187
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    .line 188
    .local v0, "nioBufferCount":I
    invoke-virtual {p5}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 190
    .local v1, "writerIndex":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 196
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    check-cast v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 198
    .local v2, "opensslEngine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 199
    invoke-virtual {p5}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v6

    .line 198
    invoke-static {p5, v1, v6}, Lio/netty/handler/ssl/SslHandler;->access$300(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 200
    invoke-virtual {p2, p3, p4}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .local v5, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v3, v6, v4

    .line 203
    nop

    .line 204
    .end local v2    # "opensslEngine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    goto :goto_0

    .line 202
    .end local v5    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v2    # "opensslEngine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v5

    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v3, v6, v4

    .line 203
    throw v5

    .line 205
    .end local v2    # "opensslEngine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    invoke-static {p2, p3, p4}, Lio/netty/handler/ssl/SslHandler;->access$300(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 206
    invoke-virtual {p5}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v4

    invoke-static {p5, v1, v4}, Lio/netty/handler/ssl/SslHandler;->access$300(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 205
    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v5

    .line 208
    .restart local v5    # "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_0
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p5, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 209
    return-object v5
.end method
