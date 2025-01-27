.class public abstract Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;
.super Lio/netty/handler/codec/http/multipart/AbstractHttpData;
.source "AbstractMemoryHttpData.java"


# instance fields
.field private byteBuf:Lio/netty/buffer/ByteBuf;

.field private chunkPosition:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "size"    # J

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http/multipart/AbstractHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 46
    return-void
.end method


# virtual methods
.method public addContent(Lio/netty/buffer/ByteBuf;Z)V
    .locals 7
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    if-eqz p1, :cond_4

    .line 94
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    .line 95
    .local v0, "localsize":J
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->checkSize(J)V

    .line 96
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    add-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_1
    :goto_0
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    .line 101
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    if-nez v2, :cond_2

    .line 102
    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 103
    :cond_2
    instance-of v3, v2, Lio/netty/buffer/CompositeByteBuf;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 104
    check-cast v2, Lio/netty/buffer/CompositeByteBuf;

    .line 105
    .local v2, "cbb":Lio/netty/buffer/CompositeByteBuf;
    invoke-virtual {v2, v4, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    .line 106
    .end local v2    # "cbb":Lio/netty/buffer/CompositeByteBuf;
    goto :goto_1

    .line 107
    :cond_3
    const v2, 0x7fffffff

    invoke-static {v2}, Lio/netty/buffer/Unpooled;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v2

    .line 108
    .restart local v2    # "cbb":Lio/netty/buffer/CompositeByteBuf;
    const/4 v3, 0x2

    new-array v3, v3, [Lio/netty/buffer/ByteBuf;

    const/4 v5, 0x0

    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    aput-object v6, v3, v5

    aput-object p1, v3, v4

    invoke-virtual {v2, v4, v3}, Lio/netty/buffer/CompositeByteBuf;->addComponents(Z[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    .line 109
    iput-object v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    .line 112
    .end local v0    # "localsize":J
    .end local v2    # "cbb":Lio/netty/buffer/CompositeByteBuf;
    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 113
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->setCompleted()V

    goto :goto_2

    .line 115
    :cond_5
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    :goto_2
    return-void
.end method

.method public delete()V
    .locals 1

    .line 149
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    .line 153
    :cond_0
    return-void
.end method

.method public get()[B
    .locals 3

    .line 157
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_0

    .line 158
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 161
    .local v0, "array":[B
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 162
    return-object v0
.end method

.method public getByteBuf()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 188
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public getChunk(I)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    sub-int/2addr v0, v2

    .line 198
    .local v0, "sizeLeft":I
    if-nez v0, :cond_1

    .line 199
    iput v1, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    .line 200
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v1

    .line 202
    :cond_1
    move v1, p1

    .line 203
    .local v1, "sliceLength":I
    if-ge v0, p1, :cond_2

    .line 204
    move v1, v0

    .line 206
    :cond_2
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3, v2, v1}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 207
    .local v2, "chunk":Lio/netty/buffer/ByteBuf;
    iget v3, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    add-int/2addr v3, v1

    iput v3, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    .line 208
    return-object v2

    .line 194
    .end local v0    # "sizeLeft":I
    .end local v1    # "sliceLength":I
    .end local v2    # "chunk":Lio/netty/buffer/ByteBuf;
    :cond_3
    :goto_0
    iput v1, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    .line 195
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not represented by a file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 167
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "encoding"    # Ljava/nio/charset/Charset;

    .line 172
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_0

    .line 173
    const-string v0, ""

    return-object v0

    .line 175
    :cond_0
    if-nez p1, :cond_1

    .line 176
    sget-object p1, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 178
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInMemory()Z
    .locals 1

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 10
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    const-string v0, "dest"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 221
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    return v1

    .line 222
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file exists already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 227
    .local v0, "length":I
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    .local v2, "accessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 229
    .local v3, "fileChannel":Ljava/nio/channels/FileChannel;
    const/4 v4, 0x0

    .line 230
    .local v4, "written":I
    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v5

    if-ne v5, v1, :cond_3

    .line 231
    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 232
    .local v5, "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    if-ge v4, v0, :cond_2

    .line 233
    invoke-virtual {v3, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_0

    .line 235
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    goto :goto_2

    .line 236
    :cond_3
    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->nioBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 237
    .local v5, "byteBuffers":[Ljava/nio/ByteBuffer;
    :goto_1
    if-ge v4, v0, :cond_4

    .line 238
    int-to-long v6, v4

    invoke-virtual {v3, v5}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v4, v6

    goto :goto_1

    .line 242
    .end local v5    # "byteBuffers":[Ljava/nio/ByteBuffer;
    :cond_4
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 243
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 244
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 245
    if-ne v4, v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v5

    :goto_3
    return v1
.end method

.method public setContent(Lio/netty/buffer/ByteBuf;)V
    .locals 6
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    .line 52
    .local v0, "localsize":J
    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->checkSize(J)V

    .line 53
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_1
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 60
    :cond_2
    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    .line 61
    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    .line 62
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->setCompleted()V

    .line 63
    return-void
.end method

.method public setContent(Ljava/io/File;)V
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    const-string v0, "file"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 124
    .local v0, "newsize":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 127
    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->checkSize(J)V

    .line 128
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .local v2, "accessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 130
    .local v3, "fileChannel":Ljava/nio/channels/FileChannel;
    long-to-int v4, v0

    new-array v4, v4, [B

    .line 131
    .local v4, "array":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 132
    .local v5, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .line 133
    .local v6, "read":I
    :goto_0
    int-to-long v7, v6

    cmp-long v7, v7, v0

    if-gez v7, :cond_0

    .line 134
    invoke-virtual {v3, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 137
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 138
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 139
    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    if-eqz v7, :cond_1

    .line 140
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 142
    :cond_1
    const v7, 0x7fffffff

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Lio/netty/buffer/Unpooled;->wrappedBuffer(I[Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    iput-object v7, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    .line 143
    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    .line 144
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->setCompleted()V

    .line 145
    return-void

    .line 125
    .end local v2    # "accessFile":Ljava/io/RandomAccessFile;
    .end local v3    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v4    # "array":[B
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "read":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File too big to be loaded in memory"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Lio/netty/buffer/Unpooled;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 70
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 71
    .local v1, "bytes":[B
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 72
    .local v2, "read":I
    const/4 v3, 0x0

    .line 73
    .local v3, "written":I
    :goto_0
    if-lez v2, :cond_0

    .line 74
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 75
    add-int/2addr v3, v2

    .line 76
    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->checkSize(J)V

    .line 77
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 79
    :cond_0
    int-to-long v4, v3

    iput-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    .line 80
    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    iget-wide v6, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Out of size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 83
    :cond_2
    :goto_1
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    if-eqz v4, :cond_3

    .line 84
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 86
    :cond_3
    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    .line 87
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->setCompleted()V

    .line 88
    return-void
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->byteBuf:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    .line 263
    :cond_0
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object p1

    return-object p1
.end method
