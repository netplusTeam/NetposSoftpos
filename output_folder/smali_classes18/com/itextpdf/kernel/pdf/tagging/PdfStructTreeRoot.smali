.class public Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfStructTreeRoot.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;",
        "Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1e17a608c79e9f8cL

.field private static staticRoleNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private parentTreeHandler:Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->staticRoleNames:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 86
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 87
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 88
    if-nez p2, :cond_0

    .line 89
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->ensureObjectIsAddedToDocument(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 90
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setForbidRelease()V

    .line 93
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;-><init>(Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->parentTreeHandler:Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getRoleMap()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 3
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 81
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->StructTreeRoot:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 83
    return-void
.end method

.method public static convertRoleToPdfName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2
    .param p0, "role"    # Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->staticNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 100
    .local v0, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v0, :cond_0

    .line 101
    return-object v0

    .line 103
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->staticRoleNames:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 104
    if-eqz v0, :cond_1

    .line 105
    return-object v0

    .line 107
    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v1, p0}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 108
    sget-object v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->staticRoleNames:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-object v0
.end method

.method private flushAllKids(Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;)V
    .locals 3
    .param p1, "elem"    # Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    .line 480
    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;->getKids()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    .line 481
    .local v1, "kid":Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;
    instance-of v2, v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isFlushed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->flushAllKids(Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;)V

    .line 483
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->flush()V

    .line 485
    .end local v1    # "kid":Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;
    :cond_0
    goto :goto_0

    .line 486
    :cond_1
    return-void
.end method

.method private ifKidIsStructElementAddToList(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/List;)V
    .locals 2
    .param p1, "kid"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;",
            ">;)V"
        }
    .end annotation

    .line 489
    .local p2, "kids":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isStructElem(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addAssociatedFile(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 1
    .param p1, "fs"    # Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->addAssociatedFile(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V

    .line 438
    return-void
.end method

.method public addAssociatedFile(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "fs"    # Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    .line 410
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    const-class v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 412
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "For associated files their associated file specification dictionaries shall include the AFRelationship key."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 414
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_0
    if-eqz p1, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->EmbeddedFiles:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getNameTree(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNameTree;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->addEntry(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 418
    .local v0, "afArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_2

    .line 419
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v0, v1

    .line 420
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 422
    :cond_2
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 423
    return-void
.end method

.method public addKid(ILcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .locals 1
    .param p1, "index"    # I
    .param p2, "structElem"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 117
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->addKidObject(ILcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 118
    return-object p2
.end method

.method public addKid(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .locals 1
    .param p1, "structElem"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 113
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->addKid(ILcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    return-object v0
.end method

.method addKidObject(ILcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "structElem"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 460
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getKidsObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getKidsObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(ILcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 465
    :goto_0
    invoke-static {p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isStructElem(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 469
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 467
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Structure element dictionary shall be an indirect object in order to have children."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 472
    return-void
.end method

.method public addNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V
    .locals 2
    .param p1, "namespace"    # Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 220
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getNamespacesObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 221
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 222
    return-void
.end method

.method public addPronunciationLexicon(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 5
    .param p1, "pronunciationLexiconFileSpec"    # Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    .line 275
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->PronunciationLexicon:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 276
    .local v0, "pronunciationLexicons":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 277
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v0, v1

    .line 278
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->PronunciationLexicon:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->StructTreeRoot:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/VersionConforming;->validatePdfVersionForDictEntry(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    .line 279
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->PronunciationLexicon:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 282
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 283
    return-void
.end method

.method public addRoleMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fromRole"    # Ljava/lang/String;
    .param p2, "toRole"    # Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getRoleMap()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 169
    .local v0, "roleMap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->convertRoleToPdfName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-static {p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->convertRoleToPdfName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 170
    .local v1, "prevVal":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz v2, :cond_0

    .line 171
    const-class v2, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 172
    .local v2, "logger":Lorg/slf4j/Logger;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const-string v4, "Existing mapping for {0} in structure tree root role map was {1} and it was overwritten with {2}."

    invoke-static {v4, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 175
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isIndirect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 180
    :goto_0
    return-void
.end method

.method public copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ILjava/util/Map;)V
    .locals 1
    .param p1, "destDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "insertBeforePage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "I",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;)V"
        }
    .end annotation

    .line 364
    .local p3, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ILjava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 365
    return-void
.end method

.method public copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V
    .locals 1
    .param p1, "destDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;)V"
        }
    .end annotation

    .line 350
    .local p2, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 351
    return-void
.end method

.method public createParentTreeEntryForPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 1
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 292
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->createParentTreeEntryForPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 293
    return-void
.end method

.method public findMcrByMcid(Lcom/itextpdf/kernel/pdf/PdfDictionary;I)Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    .locals 1
    .param p1, "pageDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "mcid"    # I

    .line 315
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->findMcrByMcid(Lcom/itextpdf/kernel/pdf/PdfDictionary;I)Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    move-result-object v0

    return-object v0
.end method

.method public findObjRefByStructParentIndex(Lcom/itextpdf/kernel/pdf/PdfDictionary;I)Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;
    .locals 1
    .param p1, "pageDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "structParentIndex"    # I

    .line 319
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->findObjRefByStructParentIndex(Lcom/itextpdf/kernel/pdf/PdfDictionary;I)Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 4

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->createParentTreeEntryForPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ParentTree:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->buildParentTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 333
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ParentTreeNextKey:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNextStructParentIndex()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 334
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isAppendMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    invoke-direct {p0, p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->flushAllKids(Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;)V

    .line 337
    :cond_1
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->flush()V

    .line 338
    return-void
.end method

.method public getAssociatedFiles(Z)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 3
    .param p1, "create"    # Z

    .line 447
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 448
    .local v0, "afArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 449
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v0, v1

    .line 450
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 452
    :cond_0
    return-object v0
.end method

.method public getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public getKids()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 135
    .local v0, "k":Lcom/itextpdf/kernel/pdf/PdfObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v1, "kids":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;>;"
    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 140
    .local v2, "a":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 141
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->ifKidIsStructElementAddToList(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/List;)V

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "a":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 144
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->ifKidIsStructElementAddToList(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/List;)V

    .line 147
    :cond_2
    :goto_1
    return-object v1
.end method

.method public getKidsObject()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 4

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "k":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 153
    .local v1, "kObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    move-object v0, v1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 156
    :cond_0
    if-nez v0, :cond_1

    .line 157
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v0, v2

    .line 158
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 159
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 160
    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 164
    :cond_1
    return-object v0
.end method

.method public getNamespaces()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Namespaces:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 201
    .local v0, "namespacesArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 204
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v1, "namespacesList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 206
    new-instance v3, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public getNamespacesObject()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 5

    .line 232
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Namespaces:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 233
    .local v0, "namespacesArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 234
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v0, v1

    .line 235
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Namespaces:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->StructTreeRoot:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/VersionConforming;->validatePdfVersionForDictEntry(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    .line 236
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Namespaces:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 237
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 239
    :cond_0
    return-object v0
.end method

.method public getNextMcidForPage(Lcom/itextpdf/kernel/pdf/PdfPage;)I
    .locals 1
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 390
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->getNextMcidForPage(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v0

    return v0
.end method

.method public getPageMarkedContentReferences(Lcom/itextpdf/kernel/pdf/PdfPage;)Ljava/util/Collection;
    .locals 2
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;",
            ">;"
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->getPageMarkedContentReferences(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;

    move-result-object v0

    .line 311
    .local v0, "pageMcrs":Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getAllMcrsAsCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;
    .locals 1

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->parentTreeHandler:Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    return-object v0
.end method

.method public getParentTreeNextKey()I
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ParentTreeNextKey:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    return v0
.end method

.method public getPronunciationLexiconsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->PronunciationLexicon:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 255
    .local v0, "pronunciationLexicons":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 258
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    .local v1, "lexiconsList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 260
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->wrapFileSpecObject(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public getRole()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoleMap()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->RoleMap:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 184
    .local v0, "roleMap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 185
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v0, v1

    .line 186
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->RoleMap:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 187
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 189
    :cond_0
    return-object v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public move(Lcom/itextpdf/kernel/pdf/PdfPage;I)V
    .locals 5
    .param p1, "fromPage"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "insertBeforePage"    # I

    .line 376
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Cannot move pages in partly flushed document. Page number {0} is already flushed."

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->move(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfPage;I)V

    .line 382
    return-void
.end method

.method public savePageStructParentIndexIfNeeded(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 1
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 296
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->savePageStructParentIndexIfNeeded(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 297
    return-void
.end method
