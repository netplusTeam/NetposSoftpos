.class public Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
.super Ljava/lang/Object;
.source "LayoutTaggingHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final RETVAL_NO_PARENT:I

.field private final RETVAL_PARENT_AND_KID_FINISHED:I

.field private autoTaggingPointerSavedPosition:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private existingTagsDummies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Lcom/itextpdf/layout/tagging/TaggingDummyElement;",
            ">;"
        }
    .end annotation
.end field

.field private immediateFlush:Z

.field private kidsHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private parentHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;"
        }
    .end annotation
.end field

.field private taggingRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/tagging/ITaggingRule;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "immediateFlush"    # Z

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->RETVAL_NO_PARENT:I

    .line 88
    const/4 v0, -0x2

    iput v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->RETVAL_PARENT_AND_KID_FINISHED:I

    .line 91
    iput-object p1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 92
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    .line 93
    iput-boolean p2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->immediateFlush:Z

    .line 95
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->autoTaggingPointerSavedPosition:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->taggingRules:Ljava/util/Map;

    .line 100
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getTagStructureTargetVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerRules(Lcom/itextpdf/kernel/pdf/PdfVersion;)V

    .line 102
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->existingTagsDummies:Ljava/util/Map;

    .line 103
    return-void
.end method

.method private addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;IZ)V
    .locals 11
    .param p1, "parentKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .param p3, "insertIndex"    # I
    .param p4, "skipFinishedChecks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;IZ)V"
        }
    .end annotation

    .line 503
    .local p2, "newKidsKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    const-class v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    return-void

    .line 506
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isArtifact()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 507
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 508
    .local v1, "kid":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)V

    .line 509
    .end local v1    # "kid":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    goto :goto_0

    .line 510
    :cond_1
    return-void

    .line 513
    :cond_2
    if-nez p4, :cond_3

    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 515
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Layout tagging hints addition failed: cannot add new kid hints to a parent which hint is already marked as finished. Consider using com.itextpdf.layout.tagging.LayoutTaggingHelper#replaceKidHint method for replacing not yet finished kid hint of a finished parent hint."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 516
    return-void

    .line 519
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 520
    .local v1, "kidsHint":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    if-nez v1, :cond_4

    .line 521
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 524
    :cond_4
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, p1

    .line 525
    .local v2, "parentTagHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    :goto_1
    if-eqz v2, :cond_6

    invoke-direct {p0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isTagAlreadyExistsForHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 526
    .local v3, "parentTagAlreadyCreated":Z
    :goto_2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 527
    .local v5, "kidKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v5}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isArtifact()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 528
    goto :goto_3

    .line 531
    :cond_7
    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v6

    .line 532
    .local v6, "prevParent":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    if-eqz v6, :cond_8

    .line 536
    goto :goto_3

    .line 538
    :cond_8
    if-nez p4, :cond_9

    invoke-virtual {v5}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 539
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v7

    .line 540
    .local v7, "logger":Lorg/slf4j/Logger;
    const-string v8, "Layout tagging hints addition failed: cannot add a hint that is already marked as finished. Consider using com.itextpdf.layout.tagging.LayoutTaggingHelper#moveKidHint method for moving already finished kid hint from not yet finished parent hint."

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 541
    goto :goto_3

    .line 543
    .end local v7    # "logger":Lorg/slf4j/Logger;
    :cond_9
    const/4 v7, -0x1

    if-le p3, v7, :cond_a

    .line 544
    add-int/lit8 v7, p3, 0x1

    .end local p3    # "insertIndex":I
    .local v7, "insertIndex":I
    invoke-interface {v1, p3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p3, v7

    goto :goto_4

    .line 546
    .end local v7    # "insertIndex":I
    .restart local p3    # "insertIndex":I
    :cond_a
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :goto_4
    iget-object v7, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v7, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    if-eqz v3, :cond_f

    .line 551
    invoke-virtual {v5}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v7

    instance-of v7, v7, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    if-eqz v7, :cond_b

    .line 552
    new-instance v7, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v8, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p0, v5, v7}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    .line 554
    :cond_b
    invoke-static {v5}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 555
    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 556
    .local v8, "nestedKid":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v8}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v9

    instance-of v9, v9, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    if-eqz v9, :cond_c

    .line 557
    new-instance v9, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v10, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p0, v8, v9}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    .line 559
    :cond_c
    invoke-direct {p0, v2, v8}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->moveKidTagIfCreated(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)V

    .line 560
    .end local v8    # "nestedKid":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    goto :goto_5

    :cond_d
    goto :goto_6

    .line 562
    :cond_e
    invoke-direct {p0, v2, v5}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->moveKidTagIfCreated(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)V

    .line 565
    .end local v5    # "kidKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .end local v6    # "prevParent":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    :cond_f
    :goto_6
    goto/16 :goto_3

    .line 567
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 568
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :cond_11
    return-void
