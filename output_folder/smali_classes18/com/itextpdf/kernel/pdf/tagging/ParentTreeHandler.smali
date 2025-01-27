.class Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;
.super Ljava/lang/Object;
.source "ParentTreeHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x161e9cee0821cc39L


# instance fields
.field private pageToPageMcrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;",
            ">;"
        }
    .end annotation
.end field

.field private pageToStructParentsInd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private parentTree:Lcom/itextpdf/kernel/pdf/PdfNumTree;

.field private structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

.field private xObjectToStructParentsInd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;)V
    .locals 3
    .param p1, "structTreeRoot"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    .line 101
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumTree;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ParentTree:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumTree;-><init>(Lcom/itextpdf/kernel/pdf/PdfCatalog;Lcom/itextpdf/kernel/pdf/PdfName;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->parentTree:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->xObjectToStructParentsInd:Ljava/util/Map;

    .line 103
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->registerAllMcrs()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToStructParentsInd:Ljava/util/Map;

    .line 105
    return-void
.end method

.method private getOrCreatePageStructParentIndex(Lcom/itextpdf/kernel/pdf/PdfPage;)I
    .locals 4
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 391
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getStructParentIndex()I

    move-result v0

    .line 392
    .local v0, "structParentIndex":I
    if-gez v0, :cond_0

    .line 393
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNextStructParentIndex()I

    move-result v0

    .line 394
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->StructParents:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 396
    :cond_0
    return v0
.end method

.method private static getStm(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 3
    .param p0, "mcr"    # Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 404
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Stm:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0

    .line 407
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private registerAllMcrs()V
    .locals 10

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToPageMcrs:Ljava/util/Map;

    .line 285
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumTree;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ParentTree:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumTree;-><init>(Lcom/itextpdf/kernel/pdf/PdfCatalog;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 286
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->getNumbers()Ljava/util/Map;

    move-result-object v0

    .line 287
    .local v0, "parentTreeEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 288
    .local v1, "mcrParents":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    const/4 v2, -0x1

    .line 289
    .local v2, "maxStructParentIndex":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 290
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v2, :cond_0

    .line 291
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 294
    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 295
    .local v5, "entryValue":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 296
    move-object v6, v5

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 297
    :cond_1
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 298
    move-object v6, v5

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 299
    .local v6, "parentsArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 300
    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    .line 301
    .local v8, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v8, :cond_2

    .line 302
    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v8    # "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 306
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v5    # "entryValue":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v6    # "parentsArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v7    # "i":I
    :cond_3
    :goto_2
    goto :goto_0

    .line 307
    :cond_4
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ParentTreeNextKey:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 309
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 310
    .local v4, "mcrParent":Lcom/itextpdf/kernel/pdf/PdfObject;
    new-instance v5, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-object v6, v4

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 311
    .local v5, "mcrParentStructElem":Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    .line 312
    .local v7, "kid":Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;
    instance-of v8, v7, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    if-eqz v8, :cond_5

    .line 313
    move-object v8, v7

    check-cast v8, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->registerMcr(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Z)V

    .line 315
    .end local v7    # "kid":Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;
    :cond_5
    goto :goto_4

    .line 316
    .end local v4    # "mcrParent":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v5    # "mcrParentStructElem":Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    :cond_6
    goto :goto_3

    .line 317
    :cond_7
    return-void
.end method

.method private registerMcr(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Z)V
    .locals 8
    .param p1, "mcr"    # Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    .param p2, "registeringOnInit"    # Z

    .line 176
    const-class v0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPageIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    .line 177
    .local v1, "mcrPageIndRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v1, :cond_b

    instance-of v2, p1, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getMcid()I

    move-result v2

    if-gez v2, :cond_0

    goto/16 :goto_3

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToPageMcrs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;

    .line 183
    .local v2, "pageMcrs":Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;
    if-nez v2, :cond_1

    .line 184
    new-instance v3, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;-><init>()V

    move-object v2, v3

    .line 185
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToPageMcrs:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->getStm(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    move-object v4, v3

    .local v4, "stm":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v3, :cond_6

    .line 192
    instance-of v3, v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v3, :cond_2

    .line 193
    move-object v3, v4

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 194
    .local v3, "stmIndRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    .local v5, "xObjectStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    goto :goto_0

    .line 196
    .end local v3    # "stmIndRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v5    # "xObjectStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_2
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    if-nez v3, :cond_3

    .line 197
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 199
    :cond_3
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    .line 200
    .restart local v3    # "stmIndRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    move-object v5, v4

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 203
    .restart local v5    # "xObjectStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :goto_0
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->StructParents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v6

    .line 204
    .local v6, "structParent":Ljava/lang/Integer;
    if-eqz v6, :cond_4

    .line 205
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->xObjectToStructParentsInd:Ljava/util/Map;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 208
    :cond_4
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 209
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v7, "XObject has no StructParents entry in its stream, no entry in ParentTree will be created for the corresponding structure elements"

    invoke-interface {v0, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 211
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :goto_1
    invoke-virtual {v2, v3, p1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->putXObjectMcr(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V

    .line 212
    if-eqz p2, :cond_5

    .line 213
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->release()V

    .line 215
    .end local v3    # "stmIndRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v5    # "xObjectStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v6    # "structParent":Ljava/lang/Integer;
    :cond_5
    goto :goto_2

    :cond_6
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    if-eqz v0, :cond_9

    .line 216
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Obj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 217
    .local v0, "obj":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 221
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->StructParent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    .line 222
    .local v3, "n":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v3, :cond_7

    .line 223
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v5

    invoke-virtual {v2, v5, p1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->putObjectReferenceMcr(ILcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V

    .line 227
    .end local v0    # "obj":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "n":Lcom/itextpdf/kernel/pdf/PdfNumber;
    goto :goto_2

    .line 225
    .restart local v0    # "obj":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .restart local v3    # "n":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_7
    new-instance v5, Lcom/itextpdf/kernel/PdfException;

    const-string v6, "StructParent index not found in tagged object."

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 218
    .end local v3    # "n":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_8
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "When adding object reference to the tag tree, it must be connected to not flushed object."

    invoke-direct {v3, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    .end local v0    # "obj":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_9
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getMcid()I

    move-result v0

    invoke-virtual {v2, v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->putPageContentStreamMcr(ILcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V

    .line 231
    :goto_2
    if-nez p2, :cond_a

    .line 232
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 234
    :cond_a
    return-void

    .line 178
    .end local v2    # "pageMcrs":Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;
    .end local v4    # "stm":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_b
    :goto_3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 179
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v2, "Corrupted tag structure: encountered invalid marked content reference - it doesn\'t refer to any page or any mcid. This content reference will be ignored."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private updateStructParentTreeEntries(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;)Z
    .locals 7
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "mcrs"    # Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;

    .line 320
    const/4 v0, 0x0

    .line 322
    .local v0, "res":Z
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getObjRefs()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 323
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 324
    .local v3, "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 325
    .local v4, "parentObj":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isIndirect()Z

    move-result v5

    if-nez v5, :cond_0

    .line 326
    goto :goto_0

    .line 328
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 329
    .local v5, "structParent":I
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->parentTree:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    invoke-virtual {v6, v5, v4}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->addEntry(ILcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 330
    const/4 v0, 0x1

    .line 331
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;"
    .end local v3    # "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    .end local v4    # "parentObj":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v5    # "structParent":I
    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getPageResourceXObjects()Ljava/util/Map;

    move-result-object v1

    .line 335
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 334
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 336
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 337
    .local v3, "xObjectRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->xObjectToStructParentsInd:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 338
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->xObjectToStructParentsInd:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 339
    .local v4, "pageStructParentIndex":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {p0, v5, v4}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->updateStructParentTreeForContentStreamEntries(Ljava/util/Map;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 340
    const/4 v0, 0x1

    .line 343
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;>;"
    .end local v3    # "xObjectRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v4    # "pageStructParentIndex":I
    :cond_2
    goto :goto_1

    .line 344
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 345
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    .line 346
    .local v1, "pageRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToStructParentsInd:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 347
    return v0

    .line 349
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToStructParentsInd:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 350
    .local v1, "pageStructParentIndex":I
    goto :goto_2

    .line 351
    .end local v1    # "pageStructParentIndex":I
    :cond_5
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->getOrCreatePageStructParentIndex(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v1

    .line 353
    .restart local v1    # "pageStructParentIndex":I
    :goto_2
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getPageContentStreamsMcrs()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->updateStructParentTreeForContentStreamEntries(Ljava/util/Map;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 354
    const/4 v0, 0x1

    .line 357
    :cond_6
    return v0
.end method

.method private updateStructParentTreeForContentStreamEntries(Ljava/util/Map;I)Z
    .locals 8
    .param p2, "pageStructParentIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;",
            ">;I)Z"
        }
    .end annotation

    .line 364
    .local p1, "mcrsOfContentStream":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;"
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 365
    .local v0, "parentsOfMcrs":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v1, 0x0

    .line 366
    .local v1, "currentMcid":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 367
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 368
    .local v4, "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 369
    .local v5, "parentObj":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isIndirect()Z

    move-result v6

    if-nez v6, :cond_0

    .line 370
    goto :goto_0

    .line 374
    :cond_0
    :goto_1
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "currentMcid":I
    .local v6, "currentMcid":I
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getMcid()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 375
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    move v1, v6

    goto :goto_1

    .line 377
    :cond_1
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 378
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;"
    .end local v4    # "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    .end local v5    # "parentObj":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    move v1, v6

    goto :goto_0

    .line 380
    .end local v6    # "currentMcid":I
    .restart local v1    # "currentMcid":I
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 381
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 382
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->parentTree:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    invoke-virtual {v2, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->addEntry(ILcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 383
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/IsoKey;->TAG_STRUCTURE_ELEMENT:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v2, v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V

    .line 384
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->flush()V

    .line 385
    const/4 v2, 0x1

    return v2

    .line 387
    :cond_3
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public buildParentTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->parentTree:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->buildTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object v0
.end method

.method public createParentTreeEntryForPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 3
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 142
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->getPageMarkedContentReferences(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;

    move-result-object v0

    .line 143
    .local v0, "mcrs":Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;
    if-nez v0, :cond_0

    .line 144
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToPageMcrs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->updateStructParentTreeEntries(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 151
    :cond_1
    return-void
.end method

.method public findMcrByMcid(Lcom/itextpdf/kernel/pdf/PdfDictionary;I)Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    .locals 3
    .param p1, "pageDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "mcid"    # I

    .line 116
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToPageMcrs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;

    .line 117
    .local v0, "pageMcrs":Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getPageContentStreamsMcrs()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public findObjRefByStructParentIndex(Lcom/itextpdf/kernel/pdf/PdfDictionary;I)Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;
    .locals 3
    .param p1, "pageDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "structParentIndex"    # I

    .line 121
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToPageMcrs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;

    .line 122
    .local v0, "pageMcrs":Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getObjRefs()Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getNextMcidForPage(Lcom/itextpdf/kernel/pdf/PdfPage;)I
    .locals 2
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 126
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->getPageMarkedContentReferences(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;

    move-result-object v0

    .line 127
    .local v0, "pageMcrs":Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getPageContentStreamsMcrs()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getPageContentStreamsMcrs()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 128
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public getPageMarkedContentReferences(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;
    .locals 2
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 111
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToPageMcrs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;

    return-object v0
.end method

.method public registerMcr(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V
    .locals 1
    .param p1, "mcr"    # Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->registerMcr(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Z)V

    .line 173
    return-void
.end method

.method public savePageStructParentIndexIfNeeded(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 4
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 154
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    .line 155
    .local v0, "indRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToPageMcrs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToPageMcrs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getPageContentStreamsMcrs()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->size()I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToPageMcrs:Ljava/util/Map;

    .line 160
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getPageResourceXObjects()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 162
    .local v1, "hasNonObjRefMcr":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 163
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToStructParentsInd:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->getOrCreatePageStructParentIndex(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_3
    return-void

    .line 156
    .end local v1    # "hasNonObjRefMcr":Z
    :cond_4
    :goto_2
    return-void
.end method

.method public unregisterMcr(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V
    .locals 8
    .param p1, "mcrToUnregister"    # Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 237
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPageObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 238
    .local v0, "pageDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 241
    return-void

    .line 243
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v1

    if-nez v1, :cond_9

    .line 246
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->pageToPageMcrs:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;

    .line 247
    .local v1, "pageMcrs":Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;
    if-eqz v1, :cond_8

    .line 249
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->getStm(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v3, v2

    .local v3, "stm":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v2, :cond_3

    .line 250
    instance-of v2, v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v2, :cond_1

    move-object v2, v3

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    :goto_0
    nop

    .line 252
    .local v2, "xObjectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getPageResourceXObjects()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getMcid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getPageResourceXObjects()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 254
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getPageResourceXObjects()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->xObjectToStructParentsInd:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 258
    .end local v2    # "xObjectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    goto/16 :goto_3

    :cond_3
    instance-of v2, p1, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    if-eqz v2, :cond_7

    .line 259
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Obj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 260
    .local v2, "obj":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 261
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->StructParent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    .line 262
    .local v4, "n":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v4, :cond_4

    .line 263
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getObjRefs()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 265
    return-void

    .line 268
    .end local v4    # "n":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_4
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getObjRefs()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 269
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    if-ne v6, v7, :cond_5

    .line 270
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getObjRefs()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 272
    goto :goto_2

    .line 274
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;"
    :cond_5
    goto :goto_1

    .line 275
    .end local v2    # "obj":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_6
    :goto_2
    goto :goto_3

    .line 276
    :cond_7
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;->getPageContentStreamsMcrs()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getMcid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 280
    .end local v3    # "stm":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_8
    :goto_3
    return-void

    .line 244
    .end local v1    # "pageMcrs":Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler$PageMcrsContainer;
    :cond_9
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Cannot remove marked content reference, because its page has been already flushed."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
