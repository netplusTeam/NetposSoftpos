.class public Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;
.super Ljava/lang/Object;
.source "LZWDecoder.java"


# instance fields
.field andTable:[I

.field bitPointer:I

.field bitsToGet:I

.field bytePointer:I

.field data:[B

.field nextBits:I

.field nextData:I

.field stringTable:[[B

.field tableIndex:I

.field uncompData:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->data:[B

    .line 59
    const/16 v0, 0x9

    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextData:I

    .line 62
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->andTable:[I

    .line 76
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
    .param p1, "string"    # [B

    .line 203
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    iget v1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->tableIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->tableIndex:I

    aput-object p1, v0, v1

    .line 205
    const/16 v0, 0x1ff

    if-ne v2, v0, :cond_0

    .line 206
    const/16 v0, 0xa

    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    goto :goto_0

    .line 207
    :cond_0
    const/16 v0, 0x3ff

    if-ne v2, v0, :cond_1

    .line 208
    const/16 v0, 0xb

    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    goto :goto_0

    .line 209
    :cond_1
    const/16 v0, 0x7ff

    if-ne v2, v0, :cond_2

    .line 210
    const/16 v0, 0xc

    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    .line 212
    :cond_2
    :goto_0
    return-void
.end method

.method public addStringToTable([BB)V
    .locals 5
    .param p1, "oldString"    # [B
    .param p2, "newString"    # B

    .line 178
    array-length v0, p1

    .line 179
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 180
    .local v1, "string":[B
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    aput-byte p2, v1, v0

    .line 184
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    iget v3, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->tableIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->tableIndex:I

    aput-object v1, v2, v3

    .line 186
    const/16 v2, 0x1ff

    if-ne v4, v2, :cond_0

    .line 187
    const/16 v2, 0xa

    iput v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    goto :goto_0

    .line 188
    :cond_0
    const/16 v2, 0x3ff

    if-ne v4, v2, :cond_1

    .line 189
    const/16 v2, 0xb

    iput v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    goto :goto_0

    .line 190
    :cond_1
    const/16 v2, 0x7ff

    if-ne v4, v2, :cond_2

    .line 191
    const/16 v2, 0xc

    iput v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    .line 193
    :cond_2
    :goto_0
    return-void
.end method

.method public composeString([BB)[B
    .locals 3
    .param p1, "oldString"    # [B
    .param p2, "newString"    # B

    .line 222
    array-length v0, p1

    .line 223
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 224
    .local v1, "string":[B
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    aput-byte p2, v1, v0

    .line 227
    return-object v1
.end method

.method public decode([BLjava/io/OutputStream;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "uncompData"    # Ljava/io/OutputStream;

    .line 86
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "LZW flavour not supported."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->initializeStringTable()V

    .line 92
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->data:[B

    .line 93
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->uncompData:Ljava/io/OutputStream;

    .line 96
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bytePointer:I

    .line 97
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitPointer:I

    .line 99
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextData:I

    .line 100
    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I

    .line 102
    const/4 v1, 0x0

    .line 105
    .local v1, "oldCode":I
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->getNextCode()I

    move-result v2

    move v3, v2

    .local v3, "code":I
    const/16 v4, 0x101

    if-eq v2, v4, :cond_5

    .line 107
    const/16 v2, 0x100

    if-ne v3, v2, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->initializeStringTable()V

    .line 110
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->getNextCode()I

    move-result v3

    .line 112
    if-ne v3, v4, :cond_2

    .line 113
    goto :goto_2

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->writeString([B)V

    .line 117
    move v1, v3

    goto :goto_1

    .line 121
    :cond_3
    iget v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->tableIndex:I

    if-ge v3, v2, :cond_4

    .line 123
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    aget-object v2, v2, v3

    .line 125
    .local v2, "string":[B
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->writeString([B)V

    .line 126
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    aget-object v4, v4, v1

    aget-byte v5, v2, v0

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->addStringToTable([BB)V

    .line 127
    move v1, v3

    goto :goto_1

    .line 131
    .end local v2    # "string":[B
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    aget-object v2, v2, v1

    .line 132
    .restart local v2    # "string":[B
    aget-byte v4, v2, v0

    invoke-virtual {p0, v2, v4}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->composeString([BB)[B

    move-result-object v2

    .line 133
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->writeString([B)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->addStringToTable([B)V

    .line 135
    move v1, v3

    goto :goto_1

    .line 139
    .end local v2    # "string":[B
    :cond_5
    :goto_2
    return-void
.end method

.method public getNextCode()I
    .locals 6

    .line 243
    :try_start_0
    iget v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextData:I

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->data:[B

    iget v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bytePointer:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bytePointer:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextData:I

    .line 244
    iget v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I

    .line 246
    iget v4, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    if-ge v2, v4, :cond_0

    .line 247
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bytePointer:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextData:I

    .line 248
    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I

    .line 251
    :cond_0
    iget v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextData:I

    iget v1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I

    sub-int v2, v1, v4

    shr-int/2addr v0, v2

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->andTable:[I

    add-int/lit8 v3, v4, -0x9

    aget v2, v2, v3

    and-int/2addr v0, v2

    .line 253
    .local v0, "code":I
    sub-int/2addr v1, v4

    iput v1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->nextBits:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    return v0

    .line 256
    .end local v0    # "code":I
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/16 v1, 0x101

    return v1
.end method

.method public initializeStringTable()V
    .locals 4

    .line 147
    const/16 v0, 0x2000

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->stringTable:[[B

    const/4 v2, 0x1

    new-array v2, v2, [B

    aput-object v2, v1, v0

    .line 151
    const/4 v1, 0x0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "i":I
    :cond_0
    const/16 v0, 0x102

    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->tableIndex:I

    .line 155
    const/16 v0, 0x9

    iput v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->bitsToGet:I

    .line 156
    return-void
.end method

.method public writeString([B)V
    .locals 3
    .param p1, "string"    # [B

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/filters/LZWDecoder;->uncompData:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    nop

    .line 169
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "LZW decoder exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
