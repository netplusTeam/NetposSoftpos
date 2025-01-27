.class public Lio/netty/handler/codec/compression/LzfDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "LzfDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/LzfDecoder$State;
    }
.end annotation


# static fields
.field private static final MAGIC_NUMBER:S = 0x5a56s


# instance fields
.field private chunkLength:I

.field private currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

.field private decoder:Lcom/ning/compress/lzf/ChunkDecoder;

.field private isCompressed:Z

.field private originalLength:I

.field private recycler:Lcom/ning/compress/BufferRecycler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/LzfDecoder;-><init>(Z)V

    .line 91
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "safeInstance"    # Z

    .line 102
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 50
    sget-object v0, Lio/netty/handler/codec/compression/LzfDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/LzfDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-static {}, Lcom/ning/compress/lzf/util/ChunkDecoderFactory;->safeInstance()Lcom/ning/compress/lzf/ChunkDecoder;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {}, Lcom/ning/compress/lzf/util/ChunkDecoderFactory;->optimalInstance()Lcom/ning/compress/lzf/ChunkDecoder;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/netty/handler/codec/compression/LzfDecoder;->decoder:Lcom/ning/compress/lzf/ChunkDecoder;

    .line 107
    invoke-static {}, Lcom/ning/compress/BufferRecycler;->instance()Lcom/ning/compress/BufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/compression/LzfDecoder;->recycler:Lcom/ning/compress/BufferRecycler;

    .line 108
    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 18
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

    move-object/from16 v3, p3

    .line 113
    :try_start_0
    sget-object v0, Lio/netty/handler/codec/compression/LzfDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$LzfDecoder$State:[I

    iget-object v4, v1, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    invoke-virtual {v4}, Lio/netty/handler/codec/compression/LzfDecoder$State;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    goto/16 :goto_6

    .line 200
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {v2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 201
    goto/16 :goto_4

    .line 115
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v6, 0x5

    if-ge v0, v6, :cond_0

    .line 116
    goto/16 :goto_4

    .line 118
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    .line 119
    .local v0, "magic":I
    const/16 v6, 0x5a56

    if-ne v0, v6, :cond_9

    .line 123
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v6

    .line 124
    .local v6, "type":I
    const/4 v7, 0x1

    packed-switch v6, :pswitch_data_1

    .line 134
    new-instance v8, Lio/netty/handler/codec/compression/DecompressionException;

    goto/16 :goto_5

    .line 130
    :pswitch_2
    iput-boolean v7, v1, Lio/netty/handler/codec/compression/LzfDecoder;->isCompressed:Z

    .line 131
    sget-object v8, Lio/netty/handler/codec/compression/LzfDecoder$State;->INIT_ORIGINAL_LENGTH:Lio/netty/handler/codec/compression/LzfDecoder$State;

    iput-object v8, v1, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 132
    goto :goto_0

    .line 126
    :pswitch_3
    iput-boolean v5, v1, Lio/netty/handler/codec/compression/LzfDecoder;->isCompressed:Z

    .line 127
    sget-object v8, Lio/netty/handler/codec/compression/LzfDecoder$State;->DECOMPRESS_DATA:Lio/netty/handler/codec/compression/LzfDecoder$State;

    iput-object v8, v1, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 128
    nop

    .line 138
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v8

    iput v8, v1, Lio/netty/handler/codec/compression/LzfDecoder;->chunkLength:I

    .line 140
    if-eq v6, v7, :cond_1

    .line 141
    goto/16 :goto_4

    .line 145
    .end local v0    # "magic":I
    .end local v6    # "type":I
    :cond_1
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 146
    goto/16 :goto_4

    .line 148
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    iput v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->originalLength:I

    .line 150
    sget-object v0, Lio/netty/handler/codec/compression/LzfDecoder$State;->DECOMPRESS_DATA:Lio/netty/handler/codec/compression/LzfDecoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 153
    :pswitch_5
    iget v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->chunkLength:I

    move v4, v0

    .line 154
    .local v4, "chunkLength":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_3

    .line 155
    goto/16 :goto_4

    .line 157
    :cond_3
    iget v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->originalLength:I

    move v6, v0

    .line 159
    .local v6, "originalLength":I
    iget-boolean v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->isCompressed:Z

    if-eqz v0, :cond_7

    .line 160
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    move v7, v0

    .line 164
    .local v7, "idx":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    .line 166
    .local v0, "inputArray":[B
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v7

    move v14, v5

    move-object v5, v0

    .local v5, "inPos":I
    goto :goto_1

    .line 168
    .end local v0    # "inputArray":[B
    .end local v5    # "inPos":I
    :cond_4
    iget-object v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->recycler:Lcom/ning/compress/BufferRecycler;

    invoke-virtual {v0, v4}, Lcom/ning/compress/BufferRecycler;->allocInputBuffer(I)[B

    move-result-object v0

    .line 169
    .restart local v0    # "inputArray":[B
    invoke-virtual {v2, v7, v0, v5, v4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 170
    const/4 v5, 0x0

    move v14, v5

    move-object v5, v0

    .line 173
    .end local v0    # "inputArray":[B
    .local v5, "inputArray":[B
    .local v14, "inPos":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, v6, v6}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v15, v0

    .line 174
    .local v15, "uncompressed":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v11

    .line 175
    .local v11, "outputArray":[B
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v0

    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int v16, v0, v8

    .line 177
    .local v16, "outPos":I
    const/16 v17, 0x0

    .line 179
    .local v17, "success":Z
    :try_start_1
    iget-object v8, v1, Lio/netty/handler/codec/compression/LzfDecoder;->decoder:Lcom/ning/compress/lzf/ChunkDecoder;

    add-int v13, v16, v6

    move-object v9, v5

    move v10, v14

    move/from16 v12, v16

    invoke-virtual/range {v8 .. v13}, Lcom/ning/compress/lzf/ChunkDecoder;->decodeChunk([BI[BII)V

    .line 180
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v15, v0}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 181
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v2, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    const/4 v0, 0x1

    .line 185
    .end local v17    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_5

    .line 186
    :try_start_2
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 190
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v8

    if-nez v8, :cond_8

    .line 191
    iget-object v8, v1, Lio/netty/handler/codec/compression/LzfDecoder;->recycler:Lcom/ning/compress/BufferRecycler;

    invoke-virtual {v8, v5}, Lcom/ning/compress/BufferRecycler;->releaseInputBuffer([B)V

    goto :goto_2

    .line 185
    .end local v0    # "success":Z
    .restart local v17    # "success":Z
    :catchall_0
    move-exception v0

    if-nez v17, :cond_6

    .line 186
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 188
    :cond_6
    nop

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0

    .line 193
    .end local v5    # "inputArray":[B
    .end local v7    # "idx":I
    .end local v11    # "outputArray":[B
    .end local v14    # "inPos":I
    .end local v15    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .end local v16    # "outPos":I
    .end local v17    # "success":Z
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_7
    if-lez v4, :cond_8

    .line 194
    invoke-virtual {v2, v4}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 193
    :cond_8
    :goto_2
    nop

    .line 197
    :goto_3
    sget-object v0, Lio/netty/handler/codec/compression/LzfDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/LzfDecoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 198
    nop

    .line 210
    .end local v4    # "chunkLength":I
    .end local v6    # "originalLength":I
    :goto_4
    nop

    .line 211
    return-void

    .line 134
    .local v0, "magic":I
    .local v6, "type":I
    :goto_5
    const-string v9, "unknown type of chunk: %d (expected: %d or %d)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    .line 136
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v4

    .line 134
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v8

    .line 120
    .end local v6    # "type":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_9
    new-instance v4, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v5, "unexpected block identifier"

    invoke-direct {v4, v5}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v4

    .line 203
    .end local v0    # "magic":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lio/netty/handler/codec/compression/LzfDecoder$State;->CORRUPTED:Lio/netty/handler/codec/compression/LzfDecoder$State;

    iput-object v4, v1, Lio/netty/handler/codec/compression/LzfDecoder;->currentState:Lio/netty/handler/codec/compression/LzfDecoder$State;

    .line 207
    const/4 v4, 0x0

    iput-object v4, v1, Lio/netty/handler/codec/compression/LzfDecoder;->decoder:Lcom/ning/compress/lzf/ChunkDecoder;

    .line 208
    iput-object v4, v1, Lio/netty/handler/codec/compression/LzfDecoder;->recycler:Lcom/ning/compress/BufferRecycler;

    .line 209
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
