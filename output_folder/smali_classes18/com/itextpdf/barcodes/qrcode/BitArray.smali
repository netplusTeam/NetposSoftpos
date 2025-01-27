.class final Lcom/itextpdf/barcodes/qrcode/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# instance fields
.field private bits:[I

.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 61
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->size:I

    .line 62
    invoke-static {p1}, Lcom/itextpdf/barcodes/qrcode/BitArray;->makeArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    .line 63
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static makeArray(I)[I
    .locals 2
    .param p0, "size"    # I

    .line 184
    shr-int/lit8 v0, p0, 0x5

    .line 185
    .local v0, "arraySize":I
    and-int/lit8 v1, p0, 0x1f

    if-eqz v1, :cond_0

    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 188
    :cond_0
    new-array v1, v0, [I

    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    array-length v0, v0

    .line 111
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 112
    iget-object v2, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public flip(I)V
    .locals 5
    .param p1, "i"    # I

    .line 92
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 93
    return-void
.end method

.method public get(I)Z
    .locals 3
    .param p1, "i"    # I

    .line 74
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v0, v0, v1

    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getBitArray()[I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->size:I

    return v0
.end method

.method public isRange(IIZ)Z
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # Z

    .line 126
    if-lt p2, p1, :cond_8

    .line 129
    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 132
    return v0

    .line 136
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 137
    shr-int/lit8 v1, p1, 0x5

    .line 138
    .local v1, "firstInt":I
    shr-int/lit8 v2, p2, 0x5

    .line 139
    .local v2, "lastInt":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_7

    .line 140
    const/4 v4, 0x0

    if-le v3, v1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    and-int/lit8 v5, p1, 0x1f

    .line 141
    .local v5, "firstBit":I
    :goto_1
    const/16 v6, 0x1f

    if-ge v3, v2, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    and-int/lit8 v7, p2, 0x1f

    .line 143
    .local v7, "lastBit":I
    :goto_2
    if-nez v5, :cond_3

    if-ne v7, v6, :cond_3

    .line 144
    const/4 v6, -0x1

    .local v6, "mask":I
    goto :goto_4

    .line 146
    .end local v6    # "mask":I
    :cond_3
    const/4 v6, 0x0

    .line 147
    .restart local v6    # "mask":I
    move v8, v5

    .local v8, "j":I
    :goto_3
    if-gt v8, v7, :cond_4

    .line 148
    shl-int v9, v0, v8

    or-int/2addr v6, v9

    .line 147
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 154
    .end local v8    # "j":I
    :cond_4
    :goto_4
    iget-object v8, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    aget v8, v8, v3

    and-int/2addr v8, v6

    if-eqz p3, :cond_5

    move v9, v6

    goto :goto_5

    :cond_5
    move v9, v4

    :goto_5
    if-eq v8, v9, :cond_6

    .line 155
    return v4

    .line 139
    .end local v5    # "firstBit":I
    .end local v6    # "mask":I
    .end local v7    # "lastBit":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    .end local v3    # "i":I
    :cond_7
    return v0

    .line 127
    .end local v1    # "firstInt":I
    .end local v2    # "lastInt":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public reverse()V
    .locals 7

    .line 173
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 174
    .local v0, "newBits":[I
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->size:I

    .line 175
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 176
    sub-int v3, v1, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/itextpdf/barcodes/qrcode/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    shr-int/lit8 v3, v2, 0x5

    aget v5, v0, v3

    and-int/lit8 v6, v2, 0x1f

    shl-int/2addr v4, v6

    or-int/2addr v4, v5

    aput v4, v0, v3

    .line 175
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "i":I
    :cond_1
    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    .line 181
    return-void
.end method

.method public set(I)V
    .locals 5
    .param p1, "i"    # I

    .line 83
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 84
    return-void
.end method

.method public setBulk(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "newBits"    # I

    .line 103
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aput p2, v0, v1

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 193
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/BitArray;->size:I

    if-ge v1, v2, :cond_2

    .line 194
    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_0

    .line 195
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 197
    :cond_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/qrcode/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x58

    goto :goto_1

    :cond_1
    const/16 v2, 0x2e

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
