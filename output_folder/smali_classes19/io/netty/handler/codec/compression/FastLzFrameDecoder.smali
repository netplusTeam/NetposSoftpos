.class public Lio/netty/handler/codec/compression/FastLzFrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "FastLzFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;
    }
.end annotation


# instance fields
.field private final checksum:Ljava/util/zip/Checksum;

.field private chunkLength:I

.field private currentChecksum:I

.field private currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

.field private hasChecksum:Z

.field private isCompressed:Z

.field private originalLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/FastLzFrameDecoder;-><init>(Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/Checksum;)V
    .locals 1
    .param p1, "checksum"    # Ljava/util/zip/Checksum;

    .line 106
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 45
    sget-object v0, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 107
    iput-object p1, p0, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->checksum:Ljava/util/zip/Checksum;

    .line 108
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "validateChecksums"    # Z

    .line 96
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/FastLzFrameDecoder;-><init>(Ljava/util/zip/Checksum;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 20
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

    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 113
    :try_start_0
    sget-object v0, Lio/netty/handler/codec/compression/FastLzFrameDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$FastLzFrameDecoder$State:[I

    iget-object v3, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    invoke-virtual {v3}, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->ordinal()I

    move-result v3

    aget v0, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    .line 218
    move-object/from16 v4, p3

    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c

    .line 215
    :pswitch_0
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {v2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 216
    move-object/from16 v4, p3

    goto/16 :goto_a

    .line 115
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 116
    move-object/from16 v4, p3

    goto/16 :goto_a

    .line 119
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedMedium()I

    move-result v0

    .line 120
    .local v0, "magic":I
    const v7, 0x464c5a

    if-ne v0, v7, :cond_12

    .line 124
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v7

    .line 125
    .local v7, "options":B
    and-int/lit8 v8, v7, 0x1

    if-ne v8, v5, :cond_1

    move v8, v5

    goto :goto_0

    :cond_1
    move v8, v6

    :goto_0
    iput-boolean v8, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->isCompressed:Z

    .line 126
    and-int/lit8 v8, v7, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_2

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    iput-boolean v8, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->hasChecksum:Z

    .line 128
    sget-object v8, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->INIT_BLOCK_PARAMS:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    iput-object v8, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 131
    .end local v0    # "magic":I
    .end local v7    # "options":B
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget-boolean v7, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->isCompressed:Z

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    add-int/2addr v7, v4

    iget-boolean v8, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->hasChecksum:Z

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    move v3, v6

    :goto_3
    add-int/2addr v7, v3

    if-ge v0, v7, :cond_5

    .line 132
    move-object/from16 v4, p3

    goto/16 :goto_a

    .line 134
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result v0

    goto :goto_4

    :cond_6
    move v0, v6

    :goto_4
    iput v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentChecksum:I

    .line 135
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    iput v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->chunkLength:I

    .line 136
    iget-boolean v3, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->isCompressed:Z

    if-eqz v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    :cond_7
    iput v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->originalLength:I

    .line 138
    sget-object v0, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->DECOMPRESS_DATA:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 141
    :pswitch_3
    iget v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->chunkLength:I

    move v3, v0

    .line 142
    .local v3, "chunkLength":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v3, :cond_8

    .line 143
    move-object/from16 v4, p3

    goto/16 :goto_a

    .line 146
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    move v13, v0

    .line 147
    .local v13, "idx":I
    iget v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->originalLength:I

    move v14, v0

    .line 153
    .local v14, "originalLength":I
    if-eqz v14, :cond_9

    .line 154
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, v14, v14}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 155
    .local v0, "uncompressed":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v7

    .line 156
    .local v7, "output":[B
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v8

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v9

    add-int/2addr v8, v9

    move-object v15, v0

    move-object v12, v7

    move v10, v8

    .local v8, "outputPtr":I
    goto :goto_5

    .line 158
    .end local v0    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .end local v7    # "output":[B
    .end local v8    # "outputPtr":I
    :cond_9
    const/4 v0, 0x0

    .line 159
    .restart local v0    # "uncompressed":Lio/netty/buffer/ByteBuf;
    sget-object v7, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 160
    .restart local v7    # "output":[B
    const/4 v8, 0x0

    move-object v15, v0

    move-object v12, v7

    move v10, v8

    .line 163
    .end local v0    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .end local v7    # "output":[B
    .local v10, "outputPtr":I
    .local v12, "output":[B
    .local v15, "uncompressed":Lio/netty/buffer/ByteBuf;
    :goto_5
    const/16 v16, 0x0

    .line 165
    .local v16, "success":Z
    :try_start_3
    iget-boolean v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->isCompressed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v0, :cond_c

    .line 168
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_a

    .line 169
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    .line 170
    .local v0, "input":[B
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/2addr v7, v13

    move/from16 v17, v7

    .local v7, "inputPtr":I
    goto :goto_6

    .line 209
    .end local v0    # "input":[B
    .end local v7    # "inputPtr":I
    :catchall_0
    move-exception v0

    move-object/from16 v4, p3

    move v8, v10

    move-object v7, v12

    goto/16 :goto_b

    .line 172
    :cond_a
    :try_start_6
    new-array v0, v3, [B

    .line 173
    .restart local v0    # "input":[B
    invoke-virtual {v2, v13, v0}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 174
    const/4 v7, 0x0

    move/from16 v17, v7

    .line 177
    .local v17, "inputPtr":I
    :goto_6
    move-object v7, v0

    move/from16 v8, v17

    move v9, v3

    move/from16 v18, v10

    .end local v10    # "outputPtr":I
    .local v18, "outputPtr":I
    move-object v10, v12

    move/from16 v11, v18

    move-object/from16 v19, v12

    .end local v12    # "output":[B
    .local v19, "output":[B
    move v12, v14

    :try_start_7
    invoke-static/range {v7 .. v12}, Lio/netty/handler/codec/compression/FastLz;->decompress([BII[BII)I

    move-result v7

    .line 179
    .local v7, "decompressedBytes":I
    if-ne v14, v7, :cond_b

    .line 184
    .end local v0    # "input":[B
    .end local v7    # "decompressedBytes":I
    .end local v17    # "inputPtr":I
    move/from16 v8, v18

    move-object/from16 v7, v19

    goto :goto_7

    .line 180
    .restart local v0    # "input":[B
    .restart local v7    # "decompressedBytes":I
    .restart local v17    # "inputPtr":I
    :cond_b
    new-instance v8, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v9, "stream corrupted: originalLength(%d) and actual length(%d) mismatch"

    new-array v4, v4, [Ljava/lang/Object;

    .line 182
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 180
    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local v3    # "chunkLength":I
    .end local v13    # "idx":I
    .end local v14    # "originalLength":I
    .end local v15    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .end local v16    # "success":Z
    .end local v18    # "outputPtr":I
    .end local v19    # "output":[B
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 209
    .end local v0    # "input":[B
    .end local v7    # "decompressedBytes":I
    .end local v17    # "inputPtr":I
    .restart local v3    # "chunkLength":I
    .restart local v13    # "idx":I
    .restart local v14    # "originalLength":I
    .restart local v15    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .restart local v16    # "success":Z
    .restart local v18    # "outputPtr":I
    .restart local v19    # "output":[B
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v4, p3

    move/from16 v8, v18

    move-object/from16 v7, v19

    goto/16 :goto_b

    .end local v18    # "outputPtr":I
    .end local v19    # "output":[B
    .restart local v10    # "outputPtr":I
    .restart local v12    # "output":[B
    :catchall_2
    move-exception v0

    move-object/from16 v4, p3

    move v8, v10

    move-object v7, v12

    .end local v10    # "outputPtr":I
    .end local v12    # "output":[B
    .restart local v18    # "outputPtr":I
    .restart local v19    # "output":[B
    goto/16 :goto_b

    .line 185
    .end local v18    # "outputPtr":I
    .end local v19    # "output":[B
    .restart local v10    # "outputPtr":I
    .restart local v12    # "output":[B
    :cond_c
    move/from16 v18, v10

    move-object/from16 v19, v12

    .end local v10    # "outputPtr":I
    .end local v12    # "output":[B
    .restart local v18    # "outputPtr":I
    .restart local v19    # "output":[B
    move/from16 v8, v18

    move-object/from16 v7, v19

    .end local v18    # "outputPtr":I
    .end local v19    # "output":[B
    .local v7, "output":[B
    .restart local v8    # "outputPtr":I
    :try_start_8
    invoke-virtual {v2, v13, v7, v8, v3}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 188
    :goto_7
    iget-object v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->checksum:Ljava/util/zip/Checksum;

    .line 189
    .local v0, "checksum":Ljava/util/zip/Checksum;
    iget-boolean v9, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->hasChecksum:Z

    if-eqz v9, :cond_e

    if-eqz v0, :cond_e

    .line 190
    invoke-interface {v0}, Ljava/util/zip/Checksum;->reset()V

    .line 191
    invoke-interface {v0, v7, v8, v14}, Ljava/util/zip/Checksum;->update([BII)V

    .line 192
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v9

    long-to-int v9, v9

    .line 193
    .local v9, "checksumResult":I
    iget v10, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentChecksum:I

    if-ne v9, v10, :cond_d

    goto :goto_8

    .line 194
    :cond_d
    new-instance v10, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v11, "stream corrupted: mismatching checksum: %d (expected: %d)"

    new-array v4, v4, [Ljava/lang/Object;

    .line 196
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v4, v6

    iget v6, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentChecksum:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 194
    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local v3    # "chunkLength":I
    .end local v7    # "output":[B
    .end local v8    # "outputPtr":I
    .end local v13    # "idx":I
    .end local v14    # "originalLength":I
    .end local v15    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .end local v16    # "success":Z
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v10

    .line 200
    .end local v9    # "checksumResult":I
    .restart local v3    # "chunkLength":I
    .restart local v7    # "output":[B
    .restart local v8    # "outputPtr":I
    .restart local v13    # "idx":I
    .restart local v14    # "originalLength":I
    .restart local v15    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .restart local v16    # "success":Z
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_e
    :goto_8
    if-eqz v15, :cond_f

    .line 201
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v4

    add-int/2addr v4, v14

    invoke-virtual {v15, v4}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 202
    move-object/from16 v4, p3

    :try_start_9
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 200
    :cond_f
    move-object/from16 v4, p3

    .line 204
    :goto_9
    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 206
    sget-object v5, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    iput-object v5, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 207
    const/4 v5, 0x1

    .line 209
    .end local v0    # "checksum":Ljava/util/zip/Checksum;
    .end local v16    # "success":Z
    .local v5, "success":Z
    if-nez v5, :cond_10

    if-eqz v15, :cond_10

    .line 210
    :try_start_a
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 213
    :cond_10
    nop

    .line 223
    .end local v3    # "chunkLength":I
    .end local v5    # "success":Z
    .end local v7    # "output":[B
    .end local v8    # "outputPtr":I
    .end local v13    # "idx":I
    .end local v14    # "originalLength":I
    .end local v15    # "uncompressed":Lio/netty/buffer/ByteBuf;
    :goto_a
    nop

    .line 224
    return-void

    .line 209
    .restart local v3    # "chunkLength":I
    .restart local v7    # "output":[B
    .restart local v8    # "outputPtr":I
    .restart local v13    # "idx":I
    .restart local v14    # "originalLength":I
    .restart local v15    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .restart local v16    # "success":Z
    :catchall_3
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v4, p3

    goto :goto_b

    .end local v7    # "output":[B
    .end local v8    # "outputPtr":I
    .restart local v10    # "outputPtr":I
    .restart local v12    # "output":[B
    :catchall_5
    move-exception v0

    move-object/from16 v4, p3

    move v8, v10

    move-object v7, v12

    .end local v10    # "outputPtr":I
    .end local v12    # "output":[B
    .restart local v7    # "output":[B
    .restart local v8    # "outputPtr":I
    :goto_b
    if-nez v16, :cond_11

    if-eqz v15, :cond_11

    .line 210
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 212
    :cond_11
    nop

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0

    .line 121
    .end local v3    # "chunkLength":I
    .end local v7    # "output":[B
    .end local v8    # "outputPtr":I
    .end local v13    # "idx":I
    .end local v14    # "originalLength":I
    .end local v15    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .end local v16    # "success":Z
    .local v0, "magic":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_12
    move-object/from16 v4, p3

    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v5, "unexpected block identifier"

    invoke-direct {v3, v5}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3

    .line 218
    .end local v0    # "magic":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_c
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 220
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    move-object/from16 v4, p3

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    :goto_d
    sget-object v3, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->CORRUPTED:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 222
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
