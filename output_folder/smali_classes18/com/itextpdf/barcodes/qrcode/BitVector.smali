.class final Lcom/itextpdf/barcodes/qrcode/BitVector;
.super Ljava/lang/Object;
.source "BitVector.java"


# static fields
.field private static final DEFAULT_SIZE_IN_BYTES:I = 0x20


# instance fields
.field private array:[B

.field private sizeInBits:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    .line 67
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    .line 68
    return-void
.end method

.method private appendByte(I)V
    .locals 4
    .param p1, "value"    # I

    .line 226
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 227
    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 228
    .local v0, "newArray":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    .line 231
    .end local v0    # "newArray":[B
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    shr-int/lit8 v2, v1, 0x3

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 232
    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    .line 233
    return-void
.end method


# virtual methods
.method public appendBit(I)V
    .locals 7
    .param p1, "bit"    # I

    .line 107
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad bit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    :goto_0
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    and-int/lit8 v1, v1, 0x7

    .line 112
    .local v1, "numBitsInLastByte":I
    if-nez v1, :cond_2

    .line 113
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendByte(I)V

    .line 114
    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    iget v3, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    shr-int/lit8 v4, v3, 0x3

    aget-byte v5, v2, v4

    rsub-int/lit8 v6, v1, 0x7

    shl-int v6, p1, v6

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 118
    add-int/2addr v3, v0

    iput v3, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    .line 119
    return-void
.end method

.method public appendBitVector(Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 3
    .param p1, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;

    .line 163
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v0

    .line 164
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 165
    invoke-virtual {p1, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->at(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBit(I)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public appendBits(II)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "numBits"    # I

    .line 140
    if-ltz p2, :cond_2

    const/16 v0, 0x20

    if-gt p2, v0, :cond_2

    .line 143
    move v0, p2

    .line 144
    .local v0, "numBitsLeft":I
    :goto_0
    if-lez v0, :cond_1

    .line 146
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 147
    add-int/lit8 v1, v0, -0x8

    shr-int v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 148
    .local v1, "newByte":I
    invoke-direct {p0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendByte(I)V

    .line 149
    nop

    .end local v1    # "newByte":I
    add-int/lit8 v0, v0, -0x8

    .line 150
    goto :goto_0

    .line 151
    :cond_0
    add-int/lit8 v1, v0, -0x1

    shr-int v1, p1, v1

    and-int/lit8 v1, v1, 0x1

    .line 152
    .local v1, "bit":I
    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBit(I)V

    .line 153
    nop

    .end local v1    # "bit":I
    add-int/lit8 v0, v0, -0x1

    .line 154
    goto :goto_0

    .line 156
    :cond_1
    return-void

    .line 141
    .end local v0    # "numBitsLeft":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Num bits must be between 0 and 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public at(I)I
    .locals 3
    .param p1, "index"    # I

    .line 78
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    if-ge p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    shr-int/lit8 v1, p1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 82
    .local v0, "value":I
    and-int/lit8 v1, p1, 0x7

    rsub-int/lit8 v1, v1, 0x7

    shr-int v1, v0, v1

    and-int/lit8 v1, v1, 0x1

    return v1

    .line 79
    .end local v0    # "value":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArray()[B
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    return v0
.end method

.method public sizeInBytes()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 193
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    if-ge v1, v2, :cond_2

    .line 194
    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->at(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 195
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 196
    :cond_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->at(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 197
    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Byte isn\'t 0 or 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public xor(Lcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 5
    .param p1, "other"    # Lcom/itextpdf/barcodes/qrcode/BitVector;

    .line 175
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 178
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->sizeInBits:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 179
    .local v0, "sizeInBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 182
    iget-object v2, p0, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    aget-byte v3, v2, v1

    iget-object v4, p1, Lcom/itextpdf/barcodes/qrcode/BitVector;->array:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 176
    .end local v0    # "sizeInBytes":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BitVector sizes don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
