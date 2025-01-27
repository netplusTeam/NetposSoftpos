.class public Lio/netty/handler/codec/compression/FastLzFrameEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "FastLzFrameEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# instance fields
.field private final checksum:Ljava/util/zip/Checksum;

.field private final level:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/compression/FastLzFrameEncoder;-><init>(ILjava/util/zip/Checksum;)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "level"    # I

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/FastLzFrameEncoder;-><init>(ILjava/util/zip/Checksum;)V

    .line 60
    return-void
.end method

.method public constructor <init>(ILjava/util/zip/Checksum;)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "checksum"    # Ljava/util/zip/Checksum;

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>(Z)V

    .line 89
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 90
    const-string v0, "level: %d (expected: %d or %d or %d)"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_1
    :goto_0
    iput p1, p0, Lio/netty/handler/codec/compression/FastLzFrameEncoder;->level:I

    .line 94
    iput-object p2, p0, Lio/netty/handler/codec/compression/FastLzFrameEncoder;->checksum:Ljava/util/zip/Checksum;

    .line 95
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "validateChecksums"    # Z

    .line 73
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lio/netty/handler/codec/compression/FastLzFrameEncoder;-><init>(ILjava/util/zip/Checksum;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 20
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lio/netty/handler/codec/compression/FastLzFrameEncoder;->checksum:Ljava/util/zip/Checksum;

    .line 102
    .local v3, "checksum":Ljava/util/zip/Checksum;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    .line 106
    .local v4, "idx":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    const v6, 0xffff

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 108
    .local v5, "length":I
    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v6

    .line 109
    .local v6, "outputIdx":I
    const v7, 0x464c5a

    invoke-virtual {v2, v6, v7}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    .line 110
    add-int/lit8 v7, v6, 0x4

    const/4 v8, 0x4

    if-eqz v3, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    add-int v14, v7, v9

    .line 114
    .local v14, "outputOffset":I
    const/16 v7, 0x20

    if-ge v5, v7, :cond_4

    .line 115
    const/4 v7, 0x0

    .line 117
    .local v7, "blockType":B
    add-int/lit8 v8, v14, 0x2

    add-int/2addr v8, v5

    invoke-virtual {v2, v8}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 118
    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v8

    .line 119
    .local v8, "output":[B
    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v9

    add-int/2addr v9, v14

    add-int/lit8 v9, v9, 0x2

    .line 121
    .local v9, "outputPtr":I
    if-eqz v3, :cond_3

    .line 124
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 125
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v10

    .line 126
    .local v10, "input":[B
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v11

    add-int/2addr v11, v4

    .local v11, "inputPtr":I
    goto :goto_2

    .line 128
    .end local v10    # "input":[B
    .end local v11    # "inputPtr":I
    :cond_2
    new-array v10, v5, [B

    .line 129
    .restart local v10    # "input":[B
    invoke-virtual {v1, v4, v10}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 130
    const/4 v11, 0x0

    .line 133
    .restart local v11    # "inputPtr":I
    :goto_2
    invoke-interface {v3}, Ljava/util/zip/Checksum;->reset()V

    .line 134
    invoke-interface {v3, v10, v11, v5}, Ljava/util/zip/Checksum;->update([BII)V

    .line 135
    add-int/lit8 v12, v6, 0x4

    move/from16 v16, v14

    .end local v14    # "outputOffset":I
    .local v16, "outputOffset":I
    invoke-interface {v3}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v13

    long-to-int v13, v13

    invoke-virtual {v2, v12, v13}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 137
    invoke-static {v10, v11, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    .end local v10    # "input":[B
    .end local v11    # "inputPtr":I
    goto :goto_3

    .line 139
    .end local v16    # "outputOffset":I
    .restart local v14    # "outputOffset":I
    :cond_3
    move/from16 v16, v14

    .end local v14    # "outputOffset":I
    .restart local v16    # "outputOffset":I
    invoke-virtual {v1, v4, v8, v9, v5}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 141
    :goto_3
    move v8, v5

    .line 142
    .end local v9    # "outputPtr":I
    .local v8, "chunkLength":I
    move/from16 v14, v16

    goto/16 :goto_5

    .line 146
    .end local v7    # "blockType":B
    .end local v8    # "chunkLength":I
    .end local v16    # "outputOffset":I
    .restart local v14    # "outputOffset":I
    :cond_4
    move/from16 v16, v14

    .end local v14    # "outputOffset":I
    .restart local v16    # "outputOffset":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 147
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v7

    .line 148
    .local v7, "input":[B
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v9

    add-int/2addr v9, v4

    move-object v13, v7

    move v14, v9

    .local v9, "inputPtr":I
    goto :goto_4

    .line 150
    .end local v7    # "input":[B
    .end local v9    # "inputPtr":I
    :cond_5
    new-array v7, v5, [B

    .line 151
    .restart local v7    # "input":[B
    invoke-virtual {v1, v4, v7}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 152
    const/4 v9, 0x0

    move-object v13, v7

    move v14, v9

    .line 155
    .end local v7    # "input":[B
    .local v13, "input":[B
    .local v14, "inputPtr":I
    :goto_4
    if-eqz v3, :cond_6

    .line 156
    invoke-interface {v3}, Ljava/util/zip/Checksum;->reset()V

    .line 157
    invoke-interface {v3, v13, v14, v5}, Ljava/util/zip/Checksum;->update([BII)V

    .line 158
    add-int/lit8 v7, v6, 0x4

    invoke-interface {v3}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v2, v7, v9}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 161
    :cond_6
    invoke-static {v5}, Lio/netty/handler/codec/compression/FastLz;->calculateOutputBufferLength(I)I

    move-result v17

    .line 162
    .local v17, "maxOutputLength":I
    add-int/lit8 v7, v16, 0x4

    add-int v7, v7, v17

    invoke-virtual {v2, v7}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 163
    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v12

    .line 164
    .local v12, "output":[B
    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v7

    add-int v7, v7, v16

    add-int/lit8 v18, v7, 0x4

    .line 165
    .local v18, "outputPtr":I
    iget v11, v0, Lio/netty/handler/codec/compression/FastLzFrameEncoder;->level:I

    move-object v7, v13

    move v8, v14

    move v9, v5

    move-object v10, v12

    move/from16 v19, v11

    move/from16 v11, v18

    move-object v15, v12

    .end local v12    # "output":[B
    .local v15, "output":[B
    move/from16 v12, v19

    invoke-static/range {v7 .. v12}, Lio/netty/handler/codec/compression/FastLz;->compress([BII[BII)I

    move-result v7

    .line 166
    .local v7, "compressedLength":I
    if-ge v7, v5, :cond_7

    .line 167
    const/4 v8, 0x1

    .line 168
    .local v8, "blockType":B
    move v9, v7

    .line 170
    .local v9, "chunkLength":I
    move/from16 v10, v16

    .end local v16    # "outputOffset":I
    .local v10, "outputOffset":I
    invoke-virtual {v2, v10, v9}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    .line 171
    add-int/lit8 v10, v10, 0x2

    move v7, v8

    move v8, v9

    move v14, v10

    goto :goto_5

    .line 173
    .end local v8    # "blockType":B
    .end local v9    # "chunkLength":I
    .end local v10    # "outputOffset":I
    .restart local v16    # "outputOffset":I
    :cond_7
    move/from16 v10, v16

    .end local v16    # "outputOffset":I
    .restart local v10    # "outputOffset":I
    const/4 v8, 0x0

    .line 174
    .restart local v8    # "blockType":B
    add-int/lit8 v9, v18, -0x2

    invoke-static {v13, v14, v15, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    move v9, v5

    move v7, v8

    move v8, v9

    move v14, v10

    .line 178
    .end local v10    # "outputOffset":I
    .end local v13    # "input":[B
    .end local v15    # "output":[B
    .end local v17    # "maxOutputLength":I
    .end local v18    # "outputPtr":I
    .local v7, "blockType":B
    .local v8, "chunkLength":I
    .local v14, "outputOffset":I
    :goto_5
    invoke-virtual {v2, v14, v5}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    .line 180
    add-int/lit8 v9, v6, 0x3

    if-eqz v3, :cond_8

    const/16 v13, 0x10

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    or-int v10, v7, v13

    invoke-virtual {v2, v9, v10}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 182
    add-int/lit8 v9, v14, 0x2

    add-int/2addr v9, v8

    invoke-virtual {v2, v9}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 183
    invoke-virtual {v1, v5}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 184
    .end local v4    # "idx":I
    .end local v5    # "length":I
    .end local v6    # "outputIdx":I
    .end local v7    # "blockType":B
    .end local v8    # "chunkLength":I
    .end local v14    # "outputOffset":I
    goto/16 :goto_0
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/FastLzFrameEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method
