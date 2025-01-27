.class public Lio/netty/handler/stream/ChunkedStream;
.super Ljava/lang/Object;
.source "ChunkedStream.java"

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


# static fields
.field static final DEFAULT_CHUNK_SIZE:I = 0x2000


# instance fields
.field private final chunkSize:I

.field private closed:Z

.field private final in:Ljava/io/PushbackInputStream;

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 49
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lio/netty/handler/stream/ChunkedStream;-><init>(Ljava/io/InputStream;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "chunkSize"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "in"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    const-string v0, "chunkSize"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 62
    instance-of v0, p1, Ljava/io/PushbackInputStream;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p1

    check-cast v0, Ljava/io/PushbackInputStream;

    iput-object v0, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    .line 67
    :goto_0
    iput p2, p0, Lio/netty/handler/stream/ChunkedStream;->chunkSize:I

    .line 68
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/stream/ChunkedStream;->closed:Z

    .line 95
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 96
    return-void
.end method

.method public isEndOfInput()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lio/netty/handler/stream/ChunkedStream;->closed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 80
    return v1

    .line 83
    :cond_0
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 84
    .local v0, "b":I
    if-gez v0, :cond_1

    .line 85
    return v1

    .line 87
    :cond_1
    iget-object v1, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 88
    const/4 v1, 0x0

    return v1
.end method

.method public length()J
    .locals 2

    .line 134
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public progress()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedStream;->offset:J

    return-wide v0
.end method

.method public readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 8
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lio/netty/handler/stream/ChunkedStream;->isEndOfInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->available()I

    move-result v0

    .line 112
    .local v0, "availableBytes":I
    if-gtz v0, :cond_1

    .line 113
    iget v1, p0, Lio/netty/handler/stream/ChunkedStream;->chunkSize:I

    .local v1, "chunkSize":I
    goto :goto_0

    .line 115
    .end local v1    # "chunkSize":I
    :cond_1
    iget v1, p0, Lio/netty/handler/stream/ChunkedStream;->chunkSize:I

    iget-object v2, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 118
    .restart local v1    # "chunkSize":I
    :goto_0
    const/4 v2, 0x1

    .line 119
    .local v2, "release":Z
    invoke-interface {p1, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 122
    .local v3, "buffer":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget-wide v4, p0, Lio/netty/handler/stream/ChunkedStream;->offset:J

    iget-object v6, p0, Lio/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v6, v1}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/io/InputStream;I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/netty/handler/stream/ChunkedStream;->offset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    const/4 v2, 0x0

    .line 124
    nop

    .line 126
    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 124
    :cond_2
    return-object v3

    .line 126
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 127
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 129
    :cond_3
    throw v4
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

    .line 101
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/stream/ChunkedStream;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

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

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedStream;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

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

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedStream;->readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public transferredBytes()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedStream;->offset:J

    return-wide v0
.end method
