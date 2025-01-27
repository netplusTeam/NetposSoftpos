.class public abstract Lcom/itextpdf/barcodes/Barcode1D;
.super Ljava/lang/Object;
.source "Barcode1D.java"


# static fields
.field public static final ALIGN_CENTER:I = 0x3

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2


# instance fields
.field protected final DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

.field protected final DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

.field protected altText:Ljava/lang/String;

.field protected barHeight:F

.field protected baseline:F

.field protected checksumText:Z

.field protected code:Ljava/lang/String;

.field protected codeType:I

.field protected document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected extended:Z

.field protected font:Lcom/itextpdf/kernel/font/PdfFont;

.field protected generateChecksum:Z

.field protected guardBars:Z

.field protected inkSpreading:F

.field protected n:F

.field protected size:F

.field protected startStopText:Z

.field protected textAlignment:I

.field protected x:F


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    iput-object v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    .line 68
    sget-object v0, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    iput-object v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->code:Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->inkSpreading:F

    .line 157
    iput-object p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 158
    return-void
.end method


# virtual methods
.method public abstract createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
.end method

.method public createFormXObject(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 3
    .param p1, "barColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "textColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p3, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 531
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 532
    .local v0, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v1, v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/itextpdf/barcodes/Barcode1D;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 533
    .local v1, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->setBBox(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 535
    return-object v0
.end method

.method public createFormXObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 518
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/itextpdf/barcodes/Barcode1D;->createFormXObject(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    return-object v0
.end method

.method public fitWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .line 544
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->x:F

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/Barcode1D;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/barcodes/Barcode1D;->setX(F)V

    .line 545
    return-void
.end method

.method public getAltText()Ljava/lang/String;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->altText:Ljava/lang/String;

    return-object v0
.end method

.method public getBarHeight()F
    .locals 1

    .line 255
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->barHeight:F

    return v0
.end method

.method public abstract getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
.end method

.method public getBaseline()F
    .locals 1

    .line 235
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->baseline:F

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeType()I
    .locals 1

    .line 401
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->codeType:I

    return v0
.end method

.method protected getDescender()F
    .locals 2

    .line 548
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->size:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 549
    .local v0, "sizeCoef":F
    iget-object v1, p0, Lcom/itextpdf/barcodes/Barcode1D;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    return v1
.end method

.method public getFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->font:Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0
.end method

.method public getInkSpreading()F
    .locals 1

    .line 468
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->inkSpreading:F

    return v0
.end method

.method public getN()F
    .locals 1

    .line 184
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->n:F

    return v0
.end method

.method public getSize()F
    .locals 1

    .line 215
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->size:F

    return v0
.end method

.method public getTextAlignment()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->textAlignment:I

    return v0
.end method

.method public getX()F
    .locals 1

    .line 166
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->x:F

    return v0
.end method

.method public isChecksumText()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->checksumText:Z

    return v0
.end method

.method public isExtended()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->extended:Z

    return v0
.end method

.method public isGenerateChecksum()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->generateChecksum:Z

    return v0
.end method

.method public isGuardBars()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->guardBars:Z

    return v0
.end method

.method public isStartStopText()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/itextpdf/barcodes/Barcode1D;->startStopText:Z

    return v0
.end method

.method public abstract placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
.end method

.method public setAltText(Ljava/lang/String;)V
    .locals 0
    .param p1, "altText"    # Ljava/lang/String;

    .line 498
    iput-object p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->altText:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setBarHeight(F)V
    .locals 0
    .param p1, "barHeight"    # F

    .line 264
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->barHeight:F

    .line 265
    return-void
.end method

.method public setBaseline(F)V
    .locals 0
    .param p1, "baseline"    # F

    .line 246
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->baseline:F

    .line 247
    return-void
.end method

.method public setChecksumText(Z)V
    .locals 0
    .param p1, "checksumText"    # Z

    .line 318
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->checksumText:Z

    .line 319
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .line 374
    iput-object p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->code:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setCodeType(I)V
    .locals 0
    .param p1, "codeType"    # I

    .line 410
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->codeType:I

    .line 411
    return-void
.end method

.method public setExtended(Z)V
    .locals 0
    .param p1, "extended"    # Z

    .line 356
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->extended:Z

    .line 357
    return-void
.end method

.method public setFont(Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 0
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 211
    iput-object p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 212
    return-void
.end method

.method public setGenerateChecksum(Z)V
    .locals 0
    .param p1, "generateChecksum"    # Z

    .line 300
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->generateChecksum:Z

    .line 301
    return-void
.end method

.method public setGuardBars(Z)V
    .locals 0
    .param p1, "guardBars"    # Z

    .line 392
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->guardBars:Z

    .line 393
    return-void
.end method

.method public setInkSpreading(F)V
    .locals 0
    .param p1, "inkSpreading"    # F

    .line 479
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->inkSpreading:F

    .line 480
    return-void
.end method

.method public setN(F)V
    .locals 0
    .param p1, "n"    # F

    .line 193
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->n:F

    .line 194
    return-void
.end method

.method public setSize(F)V
    .locals 0
    .param p1, "size"    # F

    .line 224
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->size:F

    .line 225
    return-void
.end method

.method public setStartStopText(Z)V
    .locals 0
    .param p1, "startStopText"    # Z

    .line 338
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->startStopText:Z

    .line 339
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 0
    .param p1, "textAlignment"    # I

    .line 282
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->textAlignment:I

    .line 283
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .line 175
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode1D;->x:F

    .line 176
    return-void
.end method
