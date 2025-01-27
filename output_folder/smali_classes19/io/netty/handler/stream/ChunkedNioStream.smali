.class public Lio/netty/handler/stream/ChunkedNioStream;
.super Ljava/lang/Object;
.source "ChunkedNioStream.java"

# interfaces
.implements Lio/netty/handler/stream/ChunkedInput;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/handler/stream/ChunkedInput<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final chunkSize:I

.field private final in:Ljava/nio/channels/ReadableByteChannel;

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 1
    .param p1, "in"    # Ljava/nio/channels/ReadableByteChannel;

    .line 47
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lio/netty/handler/stream/ChunkedNioStream;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;I)V
    .locals 3
    .param p1, "in"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "chunkSize"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "in"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    if-lez p2, :cond_0

    .line 62
    iput-object p1, p0, Lio/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    .line 64
    iput p2, p0, Lio/netty/handler/stream/ChunkedNioStream;->chunkSize:I

    .line 65
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 66
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chunkSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: a positive integer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 97
    return-void
.end method

.method public isEndOfInput()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 79
    return v1

    .line 81
    :cond_0
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    iget-object v3, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 84
    .local v0, "b":I
    if-gez v0, :cond_1

    .line 85
    return v2

    .line 87
    :cond_1
    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    .line 88
    return v1

    .line 91
    .end local v0    # "b":I
    :cond_2
    return v2
.end method

.method public length()J
    .locals 2

    .line 140
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public progress()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    return-wide v0
.end method

.method public readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lio/netty/handler/stream/ChunkedNioStream;->isEndOfInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 113
    .local v0, "readBytes":I
    :goto_0
    iget-object v1, p0, Lio/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    iget-object v2, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 114
    .local v1, "localReadBytes":I
    if-gez v1, :cond_1

    .line 115
    goto :goto_1

    .line 117
    :cond_1
    add-int/2addr v0, v1

    .line 118
    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    .line 119
    iget v2, p0, Lio/netty/handler/stream/ChunkedNioStream;->chunkSize:I

    if-ne v0, v2, :cond_4

    .line 120
    nop

    .line 123
    .end local v1    # "localReadBytes":I
    :goto_1
    iget-object v1, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 124
    const/4 v1, 0x1

    .line 125
    .local v1, "release":Z
    iget-object v2, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-interface {p1, v2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 127
    .local v2, "buffer":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget-object v3, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 128
    iget-object v3, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    const/4 v1, 0x0

    .line 130
    nop

    .line 132
    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 130
    :cond_2
    return-object v2

    .line 132
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 133
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 135
    :cond_3
    throw v3

    .line 122
    .end local v1    # "release":Z
    .end local v2    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_4
    goto :goto_0
.end method

.method public readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/stream/ChunkedNioStream;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedNioStream;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readChunk(Lio/netty/channel/ChannelHandlerContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedNioStream;->readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public transferredBytes()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    return-wide v0
.end method
