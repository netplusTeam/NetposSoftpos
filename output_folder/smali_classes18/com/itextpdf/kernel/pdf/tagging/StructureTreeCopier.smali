.class Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;
.super Ljava/lang/Object;
.source "StructureTreeCopier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;,
        Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;,
        Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;
    }
.end annotation


# static fields
.field private static ignoreKeysForClone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private static ignoreKeysForCopy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    .line 79
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Obj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->NS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAllParentsToSet(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Ljava/util/Set;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 3
    .param p0, "mcr"    # Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;"
        }
    .end annotation

    .line 593
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->retrieveParents(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Z)Ljava/util/List;

    move-result-object v1

    .line 594
    .local v1, "allParents":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 595
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    :goto_0
    return-object v0
.end method

.method private static cloneParents(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 6
    .param p0, "structElem"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p1, "lastCloned"    # Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 571
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eq v0, p0, :cond_1

    .line 572
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 573
    .local v0, "structElemClone":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    move-object v1, v0

    .line 574
    .local v1, "currClone":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    move-object v2, p0

    .line 575
    .local v2, "currElem":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_0
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eq v3, v4, :cond_0

    .line 576
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 577
    .local v3, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 578
    .local v4, "parentClone":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v5, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 579
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 580
    move-object v1, v4

    .line 581
    move-object v2, v3

    .line 582
    .end local v3    # "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v4    # "parentClone":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_0

    .line 583
    :cond_0
    iget-object v3, p1, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v4, -0x1

    invoke-static {v3, v4, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKidObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;ILcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 584
    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 585
    iput-object p0, p1, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 587
    .end local v0    # "structElemClone":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "currClone":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "currElem":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_1
    return-void
.end method

.method private static copyNamespaceDict(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 12
    .param p0, "srcNsDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p1, "copyingParams"    # Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;

    .line 465
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->RoleMapNS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 466
    .local v0, "excludeKeys":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    .line 467
    .local v1, "toDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 468
    .local v3, "copiedNsDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->addCopiedNamespace(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 470
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->RoleMapNS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 472
    .local v4, "srcRoleMapNs":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->RoleMapNS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 473
    .local v5, "copiedRoleMap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    .line 474
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v5, v6

    .line 475
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->RoleMapNS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v6, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 477
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 479
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 480
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 481
    .local v8, "srcMappingArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    invoke-virtual {v8, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 482
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v9}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 483
    .local v9, "copiedMappingArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v8, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 484
    invoke-virtual {v8, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyNamespaceDict(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    .line 485
    .local v10, "copiedNamespace":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 486
    nop

    .line 487
    .end local v10    # "copiedNamespace":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .local v9, "copiedMapping":Lcom/itextpdf/kernel/pdf/PdfObject;
    nop

    .line 492
    .end local v8    # "srcMappingArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_1

    .line 488
    .end local v9    # "copiedMapping":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v8    # "srcMappingArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_0
    const-class v9, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;

    invoke-static {v9}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v9

    .line 489
    .local v9, "logger":Lorg/slf4j/Logger;
    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    const-string v11, "Role mapping for \"{0}\" from source document is not copied. Mapping to namespace is in an invalid form (should be [PdfName, PdfDictionary])."

    invoke-static {v11, v10}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 490
    goto :goto_0

    .line 493
    .end local v8    # "srcMappingArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v9    # "logger":Lorg/slf4j/Logger;
    :cond_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    .line 495
    .local v9, "copiedMapping":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 496
    .local v8, "copiedRoleFrom":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {v5, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 497
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v8    # "copiedRoleFrom":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v9    # "copiedMapping":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto/16 :goto_0

    .line 500
    :cond_2
    return-object v3
.end method

.method private static copyObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 8
    .param p0, "source"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p1, "destPage"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "parentChangePg"    # Z
    .param p3, "copyingParams"    # Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;

    .line 351
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->isCopyFromDestDocument()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 353
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 354
    .local v0, "copied":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isIndirect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 358
    :cond_0
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 359
    .local v3, "pg":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v3, :cond_2

    .line 360
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->isCopyFromDestDocument()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    if-eq v3, p1, :cond_1

    .line 362
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v4, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 363
    const/4 p2, 0x1

    goto :goto_0

    .line 365
    :cond_1
    const/4 p2, 0x0

    .line 369
    .end local v3    # "pg":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    :goto_0
    goto :goto_2

    .line 370
    .end local v0    # "copied":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_3
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    sget-object v3, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    invoke-virtual {p0, v0, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 372
    .restart local v0    # "copied":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Obj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 373
    .local v3, "obj":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v3, :cond_4

    .line 377
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    new-array v5, v2, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v6, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 378
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Obj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v4, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 381
    :cond_4
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->NS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 382
    .local v4, "nsDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v4, :cond_5

    .line 383
    invoke-static {v4, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyNamespaceDict(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 384
    .local v5, "copiedNsDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->NS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v6, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 387
    .end local v5    # "copiedNsDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_5
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 388
    .local v5, "pg":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v5, :cond_7

    .line 389
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getPage2page()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 390
    .local v6, "pageAnalog":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v6, :cond_6

    .line 391
    move-object v6, p1

    .line 392
    const/4 p2, 0x1

    goto :goto_1

    .line 394
    :cond_6
    const/4 p2, 0x0

    .line 396
    :goto_1
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v7, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 400
    .end local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v4    # "nsDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v5    # "pg":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v6    # "pageAnalog":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_7
    :goto_2
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 401
    .local v3, "k":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v3, :cond_d

    .line 402
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 403
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 404
    .local v4, "kArr":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 405
    .local v5, "newArr":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 406
    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7, v0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyObjectKid(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    .line 407
    .local v7, "copiedKid":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v7, :cond_8

    .line 408
    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 405
    .end local v7    # "copiedKid":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 411
    .end local v6    # "i":I
    :cond_9
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 412
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v6

    if-ne v6, v2, :cond_a

    .line 413
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_4

    .line 415
    :cond_a
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 418
    .end local v4    # "kArr":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v5    # "newArr":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_b
    :goto_4
    goto :goto_5

    .line 419
    :cond_c
    invoke-static {v3, v0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyObjectKid(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 420
    .local v1, "copiedKid":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_d

    .line 421
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 425
    .end local v1    # "copiedKid":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_d
    :goto_5
    return-object v0
.end method

.method private static copyObjectKid(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 8
    .param p0, "kid"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p1, "copiedParent"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "destPage"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "parentChangePg"    # Z
    .param p4, "copyingParams"    # Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;

    .line 429
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 430
    if-nez p3, :cond_4

    .line 431
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    move-result-object v0

    new-instance v1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrNumber;

    move-object v2, p0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    new-instance v3, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-direct {v3, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrNumber;-><init>(Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .line 432
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->registerMcr(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V

    .line 433
    return-object p0

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 437
    .local v0, "kidAsDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getObjectsToCopy()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 438
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    .line 439
    .local v2, "hasParent":Z
    invoke-static {v0, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 440
    .local v3, "copiedKid":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v2, :cond_1

    .line 441
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 444
    :cond_1
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Obj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 445
    new-instance v4, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    new-instance v5, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-direct {v5, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-direct {v4, v3, v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .line 446
    .local v4, "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Obj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 447
    .local v5, "contentItemObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Link:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 448
    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 450
    return-object v1

    .line 452
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StructParent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNextStructParentIndex()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v5, v1, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 453
    .end local v5    # "contentItemObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_0

    .line 454
    .end local v4    # "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    :cond_3
    new-instance v1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;

    new-instance v4, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-direct {v4, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    move-object v4, v1

    .line 456
    .restart local v4    # "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    :goto_0
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->registerMcr(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V

    .line 458
    .end local v4    # "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    :goto_1
    return-object v3

    .line 461
    .end local v0    # "kidAsDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "hasParent":Z
    .end local v3    # "copiedKid":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_4
    return-object v1
.end method

.method private static copyStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;
    .locals 12
    .param p0, "destDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "callingDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p3, "copyFromDestDocument"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Z)",
            "Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;"
        }
    .end annotation

    .line 304
    .local p1, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    if-eqz p3, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 305
    .local v0, "fromDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 306
    .local v1, "topsToFirstDestPage":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 307
    .local v2, "objectsToCopy":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 308
    .local v3, "page2pageDictionaries":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 309
    .local v5, "page":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPageMarkedContentReferences(Lcom/itextpdf/kernel/pdf/PdfPage;)Ljava/util/Collection;

    move-result-object v6

    .line 311
    .local v6, "mcrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;"
    if-eqz v6, :cond_5

    .line 312
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 313
    .local v8, "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    instance-of v9, v8, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;

    if-nez v9, :cond_1

    instance-of v9, v8, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    if-eqz v9, :cond_2

    .line 314
    :cond_1
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_2
    invoke-static {v8, v2}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->addAllParentsToSet(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Ljava/util/Set;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v9

    .line 317
    .local v9, "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v9, :cond_4

    .line 318
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v10

    if-nez v10, :cond_3

    .line 321
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 322
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 319
    :cond_3
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v7, "Cannot copy flushed tag."

    invoke-direct {v4, v7}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 325
    .end local v8    # "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    .end local v9    # "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_4
    :goto_3
    goto :goto_2

    .line 327
    .end local v5    # "page":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .end local v6    # "mcrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;"
    :cond_5
    goto :goto_1

    .line 329
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v4, "topsInOriginalOrder":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getKids()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    .line 331
    .local v6, "kid":Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;
    if-nez v6, :cond_7

    goto :goto_4

    .line 333
    :cond_7
    move-object v7, v6

    check-cast v7, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 334
    .local v7, "kidObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 335
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v6    # "kid":Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;
    .end local v7    # "kidObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_8
    goto :goto_4

    .line 338
    :cond_9
    new-instance v5, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;

    invoke-direct {v5, v2, p0, v3, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;-><init>(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Z)V

    .line 339
    .local v5, "structElemCopyingParams":Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v6

    .line 340
    .local v6, "destStructTreeRoot":Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;
    invoke-virtual {v6, p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 341
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v7, "copiedTops":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 343
    .restart local v9    # "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11, v5}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    .line 344
    .local v10, "copied":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v9    # "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v10    # "copied":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_5

    .line 346
    :cond_a
    new-instance v8, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getCopiedNamespaces()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;-><init>(Ljava/util/List;Ljava/util/Set;)V

    return-object v8
.end method

.method public static copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ILjava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p0, "destDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "insertBeforePage"    # I
    .param p3, "callingDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "I",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")V"
        }
    .end annotation

    .line 119
    .local p2, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ILjava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V

    .line 123
    return-void
.end method

.method private static copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ILjava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V
    .locals 1
    .param p0, "destDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "insertBeforePage"    # I
    .param p3, "callingDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p4, "copyFromDestDocument"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "I",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Z)V"
        }
    .end annotation

    .line 249
    .local p2, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;I)I

    move-result v0

    .line 254
    .local v0, "insertIndex":I
    if-lez v0, :cond_1

    .line 255
    invoke-static {p0, p2, p3, p4, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;ZI)V

    .line 257
    :cond_1
    return-void
.end method

.method public static copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p0, "destDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "callingDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")V"
        }
    .end annotation

    .line 99
    .local p1, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V

    .line 103
    return-void
.end method

.method private static copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V
    .locals 1
    .param p0, "destDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "callingDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p3, "copyFromDestDocument"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Z)V"
        }
    .end annotation

    .line 267
    .local p1, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;ZI)V

    .line 268
    return-void
.end method

.method private static copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;ZI)V
    .locals 11
    .param p0, "destDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "callingDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p3, "copyFromDestDocument"    # Z
    .param p4, "insertIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "ZI)V"
        }
    .end annotation

    .line 271
    .local p1, "page2page":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;

    move-result-object v0

    .line 272
    .local v0, "copiedStructure":Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v1

    .line 273
    .local v1, "destStructTreeRoot":Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;
    invoke-virtual {v1, p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 274
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;->getTopsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 275
    .local v3, "copied":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v1, p4, v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->addKidObject(ILcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 276
    const/4 v4, -0x1

    if-le p4, v4, :cond_0

    .line 277
    add-int/lit8 p4, p4, 0x1

    .line 279
    .end local v3    # "copied":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    goto :goto_0

    .line 281
    :cond_1
    if-nez p3, :cond_5

    .line 282
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;->getCopiedNamespaces()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 283
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getNamespacesObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;->getCopiedNamespaces()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->addAll(Ljava/util/Collection;)V

    .line 286
    :cond_2
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getRoleMap()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 287
    .local v2, "srcRoleMap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getRoleMap()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 288
    .local v3, "destRoleMap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 289
    .local v5, "mappingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 290
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v3, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_2

    .line 292
    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, "srcMapping":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, "destMapping":Ljava/lang/String;
    const-class v8, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;

    invoke-static {v8}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v8

    .line 297
    .local v8, "logger":Lorg/slf4j/Logger;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    const-string v10, "Role mapping \"{0}\" from source document is not copied. Destination document already has \"{1}\" mapping."

    invoke-static {v10, v9}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 299
    .end local v5    # "mappingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v6    # "srcMapping":Ljava/lang/String;
    .end local v7    # "destMapping":Ljava/lang/String;
    .end local v8    # "logger":Lorg/slf4j/Logger;
    :cond_4
    :goto_2
    goto/16 :goto_1

    .line 301
    .end local v2    # "srcRoleMap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "destRoleMap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_5
    return-void
.end method

.method private static getTopmostParent(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2
    .param p0, "mcr"    # Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 605
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->retrieveParents(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object v0
.end method

.method public static move(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfPage;I)V
    .locals 12
    .param p0, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "from"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "insertBefore"    # I

    .line 133
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    if-lt p2, v0, :cond_a

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    add-int/2addr v1, v0

    if-le p2, v1, :cond_0

    goto/16 :goto_6

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v1

    .line 137
    .local v1, "fromNum":I
    if-eqz v1, :cond_9

    if-eq v1, p2, :cond_9

    add-int/lit8 v2, v1, 0x1

    if-ne v2, p2, :cond_1

    goto/16 :goto_5

    .line 141
    :cond_1
    const/4 v2, 0x0

    .line 142
    .local v2, "currStruct":I
    const/4 v3, 0x0

    if-le v1, p2, :cond_2

    .line 143
    invoke-static {p0, v0, p2, v3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    move-result v0

    move v2, v0

    .line 144
    .local v0, "destStruct":I
    invoke-static {p0, p2, v1, v2}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    move-result v2

    .line 145
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v1, v3, v2}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    move-result v2

    goto :goto_0

    .line 147
    .end local v0    # "destStruct":I
    :cond_2
    invoke-static {p0, v0, v1, v3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    move-result v0

    .line 148
    .end local v2    # "currStruct":I
    .local v0, "currStruct":I
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    move-result v0

    .line 149
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, v2, p2, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    move-result v2

    move v0, v2

    move v11, v2

    move v0, v11

    .line 152
    .local v0, "destStruct":I
    .restart local v2    # "currStruct":I
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 153
    .local v3, "topsToMove":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPageMarkedContentReferences(Lcom/itextpdf/kernel/pdf/PdfPage;)Ljava/util/Collection;

    move-result-object v4

    .line 154
    .local v4, "mcrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;"
    if-eqz v4, :cond_5

    .line 155
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 156
    .local v6, "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    invoke-static {v6}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->getTopmostParent(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    .line 157
    .local v7, "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v7, :cond_4

    .line 158
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v8

    if-nez v8, :cond_3

    .line 161
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 159
    :cond_3
    new-instance v5, Lcom/itextpdf/kernel/PdfException;

    const-string v8, "Cannot move flushed tag"

    invoke-direct {v5, v8}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 163
    .end local v6    # "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    .end local v7    # "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_4
    :goto_2
    goto :goto_1

    .line 166
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v5, "orderedTopsToMove":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getKidsObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v6

    .line 168
    .local v6, "tops":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 169
    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    .line 170
    .local v8, "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 171
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 173
    if-ge v7, v0, :cond_6

    .line 174
    add-int/lit8 v0, v0, -0x1

    .line 168
    .end local v8    # "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 178
    .end local v7    # "i":I
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 179
    .restart local v8    # "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v9

    add-int/lit8 v10, v0, 0x1

    .end local v0    # "destStruct":I
    .local v10, "destStruct":I
    invoke-virtual {v9, v0, v8}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->addKidObject(ILcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 180
    .end local v8    # "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    move v0, v10

    goto :goto_4

    .line 181
    .end local v10    # "destStruct":I
    .restart local v0    # "destStruct":I
    :cond_8
    return-void

    .line 138
    .end local v0    # "destStruct":I
    .end local v2    # "currStruct":I
    .end local v3    # "topsToMove":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    .end local v4    # "mcrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;"
    .end local v5    # "orderedTopsToMove":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    .end local v6    # "tops":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_9
    :goto_5
    return-void

    .line 134
    .end local v1    # "fromNum":I
    :cond_a
    :goto_6
    return-void
.end method

.method private static retrieveParents(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Z)Ljava/util/List;
    .locals 7
    .param p0, "mcr"    # Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    .param p1, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v0, "parents":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v1

    .line 611
    .local v1, "firstParent":Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;
    const/4 v2, 0x0

    .line 612
    .local v2, "previous":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    instance-of v3, v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 613
    .local v3, "current":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_0
    if-eqz v3, :cond_3

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->StructTreeRoot:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 614
    if-eqz p1, :cond_1

    .line 615
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_1
    move-object v2, v3

    .line 618
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    :goto_1
    move-object v3, v5

    goto :goto_0

    .line 620
    :cond_3
    if-nez p1, :cond_4

    .line 621
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_4
    return-object v0
.end method

.method private static separateKids(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 10
    .param p0, "structElem"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "lastCloned"    # Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;
    .param p3, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")V"
        }
    .end annotation

    .line 504
    .local p1, "firstPartElems":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 509
    .local v0, "k":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isStructElem(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 511
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v1, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateKids(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    goto/16 :goto_3

    .line 514
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 516
    .local v1, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 517
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 518
    .local v3, "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v4, 0x0

    .line 519
    .local v4, "dictKid":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 520
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 523
    :cond_1
    const/4 v5, -0x1

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isStructElem(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 524
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 525
    move-object v5, v3

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v5, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateKids(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    goto/16 :goto_2

    .line 527
    :cond_2
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 533
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 534
    invoke-static {p0, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->cloneParents(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 536
    add-int/lit8 v6, v2, -0x1

    .end local v2    # "i":I
    .local v6, "i":I
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 537
    iget-object v2, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v2, v5, v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKidObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;ILcom/itextpdf/kernel/pdf/PdfObject;)V

    move v2, v6

    goto :goto_2

    .line 528
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_3
    new-instance v5, Lcom/itextpdf/kernel/PdfException;

    const-string v6, "Tag from the existing tag structure is flushed. Cannot add copied page tags."

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 541
    :cond_4
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 542
    invoke-static {p0, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->cloneParents(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 545
    if-eqz v4, :cond_6

    .line 546
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->MCR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 547
    new-instance v6, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;

    new-instance v7, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iget-object v8, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-direct {v6, v4, v7}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .local v6, "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    goto :goto_1

    .line 549
    .end local v6    # "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    :cond_5
    new-instance v6, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    new-instance v7, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iget-object v8, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-direct {v6, v4, v7}, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .restart local v6    # "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    goto :goto_1

    .line 552
    .end local v6    # "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    :cond_6
    new-instance v6, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrNumber;

    move-object v7, v3

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfNumber;

    new-instance v8, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iget-object v9, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v8, v9}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrNumber;-><init>(Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .line 555
    .restart local v6    # "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    :goto_1
    add-int/lit8 v7, v2, -0x1

    .end local v2    # "i":I
    .local v7, "i":I
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 556
    iget-object v2, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v2, v5, v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKidObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;ILcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 558
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->registerMcr(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V

    move v2, v7

    .line 516
    .end local v3    # "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "dictKid":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v6    # "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    .end local v7    # "i":I
    .restart local v2    # "i":I
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 564
    .end local v1    # "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v2    # "i":I
    :cond_8
    :goto_3
    iget-object v1, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-ne v1, p0, :cond_9

    .line 565
    iget-object v1, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    iput-object v1, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 566
    iget-object v1, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    iput-object v1, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 568
    :cond_9
    return-void
.end method

.method private static separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;I)I
    .locals 2
    .param p0, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "beforePage"    # I

    .line 187
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    move-result v0

    return v0
.end method

.method private static separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I
    .locals 10
    .param p0, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "startPage"    # I
    .param p2, "beforePage"    # I
    .param p3, "startPageStructTopIndex"    # I

    .line 191
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    if-gt v0, p1, :cond_a

    if-gt p1, p2, :cond_a

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    add-int/2addr v1, v0

    if-le p2, v1, :cond_0

    goto/16 :goto_5

    .line 193
    :cond_0
    if-ne p2, p1, :cond_1

    .line 194
    return p3

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    add-int/2addr v1, v0

    if-ne p2, v1, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getKidsObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    return v0

    .line 201
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 202
    .local v0, "firstPartElems":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_6

    .line 203
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    .line 204
    .local v2, "pageOfFirstHalf":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPageMarkedContentReferences(Lcom/itextpdf/kernel/pdf/PdfPage;)Ljava/util/Collection;

    move-result-object v3

    .line 205
    .local v3, "pageMcrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;"
    if-eqz v3, :cond_5

    .line 206
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 207
    .local v5, "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-static {v5, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->addAllParentsToSet(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Ljava/util/Set;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v6

    .line 209
    .local v6, "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 210
    :cond_3
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v7, "Tag from the existing tag structure is flushed. Cannot add copied page tags."

    invoke-direct {v4, v7}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 212
    .end local v5    # "mcr":Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;
    .end local v6    # "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_4
    :goto_2
    goto :goto_1

    .line 202
    .end local v2    # "pageOfFirstHalf":Lcom/itextpdf/kernel/pdf/PdfPage;
    .end local v3    # "pageMcrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;>;"
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v1, "clonedTops":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getKidsObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 221
    .local v2, "tops":Lcom/itextpdf/kernel/pdf/PdfArray;
    add-int/lit8 v3, p3, -0x1

    .line 222
    .local v3, "lastTopBefore":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 223
    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 224
    .local v5, "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 225
    move v3, v4

    .line 227
    new-instance v6, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;-><init>()V

    .line 228
    .local v6, "lastCloned":Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;
    iput-object v5, v6, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 229
    sget-object v7, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    .line 230
    .local v7, "topClone":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 231
    iput-object v7, v6, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 233
    invoke-static {v5, v0, v6, p0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateKids(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 235
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 236
    invoke-virtual {v7, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 237
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v5    # "top":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v6    # "lastCloned":Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;
    .end local v7    # "topClone":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 242
    .end local v4    # "i":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 243
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v6, v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->addKidObject(ILcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 245
    .end local v4    # "i":I
    :cond_9
    add-int/lit8 v4, v3, 0x1

    return v4

    .line 192
    .end local v0    # "firstPartElems":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v1    # "clonedTops":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    .end local v2    # "tops":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v3    # "lastTopBefore":I
    :cond_a
    :goto_5
    const/4 v0, -0x1

    return v0
.end method
