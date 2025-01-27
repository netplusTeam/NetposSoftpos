.class final Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final bitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private mirror:Z

.field private parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

.field private parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 3
    .param p1, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 38
    .local v1, "dimension":I
    move v1, v0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    and-int/lit8 v0, v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 41
    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 42
    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private copyBit(III)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "versionBits"    # I

    .line 141
    iget-boolean v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    .line 142
    :goto_0
    if-eqz v0, :cond_1

    shl-int/lit8 v0, p3, 0x1

    or-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    shl-int/lit8 v0, p3, 0x1

    return v0
.end method


# virtual methods
.method mirror()V
    .locals 4

    .line 235
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 236
    add-int/lit8 v1, v0, 0x1

    .local v1, "y":I
    :goto_1
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 238
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 239
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 236
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    .end local v1    # "y":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "x":I
    :cond_2
    return-void
.end method

.method readCodewords()[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 155
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v1

    .line 156
    .local v1, "formatInfo":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    .line 160
    .local v2, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {}, Lcom/google/zxing/qrcode/decoder/DataMask;->values()[Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v4

    aget-object v3, v3, v4

    .line 161
    .local v3, "dataMask":Lcom/google/zxing/qrcode/decoder/DataMask;
    iget-object v4, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    .line 162
    .local v4, "dimension":I
    iget-object v5, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v5, v4}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V

    .line 164
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    .line 166
    .local v5, "functionPattern":Lcom/google/zxing/common/BitMatrix;
    const/4 v6, 0x1

    .line 167
    .local v6, "readingUp":Z
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v7

    new-array v7, v7, [B

    .line 168
    .local v7, "result":[B
    const/4 v8, 0x0

    .line 169
    .local v8, "resultOffset":I
    const/4 v9, 0x0

    .line 170
    .local v9, "currentByte":I
    const/4 v10, 0x0

    .line 172
    .local v10, "bitsRead":I
    add-int/lit8 v11, v4, -0x1

    .local v11, "j":I
    :goto_0
    if-lez v11, :cond_6

    .line 173
    const/4 v12, 0x6

    if-ne v11, v12, :cond_0

    .line 176
    add-int/lit8 v11, v11, -0x1

    .line 179
    :cond_0
    const/4 v12, 0x0

    .local v12, "count":I
    :goto_1
    if-ge v12, v4, :cond_5

    .line 180
    if-eqz v6, :cond_1

    add-int/lit8 v13, v4, -0x1

    sub-int/2addr v13, v12

    goto :goto_2

    :cond_1
    move v13, v12

    .line 181
    .local v13, "i":I
    :goto_2
    const/4 v14, 0x0

    .local v14, "col":I
    :goto_3
    const/4 v15, 0x2

    if-ge v14, v15, :cond_4

    .line 183
    sub-int v15, v11, v14

    invoke-virtual {v5, v15, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-nez v15, :cond_3

    .line 185
    add-int/lit8 v10, v10, 0x1

    .line 186
    shl-int/lit8 v9, v9, 0x1

    .line 187
    iget-object v15, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    sub-int v0, v11, v14

    invoke-virtual {v15, v0, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    or-int/lit8 v9, v9, 0x1

    .line 191
    :cond_2
    const/16 v0, 0x8

    if-ne v10, v0, :cond_3

    .line 192
    add-int/lit8 v0, v8, 0x1

    .end local v8    # "resultOffset":I
    .local v0, "resultOffset":I
    int-to-byte v15, v9

    aput-byte v15, v7, v8

    .line 193
    const/4 v8, 0x0

    .line 194
    .end local v10    # "bitsRead":I
    .local v8, "bitsRead":I
    const/4 v9, 0x0

    move v10, v8

    move v8, v0

    .line 181
    .end local v0    # "resultOffset":I
    .local v8, "resultOffset":I
    .restart local v10    # "bitsRead":I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto :goto_3

    .line 179
    .end local v13    # "i":I
    .end local v14    # "col":I
    :cond_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 199
    .end local v12    # "count":I
    :cond_5
    xor-int/lit8 v6, v6, 0x1

    .line 172
    add-int/lit8 v11, v11, -0x2

    move-object/from16 v0, p0

    goto :goto_0

    .line 201
    .end local v11    # "j":I
    :cond_6
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v0

    if-ne v8, v0, :cond_7

    .line 204
    return-object v7

    .line 202
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v0, :cond_0

    .line 54
    return-object v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    .local v0, "formatInfoBits1":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    const/16 v3, 0x8

    if-ge v1, v2, :cond_1

    .line 60
    invoke-direct {p0, v1, v3, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x7

    invoke-direct {p0, v1, v3, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    .line 64
    invoke-direct {p0, v3, v3, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    .line 65
    invoke-direct {p0, v3, v1, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    .line 67
    const/4 v1, 0x5

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_2

    .line 68
    invoke-direct {p0, v3, v1, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    .line 67
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 72
    .end local v1    # "j":I
    :cond_2
    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 73
    .local v1, "dimension":I
    const/4 v2, 0x0

    .line 74
    .local v2, "formatInfoBits2":I
    add-int/lit8 v4, v1, -0x7

    .line 75
    .local v4, "jMin":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "j":I
    :goto_2
    if-lt v5, v4, :cond_3

    .line 76
    invoke-direct {p0, v3, v5, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 75
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 78
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v5, v1, -0x8

    .local v5, "i":I
    :goto_3
    if-ge v5, v1, :cond_4

    .line 79
    invoke-direct {p0, v5, v3, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 78
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 82
    .end local v5    # "i":I
    :cond_4
    invoke-static {v0, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v3

    iput-object v3, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 83
    if-eqz v3, :cond_5

    .line 84
    return-object v3

    .line 86
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method readVersion()Lcom/google/zxing/qrcode/decoder/Version;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    if-eqz v0, :cond_0

    .line 99
    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 104
    .local v2, "dimension":I
    move v2, v0

    add-int/lit8 v0, v0, -0x11

    div-int/lit8 v0, v0, 0x4

    .line 105
    .local v1, "provisionalVersion":I
    move v1, v0

    const/4 v3, 0x6

    if-gt v0, v3, :cond_1

    .line 106
    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    return-object v0

    .line 110
    :cond_1
    const/4 v0, 0x0

    .line 111
    .local v0, "versionBits":I
    add-int/lit8 v3, v2, -0xb

    .line 112
    .local v3, "ijMin":I
    const/4 v4, 0x5

    .local v4, "j":I
    :goto_0
    if-ltz v4, :cond_3

    .line 113
    add-int/lit8 v5, v2, -0x9

    .local v5, "i":I
    :goto_1
    if-lt v5, v3, :cond_2

    .line 114
    invoke-direct {p0, v5, v4, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    .line 113
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 112
    .end local v5    # "i":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 118
    .end local v4    # "j":I
    :cond_3
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    .line 119
    .local v4, "theParsedVersion":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v4, v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 120
    iput-object v4, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 121
    return-object v4

    .line 125
    :cond_4
    const/4 v0, 0x0

    .line 126
    const/4 v5, 0x5

    .restart local v5    # "i":I
    :goto_2
    if-ltz v5, :cond_6

    .line 127
    add-int/lit8 v6, v2, -0x9

    .local v6, "j":I
    :goto_3
    if-lt v6, v3, :cond_5

    .line 128
    invoke-direct {p0, v5, v6, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    .line 127
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 126
    .end local v6    # "j":I
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 132
    .end local v5    # "i":I
    :cond_6
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    .line 133
    move-object v4, v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v5

    if-ne v5, v2, :cond_7

    .line 134
    iput-object v4, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 135
    return-object v4

    .line 137
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5
.end method

.method remask()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-nez v0, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    invoke-static {}, Lcom/google/zxing/qrcode/decoder/DataMask;->values()[Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v1

    aget-object v0, v0, v1

    .line 215
    .local v0, "dataMask":Lcom/google/zxing/qrcode/decoder/DataMask;
    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 216
    .local v1, "dimension":I
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V

    .line 217
    return-void
.end method

.method setMirror(Z)V
    .locals 1
    .param p1, "mirror"    # Z

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 229
    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 230
    iput-boolean p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror:Z

    .line 231
    return-void
.end method
