.class public Lio/netty/handler/codec/compression/LzfEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "LzfEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_BLOCK_TO_COMPRESS:I = 0x10


# instance fields
.field private final compressThreshold:I

.field private final encoder:Lcom/ning/compress/lzf/ChunkEncoder;

.field private final recycler:Lcom/ning/compress/BufferRecycler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/LzfEncoder;-><init>(Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "totalLength"    # I

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/LzfEncoder;-><init>(ZI)V

    .line 110
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "safeInstance"    # Z

    .line 82
    const v0, 0xffff

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/LzfEncoder;-><init>(ZI)V

    .line 83
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "safeInstance"    # Z
    .param p2, "totalLength"    # I

    .line 97
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/compression/LzfEncoder;-><init>(ZII)V

    .line 98
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 5
    .param p1, "safeInstance"    # Z
    .param p2, "totalLength"    # I
    .param p3, "compressThreshold"    # I

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>(Z)V

    .line 128
    const v0, 0xffff

    const/16 v1, 0x10

    if-lt p2, v1, :cond_2

    if-gt p2, v0, :cond_2

    .line 133
    if-lt p3, v1, :cond_1

    .line 138
    iput p3, p0, Lio/netty/handler/codec/compression/LzfEncoder;->compressThreshold:I

    .line 140
    if-eqz p1, :cond_0

    .line 141
    invoke-static {p2}, Lcom/ning/compress/lzf/util/ChunkEncoderFactory;->safeNonAllocatingInstance(I)Lcom/ning/compress/lzf/ChunkEncoder;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p2}, Lcom/ning/compress/lzf/util/ChunkEncoderFactory;->optimalNonAllocatingInstance(I)Lcom/ning/compress/lzf/ChunkEncoder;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/netty/handler/codec/compression/LzfEncoder;->encoder:Lcom/ning/compress/lzf/ChunkEncoder;

    .line 144
    invoke-static {}, Lcom/ning/compress/BufferRecycler;->instance()Lcom/ning/compress/BufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/compression/LzfEncoder;->recycler:Lcom/ning/compress/BufferRecycler;

    .line 145
    return-void

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compressThreshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected >="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "totalLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private encodeCompress([BII[BI)I
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputPtr"    # I
    .param p3, "length"    # I
    .param p4, "output"    # [B
    .param p5, "outputPtr"    # I

    .line 185
    iget-object v0, p0, Lio/netty/handler/codec/compression/LzfEncoder;->encoder:Lcom/ning/compress/lzf/ChunkEncoder;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/ning/compress/lzf/LZFEncoder;->appendEncoded(Lcom/ning/compress/lzf/ChunkEncoder;[BII[BI)I

    move-result v0

    sub-int/2addr v0, p5

    return v0
.end method

.method private static encodeNonCompress([BII[BI)I
    .locals 1
    .param p0, "input"    # [B
    .param p1, "inputPtr"    # I
    .param p2, "length"    # I
    .param p3, "output"    # [B
    .param p4, "outputPtr"    # I

    .line 211
    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/compression/LzfEncoder;->lzfEncodeNonCompress([BII[BI)I

    move-result v0

    sub-int/2addr v0, p4

    return v0
.end method

.method private static lzfEncodeNonCompress([BII[BI)I
    .locals 4
    .param p0, "input"    # [B
    .param p1, "inputPtr"    # I
    .param p2, "length"    # I
    .param p3, "output"    # [B
    .param p4, "outputPtr"    # I

    .line 190
    move v0, p2

    .line 191
    .local v0, "left":I
    const v1, 0xffff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 192
    .local v2, "chunkLen":I
    invoke-static {p0, p1, v2, p3, p4}, Lcom/ning/compress/lzf/LZFChunk;->appendNonCompressed([BII[BI)I

    move-result p4

    .line 193
    sub-int/2addr v0, v2

    .line 194
    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    .line 195
    return p4

    .line 197
    :cond_0
    add-int/2addr p1, v2

    .line 199
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 200
    invoke-static {p0, p1, v2, p3, p4}, Lcom/ning/compress/lzf/LZFChunk;->appendNonCompressed([BII[BI)I

    move-result p4

    .line 201
    add-int/2addr p1, v2

    .line 202
    sub-int/2addr v0, v2

    .line 203
    if-gtz v0, :cond_1

    .line 204
    return p4

    .line 203
    :cond_1
    goto :goto_0
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 16
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v9

    .line 150
    .local v9, "length":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    .line 153
    .local v10, "idx":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    .line 155
    .local v0, "input":[B
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, v10

    move-object v11, v0

    move v12, v1

    .local v1, "inputPtr":I
    goto :goto_0

    .line 157
    .end local v0    # "input":[B
    .end local v1    # "inputPtr":I
    :cond_0
    iget-object v0, v6, Lio/netty/handler/codec/compression/LzfEncoder;->recycler:Lcom/ning/compress/BufferRecycler;

    invoke-virtual {v0, v9}, Lcom/ning/compress/BufferRecycler;->allocInputBuffer(I)[B

    move-result-object v0

    .line 158
    .restart local v0    # "input":[B
    const/4 v1, 0x0

    invoke-virtual {v7, v10, v0, v1, v9}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 159
    const/4 v1, 0x0

    move-object v11, v0

    move v12, v1

    .line 162
    .end local v0    # "input":[B
    .local v11, "input":[B
    .local v12, "inputPtr":I
    :goto_0
    invoke-static {v9}, Lcom/ning/compress/lzf/LZFEncoder;->estimateMaxWorkspaceSize(I)I

    move-result v13

    .line 163
    .local v13, "maxOutputLength":I
    invoke-virtual {v8, v13}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 164
    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v14

    .line 165
    .local v14, "output":[B
    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    add-int v15, v0, v1

    .line 168
    .local v15, "outputPtr":I
    iget v0, v6, Lio/netty/handler/codec/compression/LzfEncoder;->compressThreshold:I

    if-lt v9, v0, :cond_1

    .line 170
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v9

    move-object v4, v14

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/LzfEncoder;->encodeCompress([BII[BI)I

    move-result v0

    .local v0, "outputLength":I
    goto :goto_1

    .line 173
    .end local v0    # "outputLength":I
    :cond_1
    invoke-static {v11, v12, v9, v14, v15}, Lio/netty/handler/codec/compression/LzfEncoder;->encodeNonCompress([BII[BI)I

    move-result v0

    .line 176
    .restart local v0    # "outputLength":I
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v8, v1}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 177
    invoke-virtual {v7, v9}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 179
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-nez v1, :cond_2

    .line 180
    iget-object v1, v6, Lio/netty/handler/codec/compression/LzfEncoder;->recycler:Lcom/ning/compress/BufferRecycler;

    invoke-virtual {v1, v11}, Lcom/ning/compress/BufferRecycler;->releaseInputBuffer([B)V

    .line 182
    :cond_2
    return-void
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/LzfEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lio/netty/handler/codec/compression/LzfEncoder;->encoder:Lcom/ning/compress/lzf/ChunkEncoder;

    invoke-virtual {v0}, Lcom/ning/compress/lzf/ChunkEncoder;->close()V

    .line 217
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToByteEncoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 218
    return-void
.end method
