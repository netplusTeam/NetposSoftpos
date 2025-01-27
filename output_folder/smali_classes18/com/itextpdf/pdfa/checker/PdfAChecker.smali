.class public abstract Lcom/itextpdf/pdfa/checker/PdfAChecker;
.super Ljava/lang/Object;
.source "PdfAChecker.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ICC_COLOR_SPACE_CMYK:Ljava/lang/String; = "CMYK"

.field public static final ICC_COLOR_SPACE_GRAY:Ljava/lang/String; = "GRAY"

.field public static final ICC_COLOR_SPACE_RGB:Ljava/lang/String; = "RGB "

.field public static final ICC_DEVICE_CLASS_MONITOR_PROFILE:Ljava/lang/String; = "mntr"

.field public static final ICC_DEVICE_CLASS_OUTPUT_PROFILE:Ljava/lang/String; = "prtr"

.field public static final maxGsStackDepth:I = 0x1c

.field private static final serialVersionUID:J = -0x7ed413112a3ee31cL


# instance fields
.field protected checkedObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field protected checkedObjectsColorspace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;",
            ">;"
        }
    .end annotation
.end field

.field protected cmykIsUsed:Z

.field protected conformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field private fullCheckMode:Z

.field protected grayIsUsed:Z

.field protected gsStackDepth:I

.field protected pdfAOutputIntentColorSpace:Ljava/lang/String;

.field protected rgbIsUsed:Z


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V
    .locals 2
    .param p1, "conformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->gsStackDepth:I

    .line 136
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->rgbIsUsed:Z

    .line 137
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->cmykIsUsed:Z

    .line 138
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->grayIsUsed:Z

    .line 149
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjects:Ljava/util/Set;

    .line 150
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjectsColorspace:Ljava/util/Map;

    .line 152
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->fullCheckMode:Z

    .line 155
    iput-object p1, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->conformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 156
    return-void
.end method

