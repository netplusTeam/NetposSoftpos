.class public Lcom/itextpdf/barcodes/BarcodeEANSUPP;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "BarcodeEANSUPP.java"


# instance fields
.field protected ean:Lcom/itextpdf/barcodes/Barcode1D;

.field protected supp:Lcom/itextpdf/barcodes/Barcode1D;


# direct methods
.method public constructor <init>(Lcom/itextpdf/barcodes/Barcode1D;Lcom/itextpdf/barcodes/Barcode1D;)V
    .locals 1
    .param p1, "ean"    # Lcom/itextpdf/barcodes/Barcode1D;
    .param p2, "supp"    # Lcom/itextpdf/barcodes/Barcode1D;

    .line 72
    iget-object v0, p1, Lcom/itextpdf/barcodes/Barcode1D;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {p0, v0}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 74
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->n:F

    .line 75
    iput-object p1, p0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    .line 76
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    .line 77
    return-void
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 2
    .param p1, "foreground"    # Ljava/awt/Color;
    .param p2, "background"    # Ljava/awt/Color;

    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The two barcodes must be composed externally."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/Barcode1D;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 87
    .local v0, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v2}, Lcom/itextpdf/barcodes/Barcode1D;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->n:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 88
    return-object v0
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 19
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "barColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p3, "textColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/Barcode1D;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/Barcode1D;->getSize()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 134
    .local v1, "sizeCoef":F
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v3}, Lcom/itextpdf/barcodes/Barcode1D;->getBarHeight()F

    move-result v3

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v4}, Lcom/itextpdf/barcodes/Barcode1D;->getBaseline()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    .line 135
    invoke-virtual {v4}, Lcom/itextpdf/barcodes/Barcode1D;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontMetrics;->getCapHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 134
    invoke-virtual {v2, v3}, Lcom/itextpdf/barcodes/Barcode1D;->setBarHeight(F)V

    .line 136
    .end local v1    # "sizeCoef":F
    goto :goto_0

    .line 137
    :cond_0
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v2}, Lcom/itextpdf/barcodes/Barcode1D;->getBarHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/barcodes/Barcode1D;->setBarHeight(F)V

    .line 139
    :goto_0
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/Barcode1D;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v16

    .line 140
    .local v16, "eanR":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 141
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v1, v14, v15, v12}, Lcom/itextpdf/barcodes/Barcode1D;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 144
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    iget v10, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->n:F

    add-float/2addr v1, v10

    float-to-double v10, v1

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    iget-object v13, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v13}, Lcom/itextpdf/barcodes/Barcode1D;->getBarHeight()F

    move-result v13

    sub-float/2addr v1, v13

    float-to-double v8, v1

    move-object/from16 v1, p1

    move-wide/from16 v17, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v12, v17

    invoke-virtual/range {v1 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 145
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    move-object/from16 v2, p3

    invoke-virtual {v1, v14, v15, v2}, Lcom/itextpdf/barcodes/Barcode1D;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1
.end method
