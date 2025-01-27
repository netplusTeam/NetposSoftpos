.class public Lio/netty/handler/codec/compression/Bzip2Decoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "Bzip2Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/Bzip2Decoder$State;
    }
.end annotation


# instance fields
.field private blockCRC:I

.field private blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

.field private blockSize:I

.field private currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

.field private huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

.field private final reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

.field private streamCRC:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 47
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 52
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2BitReader;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Decoder;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 17
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

    .line 81
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    iget-object v9, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    .line 86
    .local v9, "reader":Lio/netty/handler/codec/compression/Bzip2BitReader;
    invoke-virtual {v9, v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->setByteBuf(Lio/netty/buffer/ByteBuf;)V

    .line 89
    :goto_0
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Decoder$1;->$SwitchMap$io$netty$handler$codec$compression$Bzip2Decoder$State:[I

    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/16 v3, 0x18

    const/16 v12, 0x10

    const/4 v13, 0x1

    packed-switch v0, :pswitch_data_0

    .line 318
    move-object/from16 v11, p3

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 315
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {v2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 316
    return-void

    .line 91
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    .line 92
    return-void

    .line 94
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedMedium()I

    move-result v0

    .line 95
    .local v0, "magicNumber":I
    const v4, 0x425a68

    if-ne v0, v4, :cond_23

    .line 99
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 100
    .local v4, "blockSize":I
    if-lt v4, v13, :cond_22

    const/16 v5, 0x9

    if-gt v4, v5, :cond_22

    .line 103
    const v5, 0x186a0

    mul-int/2addr v5, v4

    iput v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockSize:I

    .line 105
    iput v10, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    .line 106
    sget-object v5, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 109
    .end local v0    # "magicNumber":I
    .end local v4    # "blockSize":I
    :pswitch_2
    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBytes(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    return-void

    .line 113
    :cond_2
    invoke-virtual {v9, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v0

    .line 114
    .local v0, "magic1":I
    invoke-virtual {v9, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v4

    .line 115
    .local v4, "magic2":I
    const v5, 0x177245

    if-ne v0, v5, :cond_4

    const v5, 0x385090

    if-ne v4, v5, :cond_4

    .line 117
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readInt()I

    move-result v3

    .line 118
    .local v3, "storedCombinedCRC":I
    iget v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    if-ne v3, v5, :cond_3

    .line 121
    sget-object v5, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->EOF:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 122
    goto :goto_0

    .line 119
    :cond_3
    new-instance v5, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v6, "stream CRC error"

    invoke-direct {v5, v6}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 124
    .end local v3    # "storedCombinedCRC":I
    :cond_4
    const v5, 0x314159

    if-ne v0, v5, :cond_21

    const v5, 0x265359

    if-ne v4, v5, :cond_21

    .line 127
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readInt()I

    move-result v5

    iput v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockCRC:I

    .line 128
    sget-object v5, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT_BLOCK_PARAMS:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 131
    .end local v0    # "magic1":I
    .end local v4    # "magic2":I
    :pswitch_3
    const/16 v0, 0x19

    invoke-virtual {v9, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 132
    return-void

    .line 134
    :cond_5
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v0

    .line 135
    .local v0, "blockRandomised":Z
    invoke-virtual {v9, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v14

    .line 137
    .local v14, "bwtStartPointer":I
    new-instance v15, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    iget v4, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockSize:I

    iget v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockCRC:I

    move-object v3, v15

    move v6, v0

    move v7, v14

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;-><init>(IIZILio/netty/handler/codec/compression/Bzip2BitReader;)V

    iput-object v15, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    .line 139
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_HUFFMAN_USED_MAP:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 142
    .end local v0    # "blockRandomised":Z
    .end local v14    # "bwtStartPointer":I
    :pswitch_4
    invoke-virtual {v9, v12}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 143
    return-void

    .line 145
    :cond_6
    iget-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    invoke-virtual {v9, v12}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v3

    iput v3, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanInUse16:I

    .line 146
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_HUFFMAN_USED_BITMAPS:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 149
    :pswitch_5
    iget-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    .line 150
    .local v0, "blockDecompressor":Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;
    iget v3, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanInUse16:I

    .line 151
    .local v3, "inUse16":I
    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 152
    .local v4, "bitNumber":I
    iget-object v5, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanSymbolMap:[B

    .line 154
    .local v5, "huffmanSymbolMap":[B
    mul-int/lit8 v6, v4, 0x10

    const/4 v7, 0x3

    add-int/2addr v6, v7

    invoke-virtual {v9, v6}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 155
    return-void

    .line 158
    :cond_7
    const/4 v6, 0x0

    .line 159
    .local v6, "huffmanSymbolCount":I
    if-lez v4, :cond_a

    .line 160
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v12, :cond_a

    .line 161
    const v14, 0x8000

    ushr-int/2addr v14, v8

    and-int/2addr v14, v3

    if-eqz v14, :cond_9

    .line 162
    const/4 v14, 0x0

    .local v14, "j":I
    shl-int/lit8 v15, v8, 0x4

    .local v15, "k":I
    :goto_2
    if-ge v14, v12, :cond_9

    .line 163
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 164
    add-int/lit8 v16, v6, 0x1

    .end local v6    # "huffmanSymbolCount":I
    .local v16, "huffmanSymbolCount":I
    int-to-byte v12, v15

    aput-byte v12, v5, v6

    move/from16 v6, v16

    .line 162
    .end local v16    # "huffmanSymbolCount":I
    .restart local v6    # "huffmanSymbolCount":I
    :cond_8
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    const/16 v12, 0x10

    goto :goto_2

    .line 160
    .end local v14    # "j":I
    .end local v15    # "k":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    const/16 v12, 0x10

    goto :goto_1

    .line 170
    .end local v8    # "i":I
    :cond_a
    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanEndOfBlockSymbol:I

    .line 172
    invoke-virtual {v9, v7}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v7

    .line 173
    .local v7, "totalTables":I
    const/4 v8, 0x2

    if-lt v7, v8, :cond_20

    if-gt v7, v11, :cond_20

    .line 176
    add-int/lit8 v8, v6, 0x2

    .line 177
    .local v8, "alphaSize":I
    const/16 v12, 0x102

    if-gt v8, v12, :cond_1f

    .line 180
    new-instance v12, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    invoke-direct {v12, v9, v7, v8}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;-><init>(Lio/netty/handler/codec/compression/Bzip2BitReader;II)V

    iput-object v12, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    .line 181
    sget-object v12, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_SELECTORS_NUMBER:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v12, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 184
    .end local v0    # "blockDecompressor":Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;
    .end local v3    # "inUse16":I
    .end local v4    # "bitNumber":I
    .end local v5    # "huffmanSymbolMap":[B
    .end local v6    # "huffmanSymbolCount":I
    .end local v7    # "totalTables":I
    .end local v8    # "alphaSize":I
    :pswitch_6
    const/16 v0, 0xf

    invoke-virtual {v9, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 185
    return-void

    .line 187
    :cond_b
    invoke-virtual {v9, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v0

    .line 188
    .local v0, "totalSelectors":I
    if-lt v0, v13, :cond_1e

    const/16 v3, 0x4652

    if-gt v0, v3, :cond_1e

    .line 191
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    new-array v4, v0, [B

    iput-object v4, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->selectors:[B

    .line 193
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_SELECTORS:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 196
    .end local v0    # "totalSelectors":I
    :pswitch_7
    iget-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    .line 197
    .local v0, "huffmanStageDecoder":Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;
    iget-object v3, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->selectors:[B

    .line 198
    .local v3, "selectors":[B
    array-length v4, v3

    .line 199
    .local v4, "totalSelectors":I
    iget-object v5, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->tableMTF:Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    .line 203
    .local v5, "tableMtf":Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;
    iget v6, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentSelector:I

    .line 204
    .local v6, "currSelector":I
    :goto_3
    if-ge v6, v4, :cond_e

    .line 205
    invoke-virtual {v9, v11}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v7

    if-nez v7, :cond_c

    .line 207
    iput v6, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentSelector:I

    .line 208
    return-void

    .line 210
    :cond_c
    const/4 v7, 0x0

    .line 211
    .local v7, "index":I
    :goto_4
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 212
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 214
    :cond_d
    invoke-virtual {v5, v7}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;->indexToFront(I)B

    move-result v8

    aput-byte v8, v3, v6

    .line 204
    .end local v7    # "index":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 217
    :cond_e
    sget-object v7, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_HUFFMAN_LENGTH:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v7, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 220
    .end local v0    # "huffmanStageDecoder":Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;
    .end local v3    # "selectors":[B
    .end local v4    # "totalSelectors":I
    .end local v5    # "tableMtf":Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;
    .end local v6    # "currSelector":I
    :pswitch_8
    iget-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    .line 221
    .restart local v0    # "huffmanStageDecoder":Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;
    iget v3, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->totalTables:I

    .line 222
    .local v3, "totalTables":I
    iget-object v4, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->tableCodeLengths:[[B

    .line 223
    .local v4, "codeLength":[[B
    iget v5, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->alphabetSize:I

    .line 227
    .local v5, "alphaSize":I
    iget v6, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentLength:I

    .line 228
    .local v6, "currLength":I
    const/4 v7, 0x0

    .line 229
    .local v7, "currAlpha":I
    iget-boolean v8, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->modifyLength:Z

    .line 230
    .local v8, "modifyLength":Z
    const/4 v11, 0x0

    .line 231
    .local v11, "saveStateAndReturn":Z
    iget v12, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentGroup:I

    .local v12, "currGroup":I
    :goto_5
    if-ge v12, v3, :cond_17

    .line 233
    const/4 v14, 0x5

    invoke-virtual {v9, v14}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v15

    if-nez v15, :cond_f

    .line 234
    const/4 v11, 0x1

    .line 235
    goto :goto_9

    .line 237
    :cond_f
    if-gez v6, :cond_10

    .line 238
    invoke-virtual {v9, v14}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v6

    .line 240
    :cond_10
    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentAlpha:I

    :goto_6
    if-ge v7, v5, :cond_16

    .line 242
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->isReadable()Z

    move-result v14

    if-nez v14, :cond_11

    .line 243
    const/4 v11, 0x1

    .line 244
    goto :goto_9

    .line 246
    :cond_11
    if-nez v8, :cond_13

    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v14

    if-eqz v14, :cond_12

    goto :goto_7

    .line 260
    :cond_12
    aget-object v14, v4, v12

    int-to-byte v15, v6

    aput-byte v15, v14, v7

    .line 240
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 247
    :cond_13
    :goto_7
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->isReadable()Z

    move-result v14

    if-nez v14, :cond_14

    .line 248
    const/4 v8, 0x1

    .line 249
    const/4 v11, 0x1

    .line 250
    goto :goto_9

    .line 253
    :cond_14
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v14

    if-eqz v14, :cond_15

    const/4 v14, -0x1

    goto :goto_8

    :cond_15
    move v14, v13

    :goto_8
    add-int/2addr v6, v14

    .line 254
    const/4 v8, 0x0

    .line 255
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->isReadable()Z

    move-result v14

    if-nez v14, :cond_11

    .line 256
    const/4 v11, 0x1

    .line 257
    goto :goto_9

    .line 262
    :cond_16
    const/4 v6, -0x1

    .line 263
    iput v10, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentAlpha:I

    move v7, v10

    .line 264
    const/4 v8, 0x0

    .line 231
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 266
    :cond_17
    :goto_9
    if-eqz v11, :cond_18

    .line 268
    iput v12, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentGroup:I

    .line 269
    iput v6, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentLength:I

    .line 270
    iput v7, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentAlpha:I

    .line 271
    iput-boolean v8, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->modifyLength:Z

    .line 272
    return-void

    .line 276
    :cond_18
    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->createHuffmanDecodingTables()V

    .line 277
    sget-object v10, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->DECODE_HUFFMAN_DATA:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v10, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 280
    .end local v0    # "huffmanStageDecoder":Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;
    .end local v3    # "totalTables":I
    .end local v4    # "codeLength":[[B
    .end local v5    # "alphaSize":I
    .end local v6    # "currLength":I
    .end local v7    # "currAlpha":I
    .end local v8    # "modifyLength":Z
    .end local v11    # "saveStateAndReturn":Z
    .end local v12    # "currGroup":I
    :pswitch_9
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    .line 281
    .local v3, "blockDecompressor":Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    .line 282
    .local v4, "oldReaderIndex":I
    iget-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    invoke-virtual {v3, v0}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->decodeHuffmanData(Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;)Z

    move-result v5

    .line 283
    .local v5, "decoded":Z
    if-nez v5, :cond_19

    .line 284
    return-void

    .line 289
    :cond_19
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    if-ne v0, v4, :cond_1a

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 290
    invoke-virtual {v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->refill()V

    .line 293
    :cond_1a
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->blockLength()I

    move-result v6

    .line 294
    .local v6, "blockLength":I
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, v6}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    .line 295
    .local v7, "uncompressed":Lio/netty/buffer/ByteBuf;
    const/4 v8, 0x0

    .line 298
    .local v8, "success":Z
    :goto_a
    :try_start_0
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->read()I

    move-result v0

    move v10, v0

    .local v10, "uncByte":I
    if-ltz v0, :cond_1b

    .line 299
    invoke-virtual {v7, v10}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_a

    .line 302
    :cond_1b
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->checkCRC()I

    move-result v0

    .line 303
    .local v0, "currentBlockCRC":I
    iget v11, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    shl-int/lit8 v12, v11, 0x1

    ushr-int/lit8 v11, v11, 0x1f

    or-int/2addr v11, v12

    xor-int/2addr v11, v0

    iput v11, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 305
    move-object/from16 v11, p3

    :try_start_1
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    const/4 v0, 0x1

    .line 308
    .end local v8    # "success":Z
    .end local v10    # "uncByte":I
    .local v0, "success":Z
    if-nez v0, :cond_1c

    .line 309
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 312
    :cond_1c
    sget-object v8, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v8, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 313
    goto/16 :goto_0

    .line 308
    .end local v0    # "success":Z
    .restart local v8    # "success":Z
    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v11, p3

    :goto_b
    if-nez v8, :cond_1d

    .line 309
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 311
    :cond_1d
    throw v0

    .line 188
    .end local v3    # "blockDecompressor":Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;
    .end local v4    # "oldReaderIndex":I
    .end local v5    # "decoded":Z
    .end local v6    # "blockLength":I
    .end local v7    # "uncompressed":Lio/netty/buffer/ByteBuf;
    .end local v8    # "success":Z
    .local v0, "totalSelectors":I
    :cond_1e
    move-object/from16 v11, p3

    .line 189
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v4, "incorrect selectors number"

    invoke-direct {v3, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    .local v0, "blockDecompressor":Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;
    .local v3, "inUse16":I
    .local v4, "bitNumber":I
    .local v5, "huffmanSymbolMap":[B
    .local v6, "huffmanSymbolCount":I
    .local v7, "totalTables":I
    .local v8, "alphaSize":I
    :cond_1f
    move-object/from16 v11, p3

    new-instance v10, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v12, "incorrect alphabet size"

    invoke-direct {v10, v12}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 173
    .end local v8    # "alphaSize":I
    :cond_20
    move-object/from16 v11, p3

    .line 174
    new-instance v8, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v10, "incorrect huffman groups number"

    invoke-direct {v8, v10}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 124
    .end local v3    # "inUse16":I
    .end local v5    # "huffmanSymbolMap":[B
    .end local v6    # "huffmanSymbolCount":I
    .end local v7    # "totalTables":I
    .local v0, "magic1":I
    .local v4, "magic2":I
    :cond_21
    move-object/from16 v11, p3

    .line 125
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v5, "bad block header"

    invoke-direct {v3, v5}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    .local v0, "magicNumber":I
    .local v4, "blockSize":I
    :cond_22
    move-object/from16 v11, p3

    .line 101
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v5, "block size is invalid"

    invoke-direct {v3, v5}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    .end local v4    # "blockSize":I
    :cond_23
    move-object/from16 v11, p3

    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v4, "Unexpected stream identifier contents. Mismatched bzip2 protocol version?"

    invoke-direct {v3, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public isClosed()Z
    .locals 2

    .line 328
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    sget-object v1, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->EOF:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