.method private checkAnnotations(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 4
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 619
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Annots:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 620
    .local v0, "annots":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v0, :cond_1

    .line 621
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 622
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 623
    .local v2, "annot":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0, v2}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkAnnotation(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 624
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 625
    .local v3, "action":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v3, :cond_0

    .line 626
    invoke-virtual {p0, v3}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkAction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 621
    .end local v2    # "annot":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "action":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private checkArrayRecursively(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 3
    .param p1, "array"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 568
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 569
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 570
    .local v1, "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 568
    .end local v1    # "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private checkDictionaryRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 4
    .param p1, "dictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 577
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 578
    .local v1, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 579
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 580
    .local v2, "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirect()Z

    move-result v3

    if-nez v3, :cond_0

    .line 581
    invoke-virtual {p0, v2}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 583
    .end local v1    # "name":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v2    # "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_0
    goto :goto_0

    .line 584
    :cond_1
    return-void
.end method

.method protected static checkFlag(II)Z
    .locals 1
    .param p0, "flags"    # I
    .param p1, "flag"    # I

    .line 498
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkOpenAction(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1
    .param p1, "openAction"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 613
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkAction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 616
    :cond_0
    return-void
.end method

.method private checkOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 4
    .param p1, "catalogDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 633
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Outlines:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 634
    .local v0, "outlines":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_1

    .line 635
    invoke-direct {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 636
    .local v2, "outline":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 637
    .local v3, "action":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v3, :cond_0

    .line 638
    invoke-virtual {p0, v3}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkAction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 640
    .end local v2    # "outline":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "action":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    goto :goto_0

    .line 642
    :cond_1
    return-void
.end method

.method private checkPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 6
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 593
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 595
    .local v0, "pageDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 597
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPageObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 598
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 599
    .local v1, "pageResources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 600
    invoke-direct {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkAnnotations(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 601
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPageSize(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 602
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPageTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 604
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStreamCount()I

    move-result v2

    .line 605
    .local v2, "contentStreamCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 606
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v4

    .line 607
    .local v4, "contentStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {p0, v4}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 608
    iget-object v5, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjects:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 605
    .end local v4    # "contentStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 610
    .end local v3    # "j":I
    :cond_1
    return-void
.end method

.method private checkPages(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 587
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 588
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private checkResourcesOfAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V
    .locals 4
    .param p1, "appearanceStreamsDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 550
    .local p2, "checkedObjects":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    return-void

    .line 553
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 556
    .local v1, "val":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v2, v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v2, :cond_2

    .line 557
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 558
    .local v2, "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isDictionary()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 559
    invoke-direct {p0, v2, p2}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkResourcesOfAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    goto :goto_1

    .line 560
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isStream()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 561
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p0, v3}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkAppearanceStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 564
    .end local v1    # "val":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v2    # "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    :goto_1
    goto :goto_0

    .line 565
    :cond_3
    return-void
.end method

.method protected static checkStructure(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Z
    .locals 1
    .param p0, "conformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 502
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_1A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_2A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->PDF_A_3A:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/List;
    .locals 3
    .param p1, "item"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation

    .line 645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v0, "outlines":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 649
    .local v1, "processItem":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 650
    invoke-direct {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 652
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 653
    if-eqz v1, :cond_1

    .line 654
    invoke-direct {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 657
    :cond_1
    return-object v0
.end method

.method private getPdfAOutputIntent(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 3
    .param p1, "outputIntents"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 670
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 671
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 672
    .local v1, "outputIntentSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->GTS_PDFA1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    return-object v2

    .line 670
    .end local v1    # "outputIntentSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static isContainsTransparencyGroup(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 3
    .param p0, "dictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 515
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Group:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Transparency:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Group:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 516
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 515
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setCheckerOutputIntent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "outputIntent"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 681
    if-eqz p1, :cond_0

    .line 682
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DestOutputProfile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    .line 683
    .local v0, "destOutputProfile":Lcom/itextpdf/kernel/pdf/PdfStream;
    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/io/colors/IccProfile;->getIccColorSpaceName([B)Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, "intentCS":Ljava/lang/String;
    iput-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    .line 688
    .end local v0    # "destOutputProfile":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v1    # "intentCS":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setPdfAOutputIntentColorSpace(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "catalog"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 661
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OutputIntents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 662
    .local v0, "outputIntents":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 663
    return-void

    .line 665
    :cond_0
    invoke-direct {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->getPdfAOutputIntent(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 666
    .local v1, "pdfAOutputIntent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-direct {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->setCheckerOutputIntent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 667
    return-void
.end method


# virtual methods
.method protected abstract checkAction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkAnnotation(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected checkAppearanceStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1
    .param p1, "appearanceStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 542
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    return-void

    .line 546
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 547
    return-void
.end method

.method public abstract checkCanvasStack(C)V
.end method

.method protected abstract checkCatalogValidEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method public abstract checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "currentColorSpaces"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "fill"    # Ljava/lang/Boolean;
    .param p4, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 324
    return-void
.end method

.method public abstract checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V
.end method

.method protected abstract checkColorsUsages()V
.end method

.method protected checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 0
    .param p1, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 406
    return-void
.end method

.method protected checkContentStreamObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 0
    .param p1, "object"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 415
    return-void
.end method

.method public checkDocument(Lcom/itextpdf/kernel/pdf/PdfCatalog;)V
    .locals 2
    .param p1, "catalog"    # Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 167
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 168
    .local v0, "catalogDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-direct {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->setPdfAOutputIntentColorSpace(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 170
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkOutputIntents(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkMetaData(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 172
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkCatalogValidEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 173
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkTrailer(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkLogicalStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 175
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkForm(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 176
    invoke-direct {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 177
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPages(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 178
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OpenAction:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkOpenAction(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 179
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkColorsUsages()V

    .line 180
    return-void
.end method

.method public abstract checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 0
    .param p1, "extGState"    # Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    .param p2, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 365
    return-void
.end method

.method protected abstract checkFileSpec(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method public abstract checkFont(Lcom/itextpdf/kernel/font/PdfFont;)V
.end method

.method public checkFontGlyphs(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 0
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p2, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 386
    return-void
.end method

.method protected abstract checkForm(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;)V
.end method

.method protected abstract checkImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method public abstract checkInlineImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkLogicalStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkMetaData(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkNonSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V
.end method

.method protected abstract checkOutputIntents(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkPageObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkPageSize(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected checkPageTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "pageDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "pageResources"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 397
    return-void
.end method

.method protected abstract checkPdfArray(Lcom/itextpdf/kernel/pdf/PdfArray;)V
.end method

.method protected abstract checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method protected abstract checkPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)V
.end method

.method protected abstract checkPdfNumber(Lcom/itextpdf/kernel/pdf/PdfNumber;)V
.end method

.method public checkPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 3
    .param p1, "obj"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 198
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 206
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfString(Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 207
    goto :goto_0

    .line 223
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 224
    .local v0, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 225
    invoke-direct {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkDictionaryRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    .line 203
    .end local v0    # "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :pswitch_3
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfNumber(Lcom/itextpdf/kernel/pdf/PdfNumber;)V

    .line 204
    goto :goto_0

    .line 200
    :pswitch_4
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 201
    goto :goto_0

    .line 214
    :pswitch_5
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 215
    .local v0, "dict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 216
    .local v1, "type":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Filespec:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkFileSpec(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 219
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 220
    invoke-direct {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkDictionaryRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 221
    goto :goto_0

    .line 209
    .end local v0    # "dict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "type":Lcom/itextpdf/kernel/pdf/PdfName;
    :pswitch_6
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 210
    .local v0, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPdfArray(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 211
    invoke-direct {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkArrayRecursively(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 212
    nop

    .line 228
    .end local v0    # "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract checkPdfStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
.end method

.method protected abstract checkPdfString(Lcom/itextpdf/kernel/pdf/PdfString;)V
.end method

.method public abstract checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V
.end method

.method protected checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 10
    .param p1, "resources"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 451
    if-nez p1, :cond_0

    .line 452
    return-void

    .line 454
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 455
    .local v0, "xObjects":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Shading:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 456
    .local v1, "shadings":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 458
    .local v2, "patterns":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_5

    .line 459
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 460
    .local v4, "xObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v5, v4

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 461
    .local v5, "xObjStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    const/4 v6, 0x0

    .line 462
    .local v6, "subtype":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->isFlushed()Z

    move-result v7

    .line 463
    .local v7, "isFlushed":Z
    if-nez v7, :cond_1

    .line 464
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    .line 467
    :cond_1
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Image:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    .line 470
    :cond_2
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Form:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 471
    invoke-virtual {p0, v5}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_2

    .line 469
    :cond_3
    :goto_1
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 473
    .end local v4    # "xObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v5    # "xObjStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v6    # "subtype":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v7    # "isFlushed":Z
    :cond_4
    :goto_2
    goto :goto_0

    .line 476
    :cond_5
    if-eqz v1, :cond_7

    .line 477
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 478
    .local v4, "shading":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v5, v4

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 479
    .local v5, "shadingDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0, v5}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 480
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v6

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 482
    .end local v4    # "shading":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v5    # "shadingDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_6
    goto :goto_3

    .line 485
    :cond_7
    if-eqz v2, :cond_9

    .line 486
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 487
    .local v4, "p":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 488
    move-object v5, v4

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 489
    .local v5, "pStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {p0, v5}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 490
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 493
    .end local v4    # "p":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v5    # "pStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_8
    goto :goto_4

    .line 495
    :cond_9
    return-void
.end method

.method protected checkResourcesOfAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1
    .param p1, "appearanceStreamsDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 533
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkResourcesOfAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    .line 534
    return-void
.end method

.method public checkSinglePage(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 0
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 188
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 189
    return-void
.end method

.method protected abstract checkSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V
.end method

.method public checkTagStructureElement(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1
    .param p1, "obj"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 281
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method protected abstract checkTrailer(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method public abstract checkXrefTable(Lcom/itextpdf/kernel/pdf/PdfXrefTable;)V
.end method

.method protected abstract getAllowedNamedActions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end method

.method public getConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->conformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v0
.end method

.method protected abstract getForbiddenActions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getMaxNumberOfIndirectObjects()J
.end method

.method protected isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 1
    .param p1, "dictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 520
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x1

    return v0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public isFullCheckMode()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->fullCheckMode:Z

    return v0
.end method

.method public objectIsChecked(Lcom/itextpdf/kernel/pdf/PdfObject;)Z
    .locals 1
    .param p1, "object"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 269
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->checkedObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setFullCheckMode(Z)V
    .locals 0
    .param p1, "fullCheckMode"    # Z

    .line 258
    iput-boolean p1, p0, Lcom/itextpdf/pdfa/checker/PdfAChecker;->fullCheckMode:Z

    .line 259
    return-void
.end method
