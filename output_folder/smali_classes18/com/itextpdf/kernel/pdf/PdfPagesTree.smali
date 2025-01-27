.class Lcom/itextpdf/kernel/pdf/PdfPagesTree;
.super Ljava/lang/Object;
.source "PdfPagesTree.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final serialVersionUID:J = 0x3a24194b0463d164L


# instance fields
.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private generated:Z

.field private final leafSize:I

.field private pageRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation
.end field

.field private parents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPages;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/itextpdf/kernel/pdf/PdfPages;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    nop

    .line 72
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfCatalog;)V
    .locals 5
    .param p1, "pdfCatalog"    # Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0xa

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->leafSize:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->generated:Z

    .line 80
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    .line 84
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 86
    .local v1, "pages":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_1

    .line 88
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfPages;

    const v4, 0x7fffffff

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(IILcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPages;)V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 89
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    .end local v1    # "pages":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    goto :goto_1

    .line 87
    .restart local v1    # "pages":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Invalid page structure. /Pages must be PdfDictionary."

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    .end local v1    # "pages":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 96
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfPages;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v2, v0, v3}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(ILcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :goto_1
    return-void
.end method

.method private correctPdfPagesFromProperty(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "correction"    # I

    .line 483
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfPages;->correctFrom(I)V

    .line 483
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private findPageParent(I)I
    .locals 4
    .param p1, "pageNum"    # I

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "low":I
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 471
    .local v1, "high":I
    :goto_0
    if-eq v0, v1, :cond_1

    .line 472
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    .line 473
    .local v2, "middle":I
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfPages;->compareTo(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 474
    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    .line 476
    :cond_0
    move v0, v2

    .line 478
    .end local v2    # "middle":I
    :goto_1
    goto :goto_0

    .line 479
    :cond_1
    return v0
.end method

.method private internalRemovePage(I)Z
    .locals 6
    .param p1, "pageNum"    # I

    .line 445
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->findPageParent(I)I

    move-result v0

    .line 446
    .local v0, "parentIndex":I
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 447
    .local v1, "pdfPages":Lcom/itextpdf/kernel/pdf/PdfPages;
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfPages;->removePage(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 448
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 450
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->removeFromParent()V

    .line 451
    add-int/lit8 v0, v0, -0x1

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 454
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 455
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfPages;

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v4, v3, v5}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(ILcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->correctPdfPagesFromProperty(II)V

    .line 459
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 460
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 461
    const/4 v2, 0x1

    return v2

    .line 463
    :cond_2
    return v3
.end method

.method private loadPage(I)V
    .locals 14
    .param p1, "pageNum"    # I

    .line 333
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 334
    .local v0, "targetPage":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v0, :cond_0

    .line 335
    return-void

    .line 338
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->findPageParent(I)I

    move-result v1

    .line 339
    .local v1, "parentIndex":I
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 340
    .local v2, "parent":Lcom/itextpdf/kernel/pdf/PdfPages;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPages;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 341
    .local v3, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    const-string v4, "Invalid page structure {0}."

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_e

    .line 344
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v7

    .line 348
    .local v7, "kidsCount":I
    const/4 v8, 0x0

    .line 351
    .local v8, "findPdfPages":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 352
    invoke-virtual {v3, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    .line 355
    .local v10, "page":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v10, :cond_4

    .line 358
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    .line 359
    .local v11, "pageKids":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v11, :cond_2

    .line 360
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 361
    const/4 v8, 0x1

    goto :goto_1

    .line 364
    :cond_1
    new-instance v12, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v12, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    new-array v4, v6, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v12, v4}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v4

    throw v4

    .line 367
    :cond_2
    :goto_1
    iget-object v12, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfReader;->isMemorySavingMode()Z

    move-result v12

    if-eqz v12, :cond_3

    if-nez v8, :cond_3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPages;->getFrom()I

    move-result v12

    add-int/2addr v12, v9

    if-eq v12, p1, :cond_3

    .line 368
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->release()V

    .line 351
    .end local v10    # "page":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v11    # "pageKids":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 356
    .restart local v10    # "page":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_4
    new-instance v11, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v11, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    new-array v4, v6, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v11, v4}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v4

    throw v4

    .line 371
    .end local v9    # "i":I
    .end local v10    # "page":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_5
    if-eqz v8, :cond_b

    .line 375
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    .local v4, "newParents":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfPages;>;"
    const/4 v5, 0x0

    .line 377
    .local v5, "lastPdfPages":Lcom/itextpdf/kernel/pdf/PdfPages;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_9

    if-lez v7, :cond_9

    .line 385
    invoke-virtual {v3, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    .line 386
    .local v10, "pdfPagesObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v11

    if-nez v11, :cond_7

    .line 390
    if-nez v5, :cond_6

    .line 392
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPages;->getFrom()I

    move-result v12

    iget-object v13, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v11, v12, v13, v2}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(ILcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfPages;)V

    move-object v5, v11

    .line 393
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 394
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 398
    :cond_6
    invoke-virtual {v3, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 399
    add-int/lit8 v9, v9, -0x1

    .line 403
    :goto_3
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPages;->decrementCount()V

    .line 404
    invoke-virtual {v5, v10}, Lcom/itextpdf/kernel/pdf/PdfPages;->addPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 405
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 409
    :cond_7
    if-nez v5, :cond_8

    .line 410
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPages;->getFrom()I

    move-result v11

    goto :goto_4

    .line 411
    :cond_8
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfPages;->getFrom()I

    move-result v11

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v12

    add-int/2addr v11, v12

    :goto_4
    nop

    .line 412
    .local v11, "from":I
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-direct {v12, v11, v7, v10, v2}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(IILcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPages;)V

    move-object v5, v12

    .line 413
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v12

    sub-int/2addr v7, v12

    .line 377
    .end local v10    # "pdfPagesObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v11    # "from":I
    :goto_5
    add-int/2addr v9, v6

    goto :goto_2

    .line 417
    .end local v9    # "i":I
    :cond_9
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 418
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    .restart local v9    # "i":I
    :goto_6
    if-ltz v9, :cond_a

    .line 419
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v1, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 418
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 424
    .end local v9    # "i":I
    :cond_a
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->loadPage(I)V

    .line 425
    .end local v4    # "newParents":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfPages;>;"
    .end local v5    # "lastPdfPages":Lcom/itextpdf/kernel/pdf/PdfPages;
    goto :goto_9

    .line 426
    :cond_b
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPages;->getFrom()I

    move-result v4

    .line 431
    .local v4, "from":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v9

    if-ge v6, v9, :cond_d

    .line 432
    invoke-virtual {v3, v6, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    .line 433
    .local v9, "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v10, v9, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v10, :cond_c

    .line 434
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    add-int v11, v4, v6

    move-object v12, v9

    check-cast v12, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 436
    :cond_c
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    add-int v11, v4, v6

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 431
    .end local v9    # "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 441
    .end local v4    # "from":I
    .end local v6    # "i":I
    :cond_d
    :goto_9
    return-void

    .line 342
    .end local v7    # "kidsCount":I
    .end local v8    # "findPdfPages":Z
    :cond_e
    new-instance v7, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v7, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    new-array v4, v6, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "pdfPage"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 225
    add-int/lit8 p1, p1, -0x1

    .line 226
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 229
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->addPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 230
    return-void

    .line 232
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->loadPage(I)V

    .line 233
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 234
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->findPageParent(I)I

    move-result v0

    .line 235
    .local v0, "parentIndex":I
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 236
    .local v1, "parentPages":Lcom/itextpdf/kernel/pdf/PdfPages;
    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPages;->addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)Z

    .line 237
    iput-object v1, p2, Lcom/itextpdf/kernel/pdf/PdfPage;->parentPages:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 238
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->correctPdfPagesFromProperty(II)V

    .line 239
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 240
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 241
    return-void

    .line 227
    .end local v0    # "parentIndex":I
    .end local v1    # "parentPages":Lcom/itextpdf/kernel/pdf/PdfPages;
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 4
    .param p1, "pdfPage"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 193
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    .local v0, "pdfPages":Lcom/itextpdf/kernel/pdf/PdfPages;
    goto :goto_0

    .line 199
    .end local v0    # "pdfPages":Lcom/itextpdf/kernel/pdf/PdfPages;
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->loadPage(I)V

    .line 200
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfPages;

    .restart local v0    # "pdfPages":Lcom/itextpdf/kernel/pdf/PdfPages;
    goto :goto_0

    .line 203
    .end local v0    # "pdfPages":Lcom/itextpdf/kernel/pdf/PdfPages;
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 204
    .restart local v0    # "pdfPages":Lcom/itextpdf/kernel/pdf/PdfPages;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 205
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getFrom()I

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(ILcom/itextpdf/kernel/pdf/PdfDocument;)V

    move-object v0, v1

    .line 206
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 212
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->addPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 213
    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/PdfPage;->parentPages:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 214
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method protected clearPageRefs()V
    .locals 1

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    .line 315
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    .line 316
    return-void
.end method

.method protected findPageParent(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfPages;
    .locals 3
    .param p1, "pdfPage"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 327
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 328
    .local v0, "pageNum":I
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->findPageParent(I)I

    move-result v1

    .line 329
    .local v1, "parentIndex":I
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfPages;

    return-object v2
.end method

.method protected generateTree()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 10

    .line 279
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 281
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->generated:Z

    if-nez v0, :cond_6

    .line 284
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v0, "nextParents":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfPages;>;"
    const/16 v2, 0xa

    .line 289
    .local v2, "dynamicLeafSize":I
    const/4 v3, 0x0

    .line 290
    .local v3, "current":Lcom/itextpdf/kernel/pdf/PdfPages;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 291
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 292
    .local v5, "pages":Lcom/itextpdf/kernel/pdf/PdfPages;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v6

    .line 293
    .local v6, "pageCount":I
    rem-int v7, v4, v2

    if-nez v7, :cond_1

    .line 294
    if-gt v6, v1, :cond_0

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 297
    :cond_0
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfPages;

    const/4 v8, -0x1

    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(ILcom/itextpdf/kernel/pdf/PdfDocument;)V

    move-object v3, v7

    .line 298
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    const/16 v2, 0xa

    .line 302
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 303
    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfPages;->addPages(Lcom/itextpdf/kernel/pdf/PdfPages;)V

    .line 290
    .end local v5    # "pages":Lcom/itextpdf/kernel/pdf/PdfPages;
    .end local v6    # "pageCount":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 302
    .restart local v5    # "pages":Lcom/itextpdf/kernel/pdf/PdfPages;
    .restart local v6    # "pageCount":I
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 305
    .end local v4    # "i":I
    .end local v5    # "pages":Lcom/itextpdf/kernel/pdf/PdfPages;
    .end local v6    # "pageCount":I
    :cond_3
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    .line 306
    .end local v0    # "nextParents":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfPages;>;"
    .end local v2    # "dynamicLeafSize":I
    .end local v3    # "current":Lcom/itextpdf/kernel/pdf/PdfPages;
    goto :goto_0

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfPages;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 309
    :cond_5
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->generated:Z

    .line 310
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0

    .line 282
    :cond_6
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "PdfPages tree could be generated only once."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_7
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Document has no pages."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 8
    .param p1, "pageNum"    # I

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getNumberOfPages()I

    move-result v2

    if-gt p1, v2, :cond_3

    .line 112
    add-int/lit8 p1, p1, -0x1

    .line 113
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 114
    .local v2, "pdfPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    if-nez v2, :cond_2

    .line 115
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->loadPage(I)V

    .line 116
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Page tree is broken. Failed to retrieve page number {0}. Null will be returned."

    if-eqz v3, :cond_1

    .line 117
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->findPageParent(I)I

    move-result v3

    .line 118
    .local v3, "parentIndex":I
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    .line 119
    .local v5, "pageObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v6, v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v6, :cond_0

    .line 120
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageFactory()Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    move-result-object v0

    move-object v1, v5

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-interface {v0, v1}, Lcom/itextpdf/kernel/pdf/IPdfPageFactory;->createPdfPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    .line 121
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfPages;

    iput-object v0, v2, Lcom/itextpdf/kernel/pdf/PdfPage;->parentPages:Lcom/itextpdf/kernel/pdf/PdfPages;

    goto :goto_0

    .line 123
    :cond_0
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->LOGGER:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v0

    invoke-static {v4, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 125
    .end local v3    # "parentIndex":I
    .end local v5    # "pageObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_0
    goto :goto_1

    .line 126
    :cond_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->LOGGER:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-static {v4, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 128
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_2
    return-object v2

    .line 110
    .end local v2    # "pdfPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    :cond_3
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Requested page number {0} is out of bounds."

    invoke-static {v0, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2
    .param p1, "pageDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 140
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result v0

    .line 141
    .local v0, "pageNum":I
    if-lez v0, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    return-object v1

    .line 145
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPageNumber(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 4
    .param p1, "pageDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 170
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 171
    .local v0, "pageNum":I
    if-ltz v0, :cond_0

    .line 172
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 174
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 175
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 176
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->loadPage(I)V

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 174
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I
    .locals 1
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 162
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected getParents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPages;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    return-object v0
.end method

.method protected getRoot()Lcom/itextpdf/kernel/pdf/PdfPages;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    return-object v0
.end method

.method releasePage(I)V
    .locals 4
    .param p1, "pageNumber"    # I

    .line 264
    add-int/lit8 p1, p1, -0x1

    .line 265
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    .line 266
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    .line 267
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getIndex()I

    move-result v0

    if-ltz v0, :cond_1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_1
    return-void
.end method

.method public removePage(I)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 3
    .param p1, "pageNum"    # I

    .line 252
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 253
    .local v0, "pdfPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "The page requested to be removed has already been flushed."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 256
    :cond_0
    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->internalRemovePage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    return-object v0

    .line 259
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
