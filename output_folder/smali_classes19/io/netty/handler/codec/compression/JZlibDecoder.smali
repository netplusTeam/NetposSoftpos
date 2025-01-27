.class public Lio/netty/handler/codec/compression/JZlibDecoder;
.super Lio/netty/handler/codec/compression/ZlibDecoder;
.source "JZlibDecoder.java"


# instance fields
.field private dictionary:[B

.field private volatile finished:Z

.field private final z:Lcom/jcraft/jzlib/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/compression/JZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxAllocation"    # I

    .line 53
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/JZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;)V
    .locals 1
    .param p1, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/JZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V
    .locals 3
    .param p1, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;
    .param p2, "maxAllocation"    # I

    .line 75
    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/ZlibDecoder;-><init>(I)V

    .line 29
    new-instance v0, Lcom/jcraft/jzlib/Inflater;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Inflater;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    .line 77
    const-string v1, "wrapper"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    invoke-static {p1}, Lio/netty/handler/codec/compression/ZlibUtil;->convertWrapperType(Lio/netty/handler/codec/compression/ZlibWrapper;)Lcom/jcraft/jzlib/JZlib$WrapperType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/Inflater;->init(Lcom/jcraft/jzlib/JZlib$WrapperType;)I

    move-result v1

    .line 80
    .local v1, "resultCode":I
    if-eqz v1, :cond_0

    .line 81
    const-string v2, "initialization failure"

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/compression/ZlibUtil;->fail(Lcom/jcraft/jzlib/Inflater;Ljava/lang/String;I)V

    .line 83
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "dictionary"    # [B

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/JZlibDecoder;-><init>([BI)V

    .line 94
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .param p1, "dictionary"    # [B
    .param p2, "maxAllocation"    # I

    .line 108
    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/ZlibDecoder;-><init>(I)V

    .line 29
    new-instance v0, Lcom/jcraft/jzlib/Inflater;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Inflater;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    .line 109
    const-string v1, "dictionary"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->dictionary:[B

    .line 111
    sget-object v1, Lcom/jcraft/jzlib/JZlib;->W_ZLIB:Lcom/jcraft/jzlib/JZlib$WrapperType;

    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/Inflater;->inflateInit(Lcom/jcraft/jzlib/JZlib$WrapperType;)I

    move-result v1

    .line 112
    .local v1, "resultCode":I
    if-eqz v1, :cond_0

    .line 113
    const-string v2, "initialization failure"

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/compression/ZlibUtil;->fail(Lcom/jcraft/jzlib/Inflater;Ljava/lang/String;I)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 10
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

    .line 128
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->finished:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 131
    return-void

    .line 134
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 135
    .local v0, "inputLength":I
    if-nez v0, :cond_1

    .line 136
    return-void

    .line 141
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    iput v0, v2, Lcom/jcraft/jzlib/Inflater;->avail_in:I

    .line 142
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v3

    iput-object v3, v2, Lcom/jcraft/jzlib/Inflater;->next_in:[B

    .line 144
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v3

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/jcraft/jzlib/Inflater;->next_in_index:I

    goto :goto_0

    .line 146
    :cond_2
    new-array v2, v0, [B

    .line 147
    .local v2, "array":[B
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {p2, v3, v2}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 148
    iget-object v3, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    iput-object v2, v3, Lcom/jcraft/jzlib/Inflater;->next_in:[B

    .line 149
    iget-object v3, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    const/4 v4, 0x0

    iput v4, v3, Lcom/jcraft/jzlib/Inflater;->next_in_index:I

    .line 151
    .end local v2    # "array":[B
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    iget v2, v2, Lcom/jcraft/jzlib/Inflater;->next_in_index:I

    .line 154
    .local v2, "oldNextInIndex":I
    shl-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v1, v3}, Lio/netty/handler/codec/compression/JZlibDecoder;->prepareDecompressBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    .local v3, "decompressed":Lio/netty/buffer/ByteBuf;
    :goto_1
    :try_start_1
    iget-object v4, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    iget v4, v4, Lcom/jcraft/jzlib/Inflater;->avail_in:I

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    invoke-virtual {p0, p1, v3, v4}, Lio/netty/handler/codec/compression/JZlibDecoder;->prepareDecompressBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    move-object v3, v4

    .line 159
    iget-object v4, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v6

    iput v6, v4, Lcom/jcraft/jzlib/Inflater;->avail_out:I

    .line 160
    iget-object v4, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v6

    iput-object v6, v4, Lcom/jcraft/jzlib/Inflater;->next_out:[B

    .line 161
    iget-object v4, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v6

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v4, Lcom/jcraft/jzlib/Inflater;->next_out_index:I

    .line 162
    iget-object v4, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    iget v4, v4, Lcom/jcraft/jzlib/Inflater;->next_out_index:I

    .line 165
    .local v4, "oldNextOutIndex":I
    iget-object v6, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/jcraft/jzlib/Inflater;->inflate(I)I

    move-result v6

    .line 166
    .local v6, "resultCode":I
    iget-object v7, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    iget v7, v7, Lcom/jcraft/jzlib/Inflater;->next_out_index:I

    sub-int/2addr v7, v4

    .line 167
    .local v7, "outputLength":I
    if-lez v7, :cond_3

    .line 168
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v3, v8}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :cond_3
    const-string v8, "decompression failure"

    sparse-switch v6, :sswitch_data_0

    .line 194
    :try_start_2
    iget-object v5, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    goto :goto_4

    .line 173
    :sswitch_0
    iget-object v5, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->dictionary:[B

    if-nez v5, :cond_4

    .line 174
    iget-object v5, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    invoke-static {v5, v8, v6}, Lio/netty/handler/codec/compression/ZlibUtil;->fail(Lcom/jcraft/jzlib/Inflater;Ljava/lang/String;I)V

    goto :goto_5

    .line 176
    :cond_4
    iget-object v8, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    array-length v9, v5

    invoke-virtual {v8, v5, v9}, Lcom/jcraft/jzlib/Inflater;->inflateSetDictionary([BI)I

    move-result v5

    .line 177
    .end local v6    # "resultCode":I
    .local v5, "resultCode":I
    if-eqz v5, :cond_6

    .line 178
    iget-object v6, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    const-string v8, "failed to set the dictionary"

    invoke-static {v6, v8, v5}, Lio/netty/handler/codec/compression/ZlibUtil;->fail(Lcom/jcraft/jzlib/Inflater;Ljava/lang/String;I)V

    goto :goto_5

    .line 183
    .end local v5    # "resultCode":I
    .restart local v6    # "resultCode":I
    :sswitch_1
    iput-boolean v5, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->finished:Z

    .line 184
    iget-object v5, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    invoke-virtual {v5}, Lcom/jcraft/jzlib/Inflater;->inflateEnd()I

    .line 185
    goto :goto_2

    .line 187
    :sswitch_2
    goto :goto_5

    .line 189
    :sswitch_3
    iget-object v5, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    iget v5, v5, Lcom/jcraft/jzlib/Inflater;->avail_in:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gtz v5, :cond_6

    .line 190
    nop

    .line 198
    .end local v4    # "oldNextOutIndex":I
    .end local v6    # "resultCode":I
    .end local v7    # "outputLength":I
    :goto_2
    :try_start_3
    iget-object v4, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    iget v4, v4, Lcom/jcraft/jzlib/Inflater;->next_in_index:I

    sub-int/2addr v4, v2

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 199
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 200
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 202
    :cond_5
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 204
    nop

    .line 210
    .end local v2    # "oldNextInIndex":I
    .end local v3    # "decompressed":Lio/netty/buffer/ByteBuf;
    :goto_3
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    iput-object v1, v2, Lcom/jcraft/jzlib/Inflater;->next_in:[B

    .line 211
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    iput-object v1, v2, Lcom/jcraft/jzlib/Inflater;->next_out:[B

    .line 212
    nop

    .line 213
    return-void

    .line 194
    .restart local v2    # "oldNextInIndex":I
    .restart local v3    # "decompressed":Lio/netty/buffer/ByteBuf;
    .restart local v4    # "oldNextOutIndex":I
    .restart local v6    # "resultCode":I
    .restart local v7    # "outputLength":I
    :goto_4
    :try_start_4
    invoke-static {v5, v8, v6}, Lio/netty/handler/codec/compression/ZlibUtil;->fail(Lcom/jcraft/jzlib/Inflater;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    .end local v4    # "oldNextOutIndex":I
    .end local v6    # "resultCode":I
    .end local v7    # "outputLength":I
    :cond_6
    :goto_5
    goto/16 :goto_1

    .line 198
    :catchall_0
    move-exception v4

    :try_start_5
    iget-object v5, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    iget v5, v5, Lcom/jcraft/jzlib/Inflater;->next_in_index:I

    sub-int/2addr v5, v2

    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 199
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 200
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 202
    :cond_7
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 204
    :goto_6
    nop

    .end local v0    # "inputLength":I
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 210
    .end local v2    # "oldNextInIndex":I
    .end local v3    # "decompressed":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "inputLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    iput-object v1, v3, Lcom/jcraft/jzlib/Inflater;->next_in:[B

    .line 211
    iget-object v3, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->z:Lcom/jcraft/jzlib/Inflater;

    iput-object v1, v3, Lcom/jcraft/jzlib/Inflater;->next_out:[B

    .line 212
    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_3
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected decompressionBufferExhausted(Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->finished:Z

    .line 218
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JZlibDecoder;->finished:Z

    return v0
.end method
