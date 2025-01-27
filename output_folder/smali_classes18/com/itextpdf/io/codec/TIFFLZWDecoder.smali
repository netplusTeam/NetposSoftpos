.class public Lcom/itextpdf/io/codec/TIFFLZWDecoder;
.super Ljava/lang/Object;
.source "TIFFLZWDecoder.java"


# instance fields
.field andTable:[I

.field bitPointer:I

.field bitsToGet:I

.field bytePointer:I

.field data:[B

.field dstIndex:I

.field h:I

.field nextBits:I

.field nextData:I

.field predictor:I

.field samplesPerPixel:I

.field stringTable:[[B

.field tableIndex:I

.field uncompData:[B

.field w:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "predictor"    # I
    .param p3, "samplesPerPixel"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->data:[B

    .line 59
    const/16 v0, 0x9

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bitsToGet:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->nextData:I

    .line 68
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->nextBits:I

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->andTable:[I

    .line 78
    iput p1, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->w:I

    .line 79
    iput p2, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->predictor:I

    .line 80
    iput p3, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->samplesPerPixel:I

    .line 81
    return-void

    :array_0
    .array-data 4
        0x1ff
        0x3ff
        0x7ff
        0xfff
    .end array-data
.end method


# virtual methods
.method public addStringToTable([B)V
    .locals 3
    .param p1, "str"    # [B

    .line 221
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->stringTable:[[B

    iget v1, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->tableIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->tableIndex:I

    aput-object p1, v0, v1

    .line 223
    const/16 v0, 0x1ff

    if-ne v2, v0, :cond_0

    .line 224
    const/16 v0, 0xa

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bitsToGet:I

    goto :goto_0

    .line 225
    :cond_0
    const/16 v0, 0x3ff

    if-ne v2, v0, :cond_1

    .line 226
    const/16 v0, 0xb

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bitsToGet:I

    goto :goto_0

    .line 227
    :cond_1
    const/16 v0, 0x7ff

    if-ne v2, v0, :cond_2

    .line 228
    const/16 v0, 0xc

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bitsToGet:I

    .line 230
    :cond_2
    :goto_0
    return-void
.end method

.method public addStringToTable([BB)V
    .locals 5
    .param p1, "oldString"    # [B
    .param p2, "newString"    # B

    .line 196
    array-length v0, p1

    .line 197
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 198
    .local v1, "str":[B
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    aput-byte p2, v1, v0

    .line 202
    iget-object v2, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->stringTable:[[B

    iget v3, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->tableIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->tableIndex:I

    aput-object v1, v2, v3

    .line 204
    const/16 v2, 0x1ff

    if-ne v4, v2, :cond_0

    .line 205
    const/16 v2, 0xa

    iput v2, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bitsToGet:I

    goto :goto_0

    .line 206
    :cond_0
    const/16 v2, 0x3ff

    if-ne v4, v2, :cond_1

    .line 207
    const/16 v2, 0xb

    iput v2, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bitsToGet:I

    goto :goto_0

    .line 208
    :cond_1
    const/16 v2, 0x7ff

    if-ne v4, v2, :cond_2

    .line 209
    const/16 v2, 0xc

    iput v2, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bitsToGet:I

    .line 211
    :cond_2
    :goto_0
    return-void
.end method

.method public composeString([BB)[B
    .locals 3
    .param p1, "oldString"    # [B
    .param p2, "newString"    # B

    .line 240
    array-length v0, p1

    .line 241
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 242
    .local v1, "str":[B
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    aput-byte p2, v1, v0

    .line 245
    return-object v1
.end method

.method public decode([B[BI)[B
    .locals 8
    .param p1, "data"    # [B
    .param p2, "uncompData"    # [B
    .param p3, "h"    # I

    .line 93
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_1

    aget-byte v1, p1, v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "TIFF 5.0-style LZW codes are not supported."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->initializeStringTable()V

    .line 99
    iput-object p1, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->data:[B

    .line 100
    iput p3, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->h:I

    .line 101
    iput-object p2, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->uncompData:[B

    .line 104
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bytePointer:I

    .line 105
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bitPointer:I

    .line 106
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->dstIndex:I

    .line 108
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->nextData:I

    .line 109
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->nextBits:I

    .line 111
    const/4 v1, 0x0

    .line 114
    .local v1, "oldCode":I
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->getNextCode()I

    move-result v3

    move v4, v3

    .local v4, "code":I
    const/16 v5, 0x101

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->dstIndex:I

    array-length v6, p2

    if-ge v3, v6, :cond_5

    .line 117
    const/16 v3, 0x100

    if-ne v4, v3, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->initializeStringTable()V

    .line 119
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->getNextCode()I

    move-result v4

    .line 120
    if-ne v4, v5, :cond_2

    .line 121
    goto :goto_2

    .line 123
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->stringTable:[[B

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->writeString([B)V

    .line 124
    move v1, v4

    goto :goto_1

    .line 127
    :cond_3
    iget v3, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->tableIndex:I

    if-ge v4, v3, :cond_4

    .line 128
    iget-object v3, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->stringTable:[[B

    aget-object v3, v3, v4

    .line 129
    .local v3, "str":[B
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->writeString([B)V

    .line 130
    iget-object v5, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->stringTable:[[B

    aget-object v5, v5, v1

    aget-byte v6, v3, v0

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->addStringToTable([BB)V

    .line 131
    move v1, v4

    goto :goto_1

    .line 133
    .end local v3    # "str":[B
    :cond_4
    iget-object v3, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->stringTable:[[B

    aget-object v3, v3, v1

    .line 134
    .restart local v3    # "str":[B
    aget-byte v5, v3, v0

    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->composeString([BB)[B

    move-result-object v3

    .line 135
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->writeString([B)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->addStringToTable([B)V

    .line 137
    move v1, v4

    goto :goto_1

    .line 143
    .end local v3    # "str":[B
    :cond_5
    :goto_2
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->predictor:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 145
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_3
    if-ge v0, p3, :cond_7

    .line 146
    iget v3, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->samplesPerPixel:I

    iget v5, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->w:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v2

    mul-int/2addr v3, v5

    .line 147
    .local v3, "count":I
    iget v5, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->samplesPerPixel:I

    .local v5, "i":I
    :goto_4
    iget v6, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->w:I

    iget v7, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->samplesPerPixel:I

    mul-int/2addr v6, v7

    if-ge v5, v6, :cond_6

    .line 149
    aget-byte v6, p2, v3

    sub-int v7, v3, v7

    aget-byte v7, p2, v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p2, v3

    .line 150
    add-int/lit8 v3, v3, 0x1

    .line 147
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 145
    .end local v5    # "i":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 155
    .end local v0    # "j":I
    .end local v3    # "count":I
    :cond_7
    return-object p2
.end method

.method public getNextCode()I
    .locals 6

    .line 255
    :try_start_0
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->nextData:I

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->data:[B

    iget v2, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bytePointer:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bytePointer:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->nextData:I

    .line 256
    iget v2, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->nextBits:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->nextBits:I

    .line 258
    iget v4, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bitsToGet:I

    if-ge v2, v4, :cond_0

    .line 259
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bytePointer:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->nextData:I

    .line 260
    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->nextBits:I

    .line 263
    :cond_0
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->nextData:I

    iget v1, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->nextBits:I

    sub-int v2, v1, v4

    shr-int/2addr v0, v2

    iget-object v2, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->andTable:[I

    add-int/lit8 v3, v4, -0x9

    aget v2, v2, v3

    and-int/2addr v0, v2

    .line 265
    .local v0, "code":I
    sub-int/2addr v1, v4

    iput v1, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->nextBits:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    return v0

    .line 268
    .end local v0    # "code":I
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/16 v1, 0x101

    return v1
.end method

.method public initializeStringTable()V
    .locals 4

    .line 163
    const/16 v0, 0x1000

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->stringTable:[[B

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->stringTable:[[B

    const/4 v2, 0x1

    new-array v2, v2, [B

    aput-object v2, v1, v0

    .line 167
    const/4 v1, 0x0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "i":I
    :cond_0
    const/16 v0, 0x102

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->tableIndex:I

    .line 171
    const/16 v0, 0x9

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->bitsToGet:I

    .line 172
    return-void
.end method

.method public writeString([B)V
    .locals 4
    .param p1, "str"    # [B

    .line 181
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->uncompData:[B

    array-length v1, v0

    iget v2, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->dstIndex:I

    sub-int/2addr v1, v2

    .line 182
    .local v1, "max":I
    array-length v3, p1

    if-ge v3, v1, :cond_0

    .line 183
    array-length v1, p1

    .line 184
    :cond_0
    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->dstIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->dstIndex:I

    .line 186
    return-void
.end method
