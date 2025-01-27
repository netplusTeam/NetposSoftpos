.class final Lcom/itextpdf/barcodes/qrcode/GF256Poly;
.super Ljava/lang/Object;
.source "GF256Poly.java"


# instance fields
.field private final coefficients:[I

.field private final field:Lcom/itextpdf/barcodes/qrcode/GF256;


# direct methods
.method constructor <init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V
    .locals 5
    .param p1, "field"    # Lcom/itextpdf/barcodes/qrcode/GF256;
    .param p2, "coefficients"    # [I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-eqz p2, :cond_3

    array-length v0, p2

    if-eqz v0, :cond_3

    .line 73
    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    .line 74
    array-length v0, p2

    .line 75
    .local v0, "coefficientsLength":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v1, 0x0

    aget v2, p2, v1

    if-nez v2, :cond_2

    .line 77
    const/4 v2, 0x1

    .line 78
    .local v2, "firstNonZero":I
    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p2, v2

    if-nez v3, :cond_0

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_0
    if-ne v2, v0, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/GF256;->getZero()Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v1

    iget-object v1, v1, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    iput-object v1, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    goto :goto_1

    .line 84
    :cond_1
    sub-int v3, v0, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    .line 85
    array-length v4, v3

    invoke-static {p2, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    .end local v2    # "firstNonZero":I
    :goto_1
    goto :goto_2

    .line 92
    :cond_2
    iput-object p2, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    .line 94
    :goto_2
    return-void

    .line 71
    .end local v0    # "coefficientsLength":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method addOrSubtract(Lcom/itextpdf/barcodes/qrcode/GF256Poly;)Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .locals 7
    .param p1, "other"    # Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    .line 152
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    iget-object v1, p1, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    return-object p1

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    return-object p0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    .line 163
    .local v0, "smallerCoefficients":[I
    iget-object v1, p1, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    .line 164
    .local v1, "largerCoefficients":[I
    array-length v2, v0

    array-length v3, v1

    if-le v2, v3, :cond_2

    .line 165
    move-object v2, v0

    .line 166
    .local v2, "temp":[I
    move-object v0, v1

    .line 167
    move-object v1, v2

    .line 169
    .end local v2    # "temp":[I
    :cond_2
    array-length v2, v1

    new-array v2, v2, [I

    .line 170
    .local v2, "sumDiff":[I
    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    .line 172
    .local v3, "lengthDiff":I
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 175
    sub-int v5, v4, v3

    aget v5, v0, v5

    aget v6, v1, v4

    invoke-static {v5, v6}, Lcom/itextpdf/barcodes/qrcode/GF256;->addOrSubtract(II)I

    move-result v5

    aput v5, v2, v4

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    .end local v4    # "i":I
    :cond_3
    new-instance v4, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    iget-object v5, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-direct {v4, v5, v2}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    return-object v4

    .line 153
    .end local v0    # "smallerCoefficients":[I
    .end local v1    # "largerCoefficients":[I
    .end local v2    # "sumDiff":[I
    .end local v3    # "lengthDiff":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GF256Polys do not have same GF256 field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method divide(Lcom/itextpdf/barcodes/qrcode/GF256Poly;)[Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .locals 8
    .param p1, "other"    # Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    .line 244
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    iget-object v1, p1, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/GF256;->getZero()Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v0

    .line 252
    .local v0, "quotient":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    move-object v1, p0

    .line 254
    .local v1, "remainder":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getDegree()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getCoefficient(I)I

    move-result v2

    .line 255
    .local v2, "denominatorLeadingTerm":I
    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v3, v2}, Lcom/itextpdf/barcodes/qrcode/GF256;->inverse(I)I

    move-result v3

    .line 257
    .local v3, "inverseDenominatorLeadingTerm":I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getDegree()I

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getDegree()I

    move-result v5

    if-lt v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->isZero()Z

    move-result v4

    if-nez v4, :cond_0

    .line 258
    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getDegree()I

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getDegree()I

    move-result v5

    sub-int/2addr v4, v5

    .line 259
    .local v4, "degreeDifference":I
    iget-object v5, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getDegree()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getCoefficient(I)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/itextpdf/barcodes/qrcode/GF256;->multiply(II)I

    move-result v5

    .line 260
    .local v5, "scale":I
    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->multiplyByMonomial(II)Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v6

    .line 261
    .local v6, "term":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    iget-object v7, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v7, v4, v5}, Lcom/itextpdf/barcodes/qrcode/GF256;->buildMonomial(II)Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v7

    .line 262
    .local v7, "iterationQuotient":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    invoke-virtual {v0, v7}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->addOrSubtract(Lcom/itextpdf/barcodes/qrcode/GF256Poly;)Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v0

    .line 263
    invoke-virtual {v1, v6}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->addOrSubtract(Lcom/itextpdf/barcodes/qrcode/GF256Poly;)Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v1

    .line 264
    .end local v4    # "degreeDifference":I
    .end local v5    # "scale":I
    .end local v6    # "term":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .end local v7    # "iterationQuotient":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    goto :goto_0

    .line 266
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    return-object v4

    .line 248
    .end local v0    # "quotient":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .end local v1    # "remainder":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .end local v2    # "denominatorLeadingTerm":I
    .end local v3    # "inverseDenominatorLeadingTerm":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GF256Polys do not have same GF256 field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method evaluateAt(I)I
    .locals 5
    .param p1, "a"    # I

    .line 125
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getCoefficient(I)I

    move-result v0

    return v0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    array-length v2, v1

    .line 130
    .local v2, "size":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 134
    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Lcom/itextpdf/barcodes/qrcode/GF256;->addOrSubtract(II)I

    move-result v0

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 138
    .end local v0    # "result":I
    :cond_2
    aget v0, v1, v0

    .line 139
    .restart local v0    # "result":I
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 140
    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v3, p1, v0}, Lcom/itextpdf/barcodes/qrcode/GF256;->multiply(II)I

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    aget v4, v4, v1

    invoke-static {v3, v4}, Lcom/itextpdf/barcodes/qrcode/GF256;->addOrSubtract(II)I

    move-result v0

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method getCoefficient(I)I
    .locals 2
    .param p1, "degree"    # I

    .line 118
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method getCoefficients()[I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    return-object v0
.end method

.method getDegree()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isZero()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method multiply(I)Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .locals 5
    .param p1, "scalar"    # I

    .line 214
    if-nez p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/GF256;->getZero()Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 218
    return-object p0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    array-length v0, v0

    .line 221
    .local v0, "size":I
    new-array v1, v0, [I

    .line 222
    .local v1, "product":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 223
    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    iget-object v4, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, p1}, Lcom/itextpdf/barcodes/qrcode/GF256;->multiply(II)I

    move-result v3

    aput v3, v1, v2

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    return-object v2
.end method

.method multiply(Lcom/itextpdf/barcodes/qrcode/GF256Poly;)Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .locals 12
    .param p1, "other"    # Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    .line 187
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    iget-object v1, p1, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->isZero()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    .line 194
    .local v0, "aCoefficients":[I
    array-length v1, v0

    .line 195
    .local v1, "aLength":I
    iget-object v2, p1, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    .line 196
    .local v2, "bCoefficients":[I
    array-length v3, v2

    .line 197
    .local v3, "bLength":I
    add-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [I

    .line 198
    .local v4, "product":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 199
    aget v6, v0, v5

    .line 200
    .local v6, "aCoeff":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_1

    .line 201
    add-int v8, v5, v7

    add-int v9, v5, v7

    aget v9, v4, v9

    iget-object v10, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    aget v11, v2, v7

    .line 202
    invoke-virtual {v10, v6, v11}, Lcom/itextpdf/barcodes/qrcode/GF256;->multiply(II)I

    move-result v10

    .line 201
    invoke-static {v9, v10}, Lcom/itextpdf/barcodes/qrcode/GF256;->addOrSubtract(II)I

    move-result v9

    aput v9, v4, v8

    .line 200
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 198
    .end local v6    # "aCoeff":I
    .end local v7    # "j":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 205
    .end local v5    # "i":I
    :cond_2
    new-instance v5, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    iget-object v6, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-direct {v5, v6, v4}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    return-object v5

    .line 191
    .end local v0    # "aCoefficients":[I
    .end local v1    # "aLength":I
    .end local v2    # "bCoefficients":[I
    .end local v3    # "bLength":I
    .end local v4    # "product":[I
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/GF256;->getZero()Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v0

    return-object v0

    .line 188
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GF256Polys do not have same GF256 field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method multiplyByMonomial(II)Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .locals 5
    .param p1, "degree"    # I
    .param p2, "coefficient"    # I

    .line 229
    if-ltz p1, :cond_2

    .line 232
    if-nez p2, :cond_0

    .line 233
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/GF256;->getZero()Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    array-length v0, v0

    .line 236
    .local v0, "size":I
    add-int v1, v0, p1

    new-array v1, v1, [I

    .line 237
    .local v1, "product":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 238
    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    iget-object v4, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->coefficients:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, p2}, Lcom/itextpdf/barcodes/qrcode/GF256;->multiply(II)I

    move-result v3

    aput v3, v1, v2

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    return-object v2

    .line 230
    .end local v0    # "size":I
    .end local v1    # "product":[I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 273
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getDegree()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 274
    .local v0, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getDegree()I

    move-result v1

    .local v1, "degree":I
    :goto_0
    if-ltz v1, :cond_8

    .line 275
    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getCoefficient(I)I

    move-result v2

    .line 276
    .local v2, "coefficient":I
    if-eqz v2, :cond_7

    .line 277
    if-gez v2, :cond_0

    .line 278
    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    neg-int v2, v2

    goto :goto_1

    .line 281
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 282
    const-string v3, " + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    :cond_1
    :goto_1
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v2, v3, :cond_5

    .line 286
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v4, v2}, Lcom/itextpdf/barcodes/qrcode/GF256;->log(I)I

    move-result v4

    .line 287
    .local v4, "alphaPower":I
    if-nez v4, :cond_3

    .line 288
    const/16 v5, 0x31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 289
    :cond_3
    if-ne v4, v3, :cond_4

    .line 290
    const/16 v5, 0x61

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 292
    :cond_4
    const-string v5, "a^"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 296
    .end local v4    # "alphaPower":I
    :cond_5
    :goto_2
    if-eqz v1, :cond_7

    .line 297
    if-ne v1, v3, :cond_6

    .line 298
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 300
    :cond_6
    const-string/jumbo v3, "x^"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 274
    .end local v2    # "coefficient":I
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 306
    .end local v1    # "degree":I
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
