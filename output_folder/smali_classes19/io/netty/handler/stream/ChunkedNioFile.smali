.class public Lio/netty/handler/stream/ChunkedNioFile;
.super Ljava/lang/Object;
.source "ChunkedNioFile.java"

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

.field private final in:Ljava/nio/channels/FileChannel;

.field private offset:J

.field private final startOffset:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "in"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/stream/ChunkedNioFile;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/File;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/netty/handler/stream/ChunkedNioFile;-><init>(Ljava/nio/channels/FileChannel;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 1
    .param p1, "in"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lio/netty/handler/stream/ChunkedNioFile;-><init>(Ljava/nio/channels/FileChannel;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;I)V
    .locals 7
    .param p1, "in"    # Ljava/nio/channels/FileChannel;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/stream/ChunkedNioFile;-><init>(Ljava/nio/channels/FileChannel;JJI)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJI)V
    .locals 2
    .param p1, "in"    # Ljava/nio/channels/FileChannel;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, "in"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    const-string v0, "offset"

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    .line 92
    const-string v0, "length"

    invoke-static {p4, p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    .line 93
    const-string v0, "chunkSize"

    invoke-static {p6, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 94
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iput-object p1, p0, Lio/netty/handler/stream/ChunkedNioFile;->in:Ljava/nio/channels/FileChannel;

    .line 98
    iput p6, p0, Lio/netty/handler/stream/ChunkedNioFile;->chunkSize:I

    .line 99
    iput-wide p2, p0, Lio/netty/handler/stream/ChunkedNioFile;->startOffset:J

    iput-wide p2, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J

    .line 100
    add-long v0, p2, p4

    iput-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->endOffset:J

    .line 101
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

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

    .line 131
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->in:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 132
    return-void
.end method

.method public currentOffset()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J

    return-wide v0
.end method

.method public endOffset()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->endOffset:J

    return-wide v0
.end method

.method public isEndOfInput()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J

    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedNioFile;->endOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->in:Ljava/nio/channels/FileChannel;

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

    .line 174
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->endOffset:J

    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedNioFile;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public progress()J
    .locals 4

    .line 179
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J

    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedNioFile;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 10
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J

    .line 143
    .local v0, "offset":J
    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedNioFile;->endOffset:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 144
    const/4 v2, 0x0

    return-object v2

    .line 147
    :cond_0
    iget v4, p0, Lio/netty/handler/stream/ChunkedNioFile;->chunkSize:I

    int-to-long v4, v4

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 148
    .local v2, "chunkSize":I
    invoke-interface {p1, v2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 149
    .local v3, "buffer":Lio/netty/buffer/ByteBuf;
    const/4 v4, 0x1

    .line 151
    .local v4, "release":Z
    const/4 v5, 0x0

    .line 153
    .local v5, "readBytes":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lio/netty/handler/stream/ChunkedNioFile;->in:Ljava/nio/channels/FileChannel;

    int-to-long v7, v5

    add-long/2addr v7, v0

    sub-int v9, v2, v5

    invoke-virtual {v3, v6, v7, v8, v9}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/channels/FileChannel;JI)I

    move-result v6

    .line 154
    .local v6, "localReadBytes":I
    if-gez v6, :cond_1

    .line 155
    goto :goto_1

    .line 157
    :cond_1
    add-int/2addr v5, v6

    .line 158
    if-ne v5, v2, :cond_3

    .line 159
    nop

    .line 162
    .end local v6    # "localReadBytes":I
    :goto_1
    iget-wide v6, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lio/netty/handler/stream/ChunkedNioFile;->offset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    const/4 v4, 0x0

    .line 164
    nop

    .line 166
    if-eqz v4, :cond_2

    .line 167
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 164
    :cond_2
    return-object v3

    .line 161
    :cond_3
    goto :goto_0

    .line 166
    .end local v5    # "readBytes":I
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_4

    .line 167
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 169
    :cond_4
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

    .line 137
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/stream/ChunkedNioFile;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

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

    .line 38
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedNioFile;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

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

    .line 38
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedNioFile;->readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public startOffset()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioFile;->startOffset:J

    return-wide v0
.end method
