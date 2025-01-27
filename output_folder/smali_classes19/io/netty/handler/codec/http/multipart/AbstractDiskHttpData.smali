.class public abstract Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;
.super Lio/netty/handler/codec/http/multipart/AbstractHttpData;
.source "AbstractDiskHttpData.java"


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private file:Ljava/io/File;

.field private fileChannel:Ljava/nio/channels/FileChannel;

.field private isRenamed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "size"    # J

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http/multipart/AbstractHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 48
    return-void
.end method

.method private static readFrom(Ljava/io/File;)[B
    .locals 9
    .param p0, "src"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 415
    .local v0, "srcsize":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 419
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 420
    .local v2, "accessFile":Ljava/io/RandomAccessFile;
    long-to-int v3, v0

    new-array v3, v3, [B

    .line 422
    .local v3, "array":[B
    :try_start_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 423
    .local v4, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 424
    .local v5, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .line 425
    .local v6, "read":I
    :goto_0
    int-to-long v7, v6

    cmp-long v7, v7, v0

    if-gez v7, :cond_0

    .line 426
    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v6, v7

    goto :goto_0

    .line 429
    .end local v4    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "read":I
    :cond_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 430
    nop

    .line 431
    return-object v3

    .line 429
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 430
    throw v4

    .line 416
    .end local v2    # "accessFile":Ljava/io/RandomAccessFile;
    .end local v3    # "array":[B
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File too big to be loaded in memory"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private tempFile()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getDiskFilename()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "diskFilename":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "newpostfix":Ljava/lang/String;
    goto :goto_0

    .line 85
    .end local v1    # "newpostfix":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getPostfix()Ljava/lang/String;

    move-result-object v1

    .line 88
    .restart local v1    # "newpostfix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getBaseDirectory()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 90
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .local v2, "tmpFile":Ljava/io/File;
    goto :goto_1

    .line 92
    .end local v2    # "tmpFile":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getPrefix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    .line 93
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getBaseDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {v2, v1, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 95
    .restart local v2    # "tmpFile":Ljava/io/File;
    :goto_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->deleteOnExit()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 98
    :cond_2
    return-object v2
.end method


# virtual methods
.method public addContent(Lio/netty/buffer/ByteBuf;Z)V
    .locals 8
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const-string v0, "rw"

    if-eqz p1, :cond_6

    .line 153
    :try_start_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 154
    .local v1, "localsize":I
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->checkSize(J)V

    .line 155
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "buffer":Lio/netty/buffer/ByteBuf;
    .end local p2    # "last":Z
    throw v0

    .line 159
    .restart local p1    # "buffer":Lio/netty/buffer/ByteBuf;
    .restart local p2    # "last":Z
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 160
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_1
    const/4 v3, 0x0

    .line 161
    .local v3, "written":I
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v4, :cond_3

    .line 162
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->tempFile()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 164
    :cond_3
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    if-nez v4, :cond_4

    .line 165
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v4, v5, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .local v4, "accessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    iput-object v5, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 168
    .end local v4    # "accessFile":Ljava/io/RandomAccessFile;
    :cond_4
    :goto_2
    if-ge v3, v1, :cond_5

    .line 169
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    .line 171
    :cond_5
    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    .line 172
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    nop

    .end local v1    # "localsize":I
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "written":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 177
    goto :goto_3

    .line 176
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 177
    throw v0

    .line 179
    :cond_6
    :goto_3
    if-eqz p2, :cond_9

    .line 180
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v1, :cond_7

    .line 181
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->tempFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 183
    :cond_7
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    if-nez v1, :cond_8

    .line 184
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 185
    .local v0, "accessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 187
    .end local v0    # "accessFile":Ljava/io/RandomAccessFile;
    :cond_8
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 188
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 190
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->setCompleted()V

    goto :goto_4

    .line 192
    :cond_9
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    :goto_4
    return-void
.end method

.method public delete()V
    .locals 4

    .line 247
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 249
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 250
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to close a file."

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 256
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    if-nez v0, :cond_2

    .line 257
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    sget-object v0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    const-string v3, "Failed to delete: {}"

    invoke-interface {v0, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    :cond_1
    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 264
    :cond_2
    return-void
.end method

.method protected abstract deleteOnExit()Z
.end method

.method public get()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 269
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    return-object v0

    .line 271
    :cond_0
    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->readFrom(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract getBaseDirectory()Ljava/lang/String;
.end method

.method public getByteBuf()Lio/netty/buffer/ByteBuf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 277
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 279
    :cond_0
    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->readFrom(Ljava/io/File;)[B

    move-result-object v0

    .line 280
    .local v0, "array":[B
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1
.end method

.method public getChunk(I)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 288
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    .local v0, "accessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 292
    .end local v0    # "accessFile":Ljava/io/RandomAccessFile;
    :cond_1
    const/4 v0, 0x0

    .line 293
    .local v0, "read":I
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 294
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    if-ge v0, p1, :cond_3

    .line 295
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 296
    .local v2, "readnow":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 297
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 298
    const/4 v3, 0x0

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 299
    goto :goto_1

    .line 301
    :cond_2
    add-int/2addr v0, v2

    .line 303
    .end local v2    # "readnow":I
    goto :goto_0

    .line 304
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 305
    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v2

    .line 307
    :cond_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 308
    invoke-static {v1}, Lio/netty/buffer/Unpooled;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 309
    .local v2, "buffer":Lio/netty/buffer/ByteBuf;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 310
    invoke-virtual {v2, v0}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 311
    return-object v2

    .line 286
    .end local v0    # "read":I
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_5
    :goto_2
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method protected abstract getDiskFilename()Ljava/lang/String;
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    return-object v0
.end method

.method protected abstract getPostfix()Ljava/lang/String;
.end method

.method protected abstract getPrefix()Ljava/lang/String;
.end method

.method public getString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 322
    const-string v0, ""

    return-object v0

    .line 324
    :cond_0
    if-nez p1, :cond_1

    .line 325
    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->readFrom(Ljava/io/File;)[B

    move-result-object v0

    .line 326
    .local v0, "array":[B
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 328
    .end local v0    # "array":[B
    :cond_1
    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->readFrom(Ljava/io/File;)[B

    move-result-object v0

    .line 329
    .restart local v0    # "array":[B
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public isInMemory()Z
    .locals 1

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 18
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Multiple exceptions detected, the following will be suppressed {}"

    const-string v0, "dest"

    invoke-static {v2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 340
    iget-object v0, v1, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-eqz v0, :cond_f

    .line 343
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_e

    .line 345
    const/4 v5, 0x0

    .line 346
    .local v5, "exception":Ljava/io/IOException;
    const/4 v6, 0x0

    .line 347
    .local v6, "inputAccessFile":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 348
    .local v7, "outputAccessFile":Ljava/io/RandomAccessFile;
    const-wide/16 v8, 0x2004

    .line 349
    .local v8, "chunkSize":J
    const-wide/16 v10, 0x0

    .line 351
    .local v10, "position":J
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v12, v1, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    const-string v13, "r"

    invoke-direct {v0, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v0

    .line 352
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v12, "rw"

    invoke-direct {v0, v2, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 353
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    .line 354
    .local v12, "in":Ljava/nio/channels/FileChannel;
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    move-object/from16 v17, v0

    .line 355
    .local v17, "out":Ljava/nio/channels/FileChannel;
    :goto_0
    iget-wide v13, v1, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v0, v10, v13

    if-gez v0, :cond_1

    .line 356
    iget-wide v13, v1, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    sub-long/2addr v13, v10

    cmp-long v0, v8, v13

    if-gez v0, :cond_0

    .line 357
    iget-wide v13, v1, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    sub-long/2addr v13, v10

    move-wide v8, v13

    .line 359
    :cond_0
    move-wide v13, v10

    move-wide v15, v8

    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v10, v13

    goto :goto_0

    .line 364
    .end local v12    # "in":Ljava/nio/channels/FileChannel;
    .end local v17    # "out":Ljava/nio/channels/FileChannel;
    :cond_1
    nop

    .line 366
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    goto :goto_1

    .line 367
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 368
    .local v0, "e":Ljava/io/IOException;
    if-nez v5, :cond_2

    .line 369
    move-object v5, v0

    goto :goto_1

    .line 371
    :cond_2
    sget-object v12, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v12, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 377
    :try_start_2
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 378
    :catch_1
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 379
    .restart local v0    # "e":Ljava/io/IOException;
    if-nez v5, :cond_8

    .line 380
    move-object v5, v0

    goto :goto_5

    .line 364
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v6, :cond_4

    .line 366
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 373
    goto :goto_2

    .line 367
    :catch_2
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 368
    .restart local v0    # "e":Ljava/io/IOException;
    if-nez v5, :cond_3

    .line 369
    move-object v5, v0

    goto :goto_2

    .line 371
    :cond_3
    sget-object v12, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v12, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_2
    if-eqz v7, :cond_6

    .line 377
    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 384
    goto :goto_3

    .line 378
    :catch_3
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 379
    .restart local v0    # "e":Ljava/io/IOException;
    if-nez v5, :cond_5

    .line 380
    move-object v5, v0

    goto :goto_3

    .line 382
    :cond_5
    sget-object v12, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v12, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_3
    throw v4

    .line 361
    :catch_4
    move-exception v0

    .line 362
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v5, v0

    .line 364
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_7

    .line 366
    :try_start_5
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 373
    goto :goto_4

    .line 367
    :catch_5
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 368
    .restart local v0    # "e":Ljava/io/IOException;
    nop

    .line 371
    sget-object v12, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v12, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    :goto_4
    if-eqz v7, :cond_9

    .line 377
    :try_start_6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    .line 378
    :catch_6
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 379
    .restart local v0    # "e":Ljava/io/IOException;
    nop

    .line 382
    :cond_8
    sget-object v12, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v12, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    :goto_5
    if-nez v5, :cond_d

    .line 390
    iget-wide v12, v1, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v0, v10, v12

    const-string v3, "Failed to delete: {}"

    if-nez v0, :cond_b

    .line 391
    iget-object v0, v1, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_a

    .line 392
    sget-object v0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v12, v1, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-interface {v0, v3, v12}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    :cond_a
    iput-object v2, v1, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 395
    iput-boolean v4, v1, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    .line 396
    return v4

    .line 398
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_c

    .line 399
    sget-object v0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    :cond_c
    const/4 v0, 0x0

    return v0

    .line 388
    :cond_d
    throw v5

    .line 404
    .end local v5    # "exception":Ljava/io/IOException;
    .end local v6    # "inputAccessFile":Ljava/io/RandomAccessFile;
    .end local v7    # "outputAccessFile":Ljava/io/RandomAccessFile;
    .end local v8    # "chunkSize":J
    .end local v10    # "position":J
    :cond_e
    iput-object v2, v1, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 405
    iput-boolean v4, v1, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    .line 406
    return v4

    .line 341
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v3, "No file defined so cannot be renamed"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Lio/netty/buffer/ByteBuf;)V
    .locals 8
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    :try_start_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    .line 106
    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->checkSize(J)V

    .line 107
    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "buffer":Lio/netty/buffer/ByteBuf;
    throw v0

    .line 110
    .restart local p1    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_2

    .line 111
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->tempFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 113
    :cond_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_6

    .line 115
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_5

    .line 116
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 144
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 117
    return-void

    .line 119
    :cond_3
    :try_start_1
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 120
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file exists already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "buffer":Lio/netty/buffer/ByteBuf;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    .restart local p1    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 124
    return-void

    .line 126
    :cond_6
    :try_start_2
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .local v0, "accessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 130
    .local v1, "localfileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 131
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 132
    .local v3, "written":I
    :goto_2
    int-to-long v4, v3

    iget-wide v6, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    .line 133
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    .line 135
    :cond_7
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 136
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    .end local v1    # "localfileChannel":Ljava/nio/channels/FileChannel;
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "written":I
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 139
    nop

    .line 140
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->setCompleted()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    .end local v0    # "accessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 145
    nop

    .line 146
    return-void

    .line 138
    .restart local v0    # "accessFile":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 139
    nop

    .end local p1    # "buffer":Lio/netty/buffer/ByteBuf;
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 144
    .end local v0    # "accessFile":Ljava/io/RandomAccessFile;
    .restart local p1    # "buffer":Lio/netty/buffer/ByteBuf;
    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 145
    throw v0
.end method

.method public setContent(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->delete()V

    .line 201
    :cond_0
    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 202
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    .line 203
    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->checkSize(J)V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    .line 205
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->setCompleted()V

    .line 206
    return-void
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 10
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->delete()V

    .line 214
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->tempFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 215
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    .local v0, "accessFile":Ljava/io/RandomAccessFile;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 217
    const/4 v3, 0x0

    .line 219
    .local v3, "written":I
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 220
    .local v4, "localfileChannel":Ljava/nio/channels/FileChannel;
    const/16 v5, 0x4000

    new-array v5, v5, [B

    .line 221
    .local v5, "bytes":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 222
    .local v6, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 223
    .local v7, "read":I
    :goto_0
    if-lez v7, :cond_1

    .line 224
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 225
    invoke-virtual {v4, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v8

    add-int/2addr v3, v8

    .line 226
    int-to-long v8, v3

    invoke-virtual {p0, v8, v9}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->checkSize(J)V

    .line 227
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v7, v8

    goto :goto_0

    .line 229
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .end local v4    # "localfileChannel":Ljava/nio/channels/FileChannel;
    .end local v5    # "bytes":[B
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "read":I
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 232
    nop

    .line 233
    int-to-long v4, v3

    iput-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    .line 234
    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    cmp-long v1, v4, v1

    if-lez v1, :cond_3

    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_3

    .line 235
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 236
    sget-object v1, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    const-string v4, "Failed to delete: {}"

    invoke-interface {v1, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 239
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    .line 242
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->setCompleted()V

    .line 243
    return-void

    .line 231
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 232
    throw v1
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 441
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0
    .param p1, "hint"    # Ljava/lang/Object;

    .line 446
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object p1

    return-object p1
.end method
