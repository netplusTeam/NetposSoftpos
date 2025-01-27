.class public Lio/netty/handler/stream/ChunkedFile;
.super Ljava/lang/Object;
.source "ChunkedFile.java"

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
.field private final chunkSize:I

.field private final endOffset:J

.field private final file:Ljava/io/RandomAccessFile;

.field private offset:J

.field private final startOffset:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lio/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/File;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lio/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/RandomAccessFile;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lio/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/RandomAccessFile;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;I)V
    .locals 7
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/RandomAccessFile;JJI)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;JJI)V
    .locals 2
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, "file"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    const-string v0, "offset"

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    .line 88
    const-string v0, "length"

    invoke-static {p4, p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    .line 89
    const-string v0, "chunkSize"

    invoke-static {p6, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 91
    iput-object p1, p0, Lio/netty/handler/stream/ChunkedFile;->file:Ljava/io/RandomAccessFile;

    .line 92
    iput-wide p2, p0, Lio/netty/handler/stream/ChunkedFile;->startOffset:J

    iput-wide p2, p0, Lio/netty/handler/stream/ChunkedFile;->offset:J

    .line 93
    add-long v0, p2, p4

    iput-wide v0, p0, Lio/netty/handler/stream/ChunkedFile;->endOffset:J

    .line 94
    iput p6, p0, Lio/netty/handler/stream/ChunkedFile;->chunkSize:I

    .line 96
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 97
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

    .line 127
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 128
    return-void
.end method

.method public currentOffset()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedFile;->offset:J

    return-wide v0
.end method

.method public endOffset()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedFile;->endOffset:J

    return-wide v0
.end method

.method public isEndOfInput()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedFile;->offset:J

    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedFile;->endOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/stream/ChunkedFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public length()J
    .locals 4

    .line 163
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedFile;->endOffset:J

    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedFile;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public progress()J
    .locals 4

    .line 168
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedFile;->offset:J

    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedFile;->startOffset:J

    sub-long/2addr v0, v2

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

    .line 138
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedFile;->offset:J

    .line 139
    .local v0, "offset":J
    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedFile;->endOffset:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 140
    const/4 v2, 0x0

    return-object v2

    .line 143
    :cond_0
    iget v4, p0, Lio/netty/handler/stream/ChunkedFile;->chunkSize:I

    int-to-long v4, v4

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 146
    .local v2, "chunkSize":I
    invoke-interface {p1, v2}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 147
    .local v3, "buf":Lio/netty/buffer/ByteBuf;
    const/4 v4, 0x1

    .line 149
    .local v4, "release":Z
    :try_start_0
    iget-object v5, p0, Lio/netty/handler/stream/ChunkedFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v6

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v7

    invoke-virtual {v5, v6, v7, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 150
    invoke-virtual {v3, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 151
    int-to-long v5, v2

    add-long/2addr v5, v0

    iput-wide v5, p0, Lio/netty/handler/stream/ChunkedFile;->offset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    const/4 v4, 0x0

    .line 153
    nop

    .line 155
    if-eqz v4, :cond_1

    .line 156
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 153
    :cond_1
    return-object v3

    .line 155
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    .line 156
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 158
    :cond_2
    throw v5
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

    .line 133
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/stream/ChunkedFile;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

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

    .line 35
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedFile;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

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

    .line 35
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedFile;->readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public startOffset()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedFile;->startOffset:J

    return-wide v0
.end method
