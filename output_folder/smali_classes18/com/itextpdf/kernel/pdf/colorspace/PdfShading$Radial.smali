.class public Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;
.super Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;
.source "PdfShading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Radial"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x45911cae7e2c7d6dL


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "pdfDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 573
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 574
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;FFF[FFFF[F)V
    .locals 15
    .param p1, "cs"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p2, "x0"    # F
    .param p3, "y0"    # F
    .param p4, "r0"    # F
    .param p5, "color0"    # [F
    .param p6, "x1"    # F
    .param p7, "y1"    # F
    .param p8, "r1"    # F
    .param p9, "color1"    # [F

    .line 595
    move-object v7, p0

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    const/4 v1, 0x3

    move-object/from16 v8, p1

    invoke-direct {p0, v0, v1, v8}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;ILcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V

    .line 597
    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->setCoords(FFFFFF)V

    .line 598
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;

    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v10, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfArray;

    move-object/from16 v1, p5

    invoke-direct {v12, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    new-instance v13, Lcom/itextpdf/kernel/pdf/PdfArray;

    move-object/from16 v2, p9

    invoke-direct {v13, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v3, 0x1

    invoke-direct {v14, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    const/4 v11, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfNumber;)V

    .line 600
    .local v0, "func":Lcom/itextpdf/kernel/pdf/function/PdfFunction;
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->setFunction(Lcom/itextpdf/kernel/pdf/function/PdfFunction;)V

    .line 601
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;FFF[FFFF[F[Z)V
    .locals 2
    .param p1, "cs"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p2, "x0"    # F
    .param p3, "y0"    # F
    .param p4, "r0"    # F
    .param p5, "color0"    # [F
    .param p6, "x1"    # F
    .param p7, "y1"    # F
    .param p8, "r1"    # F
    .param p9, "color1"    # [F
    .param p10, "extend"    # [Z

    .line 624
    invoke-direct/range {p0 .. p9}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;FFF[FFFF[F)V

    .line 626
    if-eqz p10, :cond_0

    array-length v0, p10

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 629
    const/4 v0, 0x0

    aget-boolean v0, p10, v0

    const/4 v1, 0x1

    aget-boolean v1, p10, v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->setExtend(ZZ)V

    .line 630
    return-void

    .line 627
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extend"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/function/PdfFunction;)V
    .locals 2
    .param p1, "cs"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p2, "coords"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p3, "function"    # Lcom/itextpdf/kernel/pdf/function/PdfFunction;

    .line 646
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;ILcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V

    .line 647
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->setCoords(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 648
    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->setFunction(Lcom/itextpdf/kernel/pdf/function/PdfFunction;)V

    .line 649
    return-void
.end method


# virtual methods
.method public getCoords()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 662
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Coords:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 3

    .line 705
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Domain:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 706
    .local v0, "domain":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 707
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    move-object v0, v1

    .line 708
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->setDomain(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 710
    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getExtend()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 3

    .line 742
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Extend:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 743
    .local v0, "extend":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 744
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v2, 0x2

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([Z)V

    move-object v0, v1

    .line 745
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->setExtend(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 747
    :cond_0
    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public setCoords(FFFFFF)V
    .locals 3
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "r0"    # F
    .param p4, "x1"    # F
    .param p5, "y1"    # F
    .param p6, "r1"    # F

    .line 680
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x6

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    const/4 v2, 0x4

    aput p5, v1, v2

    const/4 v2, 0x5

    aput p6, v1, v2

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->setCoords(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 681
    return-void
.end method

.method public setCoords(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2
    .param p1, "coords"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 694
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Coords:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 695
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 696
    return-void
.end method

.method public setDomain(FF)V
    .locals 3
    .param p1, "t0"    # F
    .param p2, "t1"    # F

    .line 721
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->setDomain(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 722
    return-void
.end method

.method public setDomain(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2
    .param p1, "domain"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 731
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Domain:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 732
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 733
    return-void
.end method

.method public setExtend(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2
    .param p1, "extend"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 768
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Extend:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 769
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 770
    return-void
.end method

.method public setExtend(ZZ)V
    .locals 3
    .param p1, "extendStart"    # Z
    .param p2, "extendEnd"    # Z

    .line 757
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x2

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    const/4 v2, 0x1

    aput-boolean p2, v1, v2

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([Z)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Radial;->setExtend(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 758
    return-void
.end method
