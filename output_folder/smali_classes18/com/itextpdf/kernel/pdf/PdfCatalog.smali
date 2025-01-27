.class public Lcom/itextpdf/kernel/pdf/PdfCatalog;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfCatalog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final OutlineRoot:Ljava/lang/String; = "Outlines"

.field private static final PAGE_LAYOUTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAGE_MODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x12cc640d8220718aL


# instance fields
.field protected nameTrees:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/PdfNameTree;",
            ">;"
        }
    .end annotation
.end field

.field protected ocProperties:Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

.field private outlineMode:Z

.field private outlines:Lcom/itextpdf/kernel/pdf/PdfOutline;

.field protected pageLabels:Lcom/itextpdf/kernel/pdf/PdfNumTree;

.field private final pageTree:Lcom/itextpdf/kernel/pdf/PdfPagesTree;

.field private pagesWithOutlines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 73
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->LOGGER:Lorg/slf4j/Logger;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v2, v1, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->UseNone:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->UseOutlines:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->UseThumbs:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FullScreen:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->UseOC:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->UseAttachments:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 105
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 104
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->PAGE_MODES:Ljava/util/Set;

    .line 108
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v1, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->SinglePage:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v1, v4

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OneColumn:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v1, v5

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->TwoColumnLeft:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v1, v6

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->TwoColumnRight:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v1, v7

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->TwoPageLeft:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v1, v8

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->TwoPageRight:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v1, v9

    .line 109
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->PAGE_LAYOUTS:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 118
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->nameTrees:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pagesWithOutlines:Ljava/util/Map;

    .line 119
    if-eqz p1, :cond_0

    .line 122
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->ensureObjectIsAddedToDocument(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 123
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Catalog:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 124
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setForbidRelease()V

    .line 125
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;-><init>(Lcom/itextpdf/kernel/pdf/PdfCatalog;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pageTree:Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    .line 126
    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Document has no PDF Catalog object."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 135
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 136
    return-void
.end method

.method private addOutlineToPage(Lcom/itextpdf/kernel/pdf/PdfOutline;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;)V
    .locals 5
    .param p1, "outline"    # Lcom/itextpdf/kernel/pdf/PdfOutline;
    .param p2, "item"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 699
    .local p3, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Dest:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 700
    .local v0, "dest":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_0

    .line 701
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->makeDestination(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v1

    .line 702
    .local v1, "destination":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->setDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    .line 703
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addOutlineToPage(Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Map;)V

    .line 704
    .end local v1    # "destination":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    goto :goto_0

    .line 706
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 707
    .local v1, "action":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_1

    .line 708
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 710
    .local v2, "actionType":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->GoTo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 712
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 713
    .local v3, "destObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v3, :cond_1

    .line 715
    invoke-static {v3}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->makeDestination(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v4

    .line 716
    .local v4, "destination":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfOutline;->setDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    .line 717
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addOutlineToPage(Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Map;)V

    .line 722
    .end local v1    # "action":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "actionType":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v3    # "destObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "destination":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    :cond_1
    :goto_0
    return-void
.end method

.method private addOutlineToPage(Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Map;)V
    .locals 7
    .param p1, "outline"    # Lcom/itextpdf/kernel/pdf/PdfOutline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 635
    .local p2, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getDestination()Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getDestinationPage(Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 636
    .local v0, "pageObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    if-eqz v1, :cond_0

    .line 637
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 639
    .local v1, "pageNumber":I
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 645
    goto :goto_0

    .line 640
    :catch_0
    move-exception v3

    .line 641
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    const/4 v0, 0x0

    .line 642
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfCatalog;->LOGGER:Lorg/slf4j/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 643
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 642
    const-string v5, "Outline destination page number {0} is out of bounds"

    invoke-static {v5, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 648
    .end local v1    # "pageNumber":I
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 649
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pagesWithOutlines:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 650
    .local v1, "outs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfOutline;>;"
    if-nez v1, :cond_1

    .line 651
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 652
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pagesWithOutlines:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    .end local v1    # "outs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfOutline;>;"
    :cond_2
    return-void
.end method

.method private constructOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;)V
    .locals 8
    .param p1, "outlineRoot"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 728
    .local p2, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    if-nez p1, :cond_0

    .line 729
    return-void

    .line 731
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 732
    .local v0, "first":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    move-object v1, v0

    .line 735
    .local v1, "current":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 737
    .local v2, "parentOutlineMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfOutline;>;"
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfOutline;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    const-string v5, "Outlines"

    invoke-direct {v3, v5, p1, v4}, Lcom/itextpdf/kernel/pdf/PdfOutline;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->outlines:Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 738
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->outlines:Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 739
    .local v3, "parentOutline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    :goto_0
    if-eqz v1, :cond_2

    .line 742
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 743
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 744
    .local v4, "next":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 746
    .local v5, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 747
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfOutline;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Title:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfOutline;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfOutline;)V

    .line 748
    .local v6, "currentOutline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    invoke-direct {p0, v6, v1, p2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addOutlineToPage(Lcom/itextpdf/kernel/pdf/PdfOutline;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;)V

    .line 749
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getAllChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    if-eqz v0, :cond_1

    .line 752
    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    :cond_1
    invoke-direct {p0, v0, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getNextOutline(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 756
    .end local v6    # "currentOutline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    goto :goto_0

    .line 757
    .end local v4    # "next":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v5    # "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    return-void
.end method

.method private getNextOutline(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1
    .param p1, "first"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "next"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "parent"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 665
    if-eqz p1, :cond_0

    .line 666
    return-object p1

    .line 667
    :cond_0
    if-eqz p2, :cond_1

    .line 668
    return-object p2

    .line 670
    :cond_1
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getParentNextOutline(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method private getParentNextOutline(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 3
    .param p1, "parent"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 682
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 683
    return-object v0

    .line 685
    :cond_0
    const/4 v1, 0x0

    .line 686
    .local v1, "current":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_1
    if-nez v1, :cond_2

    .line 687
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 688
    if-nez v1, :cond_1

    .line 689
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 690
    if-nez p1, :cond_1

    .line 691
    return-object v0

    .line 695
    :cond_2
    return-object v1
.end method

.method private isEqualSameNameDestExist(Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfPage;)Z
    .locals 9
    .param p2, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p3, "srcDestName"    # Ljava/lang/String;
    .param p4, "srcDestArray"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p5, "oldPage"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ")Z"
        }
    .end annotation

    .line 620
    .local p1, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getNameTree(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNameTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getNames()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 621
    .local v0, "sameNameDest":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v1, 0x0

    .line 622
    .local v1, "equalSameNameDestExists":Z
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 623
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    .line 624
    .local v3, "existingDestPageRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    .line 625
    .local v4, "newDestPageRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-ne v5, v7, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    move v1, v5

    if-eqz v5, :cond_2

    .line 626
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 627
    if-eqz v1, :cond_1

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {p4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    move v1, v7

    .line 626
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 631
    .end local v3    # "existingDestPageRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v4    # "newDestPageRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v5    # "i":I
    :cond_2
    return v1
.end method


# virtual methods
.method public addDeveloperExtension(Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;)V
    .locals 5
    .param p1, "extension"    # Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    .line 359
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Extensions:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 361
    .local v0, "extensions":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 362
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v0, v1

    .line 363
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Extensions:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->getPrefix()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 366
    .local v1, "existingExtensionDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_2

    .line 367
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->getBaseVersion()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->BaseVersion:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->compareTo(Lcom/itextpdf/kernel/pdf/PdfName;)I

    move-result v2

    .line 368
    .local v2, "diff":I
    if-gez v2, :cond_1

    .line 369
    return-void

    .line 370
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->getExtensionLevel()I

    move-result v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ExtensionLevel:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    .line 371
    .end local v2    # "diff":I
    .local v3, "diff":I
    if-gtz v3, :cond_2

    .line 372
    return-void

    .line 376
    .end local v1    # "existingExtensionDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "diff":I
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->getPrefix()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->getDeveloperExtensions()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 377
    return-void
.end method

.method addNameToNameTree(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p3, "treeType"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 477
    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getNameTree(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNameTree;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->addEntry(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 478
    return-void
.end method

.method addNamedDestination(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 466
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addNameToNameTree(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 467
    return-void
.end method

.method addRootOutline(Lcom/itextpdf/kernel/pdf/PdfOutline;)V
    .locals 2
    .param p1, "outline"    # Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 556
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->outlineMode:Z

    if-nez v0, :cond_0

    .line 557
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pagesWithOutlines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 560
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Outlines:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getContent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 562
    :cond_1
    return-void
.end method

.method copyDestination(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    .locals 17
    .param p1, "dest"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p3, "toDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")",
            "Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;"
        }
    .end annotation

    .line 565
    .local p2, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    move-object/from16 v0, p1

    move-object/from16 v7, p3

    const/4 v1, 0x0

    .line 566
    .local v1, "d":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    .line 567
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v2, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 568
    .local v2, "pageObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 569
    .local v4, "oldPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    if-ne v5, v2, :cond_0

    .line 571
    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 572
    .local v3, "copiedArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v5, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    invoke-direct {v5, v3}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    move-object v1, v5

    .line 573
    goto :goto_1

    .line 575
    .end local v3    # "copiedArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v4    # "oldPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    :cond_0
    goto :goto_0

    .line 576
    .end local v2    # "pageObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_1
    :goto_1
    move-object/from16 v9, p0

    move-object/from16 v3, p2

    goto/16 :goto_6

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    :cond_3
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    move-object/from16 v9, p0

    invoke-virtual {v9, v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getNameTree(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNameTree;

    move-result-object v10

    .line 578
    .local v10, "destsTree":Lcom/itextpdf/kernel/pdf/PdfNameTree;
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getNames()Ljava/util/Map;

    move-result-object v11

    .line 579
    .local v11, "dests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v12, v2

    .line 580
    .local v12, "srcDestName":Ljava/lang/String;
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 581
    .local v13, "srcDestArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v13, :cond_9

    .line 582
    invoke-virtual {v13, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 583
    .restart local v2    # "pageObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v3, v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    if-eqz v3, :cond_5

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v14, v2

    goto :goto_3

    .line 583
    :cond_5
    move-object v14, v2

    .line 585
    .end local v2    # "pageObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    .local v14, "pageObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 586
    .local v15, "oldPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    if-ne v3, v14, :cond_7

    .line 587
    new-instance v2, Lcom/itextpdf/kernel/pdf/navigation/PdfStringDestination;

    invoke-direct {v2, v12}, Lcom/itextpdf/kernel/pdf/navigation/PdfStringDestination;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v2

    .line 588
    .end local v1    # "d":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    .local v16, "d":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    move-object v5, v13

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->isEqualSameNameDestExist(Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfPage;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 590
    invoke-virtual {v13, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 594
    .local v1, "copiedArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    move-object/from16 v3, p2

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 595
    invoke-virtual {v7, v12, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNamedDestination(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 596
    .end local v1    # "copiedArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_5

    .line 588
    :cond_6
    move-object/from16 v3, p2

    .line 602
    .end local v10    # "destsTree":Lcom/itextpdf/kernel/pdf/PdfNameTree;
    .end local v11    # "dests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v12    # "srcDestName":Ljava/lang/String;
    .end local v13    # "srcDestArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v14    # "pageObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v15    # "oldPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    :goto_5
    move-object/from16 v1, v16

    goto :goto_6

    .line 586
    .end local v16    # "d":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    .local v1, "d":Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    .restart local v10    # "destsTree":Lcom/itextpdf/kernel/pdf/PdfNameTree;
    .restart local v11    # "dests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .restart local v12    # "srcDestName":Ljava/lang/String;
    .restart local v13    # "srcDestArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v14    # "pageObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v15    # "oldPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    :cond_7
    move-object/from16 v3, p2

    .line 599
    .end local v15    # "oldPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    goto :goto_4

    .line 585
    :cond_8
    move-object/from16 v3, p2

    goto :goto_6

    .line 581
    .end local v14    # "pageObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_9
    move-object/from16 v3, p2

    .line 602
    .end local v10    # "destsTree":Lcom/itextpdf/kernel/pdf/PdfNameTree;
    .end local v11    # "dests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v12    # "srcDestName":Ljava/lang/String;
    .end local v13    # "srcDestArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_6
    return-object v1
.end method

.method fillAndGetOcPropertiesDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->ocProperties:Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    if-eqz v0, :cond_0

    .line 607
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->fillDictionary(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 608
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->ocProperties:Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->ocProperties:Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_1

    .line 612
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 613
    .local v0, "pdfDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 614
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 616
    .end local v0    # "pdfDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2

    .line 188
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 189
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "PdfCatalog cannot be flushed manually"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public getCollection()Lcom/itextpdf/kernel/pdf/collection/PdfCollection;
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Collection:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 387
    .local v0, "collectionDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    .line 388
    new-instance v1, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v1

    .line 390
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    return-object v0
.end method

.method public getLang()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Lang:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getNameTree(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNameTree;
    .locals 2
    .param p1, "treeType"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 306
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->nameTrees:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfNameTree;

    .line 307
    .local v0, "tree":Lcom/itextpdf/kernel/pdf/PdfNameTree;
    if-nez v0, :cond_0

    .line 308
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNameTree;

    invoke-direct {v1, p0, p1}, Lcom/itextpdf/kernel/pdf/PdfNameTree;-><init>(Lcom/itextpdf/kernel/pdf/PdfCatalog;Lcom/itextpdf/kernel/pdf/PdfName;)V

    move-object v0, v1

    .line 309
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->nameTrees:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    return-object v0
.end method

.method public getOCProperties(Z)Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;
    .locals 3
    .param p1, "createIfNotExists"    # Z

    .line 158
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->ocProperties:Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    if-eqz v0, :cond_0

    .line 159
    return-object v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 162
    .local v0, "ocPropertiesDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 166
    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->ocProperties:Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    goto :goto_0

    .line 167
    :cond_2
    if-eqz p1, :cond_3

    .line 168
    new-instance v1, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->ocProperties:Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    .line 171
    .end local v0    # "ocPropertiesDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->ocProperties:Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    return-object v0
.end method

.method getOutlines(Z)Lcom/itextpdf/kernel/pdf/PdfOutline;
    .locals 4
    .param p1, "updateOutlines"    # Z

    .line 488
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->outlines:Lcom/itextpdf/kernel/pdf/PdfOutline;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 489
    return-object v0

    .line 490
    :cond_0
    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->clear()V

    .line 492
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pagesWithOutlines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 495
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->outlineMode:Z

    .line 496
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getNameTree(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNameTree;

    move-result-object v0

    .line 498
    .local v0, "destsTree":Lcom/itextpdf/kernel/pdf/PdfNameTree;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Outlines:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 499
    .local v1, "outlineRoot":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v1, :cond_3

    .line 500
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v2

    if-nez v2, :cond_2

    .line 501
    const/4 v2, 0x0

    return-object v2

    .line 503
    :cond_2
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfOutline;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfOutline;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->outlines:Lcom/itextpdf/kernel/pdf/PdfOutline;

    goto :goto_0

    .line 505
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getNames()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->constructOutlines(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;)V

    .line 508
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->outlines:Lcom/itextpdf/kernel/pdf/PdfOutline;

    return-object v2
.end method

.method public getPageLabelsTree(Z)Lcom/itextpdf/kernel/pdf/PdfNumTree;
    .locals 2
    .param p1, "createIfNotExists"    # Z

    .line 323
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pageLabels:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->PageLabels:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 324
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumTree;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->PageLabels:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumTree;-><init>(Lcom/itextpdf/kernel/pdf/PdfCatalog;Lcom/itextpdf/kernel/pdf/PdfName;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pageLabels:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pageLabels:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    return-object v0
.end method

.method public getPageLayout()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 271
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->PageLayout:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public getPageMode()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->PageMode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pageTree:Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    return-object v0
.end method

.method getPagesWithOutlines()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            ">;>;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pagesWithOutlines:Ljava/util/Map;

    return-object v0
.end method

.method public getViewerPreferences()Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 2

    .line 291
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ViewerPreferences:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 292
    .local v0, "viewerPreferences":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    .line 293
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v1

    .line 295
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method hasOutlines()Z
    .locals 2

    .line 517
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Outlines:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    return v0
.end method

.method protected isOCPropertiesMayHaveChanged()Z
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->ocProperties:Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isOutlineMode()Z
    .locals 1

    .line 526
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->outlineMode:Z

    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 432
    const/4 v0, 0x1

    return v0
.end method

.method public put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;
    .locals 1
    .param p1, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "value"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 413
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 414
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 415
    return-object p0
.end method

.method public remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfCatalog;
    .locals 1
    .param p1, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 425
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 426
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 427
    return-object p0
.end method

.method removeOutlines(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 2
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 535
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 536
    return-void

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->hasOutlines()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getOutlines(Z)Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 540
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pagesWithOutlines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pagesWithOutlines:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pagesWithOutlines:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 543
    .local v1, "outline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->removeOutline()V

    .line 544
    .end local v1    # "outline":Lcom/itextpdf/kernel/pdf/PdfOutline;
    goto :goto_0

    .line 548
    :cond_1
    return-void
.end method

.method public setAdditionalAction(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)Lcom/itextpdf/kernel/pdf/PdfCatalog;
    .locals 0
    .param p1, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "action"    # Lcom/itextpdf/kernel/pdf/action/PdfAction;

    .line 223
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->setAdditionalAction(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    .line 224
    return-object p0
.end method

.method public setCollection(Lcom/itextpdf/kernel/pdf/collection/PdfCollection;)Lcom/itextpdf/kernel/pdf/PdfCatalog;
    .locals 2
    .param p1, "collection"    # Lcom/itextpdf/kernel/pdf/collection/PdfCollection;

    .line 401
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Collection:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 402
    return-object p0
.end method

.method public setLang(Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 1
    .param p1, "lang"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 338
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Lang:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 339
    return-void
.end method

.method public setOpenAction(Lcom/itextpdf/kernel/pdf/action/PdfAction;)Lcom/itextpdf/kernel/pdf/PdfCatalog;
    .locals 2
    .param p1, "action"    # Lcom/itextpdf/kernel/pdf/action/PdfAction;

    .line 211
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OpenAction:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    return-object v0
.end method

.method public setOpenAction(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)Lcom/itextpdf/kernel/pdf/PdfCatalog;
    .locals 2
    .param p1, "destination"    # Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    .line 200
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OpenAction:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    return-object v0
.end method

.method public setPageLayout(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfCatalog;
    .locals 1
    .param p1, "pageLayout"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 259
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->PAGE_LAYOUTS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PageLayout:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    return-object v0

    .line 262
    :cond_0
    return-object p0
.end method

.method public setPageMode(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfCatalog;
    .locals 1
    .param p1, "pageMode"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 237
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfCatalog;->PAGE_MODES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PageMode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    return-object p0
.end method

.method public setViewerPreferences(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;)Lcom/itextpdf/kernel/pdf/PdfCatalog;
    .locals 2
    .param p1, "preferences"    # Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    .line 282
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ViewerPreferences:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    return-object v0
.end method
