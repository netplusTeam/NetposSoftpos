.class public Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
.super Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
.source "PdfStructureDestination.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 0
    .param p1, "structureDestination"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 61
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 62
    return-void
.end method

.method private add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 4
    .param p1, "value"    # F

    .line 130
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 133
    :cond_0
    return-object p0
.end method

.method private add(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 1
    .param p1, "type"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 145
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 146
    return-object p0
.end method

.method private add(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 2
    .param p1, "elem"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 137
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 141
    return-object p0

    .line 138
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Structure element referenced by a structure destination shall be an indirect object."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 1
    .param p0, "elem"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .param p1, "type"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F
    .param p5, "top"    # F
    .param p6, "zoom"    # F

    .line 101
    new-instance v0, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;-><init>()V

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    invoke-direct {v0, p3}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    invoke-direct {v0, p4}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    invoke-direct {v0, p5}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    invoke-direct {v0, p6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFit(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7
    .param p0, "elem"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 73
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fit:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitB(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7
    .param p0, "elem"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 89
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitB:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitBH(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7
    .param p0, "elem"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .param p1, "top"    # F

    .line 93
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitBH:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitBV(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7
    .param p0, "elem"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .param p1, "left"    # F

    .line 97
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitBH:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitH(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7
    .param p0, "elem"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .param p1, "top"    # F

    .line 77
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitH:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitR(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;FFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7
    .param p0, "elem"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .param p1, "left"    # F
    .param p2, "bottom"    # F
    .param p3, "right"    # F
    .param p4, "top"    # F

    .line 85
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitR:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createFitV(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7
    .param p0, "elem"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .param p1, "left"    # F

    .line 81
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitV:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    return-object v0
.end method

.method public static createXYZ(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;FFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7
    .param p0, "elem"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "zoom"    # F

    .line 69
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XYZ:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDestinationPage(Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 7
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

    .line 106
    .local p1, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 107
    .local v0, "firstObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 108
    new-instance v2, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-object v4, v0

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 110
    .local v2, "structElem":Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object v4

    .line 111
    .local v4, "kids":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    goto :goto_1

    :cond_0
    move-object v5, v3

    .line 112
    .local v5, "firstKid":Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;
    :goto_1
    instance-of v6, v5, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    if-eqz v6, :cond_1

    .line 113
    move-object v1, v5

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPageObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    return-object v1

    .line 114
    :cond_1
    instance-of v6, v5, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz v6, :cond_2

    .line 115
    move-object v2, v5

    check-cast v2, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 119
    .end local v4    # "kids":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;>;"
    .end local v5    # "firstKid":Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;
    goto :goto_0

    .line 121
    .end local v2    # "structElem":Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    :cond_2
    return-object v3
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 126
    const/4 v0, 0x0

    return v0
.end method
