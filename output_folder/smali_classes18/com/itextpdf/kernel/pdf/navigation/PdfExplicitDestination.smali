.class public Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
.super Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
.source "PdfExplicitDestination.java"


# static fields
.field private static final serialVersionUID:J = -0x15092702c73cfce2L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 73
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 74
    return-void
.end method

.method private add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 4
    .param p1, "value"    # F

    .line 366
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 369
    :cond_0
    return-object p0
.end method

.method private add(I)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 2
    .param p1, "value"    # I

    .line 373
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 374
    return-object p0
.end method

.method private add(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 1
    .param p1, "type"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 384
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 385
    return-object p0
.end method

.method private add(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 2
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 379
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 380
    return-object p0
.end method

.method public static create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 1
    .param p0, "pageNum"    # I
    .param p1, "type"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F
    .param p5, "top"    # F
    .param p6, "zoom"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    new-instance v0, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;-><init>()V

    add-int/lit8 p0, p0, -0x1

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(I)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    invoke-direct {v0, p3}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    invoke-direct {v0, p4}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    invoke-direct {v0, p5}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    invoke-direct {v0, p6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 1
    .param p0, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p1, "type"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F
    .param p5, "top"    # F
    .param p6, "zoom"    # F

    .line 335
    new-instance v0, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;-><init>()V

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    invoke-direct {v0, p3}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    invoke-direct {v0, p4}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    invoke-direct {v0, p5}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    invoke-direct {v0, p6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFit(I)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "pageNum"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fit:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move v0, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFit(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 122
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fit:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitB(I)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "pageNum"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitB:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move v0, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitB(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 244
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitB:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitBH(IF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "pageNum"    # I
    .param p1, "top"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitBH:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitBH(Lcom/itextpdf/kernel/pdf/PdfPage;F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p1, "top"    # F

    .line 272
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitBH:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitBV(IF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "pageNum"    # I
    .param p1, "left"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitBV:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitBV(Lcom/itextpdf/kernel/pdf/PdfPage;F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p1, "left"    # F

    .line 301
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitBV:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitH(IF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "pageNum"    # I
    .param p1, "top"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitH:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitH(Lcom/itextpdf/kernel/pdf/PdfPage;F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p1, "top"    # F

    .line 150
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitH:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitR(IFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "pageNum"    # I
    .param p1, "left"    # F
    .param p2, "bottom"    # F
    .param p3, "right"    # F
    .param p4, "top"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitR:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v6, 0x7fc00000    # Float.NaN

    move v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitR(Lcom/itextpdf/kernel/pdf/PdfPage;FFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p1, "left"    # F
    .param p2, "bottom"    # F
    .param p3, "right"    # F
    .param p4, "top"    # F

    .line 212
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitR:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitV(IF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "pageNum"    # I
    .param p1, "left"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitV:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitV(Lcom/itextpdf/kernel/pdf/PdfPage;F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p1, "left"    # F

    .line 179
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitV:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createXYZ(IFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "pageNum"    # I
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "zoom"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XYZ:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move v0, p0

    move v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createXYZ(Lcom/itextpdf/kernel/pdf/PdfPage;FFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;
    .locals 7
    .param p0, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "zoom"    # F

    .line 92
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XYZ:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->create(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDestinationPage(Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/PdfObject;"
        }
    .end annotation

    .line 78
    .local p1, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 362
    const/4 v0, 0x0

    return v0
.end method