.end method

.method public static addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 3
    .param p0, "taggingHelper"    # Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .param p1, "rootRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 106
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    .line 107
    .local v0, "childRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    if-nez v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 112
    .local v2, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-static {p0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 113
    .end local v2    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method private createSingleTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z
    .locals 7
    .param p1, "hintKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .param p2, "tagPointer"    # Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 573
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 574
    const-class v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 575
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v2, "Attempt to create a tag for a hint which is already marked as finished, tag will not be created."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 576
    return v1

    .line 579
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    .line 583
    .local v0, "parentTagHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    iget-object v2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    .line 584
    return v1

    .line 587
    .end local v0    # "parentTagHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v0

    .line 588
    .local v0, "waitingTagsManager":Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;
    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 590
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v1

    .line 592
    .local v1, "modelElement":Lcom/itextpdf/layout/tagging/IAccessibleElement;
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v2

    .line 593
    .local v2, "parentHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    const/4 v3, -0x1

    .line 594
    .local v3, "ind":I
    if-eqz v2, :cond_2

    .line 596
    invoke-virtual {v0, p2, v2}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 597
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v4

    .line 598
    .local v4, "siblingsHint":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 599
    .local v5, "i":I
    invoke-direct {p0, v0, p2, v4, v5}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getNearestNextSiblingTagIndex(Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/util/List;I)I

    move-result v3

    .line 603
    .end local v4    # "siblingsHint":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    .end local v5    # "i":I
    :cond_2
    invoke-interface {v1}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addTag(ILcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 604
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getOverriddenRole()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 605
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getOverriddenRole()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 607
    :cond_3
    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->assignWaitingState(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v4

    .line 610
    .local v4, "kidsHint":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 611
    .local v6, "kidKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-direct {p0, p1, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->moveKidTagIfCreated(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)V

    .line 612
    .end local v6    # "kidKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    goto :goto_0

    .line 614
    :cond_4
    const/4 v5, 0x1

    return v5

    .line 617
    .end local v1    # "modelElement":Lcom/itextpdf/layout/tagging/IAccessibleElement;
    .end local v2    # "parentHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .end local v3    # "ind":I
    .end local v4    # "kidsHint":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    :cond_5
    return v1
.end method

.method private finishDummyKids(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;)V"
        }
    .end annotation

    .line 656
    .local p1, "taggingHintKeys":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 657
    .local v1, "hintKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v2

    instance-of v2, v2, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    .line 658
    .local v2, "isDummy":Z
    if-eqz v2, :cond_0

    .line 659
    invoke-virtual {v1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/IPropertyContainer;

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 661
    :cond_0
    invoke-static {v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 662
    :cond_1
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishDummyKids(Ljava/util/List;)V

    .line 664
    .end local v1    # "hintKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .end local v2    # "isDummy":Z
    :cond_2
    goto :goto_0

    .line 665
    :cond_3
    return-void
.end method

.method public static getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .locals 1
    .param p0, "container"    # Lcom/itextpdf/layout/IPropertyContainer;

    .line 117
    const/16 v0, 0x6d

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    return-object v0
.end method

.method private getNearestNextSiblingTagIndex(Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/util/List;I)I
    .locals 3
    .param p1, "waitingTagsManager"    # Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;
    .param p2, "parentPointer"    # Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .param p4, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;",
            "Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;I)I"
        }
    .end annotation

    .line 689
    .local p3, "siblingsHint":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    const/4 v0, -0x1

    .line 690
    .local v0, "ind":I
    new-instance v1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 691
    .local v1, "nextSiblingPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    :cond_0
    add-int/lit8 p4, p4, 0x1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge p4, v2, :cond_1

    .line 692
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)V

    .line 693
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->moveToParent()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->isPointingToSameTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getIndexInParentKidsList()I

    move-result v0

    .line 698
    :cond_1
    return v0
.end method

.method public static getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .locals 1
    .param p0, "container"    # Lcom/itextpdf/layout/IPropertyContainer;

    .line 121
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;Z)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    return-object v0
.end method

.method private static getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;Z)Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .locals 5
    .param p0, "hintOwner"    # Lcom/itextpdf/layout/IPropertyContainer;
    .param p1, "setProperty"    # Z

    .line 477
    const/16 v0, 0x6d

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 478
    .local v1, "hintKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    if-nez v1, :cond_4

    .line 479
    const/4 v2, 0x0

    .line 480
    .local v2, "elem":Lcom/itextpdf/layout/tagging/IAccessibleElement;
    instance-of v3, p0, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    if-eqz v3, :cond_0

    .line 481
    move-object v2, p0

    check-cast v2, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    goto :goto_0

    .line 482
    :cond_0
    instance-of v3, p0, Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v3, :cond_1

    move-object v3, p0

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v3

    instance-of v3, v3, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    if-eqz v3, :cond_1

    .line 483
    move-object v3, p0

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    .line 485
    :cond_1
    :goto_0
    new-instance v3, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    instance-of v4, p0, Lcom/itextpdf/layout/element/IElement;

    invoke-direct {v3, v2, v4}, Lcom/itextpdf/layout/tagging/TaggingHintKey;-><init>(Lcom/itextpdf/layout/tagging/IAccessibleElement;Z)V

    move-object v1, v3

    .line 486
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Artifact"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 487
    invoke-virtual {v1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setArtifact()V

    .line 488
    invoke-virtual {v1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setFinished()V

    .line 491
    :cond_2
    if-eqz p1, :cond_4

    .line 492
    instance-of v3, v2, Lcom/itextpdf/layout/element/ILargeElement;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/element/ILargeElement;

    invoke-interface {v3}, Lcom/itextpdf/layout/element/ILargeElement;->isComplete()Z

    move-result v3

    if-nez v3, :cond_3

    .line 493
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/element/ILargeElement;

    invoke-interface {v3, v0, v1}, Lcom/itextpdf/layout/element/ILargeElement;->setProperty(ILjava/lang/Object;)V

    goto :goto_1

    .line 495
    :cond_3
    invoke-interface {p0, v0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 499
    .end local v2    # "elem":Lcom/itextpdf/layout/tagging/IAccessibleElement;
    :cond_4
    :goto_1
    return-object v1
.end method

.method private static isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z
    .locals 1
    .param p0, "hintKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 702
    invoke-virtual {p0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v0

    invoke-interface {v0}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

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

.method private isSomeKidNotFinished(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z
    .locals 4
    .param p1, "hint"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 767
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 768
    .local v1, "kidHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 769
    return v3

    .line 771
    :cond_0
    invoke-static {v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isSomeKidNotFinished(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 772
    return v3

    .line 774
    .end local v1    # "kidHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    :cond_1
    goto :goto_0

    .line 775
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isSomeParentNotFinished(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z
    .locals 3
    .param p1, "parentHint"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 751
    move-object v0, p1

    .line 753
    .local v0, "hintKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 754
    return v1

    .line 756
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 757
    const/4 v1, 0x1

    return v1

    .line 759
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 760
    return v1

    .line 762
    :cond_2
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    goto :goto_0
.end method

.method private isTagAlreadyExistsForHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z
    .locals 1
    .param p1, "tagHint"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 706
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->isObjectAssociatedWithWaitingTag(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private moveKidTagIfCreated(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)V
    .locals 5
    .param p1, "parentKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .param p2, "kidKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 670
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 671
    .local v0, "kidPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v1

    .line 672
    .local v1, "waitingTagsManager":Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;
    invoke-virtual {v1, v0, p2}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 673
    return-void

    .line 676
    :cond_0
    new-instance v2, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v3, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 677
    .local v2, "parentPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    invoke-virtual {v1, v2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 678
    return-void

    .line 681
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 682
    .local v3, "kidIndInParentKidsHint":I
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getNearestNextSiblingTagIndex(Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/util/List;I)I

    move-result v4

    .line 684
    .local v4, "ind":I
    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setNextNewKidIndex(I)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 685
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->relocate(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 686
    return-void
.end method

.method private registerRules(Lcom/itextpdf/kernel/pdf/PdfVersion;)V
    .locals 5
    .param p1, "pdfVersion"    # Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 779
    new-instance v0, Lcom/itextpdf/layout/tagging/TableTaggingRule;

    invoke-direct {v0}, Lcom/itextpdf/layout/tagging/TableTaggingRule;-><init>()V

    .line 780
    .local v0, "tableRule":Lcom/itextpdf/layout/tagging/ITaggingRule;
    const-string v1, "Table"

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V

    .line 781
    const-string v2, "TFoot"

    invoke-direct {p0, v2, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V

    .line 782
    const-string v3, "THead"

    invoke-direct {p0, v3, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V

    .line 783
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_5:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v4

    if-gez v4, :cond_0

    .line 784
    new-instance v4, Lcom/itextpdf/layout/tagging/TableTaggingPriorToOneFiveVersionRule;

    invoke-direct {v4}, Lcom/itextpdf/layout/tagging/TableTaggingPriorToOneFiveVersionRule;-><init>()V

    .line 785
    .local v4, "priorToOneFiveRule":Lcom/itextpdf/layout/tagging/TableTaggingPriorToOneFiveVersionRule;
    invoke-direct {p0, v1, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V

    .line 786
    invoke-direct {p0, v3, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V

    .line 787
    invoke-direct {p0, v2, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V

    .line 789
    .end local v4    # "priorToOneFiveRule":Lcom/itextpdf/layout/tagging/TableTaggingPriorToOneFiveVersionRule;
    :cond_0
    return-void
.end method

.method private registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V
    .locals 2
    .param p1, "role"    # Ljava/lang/String;
    .param p2, "rule"    # Lcom/itextpdf/layout/tagging/ITaggingRule;

    .line 792
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->taggingRules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 793
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/ITaggingRule;>;"
    if-nez v0, :cond_0

    .line 794
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 795
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->taggingRules:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    return-void
.end method

.method private releaseHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Set;Z)V
    .locals 5
    .param p1, "hint"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .param p3, "checkContextIsFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;Z)V"
        }
    .end annotation

    .line 710
    .local p2, "hintsToBeHeld":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 711
    .local v0, "parentHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 712
    .local v1, "kidsHint":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 713
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isSomeParentNotFinished(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    return-void

    .line 717
    :cond_0
    if-eqz p3, :cond_1

    if-eqz v1, :cond_1

    .line 718
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isSomeKidNotFinished(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 719
    return-void

    .line 723
    :cond_1
    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    .line 724
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 725
    return-void

    .line 729
    :cond_2
    if-eqz v0, :cond_3

    .line 730
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    .line 732
    :cond_3
    if-eqz v1, :cond_5

    .line 733
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 734
    .local v3, "kidHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    iget-object v4, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .end local v3    # "kidHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    goto :goto_0

    .line 736
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    :cond_5
    new-instance v2, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v3, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 740
    .local v2, "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    iget-object v3, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 741
    iget-object v3, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->removeWaitingState(Ljava/lang/Object;)Z

    .line 742
    iget-boolean v3, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->immediateFlush:Z

    if-eqz v3, :cond_7

    .line 743
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->flushParentsIfAllKidsFlushed()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    goto :goto_1

    .line 746
    :cond_6
    iget-object v3, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->removeWaitingState(Ljava/lang/Object;)Z

    .line 748
    :cond_7
    :goto_1
    return-void
.end method

.method private removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)I
    .locals 3
    .param p1, "hintKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 621
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 623
    .local v0, "parentHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    if-nez v0, :cond_0

    .line 624
    const/4 v1, -0x1

    return v1

    .line 627
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v1

    .line 628
    .local v1, "accessibleParentHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 629
    :cond_1
    const/4 v2, -0x2

    return v2

    .line 632
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    move-result v2

    return v2
.end method

.method private removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)I
    .locals 4
    .param p1, "hintKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .param p2, "parentHint"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 636
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 640
    .local v0, "kidsHint":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 641
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 642
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 643
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 644
    goto :goto_1

    .line 641
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 647
    :cond_1
    :goto_1
    if-ge v2, v1, :cond_3

    .line 649
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 650
    iget-object v3, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_2
    return v2

    .line 647
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method


# virtual methods
.method public addKidsHint(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Iterable;)V
    .locals 4
    .param p1, "parentPointer"    # Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/itextpdf/layout/IPropertyContainer;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p2, "newKids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/itextpdf/layout/IPropertyContainer;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getPointerStructElem(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 126
    .local v0, "pointerStructElem":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->existingTagsDummies:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    .line 127
    .local v1, "dummy":Lcom/itextpdf/layout/tagging/TaggingDummyElement;
    if-nez v1, :cond_0

    .line 128
    new-instance v2, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getRole()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/layout/tagging/TaggingDummyElement;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 129
    iget-object v2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->existingTagsDummies:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v2

    invoke-static {v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->assignWaitingState(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, v1, p2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    .line 133
    return-void
.end method

.method public addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "parent"    # Lcom/itextpdf/layout/IPropertyContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/IPropertyContainer;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/itextpdf/layout/IPropertyContainer;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p2, "newKids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/itextpdf/layout/IPropertyContainer;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;I)V

    .line 137
    return-void
.end method

.method public addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;I)V
    .locals 5
    .param p1, "parent"    # Lcom/itextpdf/layout/IPropertyContainer;
    .param p3, "insertIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/IPropertyContainer;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/itextpdf/layout/IPropertyContainer;",
            ">;I)V"
        }
    .end annotation

    .line 140
    .local p2, "newKids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/itextpdf/layout/IPropertyContainer;>;"
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/AreaBreakRenderer;

    if-eqz v0, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    .line 146
    .local v0, "parentKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v1, "newKidsKeys":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/IPropertyContainer;

    .line 148
    .local v3, "kid":Lcom/itextpdf/layout/IPropertyContainer;
    instance-of v4, v3, Lcom/itextpdf/layout/renderer/AreaBreakRenderer;

    if-eqz v4, :cond_1

    .line 149
    return-void

    .line 151
    :cond_1
    invoke-static {v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v3    # "kid":Lcom/itextpdf/layout/IPropertyContainer;
    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0, v0, v1, p3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;I)V

    .line 154
    return-void
.end method

.method public addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;)V
    .locals 1
    .param p1, "parentKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p2, "newKidsKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;I)V

    .line 158
    return-void
.end method

.method public addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;I)V
    .locals 1
    .param p1, "parentKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .param p3, "insertIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;I)V"
        }
    .end annotation

    .line 161
    .local p2, "newKidsKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;IZ)V

    .line 162
    return-void
.end method

.method public createTag(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z
    .locals 4
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "tagPointer"    # Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 350
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    .line 351
    .local v0, "hintKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 352
    .local v2, "noHint":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 353
    invoke-static {p1, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;Z)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    .line 355
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result v1

    .line 356
    .local v1, "created":Z
    if-eqz v2, :cond_2

    .line 357
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setFinished()V

    .line 358
    iget-object v3, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->removeWaitingState(Ljava/lang/Object;)Z

    .line 360
    :cond_2
    return v1
.end method

.method public createTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z
    .locals 6
    .param p1, "hintKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .param p2, "tagPointer"    # Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 364
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isArtifact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x0

    return v0

    .line 368
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createSingleTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result v0

    .line 370
    .local v0, "created":Z
    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v1

    .line 372
    .local v1, "kidsHint":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 373
    .local v3, "hint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v3}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v4

    instance-of v4, v4, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    if-eqz v4, :cond_1

    .line 374
    new-instance v4, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v5, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    .line 376
    .end local v3    # "hint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    :cond_1
    goto :goto_0

    .line 378
    .end local v1    # "kidsHint":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    :cond_2
    return v0
.end method

.method public finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V
    .locals 8
    .param p1, "hintOwner"    # Lcom/itextpdf/layout/IPropertyContainer;

    .line 382
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    .line 385
    .local v0, "rendererKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 389
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isElementBasedFinishingOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Lcom/itextpdf/layout/element/IElement;

    if-nez v1, :cond_1

    .line 391
    return-void

    .line 394
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 395
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v1

    .line 396
    .local v1, "modelElement":Lcom/itextpdf/layout/tagging/IAccessibleElement;
    invoke-interface {v1}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "role":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getOverriddenRole()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 398
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getOverriddenRole()Ljava/lang/String;

    move-result-object v2

    .line 400
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->taggingRules:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 401
    .local v3, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/ITaggingRule;>;"
    const/4 v4, 0x1

    .line 402
    .local v4, "ruleResult":Z
    if-eqz v3, :cond_4

    .line 403
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/tagging/ITaggingRule;

    .line 404
    .local v6, "rule":Lcom/itextpdf/layout/tagging/ITaggingRule;
    if-eqz v4, :cond_3

    invoke-interface {v6, p0, v0}, Lcom/itextpdf/layout/tagging/ITaggingRule;->onTagFinish(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    move v4, v7

    .line 405
    .end local v6    # "rule":Lcom/itextpdf/layout/tagging/ITaggingRule;
    goto :goto_0

    .line 407
    :cond_4
    if-nez v4, :cond_5

    .line 408
    return-void

    .line 412
    .end local v1    # "modelElement":Lcom/itextpdf/layout/tagging/IAccessibleElement;
    .end local v2    # "role":Ljava/lang/String;
    .end local v3    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/ITaggingRule;>;"
    .end local v4    # "ruleResult":Z
    :cond_5
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setFinished()V

    .line 413
    return-void

    .line 386
    :cond_6
    :goto_2
    return-void
.end method

.method public getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;
    .locals 5
    .param p1, "parent"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 244
    .local v0, "kidsHint":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 248
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v1, "accessibleKids":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 251
    .local v3, "kid":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-static {v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 254
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v3    # "kid":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    :goto_1
    goto :goto_0

    .line 258
    :cond_2
    return-object v1
.end method

.method public getAccessibleParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .locals 1
    .param p1, "hintKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 275
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object p1

    .line 276
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    :cond_1
    return-object p1
.end method

.method public getKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;
    .locals 2
    .param p1, "parent"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 236
    .local v0, "kidsHint":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 239
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getParentHint(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .locals 2
    .param p1, "hintOwner"    # Lcom/itextpdf/layout/IPropertyContainer;

    .line 262
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    .line 263
    .local v0, "hintKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    if-nez v0, :cond_0

    .line 264
    const/4 v1, 0x0

    return-object v1

    .line 266
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v1

    return-object v1
.end method

.method public getParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .locals 1
    .param p1, "hintKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 270
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    return-object v0
.end method

.method public getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public isArtifact(Lcom/itextpdf/layout/IPropertyContainer;)Z
    .locals 4
    .param p1, "hintOwner"    # Lcom/itextpdf/layout/IPropertyContainer;

    .line 177
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    .line 178
    .local v0, "key":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isArtifact()Z

    move-result v1

    return v1

    .line 181
    :cond_0
    const/4 v1, 0x0

    .line 182
    .local v1, "aElem":Lcom/itextpdf/layout/tagging/IAccessibleElement;
    instance-of v2, p1, Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    instance-of v2, v2, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    if-eqz v2, :cond_1

    .line 183
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    goto :goto_0

    .line 184
    :cond_1
    instance-of v2, p1, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    if-eqz v2, :cond_2

    .line 185
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    .line 187
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 188
    invoke-interface {v1}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Artifact"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 191
    .end local v1    # "aElem":Lcom/itextpdf/layout/tagging/IAccessibleElement;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V
    .locals 1
    .param p1, "hintOwner"    # Lcom/itextpdf/layout/IPropertyContainer;

    .line 195
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    .line 196
    .local v0, "hintKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)V

    .line 197
    return-void
.end method

.method public markArtifactHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)V
    .locals 4
    .param p1, "hintKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 200
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setArtifact()V

    .line 201
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setFinished()V

    .line 202
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 203
    .local v0, "existingArtifactTag":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-class v1, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 205
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v2, "A layout tagging hint for which an actual tag was already created in tags structure is marked as artifact. Existing tag will be left in the tags tree."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->removeWaitingState(Ljava/lang/Object;)Z

    .line 208
    iget-boolean v2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->immediateFlush:Z

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->flushParentsIfAllKidsFlushed()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 212
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v1

    .line 213
    .local v1, "kidsHint":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 214
    .local v3, "kidKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)V

    .line 215
    .end local v3    # "kidKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    goto :goto_0

    .line 216
    :cond_1
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    .line 217
    return-void
.end method

.method public moveKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)I
    .locals 1
    .param p1, "hintKeyOfKidToMove"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .param p2, "newParent"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 450
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->moveKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;I)I

    move-result v0

    return v0
.end method

.method public moveKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;I)I
    .locals 4
    .param p1, "hintKeyOfKidToMove"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .param p2, "newParent"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .param p3, "insertIndex"    # I

    .line 454
    const-class v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    invoke-virtual {p2}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 455
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 456
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Layout tagging hints modification failed: cannot move kid hint to a parent that is already marked as finished."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 457
    return v2

    .line 460
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    move-result v1

    .line 461
    .local v1, "removeRes":I
    const/4 v3, -0x2

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    .line 462
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 467
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, p3, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;IZ)V

    .line 469
    return v1

    .line 463
    :cond_2
    :goto_0
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 464
    .restart local v0    # "logger":Lorg/slf4j/Logger;
    const-string v3, "Layout tagging hints modification failed: cannot move kid hint for which both itself and it\'s parent are already marked as finished."

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 465
    return v2
.end method

.method public releaseAllHints()V
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->existingTagsDummies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    .line 320
    .local v1, "dummy":Lcom/itextpdf/layout/tagging/TaggingDummyElement;
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 321
    invoke-static {v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishDummyKids(Ljava/util/List;)V

    .line 322
    .end local v1    # "dummy":Lcom/itextpdf/layout/tagging/TaggingDummyElement;
    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->existingTagsDummies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 325
    invoke-virtual {p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->releaseFinishedHints()V

    .line 327
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 328
    .local v0, "hangingHints":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 329
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    goto :goto_1

    .line 333
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 342
    .local v2, "hint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->releaseHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Set;Z)V

    .line 343
    .end local v2    # "hint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    goto :goto_2

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 346
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 347
    return-void

    .line 346
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 345
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public releaseFinishedHints()V
    .locals 9

    .line 281
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 282
    .local v0, "allHints":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 283
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    goto :goto_0

    .line 287
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 288
    .local v2, "hint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v2}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v3

    instance-of v3, v3, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    if-eqz v3, :cond_2

    .line 289
    goto :goto_1

    .line 291
    :cond_2
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishDummyKids(Ljava/util/List;)V

    .line 292
    .end local v2    # "hint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    goto :goto_1

    .line 294
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 295
    .local v1, "hintsToBeHeld":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 296
    .local v3, "hint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-static {v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 297
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v4

    .line 298
    .local v4, "siblingsHints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    const/4 v5, 0x0

    .line 299
    .local v5, "holdTheFirstFinishedToBeFound":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 300
    .local v7, "sibling":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v7}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v8

    if-nez v8, :cond_4

    .line 301
    const/4 v5, 0x1

    goto :goto_4

    .line 302
    :cond_4
    if-eqz v5, :cond_5

    .line 304
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    const/4 v5, 0x0

    .line 307
    .end local v7    # "sibling":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    :cond_5
    :goto_4
    goto :goto_3

    .line 309
    .end local v3    # "hint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .end local v4    # "siblingsHints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    .end local v5    # "holdTheFirstFinishedToBeFound":Z
    :cond_6
    goto :goto_2

    .line 311
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 312
    .restart local v3    # "hint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v3}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 313
    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->releaseHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Set;Z)V

    .line 315
    .end local v3    # "hint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    :cond_8
    goto :goto_5

    .line 316
    :cond_9
    return-void
.end method

.method public replaceKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;)I
    .locals 10
    .param p1, "kidHintKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;)I"
        }
    .end annotation

    .line 416
    .local p2, "newKidsHintKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    const-class v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v1

    .line 417
    .local v1, "parentKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 418
    return v2

    .line 420
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 421
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 422
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v3, "Layout tagging hints modification failed: cannot replace a kid hint that is already marked as finished."

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 427
    return v2

    .line 430
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_1
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    move-result v3

    .line 432
    .local v3, "kidIndex":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v4, "kidsToBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 434
    .local v6, "newKidKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-direct {p0, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    move-result v7

    .line 435
    .local v7, "i":I
    const/4 v8, -0x2

    if-eq v7, v8, :cond_3

    if-ne v7, v2, :cond_2

    .line 436
    invoke-virtual {v6}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 441
    :cond_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    .end local v6    # "newKidKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .end local v7    # "i":I
    goto :goto_0

    .line 437
    .restart local v6    # "newKidKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .restart local v7    # "i":I
    :cond_3
    :goto_1
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v8

    .line 438
    .local v8, "logger":Lorg/slf4j/Logger;
    const-string v9, "Layout tagging hints modification failed: cannot move kid hint for which both itself and it\'s parent are already marked as finished."

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 439
    goto :goto_0

    .line 444
    .end local v6    # "newKidKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .end local v7    # "i":I
    .end local v8    # "logger":Lorg/slf4j/Logger;
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v1, v4, v3, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;IZ)V

    .line 446
    return v3
.end method

.method public restoreAutoTaggingPointerPosition(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 227
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v0

    .line 228
    .local v0, "autoTaggingPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->autoTaggingPointerSavedPosition:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 229
    .local v1, "position":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->moveToPointer(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 232
    :cond_0
    return-void
.end method

.method public setRoleHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/String;)V
    .locals 1
    .param p1, "hintOwner"    # Lcom/itextpdf/layout/IPropertyContainer;
    .param p2, "role"    # Ljava/lang/String;

    .line 173
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setOverriddenRole(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public useAutoTaggingPointerAndRememberItsPosition(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 3
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 220
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v0

    .line 221
    .local v0, "autoTaggingPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    new-instance v1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)V

    .line 222
    .local v1, "position":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    iget-object v2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->autoTaggingPointerSavedPosition:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-object v0
.end method
