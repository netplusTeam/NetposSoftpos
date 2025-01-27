.class public Lio/netty/handler/codec/compression/SnappyFrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SnappyFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;
    }
.end annotation


# static fields
.field private static final MAX_UNCOMPRESSED_DATA_SIZE:I = 0x10004

.field private static final SNAPPY_IDENTIFIER_LEN:I = 0x6


# instance fields
.field private corrupted:Z

.field private final snappy:Lio/netty/handler/codec/compression/Snappy;

.field private started:Z

.field private final validateChecksums:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;-><init>(Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "validateChecksums"    # Z

    .line 74
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 50
    new-instance v0, Lio/netty/handler/codec/compression/Snappy;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Snappy;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->snappy:Lio/netty/handler/codec/compression/Snappy;

    .line 75
    iput-boolean p1, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->validateChecksums:Z

    .line 76
    return-void
.end method

.method private static checkByte(BB)V
    .locals 2
    .param p0, "actual"    # B
    .param p1, "expect"    # B

    .line 202
    if-ne p0, p1, :cond_0

    .line 206
    return-void

    .line 203
    :cond_0
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v1, "Unexpected stream identifier contents. Mismatched snappy protocol version?"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static mapChunkType(B)Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;
    .locals 2
    .param p0, "type"    # B

    .line 215
    if-nez p0, :cond_0

    .line 216
    sget-object v0, Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;->COMPRESSED_DATA:Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;

    return-object v0

    .line 217
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 218
    sget-object v0, Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;->UNCOMPRESSED_DATA:Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;

    return-object v0

    .line 219
    :cond_1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    .line 220
    sget-object v0, Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;->STREAM_IDENTIFIER:Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;

    return-object v0

    .line 221
    :cond_2
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_3

    .line 222
    sget-object v0, Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;->RESERVED_SKIPPABLE:Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;

    return-object v0

    .line 224
    :cond_3
    sget-object v0, Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;->RESERVED_UNSKIPPABLE:Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;

    return-object v0
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 11
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

    .line 80
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->corrupted:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 82
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    .line 87
    .local v1, "idx":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 88
    .local v2, "inSize":I
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 91
    return-void

    .line 94
    :cond_1
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v4

    .line 95
    .local v4, "chunkTypeVal":I
    int-to-byte v5, v4

    invoke-static {v5}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->mapChunkType(B)Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;

    move-result-object v5

    .line 96
    .local v5, "chunkType":Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p2, v6}, Lio/netty/buffer/ByteBuf;->getUnsignedMediumLE(I)I

    move-result v6

    .line 98
    .local v6, "chunkLength":I
    sget-object v7, Lio/netty/handler/codec/compression/SnappyFrameDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$SnappyFrameDecoder$ChunkType:[I

    invoke-virtual {v5}, Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    .line 161
    :pswitch_0
    iget-boolean v7, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->started:Z

    if-eqz v7, :cond_6

    .line 165
    add-int/lit8 v7, v6, 0x4

    if-ge v2, v7, :cond_2

    .line 166
    return-void

    .line 169
    :cond_2
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 170
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readIntLE()I

    move-result v7

    .line 171
    .local v7, "checksum":I
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v8

    invoke-interface {v8}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .local v8, "uncompressed":Lio/netty/buffer/ByteBuf;
    :try_start_1
    iget-boolean v9, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->validateChecksums:Z

    if-eqz v9, :cond_3

    .line 174
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    .local v9, "oldWriterIndex":I
    :try_start_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    add-int/2addr v10, v6

    sub-int/2addr v10, v3

    invoke-virtual {p2, v10}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 177
    iget-object v3, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->snappy:Lio/netty/handler/codec/compression/Snappy;

    invoke-virtual {v3, p2, v8}, Lio/netty/handler/codec/compression/Snappy;->decode(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :try_start_3
    invoke-virtual {p2, v9}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 180
    nop

    .line 181
    const/4 v3, 0x0

    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v10

    invoke-static {v7, v8, v3, v10}, Lio/netty/handler/codec/compression/Snappy;->validateChecksum(ILio/netty/buffer/ByteBuf;II)V

    .line 182
    .end local v9    # "oldWriterIndex":I
    goto :goto_0

    .line 179
    .restart local v9    # "oldWriterIndex":I
    :catchall_0
    move-exception v3

    invoke-virtual {p2, v9}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 180
    nop

    .end local v1    # "idx":I
    .end local v2    # "inSize":I
    .end local v4    # "chunkTypeVal":I
    .end local v5    # "chunkType":Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;
    .end local v6    # "chunkLength":I
    .end local v7    # "checksum":I
    .end local v8    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3

    .line 183
    .end local v9    # "oldWriterIndex":I
    .restart local v1    # "idx":I
    .restart local v2    # "inSize":I
    .restart local v4    # "chunkTypeVal":I
    .restart local v5    # "chunkType":Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;
    .restart local v6    # "chunkLength":I
    .restart local v7    # "checksum":I
    .restart local v8    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3
    iget-object v3, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->snappy:Lio/netty/handler/codec/compression/Snappy;

    add-int/lit8 v9, v6, -0x4

    invoke-virtual {p2, v9}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Lio/netty/handler/codec/compression/Snappy;->decode(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    .line 185
    :goto_0
    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    const/4 v3, 0x0

    .line 188
    .end local v8    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .local v3, "uncompressed":Lio/netty/buffer/ByteBuf;
    if-eqz v3, :cond_4

    .line 189
    :try_start_4
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 192
    :cond_4
    iget-object v8, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->snappy:Lio/netty/handler/codec/compression/Snappy;

    invoke-virtual {v8}, Lio/netty/handler/codec/compression/Snappy;->reset()V

    goto/16 :goto_2

    .line 188
    .end local v3    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .restart local v8    # "uncompressed":Lio/netty/buffer/ByteBuf;
    :catchall_1
    move-exception v3

    if-eqz v8, :cond_5

    .line 189
    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 191
    :cond_5
    nop

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3

    .line 162
    .end local v7    # "checksum":I
    .end local v8    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v7, "Received COMPRESSED_DATA tag before STREAM_IDENTIFIER"

    invoke-direct {v3, v7}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3

    .line 140
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :pswitch_1
    iget-boolean v7, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->started:Z

    if-eqz v7, :cond_a

    .line 143
    const v7, 0x10004

    if-gt v6, v7, :cond_9

    .line 147
    add-int/lit8 v7, v6, 0x4

    if-ge v2, v7, :cond_7

    .line 148
    return-void

    .line 151
    :cond_7
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 152
    iget-boolean v7, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->validateChecksums:Z

    if-eqz v7, :cond_8

    .line 153
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readIntLE()I

    move-result v3

    .line 154
    .local v3, "checksum":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v7

    add-int/lit8 v8, v6, -0x4

    invoke-static {v3, p2, v7, v8}, Lio/netty/handler/codec/compression/Snappy;->validateChecksum(ILio/netty/buffer/ByteBuf;II)V

    .line 155
    .end local v3    # "checksum":I
    goto :goto_1

    .line 156
    :cond_8
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 158
    :goto_1
    add-int/lit8 v3, v6, -0x4

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    goto/16 :goto_2

    .line 144
    :cond_9
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v7, "Received UNCOMPRESSED_DATA larger than 65540 bytes"

    invoke-direct {v3, v7}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3

    .line 141
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_a
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v7, "Received UNCOMPRESSED_DATA tag before STREAM_IDENTIFIER"

    invoke-direct {v3, v7}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3

    .line 137
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :pswitch_2
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found reserved unskippable chunk type: 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3

    .line 122
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :pswitch_3
    iget-boolean v3, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->started:Z

    if-eqz v3, :cond_c

    .line 126
    add-int/lit8 v3, v6, 0x4

    if-ge v2, v3, :cond_b

    .line 128
    return-void

    .line 131
    :cond_b
    add-int/lit8 v3, v6, 0x4

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 132
    goto :goto_2

    .line 123
    :cond_c
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v7, "Received RESERVED_SKIPPABLE tag before STREAM_IDENTIFIER"

    invoke-direct {v3, v7}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3

    .line 100
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :pswitch_4
    const/4 v7, 0x6

    if-ne v6, v7, :cond_e

    .line 104
    const/16 v8, 0xa

    if-ge v2, v8, :cond_d

    .line 105
    goto :goto_2

    .line 108
    :cond_d
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 109
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    .line 110
    .local v3, "offset":I
    invoke-virtual {p2, v7}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 112
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "offset":I
    .local v7, "offset":I
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v3

    const/16 v8, 0x73

    invoke-static {v3, v8}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->checkByte(BB)V

    .line 113
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p2, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    const/16 v8, 0x4e

    invoke-static {v7, v8}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->checkByte(BB)V

    .line 114
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "offset":I
    .restart local v7    # "offset":I
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v3

    const/16 v8, 0x61

    invoke-static {v3, v8}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->checkByte(BB)V

    .line 115
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p2, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    const/16 v8, 0x50

    invoke-static {v7, v8}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->checkByte(BB)V

    .line 116
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "offset":I
    .restart local v7    # "offset":I
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v3

    const/16 v8, 0x70

    invoke-static {v3, v8}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->checkByte(BB)V

    .line 117
    invoke-virtual {p2, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v3

    const/16 v8, 0x59

    invoke-static {v3, v8}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->checkByte(BB)V

    .line 119
    iput-boolean v0, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->started:Z

    .line 120
    goto :goto_2

    .line 101
    .end local v7    # "offset":I
    :cond_e
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected length of stream identifier: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 198
    .end local v1    # "idx":I
    .end local v2    # "inSize":I
    .end local v4    # "chunkTypeVal":I
    .end local v5    # "chunkType":Lio/netty/handler/codec/compression/SnappyFrameDecoder$ChunkType;
    .end local v6    # "chunkLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_2
    nop

    .line 199
    return-void

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v0, p0, Lio/netty/handler/codec/compression/SnappyFrameDecoder;->corrupted:Z

    .line 197
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
