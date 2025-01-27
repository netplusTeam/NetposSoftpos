.class final Lcom/itextpdf/barcodes/qrcode/QRCode;
.super Ljava/lang/Object;
.source "QRCode.java"


# static fields
.field public static final NUM_MASK_PATTERNS:I = 0x8


# instance fields
.field private ecLevel:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

.field private maskPattern:I

.field private matrix:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

.field private matrixWidth:I

.field private mode:Lcom/itextpdf/barcodes/qrcode/Mode;

.field private numDataBytes:I

.field private numECBytes:I

.field private numRSBlocks:I

.field private numTotalBytes:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->mode:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 70
    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->ecLevel:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->version:I

    .line 72
    iput v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrixWidth:I

    .line 73
    iput v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->maskPattern:I

    .line 74
    iput v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numTotalBytes:I

    .line 75
    iput v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numDataBytes:I

    .line 76
    iput v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numECBytes:I

    .line 77
    iput v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numRSBlocks:I

    .line 78
    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrix:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    .line 79
    return-void
.end method

.method public static isValidMaskPattern(I)Z
    .locals 1
    .param p0, "maskPattern"    # I

    .line 323
    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public at(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 163
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrix:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->get(II)B

    move-result v0

    .line 164
    .local v0, "value":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad value"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_1
    :goto_0
    return v0
.end method

.method public getECLevel()Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->ecLevel:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    return-object v0
.end method

.method public getMaskPattern()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->maskPattern:I

    return v0
.end method

.method public getMatrix()Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrix:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    return-object v0
.end method

.method public getMatrixWidth()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrixWidth:I

    return v0
.end method

.method public getMode()Lcom/itextpdf/barcodes/qrcode/Mode;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->mode:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v0
.end method

.method public getNumDataBytes()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numDataBytes:I

    return v0
.end method

.method public getNumECBytes()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numECBytes:I

    return v0
.end method

.method public getNumRSBlocks()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numRSBlocks:I

    return v0
.end method

.method public getNumTotalBytes()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numTotalBytes:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->version:I

    return v0
.end method

.method public isValid()Z
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->mode:Lcom/itextpdf/barcodes/qrcode/Mode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->ecLevel:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->version:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrixWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->maskPattern:I

    if-eq v0, v1, :cond_0

    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numTotalBytes:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numDataBytes:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numECBytes:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numRSBlocks:I

    if-eq v2, v1, :cond_0

    .line 188
    invoke-static {v0}, Lcom/itextpdf/barcodes/qrcode/QRCode;->isValidMaskPattern(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numTotalBytes:I

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numDataBytes:I

    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numECBytes:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrix:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrixWidth:I

    .line 192
    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrix:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    .line 195
    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrix:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0
.end method

.method public setECLevel(Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;)V
    .locals 0
    .param p1, "value"    # Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 248
    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->ecLevel:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 249
    return-void
.end method

.method public setMaskPattern(I)V
    .locals 0
    .param p1, "value"    # I

    .line 274
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->maskPattern:I

    .line 275
    return-void
.end method

.method public setMatrix(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 0
    .param p1, "value"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    .line 314
    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrix:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    .line 315
    return-void
.end method

.method public setMatrixWidth(I)V
    .locals 0
    .param p1, "value"    # I

    .line 266
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrixWidth:I

    .line 267
    return-void
.end method

.method public setMode(Lcom/itextpdf/barcodes/qrcode/Mode;)V
    .locals 0
    .param p1, "value"    # Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 239
    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->mode:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 240
    return-void
.end method

.method public setNumDataBytes(I)V
    .locals 0
    .param p1, "value"    # I

    .line 290
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numDataBytes:I

    .line 291
    return-void
.end method

.method public setNumECBytes(I)V
    .locals 0
    .param p1, "value"    # I

    .line 298
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numECBytes:I

    .line 299
    return-void
.end method

.method public setNumRSBlocks(I)V
    .locals 0
    .param p1, "value"    # I

    .line 306
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numRSBlocks:I

    .line 307
    return-void
.end method

.method public setNumTotalBytes(I)V
    .locals 0
    .param p1, "value"    # I

    .line 282
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numTotalBytes:I

    .line 283
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "value"    # I

    .line 258
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->version:I

    .line 259
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 204
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "<<\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v1, " mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->mode:Lcom/itextpdf/barcodes/qrcode/Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 207
    const-string v1, "\n ecLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->ecLevel:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 209
    const-string v1, "\n version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 211
    const-string v1, "\n matrixWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrixWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 213
    const-string v1, "\n maskPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->maskPattern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 215
    const-string v1, "\n numTotalBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numTotalBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 217
    const-string v1, "\n numDataBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numDataBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 219
    const-string v1, "\n numECBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numECBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 221
    const-string v1, "\n numRSBlocks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->numRSBlocks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 223
    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrix:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    if-nez v1, :cond_0

    .line 224
    const-string v1, "\n matrix: null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 226
    :cond_0
    const-string v1, "\n matrix:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/QRCode;->matrix:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    :goto_0
    const-string v1, ">>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
