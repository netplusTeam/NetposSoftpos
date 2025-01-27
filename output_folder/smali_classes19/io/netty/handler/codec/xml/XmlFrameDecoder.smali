.class public Lio/netty/handler/codec/xml/XmlFrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "XmlFrameDecoder.java"


# instance fields
.field private final maxFrameLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxFrameLength"    # I

    .line 80
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 81
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 84
    iput p1, p0, Lio/netty/handler/codec/xml/XmlFrameDecoder;->maxFrameLength:I

    .line 85
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxFrameLength must be a positive int"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extractFrame(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 211
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method private fail(J)V
    .locals 3
    .param p1, "frameLength"    # J

    .line 197
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-string v1, "frame length exceeds "

    if-lez v0, :cond_0

    .line 198
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/handler/codec/xml/XmlFrameDecoder;->maxFrameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - discarded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/handler/codec/xml/XmlFrameDecoder;->maxFrameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - discarding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fail(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 207
    new-instance v0, Lio/netty/handler/codec/CorruptedFrameException;

    const-string v1, "frame contains content before the xml starts"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 208
    return-void
.end method

.method private static isCDATABlockStart(Lio/netty/buffer/ByteBuf;I)Z
    .locals 4
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "i"    # I

    .line 236
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x2

    .line 237
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x3

    .line 238
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    const/16 v2, 0x43

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x4

    .line 239
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x5

    .line 240
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    const/16 v2, 0x41

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x6

    .line 241
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    const/16 v3, 0x54

    if-ne v0, v3, :cond_0

    add-int/lit8 v0, p1, 0x7

    .line 242
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x8

    .line 243
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0
.end method

.method private static isCommentBlockStart(Lio/netty/buffer/ByteBuf;I)Z
    .locals 2
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "i"    # I

    .line 230
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x2

    .line 231
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x3

    .line 232
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0
.end method

.method private static isValidStartCharForXmlElement(B)Z
    .locals 1
    .param p0, "b"    # B

    .line 226
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x3a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
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

    .line 89
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 90
    .local v2, "openingBracketFound":Z
    const/4 v3, 0x0

    .line 91
    .local v3, "atLeastOneXmlElementFound":Z
    const/4 v4, 0x0

    .line 92
    .local v4, "inCDATASection":Z
    const-wide/16 v5, 0x0

    .line 93
    .local v5, "openBracketsCount":J
    const/4 v7, 0x0

    .line 94
    .local v7, "length":I
    const/4 v8, 0x0

    .line 95
    .local v8, "leadingWhiteSpaceCount":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v9

    .line 97
    .local v9, "bufferLength":I
    iget v10, v0, Lio/netty/handler/codec/xml/XmlFrameDecoder;->maxFrameLength:I

    if-le v9, v10, :cond_0

    .line 99
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual {v1, v10}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 100
    int-to-long v10, v9

    invoke-direct {v0, v10, v11}, Lio/netty/handler/codec/xml/XmlFrameDecoder;->fail(J)V

    .line 101
    return-void

    .line 104
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_10

    .line 105
    invoke-virtual {v1, v10}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v13

    .line 106
    .local v13, "readByte":B
    if-nez v2, :cond_1

    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 108
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 109
    :cond_1
    const/16 v14, 0x3c

    if-nez v2, :cond_2

    if-eq v13, v14, :cond_2

    .line 111
    invoke-static/range {p1 .. p1}, Lio/netty/handler/codec/xml/XmlFrameDecoder;->fail(Lio/netty/channel/ChannelHandlerContext;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual {v1, v11}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 113
    return-void

    .line 114
    :cond_2
    const/16 v15, 0x3f

    const/16 v11, 0x2f

    const/16 v12, 0x3e

    const-wide/16 v16, 0x1

    if-nez v4, :cond_a

    if-ne v13, v14, :cond_a

    .line 115
    const/4 v2, 0x1

    .line 117
    add-int/lit8 v14, v9, -0x1

    if-ge v10, v14, :cond_f

    .line 118
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v1, v14}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v14

    .line 119
    .local v14, "peekAheadByte":B
    if-ne v14, v11, :cond_5

    .line 121
    add-int/lit8 v11, v10, 0x2

    .line 122
    .local v11, "peekFurtherAheadIndex":I
    :goto_1
    add-int/lit8 v15, v9, -0x1

    if-gt v11, v15, :cond_4

    .line 124
    invoke-virtual {v1, v11}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v15

    if-ne v15, v12, :cond_3

    .line 125
    sub-long v5, v5, v16

    .line 126
    goto :goto_2

    .line 128
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 130
    .end local v11    # "peekFurtherAheadIndex":I
    :cond_4
    :goto_2
    goto :goto_3

    :cond_5
    invoke-static {v14}, Lio/netty/handler/codec/xml/XmlFrameDecoder;->isValidStartCharForXmlElement(B)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 131
    const/4 v3, 0x1

    .line 134
    add-long v5, v5, v16

    goto :goto_3

    .line 135
    :cond_6
    const/16 v11, 0x21

    if-ne v14, v11, :cond_8

    .line 136
    invoke-static {v1, v10}, Lio/netty/handler/codec/xml/XmlFrameDecoder;->isCommentBlockStart(Lio/netty/buffer/ByteBuf;I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 138
    add-long v5, v5, v16

    goto :goto_3

    .line 139
    :cond_7
    invoke-static {v1, v10}, Lio/netty/handler/codec/xml/XmlFrameDecoder;->isCDATABlockStart(Lio/netty/buffer/ByteBuf;I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 141
    add-long v5, v5, v16

    .line 142
    const/4 v4, 0x1

    goto :goto_3

    .line 144
    :cond_8
    if-ne v14, v15, :cond_9

    .line 146
    add-long v5, v5, v16

    .line 148
    .end local v14    # "peekAheadByte":B
    :cond_9
    :goto_3
    goto :goto_5

    .line 149
    :cond_a
    if-nez v4, :cond_b

    if-ne v13, v11, :cond_b

    .line 150
    add-int/lit8 v11, v9, -0x1

    if-ge v10, v11, :cond_f

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v11}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v11

    if-ne v11, v12, :cond_f

    .line 152
    sub-long v5, v5, v16

    goto :goto_5

    .line 154
    :cond_b
    if-ne v13, v12, :cond_f

    .line 155
    add-int/lit8 v7, v10, 0x1

    .line 157
    add-int/lit8 v11, v10, -0x1

    const/4 v12, -0x1

    if-le v11, v12, :cond_e

    .line 158
    add-int/lit8 v11, v10, -0x1

    invoke-virtual {v1, v11}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v11

    .line 160
    .local v11, "peekBehindByte":B
    if-nez v4, :cond_d

    .line 161
    if-ne v11, v15, :cond_c

    .line 163
    sub-long v5, v5, v16

    goto :goto_4

    .line 164
    :cond_c
    const/16 v14, 0x2d

    if-ne v11, v14, :cond_e

    add-int/lit8 v15, v10, -0x2

    if-le v15, v12, :cond_e

    add-int/lit8 v12, v10, -0x2

    invoke-virtual {v1, v12}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v12

    if-ne v12, v14, :cond_e

    .line 166
    sub-long v5, v5, v16

    goto :goto_4

    .line 168
    :cond_d
    const/16 v14, 0x5d

    if-ne v11, v14, :cond_e

    add-int/lit8 v15, v10, -0x2

    if-le v15, v12, :cond_e

    add-int/lit8 v12, v10, -0x2

    invoke-virtual {v1, v12}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v12

    if-ne v12, v14, :cond_e

    .line 170
    sub-long v5, v5, v16

    .line 171
    const/4 v4, 0x0

    .line 175
    .end local v11    # "peekBehindByte":B
    :cond_e
    :goto_4
    if-eqz v3, :cond_f

    const-wide/16 v11, 0x0

    cmp-long v14, v5, v11

    if-nez v14, :cond_f

    .line 177
    goto :goto_6

    .line 104
    .end local v13    # "readByte":B
    :cond_f
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 182
    .end local v10    # "i":I
    :cond_10
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    .line 183
    .local v10, "readerIndex":I
    sub-int v11, v7, v10

    .line 185
    .local v11, "xmlElementLength":I
    const-wide/16 v12, 0x0

    cmp-long v12, v5, v12

    if-nez v12, :cond_12

    if-lez v11, :cond_12

    .line 186
    add-int v12, v10, v11

    if-lt v12, v9, :cond_11

    .line 187
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    .line 189
    :cond_11
    add-int v12, v10, v8

    sub-int v13, v11, v8

    .line 190
    invoke-static {v1, v12, v13}, Lio/netty/handler/codec/xml/XmlFrameDecoder;->extractFrame(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object v12

    .line 191
    .local v12, "frame":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1, v11}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 192
    move-object/from16 v13, p3

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 185
    .end local v12    # "frame":Lio/netty/buffer/ByteBuf;
    :cond_12
    move-object/from16 v13, p3

    .line 194
    :goto_7
    return-void
.end method
