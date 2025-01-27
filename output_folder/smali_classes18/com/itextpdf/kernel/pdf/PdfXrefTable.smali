.class public Lcom/itextpdf/kernel/pdf/PdfXrefTable;
.super Ljava/lang/Object;
.source "PdfXrefTable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INITIAL_CAPACITY:I = 0x20

.field private static final MAX_GENERATION:I = 0xffff

.field private static final freeXRefEntry:[B

.field private static final inUseXRefEntry:[B

.field private static final serialVersionUID:J = 0x39e4b27a22d41e80L


# instance fields
.field private count:I

.field private final freeReferencesLinkedList:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private readingCompleted:Z

.field private xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    nop

    .line 73
    const-string v0, "f \n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeXRefEntry:[B

    .line 74
    const-string v0, "n \n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->inUseXRefEntry:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;-><init>(I)V

    .line 89
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .param p1, "capacity"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    .line 92
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 93
    const/16 p1, 0x20

    .line 95
    :cond_0
    new-array v0, p1, [Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 96
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    .line 97
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0xffff

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 98
    return-void
.end method

.method private appendNewRefToFreeList(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V
    .locals 5
    .param p1, "reference"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 532
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 533
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 539
    .local v0, "lastFreeRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 540
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-void

    .line 534
    .end local v0    # "lastFreeRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private createSections(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Ljava/util/List;
    .locals 6
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "dropObjectsFromObjectStream"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v0, "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 459
    .local v1, "first":I
    const/4 v2, 0x0

    .line 460
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 461
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v4, v4, v3

    .line 462
    .local v4, "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    iget-object v5, p1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v5, v5, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    .line 463
    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v5

    if-eqz v5, :cond_1

    .line 464
    :cond_0
    const/4 v4, 0x0

    .line 467
    :cond_1
    if-nez v4, :cond_3

    .line 468
    if-lez v2, :cond_2

    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 474
    :cond_3
    if-lez v2, :cond_4

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 477
    :cond_4
    move v1, v3

    .line 478
    const/4 v2, 0x1

    .line 460
    .end local v4    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    .end local v3    # "i":I
    :cond_5
    if-lez v2, :cond_6

    .line 483
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_6
    return-object v0
.end method

.method private ensureCount(I)V
    .locals 1
    .param p1, "count"    # I

    .line 592
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 593
    shl-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->extendXref(I)V

    .line 595
    :cond_0
    return-void
.end method

.method private extendXref(I)V
    .locals 4
    .param p1, "capacity"    # I

    .line 598
    new-array v0, p1, [Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 599
    .local v0, "newXref":[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 601
    return-void
.end method

.method private getOffsetSize(J)I
    .locals 7
    .param p1, "startxref"    # J

    .line 494
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    const-wide v2, 0x10000000000L

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 496
    const/4 v2, 0x5

    .line 497
    .local v2, "size":I
    const-wide v3, 0xff00000000L

    .line 498
    .local v3, "mask":J
    :goto_0
    const/4 v5, 0x1

    if-le v2, v5, :cond_1

    .line 499
    and-long v5, v3, p1

    cmp-long v5, v5, v0

    if-eqz v5, :cond_0

    .line 500
    goto :goto_1

    .line 502
    :cond_0
    const/16 v5, 0x8

    shr-long/2addr v3, v5

    .line 498
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 504
    :cond_1
    :goto_1
    return v2

    .line 494
    .end local v2    # "size":I
    .end local v3    # "mask":J
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private removeFreeRefFromList(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 6
    .param p1, "freeRefObjNr"    # I

    .line 554
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 559
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 560
    return-object v0

    .line 562
    :cond_0
    if-gez p1, :cond_5

    .line 563
    const/4 v1, 0x0

    .line 564
    .local v1, "leastFreeRefObjNum":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 565
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v4

    const v5, 0xffff

    if-lt v4, v5, :cond_2

    .line 566
    goto :goto_0

    .line 568
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    .line 569
    nop

    .line 571
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    :cond_3
    if-nez v1, :cond_4

    .line 572
    return-object v0

    .line 574
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 577
    .end local v1    # "leastFreeRefObjNum":Ljava/lang/Integer;
    :cond_5
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v1, v1, p1

    .line 578
    .local v1, "freeRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v2

    if-nez v2, :cond_6

    .line 579
    return-object v0

    .line 582
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 583
    .local v0, "prevFreeRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v0, :cond_7

    .line 584
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 588
    :cond_7
    return-object v1

    .line 555
    .end local v0    # "prevFreeRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v1    # "freeRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected static writeKeyInfo(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 11
    .param p0, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 515
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    .line 516
    .local v0, "writer":Lcom/itextpdf/kernel/pdf/PdfWriter;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getFingerPrint()Lcom/itextpdf/kernel/pdf/FingerPrint;

    move-result-object v1

    .line 518
    .local v1, "fingerPrint":Lcom/itextpdf/kernel/pdf/FingerPrint;
    const-string v2, ""

    .line 519
    .local v2, "platform":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getVersionInfo()Lcom/itextpdf/kernel/VersionInfo;

    move-result-object v3

    .line 520
    .local v3, "versionInfo":Lcom/itextpdf/kernel/VersionInfo;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/VersionInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 521
    .local v4, "k":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 522
    const-string v4, "iText"

    .line 524
    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v3}, Lcom/itextpdf/kernel/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const/4 v7, 0x2

    aput-object v2, v5, v7

    const-string v7, "%{0}-{1}{2}\n"

    invoke-static {v7, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 526
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/FingerPrint;->getProducts()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/ProductInfo;

    .line 527
    .local v7, "productInfo":Lcom/itextpdf/kernel/ProductInfo;
    new-array v9, v8, [Ljava/lang/Object;

    aput-object v7, v9, v6

    const-string v10, "%{0}\n"

    invoke-static {v10, v9}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 528
    .end local v7    # "productInfo":Lcom/itextpdf/kernel/ProductInfo;
    goto :goto_0

    .line 529
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 2
    .param p1, "reference"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 107
    if-nez p1, :cond_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    .line 111
    .local v0, "objNr":I
    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    .line 112
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->ensureCount(I)V

    .line 113
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aput-object p1, v1, v0

    .line 114
    return-object p1
.end method

.method clear()V
    .locals 3

    .line 447
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    if-gt v0, v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    goto :goto_1

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 447
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    .line 454
    return-void
.end method

.method createNewIndirectReference(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 236
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;I)V

    .line 237
    .local v0, "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 238
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object v1
.end method

.method protected createNextIndirectReference(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 248
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;I)V

    .line 249
    .local v0, "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 250
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object v1
.end method

.method protected freeReference(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V
    .locals 3
    .param p1, "reference"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 259
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 264
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "An attempt is made to free an indirect reference which was already used in the flushed object. Indirect reference wasn\'t freed."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 265
    return-void

    .line 267
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 269
    .restart local v0    # "logger":Lorg/slf4j/Logger;
    const-string v1, "An attempt is made to free already flushed indirect object reference. Indirect reference wasn\'t freed."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 270
    return-void

    .line 273
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 275
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->appendNewRefToFreeList(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 277
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v0

    const v2, 0xffff

    if-ge v0, v2, :cond_3

    .line 278
    iget v0, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    .line 281
    :cond_3
    return-void
.end method

.method public get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1
    .param p1, "index"    # I

    .line 150
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    if-le p1, v0, :cond_0

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCountOfIndirectObjects()I
    .locals 6

    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, "countOfIndirectObjects":I
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 135
    .local v4, "ref":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 134
    .end local v4    # "ref":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_1
    return v0
.end method

.method initFreeReferencesList(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 10
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 179
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 182
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 183
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 184
    .local v0, "freeReferences":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 185
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v4, v4, v3

    .line 186
    .local v4, "ref":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v4    # "ref":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v3, v3, v1

    .line 192
    .local v3, "prevFreeRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :goto_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 193
    const/4 v4, -0x1

    .line 194
    .local v4, "currFreeRefObjNr":I
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v5

    const-wide/32 v7, 0x7fffffff

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    .line 195
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v5

    long-to-int v4, v5

    .line 197
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v5, v5, v4

    if-nez v5, :cond_4

    .line 198
    goto :goto_2

    .line 201
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v3, v5, v4

    .line 203
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 204
    .end local v4    # "currFreeRefObjNr":I
    goto :goto_1

    .line 206
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    const/16 v5, 0x8

    const-wide/16 v6, 0x0

    if-nez v4, :cond_a

    .line 207
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 208
    .local v4, "next":I
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v8, v8, v4

    if-nez v8, :cond_7

    .line 209
    iget-object v6, p1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v6, v6, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v6, :cond_6

    .line 210
    goto :goto_2

    .line 212
    :cond_6
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-direct {v7, p1, v4, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;II)V

    invoke-virtual {v7, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aput-object v7, v6, v4

    goto :goto_3

    .line 213
    :cond_7
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v8

    const v9, 0xffff

    if-ne v8, v9, :cond_8

    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-nez v6, :cond_8

    .line 214
    goto :goto_2

    .line 216
    :cond_8
    :goto_3
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v6

    int-to-long v8, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 217
    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 219
    :cond_9
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v3, v5, v4

    .line 221
    .end local v4    # "next":I
    goto :goto_2

    .line 223
    :cond_a
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-eqz v2, :cond_b

    .line 224
    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v2, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 226
    :cond_b
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method isReadingCompleted()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->readingCompleted:Z

    return v0
.end method

.method markReadingCompleted()V
    .locals 1

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->readingCompleted:Z

    .line 162
    return-void
.end method

.method protected setCapacity(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 289
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 290
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->extendXref(I)V

    .line 292
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected writeXrefTableAndTrailer(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 26
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "fileId"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p3, "crypto"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v4

    .line 305
    .local v4, "writer":Lcom/itextpdf/kernel/pdf/PdfWriter;
    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v5, v5, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    const/4 v6, 0x1

    if-nez v5, :cond_1

    .line 306
    iget v5, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    .local v5, "i":I
    :goto_0
    if-lez v5, :cond_1

    .line 307
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v7, v7, v5

    .line 308
    .local v7, "lastRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 309
    :cond_0
    invoke-direct {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->removeFreeRefFromList(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 310
    iget v8, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    sub-int/2addr v8, v6

    iput v8, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    .line 306
    .end local v7    # "lastRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 317
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    .line 318
    .local v5, "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->isFullCompression()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 319
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v7}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    move-object v5, v7

    .line 320
    invoke-virtual {v5, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 322
    :cond_2
    const/4 v7, 0x0

    invoke-direct {v0, v1, v7}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->createSections(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Ljava/util/List;

    move-result-object v8

    .line 323
    .local v8, "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_4

    if-eqz v5, :cond_3

    .line 324
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v10, :cond_3

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v11, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    if-ne v9, v11, :cond_3

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_3

    goto :goto_1

    :cond_3
    move v9, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v9, v6

    .line 325
    .local v9, "noModifiedObjects":Z
    :goto_2
    iget-object v11, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v11, v11, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    const/4 v12, 0x0

    if-eqz v11, :cond_5

    if-eqz v9, :cond_5

    .line 327
    iput-object v12, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 328
    return-void

    .line 331
    :cond_5
    sget-object v11, Lcom/itextpdf/kernel/pdf/IsoKey;->XREF_TABLE:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1, v0, v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V

    .line 333
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCurrentPos()J

    move-result-wide v13

    .line 334
    .local v13, "startxref":J
    const-wide/16 v15, -0x1

    .line 335
    .local v15, "xRefStmPos":J
    if-eqz v5, :cond_d

    .line 336
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->XRef:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 337
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v11, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 338
    if-eqz v3, :cond_6

    .line 339
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Encrypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v11, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 340
    :cond_6
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Size:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v10

    invoke-direct {v12, v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v5, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-direct {v0, v10, v11}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->getOffsetSize(J)I

    move-result v10

    .line 343
    .local v10, "offsetSize":I
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/itextpdf/kernel/pdf/PdfObject;

    move/from16 v18, v9

    .end local v9    # "noModifiedObjects":Z
    .local v18, "noModifiedObjects":Z
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v9, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    const/16 v17, 0x0

    aput-object v9, v7, v17

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    aput-object v9, v7, v6

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v6, 0x2

    invoke-direct {v9, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    aput-object v9, v7, v6

    .line 344
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v12, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/util/List;)V

    .line 343
    invoke-virtual {v5, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 345
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Info:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 346
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 347
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 348
    .local v6, "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 349
    .local v9, "section":Ljava/lang/Integer;
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v6, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 350
    .end local v9    # "section":Ljava/lang/Integer;
    goto :goto_3

    .line 351
    :cond_7
    iget-object v7, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v7, v7, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v7, :cond_8

    iget-object v7, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-boolean v7, v7, Lcom/itextpdf/kernel/pdf/PdfReader;->hybridXref:Z

    if-nez v7, :cond_8

    .line 353
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v9, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfReader;->getLastXref()J

    move-result-wide v11

    long-to-double v11, v11

    invoke-direct {v7, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    .line 354
    .local v7, "lastXref":Lcom/itextpdf/kernel/pdf/PdfNumber;
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v9, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 356
    .end local v7    # "lastXref":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_8
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Index:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 357
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v7

    .line 359
    .local v7, "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_c

    .line 360
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 361
    .local v11, "first":I
    add-int/lit8 v12, v9, 0x1

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 362
    .local v12, "len":I
    move/from16 v20, v11

    move-object/from16 v21, v6

    move/from16 v6, v20

    .local v6, "i":I
    .local v21, "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_5
    move-object/from16 v20, v8

    .end local v8    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v20, "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int v8, v11, v12

    if-ge v6, v8, :cond_b

    .line 363
    invoke-virtual {v7, v6}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v8

    .line 364
    .local v8, "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 365
    move-object/from16 v22, v7

    .end local v7    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .local v22, "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    move/from16 v23, v11

    const/4 v11, 0x0

    .end local v11    # "first":I
    .local v23, "first":I
    invoke-virtual {v7, v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 366
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    move/from16 v17, v12

    .end local v12    # "len":I
    .local v17, "len":I
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12, v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(JI)V

    .line 367
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v7, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(II)V

    goto :goto_6

    .line 368
    .end local v17    # "len":I
    .end local v22    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .end local v23    # "first":I
    .restart local v7    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .restart local v11    # "first":I
    .restart local v12    # "len":I
    :cond_9
    move-object/from16 v22, v7

    move/from16 v23, v11

    move/from16 v17, v12

    .end local v7    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .end local v11    # "first":I
    .end local v12    # "len":I
    .restart local v17    # "len":I
    .restart local v22    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .restart local v23    # "first":I
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v7

    if-nez v7, :cond_a

    .line 369
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 370
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12, v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(JI)V

    .line 371
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v7, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(II)V

    goto :goto_6

    .line 373
    :cond_a
    const/4 v12, 0x2

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 374
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v11

    invoke-virtual {v7, v11, v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(II)V

    .line 375
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getIndex()I

    move-result v11

    invoke-virtual {v7, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(II)V

    .line 362
    .end local v8    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move/from16 v12, v17

    move-object/from16 v8, v20

    move-object/from16 v7, v22

    move/from16 v11, v23

    goto/16 :goto_5

    .end local v17    # "len":I
    .end local v22    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .end local v23    # "first":I
    .restart local v7    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .restart local v11    # "first":I
    .restart local v12    # "len":I
    :cond_b
    move-object/from16 v22, v7

    move/from16 v23, v11

    move/from16 v17, v12

    const/4 v12, 0x2

    .line 359
    .end local v6    # "i":I
    .end local v7    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .end local v11    # "first":I
    .end local v12    # "len":I
    .restart local v22    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    add-int/lit8 v9, v9, 0x2

    move-object/from16 v8, v20

    move-object/from16 v6, v21

    goto/16 :goto_4

    .end local v20    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v22    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .local v6, "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v7    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .local v8, "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_c
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v20, v8

    .line 379
    .end local v6    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v7    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .end local v8    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "k":I
    .restart local v20    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v22    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    .line 380
    move-wide v15, v13

    move-wide v6, v15

    goto :goto_7

    .line 335
    .end local v10    # "offsetSize":I
    .end local v18    # "noModifiedObjects":Z
    .end local v20    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v22    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .restart local v8    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "noModifiedObjects":Z
    :cond_d
    move-object/from16 v20, v8

    move/from16 v18, v9

    .end local v8    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "noModifiedObjects":Z
    .restart local v18    # "noModifiedObjects":Z
    .restart local v20    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-wide v6, v15

    .line 386
    .end local v15    # "xRefStmPos":J
    .local v6, "xRefStmPos":J
    :goto_7
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->isFullCompression()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v8, v8, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v8, :cond_e

    iget-object v8, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-boolean v8, v8, Lcom/itextpdf/kernel/pdf/PdfReader;->hybridXref:Z

    if-eqz v8, :cond_e

    goto :goto_8

    :cond_e
    const/16 v24, 0x0

    goto :goto_9

    :cond_f
    :goto_8
    const/16 v24, 0x1

    :goto_9
    move/from16 v8, v24

    .line 388
    .local v8, "needsRegularXref":Z
    if-eqz v8, :cond_17

    .line 389
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCurrentPos()J

    move-result-wide v13

    .line 390
    const-string/jumbo v9, "xref\n"

    invoke-virtual {v4, v9}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v9

    .line 392
    .local v9, "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    const-wide/16 v10, -0x1

    cmp-long v12, v6, v10

    if-eqz v12, :cond_10

    .line 394
    const/4 v12, 0x1

    invoke-direct {v0, v1, v12}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->createSections(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Ljava/util/List;

    move-result-object v12

    .end local v20    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_a

    .line 392
    .end local v12    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_10
    move-object/from16 v12, v20

    .line 396
    .end local v20    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_a
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_13

    .line 397
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 398
    .local v10, "first":I
    add-int/lit8 v11, v15, 0x1

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 399
    .local v11, "len":I
    invoke-virtual {v4, v10}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v19

    check-cast v19, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v21, v5

    .end local v5    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .local v21, "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    move-object/from16 v5, v19

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v5, v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move/from16 v19, v8

    const/16 v8, 0xa

    .end local v8    # "needsRegularXref":Z
    .local v19, "needsRegularXref":Z
    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(B)V

    .line 400
    move v5, v10

    .local v5, "i":I
    :goto_c
    add-int v8, v10, v11

    if-ge v5, v8, :cond_12

    .line 401
    invoke-virtual {v9, v5}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v8

    .line 403
    .local v8, "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    move-object/from16 v22, v9

    .end local v9    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .restart local v22    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v20, v10

    .end local v10    # "first":I
    .local v20, "first":I
    const-string v10, "0000000000"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v23, v11

    .end local v11    # "len":I
    .local v23, "len":I
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 404
    .local v9, "off":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "00000"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 405
    .local v10, "gen":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/16 v16, 0xa

    add-int/lit8 v11, v11, -0xa

    move-object/from16 v24, v12

    .end local v12    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v24, "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 406
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x5

    move-object/from16 v25, v9

    .end local v9    # "off":Ljava/lang/StringBuilder;
    .local v25, "off":Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v10, v12, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 407
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 408
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeXRefEntry:[B

    invoke-virtual {v4, v9}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_d

    .line 410
    :cond_11
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->inUseXRefEntry:[B

    invoke-virtual {v4, v9}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeBytes([B)Ljava/io/OutputStream;

    .line 400
    .end local v8    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v10    # "gen":Ljava/lang/StringBuilder;
    .end local v25    # "off":Ljava/lang/StringBuilder;
    :goto_d
    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v20

    move-object/from16 v9, v22

    move/from16 v11, v23

    move-object/from16 v12, v24

    goto :goto_c

    .end local v20    # "first":I
    .end local v22    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .end local v23    # "len":I
    .end local v24    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .local v10, "first":I
    .restart local v11    # "len":I
    .restart local v12    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_12
    move-object/from16 v22, v9

    move/from16 v20, v10

    move/from16 v23, v11

    move-object/from16 v24, v12

    .line 396
    .end local v5    # "i":I
    .end local v9    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .end local v10    # "first":I
    .end local v11    # "len":I
    .end local v12    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v22    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .restart local v24    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v15, v15, 0x2

    move/from16 v8, v19

    move-object/from16 v5, v21

    const-wide/16 v10, -0x1

    goto/16 :goto_b

    .end local v19    # "needsRegularXref":Z
    .end local v21    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v22    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .end local v24    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v5, "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .local v8, "needsRegularXref":Z
    .restart local v9    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .restart local v12    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_13
    move-object/from16 v21, v5

    move/from16 v19, v8

    move-object/from16 v22, v9

    move-object/from16 v24, v12

    .line 414
    .end local v5    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v8    # "needsRegularXref":Z
    .end local v9    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .end local v12    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "k":I
    .restart local v19    # "needsRegularXref":Z
    .restart local v21    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .restart local v22    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .restart local v24    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 416
    .local v5, "trailer":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 417
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Index:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 418
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 419
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 420
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Size:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v5, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 421
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v8, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 422
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_14

    .line 423
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->XRefStm:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfNumber;

    long-to-double v10, v6

    invoke-direct {v9, v10, v11}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v5, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 425
    :cond_14
    if-eqz v3, :cond_15

    .line 426
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Encrypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v8, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 427
    :cond_15
    const-string/jumbo v8, "trailer\n"

    invoke-virtual {v4, v8}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 428
    iget-object v8, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v8, v8, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v8, :cond_16

    .line 429
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v9, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfReader;->getLastXref()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    .line 430
    .local v8, "lastXref":Lcom/itextpdf/kernel/pdf/PdfNumber;
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v9, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 432
    .end local v8    # "lastXref":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/itextpdf/kernel/pdf/PdfWriter;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 433
    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Lcom/itextpdf/kernel/pdf/PdfWriter;->write(I)V

    move-object/from16 v8, v24

    goto :goto_e

    .line 388
    .end local v19    # "needsRegularXref":Z
    .end local v21    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v22    # "xrefTable":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .end local v24    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v5, "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .local v8, "needsRegularXref":Z
    .local v20, "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_17
    move-object/from16 v21, v5

    move/from16 v19, v8

    .end local v5    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v8    # "needsRegularXref":Z
    .restart local v19    # "needsRegularXref":Z
    .restart local v21    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    move-object/from16 v8, v20

    .line 435
    .end local v20    # "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v8, "sections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->writeKeyInfo(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 436
    const-string/jumbo v5, "startxref\n"

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 437
    invoke-virtual {v5, v13, v14}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeLong(J)Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 438
    const-string v9, "\n%%EOF\n"

    invoke-virtual {v5, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 439
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 440
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->clear()V

    .line 441
    return-void
.end method
