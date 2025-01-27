.class final Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;
.super Ljava/lang/Object;
.source "Bzip2HuffmanStageDecoder.java"


# instance fields
.field final alphabetSize:I

.field private final codeBases:[[I

.field private final codeLimits:[[I

.field private final codeSymbols:[[I

.field currentAlpha:I

.field currentGroup:I

.field currentLength:I

.field currentSelector:I

.field private currentTable:I

.field private groupIndex:I

.field private groupPosition:I

.field private final minimumLengths:[I

.field modifyLength:Z

.field private final reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

.field selectors:[B

.field final tableCodeLengths:[[B

.field final tableMTF:Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

.field final totalTables:I


# direct methods
.method constructor <init>(Lio/netty/handler/codec/compression/Bzip2BitReader;II)V
    .locals 6
    .param p1, "reader"    # Lio/netty/handler/codec/compression/Bzip2BitReader;
    .param p2, "totalTables"    # I
    .param p3, "alphabetSize"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->groupIndex:I

    .line 69
    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->groupPosition:I

    .line 84
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    invoke-direct {v1}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;-><init>()V

    iput-object v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->tableMTF:Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    .line 96
    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentLength:I

    .line 101
    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    .line 102
    iput p2, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->totalTables:I

    .line 103
    iput p3, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->alphabetSize:I

    .line 105
    new-array v0, p2, [I

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->minimumLengths:[I

    .line 106
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/16 v3, 0x19

    aput v3, v1, v2

    const/4 v3, 0x0

    aput p2, v1, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->codeBases:[[I

    .line 107
    new-array v1, v0, [I

    const/16 v4, 0x18

    aput v4, v1, v2

    aput p2, v1, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->codeLimits:[[I

    .line 108
    new-array v1, v0, [I

    const/16 v4, 0x102

    aput v4, v1, v2

    aput p2, v1, v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->codeSymbols:[[I

    .line 109
    new-array v0, v0, [I

    aput v4, v0, v2

    aput p2, v0, v3

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->tableCodeLengths:[[B

    .line 110
    return-void
.end method


# virtual methods
.method createHuffmanDecodingTables()V
    .locals 13

    .line 116
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->alphabetSize:I

    .line 118
    .local v0, "alphabetSize":I
    const/4 v1, 0x0

    .local v1, "table":I
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->tableCodeLengths:[[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_7

    .line 119
    iget-object v3, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->codeBases:[[I

    aget-object v3, v3, v1

    .line 120
    .local v3, "tableBases":[I
    iget-object v5, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->codeLimits:[[I

    aget-object v5, v5, v1

    .line 121
    .local v5, "tableLimits":[I
    iget-object v6, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->codeSymbols:[[I

    aget-object v6, v6, v1

    .line 122
    .local v6, "tableSymbols":[I
    aget-object v2, v2, v1

    .line 124
    .local v2, "codeLengths":[B
    const/16 v7, 0x17

    .line 125
    .local v7, "minimumLength":I
    const/4 v8, 0x0

    .line 128
    .local v8, "maximumLength":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v0, :cond_0

    .line 129
    aget-byte v10, v2, v9

    .line 130
    .local v10, "currLength":B
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 131
    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 128
    .end local v10    # "currLength":B
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 133
    .end local v9    # "i":I
    :cond_0
    iget-object v9, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->minimumLengths:[I

    aput v7, v9, v1

    .line 136
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v0, :cond_1

    .line 137
    aget-byte v10, v2, v9

    add-int/lit8 v10, v10, 0x1

    aget v11, v3, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v3, v10

    .line 136
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 139
    .end local v9    # "i":I
    :cond_1
    const/4 v9, 0x1

    .restart local v9    # "i":I
    aget v4, v3, v4

    .local v4, "b":I
    :goto_3
    const/16 v10, 0x19

    if-ge v9, v10, :cond_2

    .line 140
    aget v10, v3, v9

    add-int/2addr v4, v10

    .line 141
    aput v4, v3, v9

    .line 139
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 146
    .end local v4    # "b":I
    .end local v9    # "i":I
    :cond_2
    move v4, v7

    .local v4, "i":I
    const/4 v9, 0x0

    .local v9, "code":I
    :goto_4
    if-gt v4, v8, :cond_3

    .line 147
    move v10, v9

    .line 148
    .local v10, "base":I
    add-int/lit8 v11, v4, 0x1

    aget v11, v3, v11

    aget v12, v3, v4

    sub-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 149
    aget v11, v3, v4

    sub-int v11, v10, v11

    aput v11, v3, v4

    .line 150
    add-int/lit8 v11, v9, -0x1

    aput v11, v5, v4

    .line 151
    shl-int/lit8 v9, v9, 0x1

    .line 146
    .end local v10    # "base":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 155
    .end local v4    # "i":I
    .end local v9    # "code":I
    :cond_3
    move v4, v7

    .local v4, "bitLength":I
    const/4 v9, 0x0

    .local v9, "codeIndex":I
    :goto_5
    if-gt v4, v8, :cond_6

    .line 156
    const/4 v10, 0x0

    .local v10, "symbol":I
    :goto_6
    if-ge v10, v0, :cond_5

    .line 157
    aget-byte v11, v2, v10

    if-ne v11, v4, :cond_4

    .line 158
    add-int/lit8 v11, v9, 0x1

    .end local v9    # "codeIndex":I
    .local v11, "codeIndex":I
    aput v10, v6, v9

    move v9, v11

    .line 156
    .end local v11    # "codeIndex":I
    .restart local v9    # "codeIndex":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 155
    .end local v10    # "symbol":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 118
    .end local v2    # "codeLengths":[B
    .end local v3    # "tableBases":[I
    .end local v4    # "bitLength":I
    .end local v5    # "tableLimits":[I
    .end local v6    # "tableSymbols":[I
    .end local v7    # "minimumLength":I
    .end local v8    # "maximumLength":I
    .end local v9    # "codeIndex":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "table":I
    :cond_7
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->selectors:[B

    aget-byte v1, v1, v4

    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentTable:I

    .line 165
    return-void
.end method

.method nextSymbol()I
    .locals 10

    .line 173
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->groupPosition:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->groupPosition:I

    rem-int/lit8 v0, v0, 0x32

    if-nez v0, :cond_1

    .line 174
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->groupIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->groupIndex:I

    .line 175
    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->selectors:[B

    array-length v3, v2

    if-eq v0, v3, :cond_0

    .line 178
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentTable:I

    goto :goto_0

    .line 176
    :cond_0
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v1, "error decoding block"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    .line 182
    .local v0, "reader":Lio/netty/handler/codec/compression/Bzip2BitReader;
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentTable:I

    .line 183
    .local v2, "currentTable":I
    iget-object v3, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->codeLimits:[[I

    aget-object v3, v3, v2

    .line 184
    .local v3, "tableLimits":[I
    iget-object v4, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->codeBases:[[I

    aget-object v4, v4, v2

    .line 185
    .local v4, "tableBases":[I
    iget-object v5, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->codeSymbols:[[I

    aget-object v5, v5, v2

    .line 186
    .local v5, "tableSymbols":[I
    iget-object v6, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->minimumLengths:[I

    aget v6, v6, v2

    .line 190
    .local v6, "codeLength":I
    invoke-virtual {v0, v6}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v7

    .line 191
    .local v7, "codeBits":I
    :goto_1
    const/16 v8, 0x17

    if-gt v6, v8, :cond_3

    .line 192
    aget v8, v3, v6

    if-gt v7, v8, :cond_2

    .line 194
    aget v1, v4, v6

    sub-int v1, v7, v1

    aget v1, v5, v1

    return v1

    .line 196
    :cond_2
    shl-int/lit8 v8, v7, 0x1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v9

    or-int v7, v8, v9

    .line 191
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 199
    :cond_3
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v8, "a valid code was not recognised"

    invoke-direct {v1, v8}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
