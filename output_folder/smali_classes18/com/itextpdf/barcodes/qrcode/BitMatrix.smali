.class final Lcom/itextpdf/barcodes/qrcode/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "dimension"    # I

    .line 70
    invoke-direct {p0, p1, p1}, Lcom/itextpdf/barcodes/qrcode/BitMatrix;-><init>(II)V

    .line 71
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 77
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    .line 78
    iput p2, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->height:I

    .line 79
    shr-int/lit8 v0, p1, 0x5

    .line 80
    .local v0, "rowSize":I
    and-int/lit8 v1, p1, 0x1f

    if-eqz v1, :cond_0

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 83
    :cond_0
    iput v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    .line 84
    mul-int v1, v0, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    .line 85
    return-void

    .line 75
    .end local v0    # "rowSize":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    array-length v0, v0

    .line 126
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 127
    iget-object v2, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public flip(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 117
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    shr-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    .line 118
    .local v0, "offset":I
    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    aget v2, v1, v0

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 119
    return-void
.end method

.method public get(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 95
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    shr-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    .line 96
    .local v0, "offset":I
    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getDimension()I
    .locals 2

    .line 199
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->height:I

    if-ne v0, v1, :cond_0

    .line 202
    return v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t call getDimension() on a non-square matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/itextpdf/barcodes/qrcode/BitArray;)Lcom/itextpdf/barcodes/qrcode/BitArray;
    .locals 5
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/itextpdf/barcodes/qrcode/BitArray;

    .line 168
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/barcodes/qrcode/BitArray;->getSize()I

    move-result v0

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    if-ge v0, v1, :cond_1

    .line 169
    :cond_0
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/BitArray;

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/BitArray;-><init>(I)V

    move-object p2, v0

    .line 171
    :cond_1
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr v0, p1

    .line 172
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    if-ge v1, v2, :cond_2

    .line 173
    shl-int/lit8 v2, v1, 0x5

    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/itextpdf/barcodes/qrcode/BitArray;->setBulk(II)V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "x":I
    :cond_2
    return-object p2
.end method

.method public getWidth()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    return v0
.end method

.method public set(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 106
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    shr-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    .line 107
    .local v0, "offset":I
    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    aget v2, v1, v0

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 108
    return-void
.end method

.method public setRegion(IIII)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 140
    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    .line 143
    const/4 v0, 0x1

    if-lt p4, v0, :cond_3

    if-lt p3, v0, :cond_3

    .line 146
    add-int v1, p1, p3

    .line 147
    .local v1, "right":I
    add-int v2, p2, p4

    .line 148
    .local v2, "bottom":I
    iget v3, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->height:I

    if-gt v2, v3, :cond_2

    iget v3, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    if-gt v1, v3, :cond_2

    .line 151
    move v3, p2

    .local v3, "y":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 152
    iget v4, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr v4, v3

    .line 153
    .local v4, "offset":I
    move v5, p1

    .local v5, "x":I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 154
    iget-object v6, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->bits:[I

    shr-int/lit8 v7, v5, 0x5

    add-int/2addr v7, v4

    aget v8, v6, v7

    and-int/lit8 v9, v5, 0x1f

    shl-int v9, v0, v9

    or-int/2addr v8, v9

    aput v8, v6, v7

    .line 153
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 151
    .end local v4    # "offset":I
    .end local v5    # "x":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v3    # "y":I
    :cond_1
    return-void

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "The region must fit inside the matrix"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    .end local v1    # "right":I
    .end local v2    # "bottom":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 206
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->height:I

    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 207
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->height:I

    if-ge v1, v2, :cond_2

    .line 208
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    iget v3, p0, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->width:I

    if-ge v2, v3, :cond_1

    .line 209
    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/barcodes/qrcode/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "X "

    goto :goto_2

    :cond_0
    const-string v3, "  "

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 211
    .end local v2    # "x":I
    :cond_1
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "y":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
