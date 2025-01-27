.class Lcom/sleepycat/persist/impl/Evolver;
.super Ljava/lang/Object;
.source "Evolver.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final EVOLVE_FAILURE:I = 0x2

.field static final EVOLVE_NEEDED:I = 0x1

.field static final EVOLVE_NONE:I


# instance fields
.field private catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

.field private changedFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/persist/impl/Format;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;"
        }
    .end annotation
.end field

.field private deleteDbs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private disallowClassChanges:Z

.field private errors:Ljava/lang/StringBuilder;

.field private evolvedFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private forceEvolution:Z

.field private mutations:Lcom/sleepycat/persist/evolve/Mutations;

.field private nestedFormatsChanged:Z

.field private newFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;"
        }
    .end annotation
.end field

.field private renameDbs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private renameFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/persist/impl/Format;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;"
        }
    .end annotation
.end field

.field private storePrefix:Ljava/lang/String;

.field private subclassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/persist/impl/Format;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;>;"
        }
    .end annotation
.end field

.field private unprocessedFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/PersistCatalog;Ljava/lang/String;Lcom/sleepycat/persist/evolve/Mutations;Ljava/util/Map;ZZ)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;
    .param p2, "storePrefix"    # Ljava/lang/String;
    .param p3, "mutations"    # Lcom/sleepycat/persist/evolve/Mutations;
    .param p5, "forceEvolution"    # Z
    .param p6, "disallowClassChanges"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/PersistCatalog;",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/evolve/Mutations;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;ZZ)V"
        }
    .end annotation

    .line 67
    .local p4, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/sleepycat/persist/impl/Evolver;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 69
    iput-object p2, p0, Lcom/sleepycat/persist/impl/Evolver;->storePrefix:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/sleepycat/persist/impl/Evolver;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 71
    iput-object p4, p0, Lcom/sleepycat/persist/impl/Evolver;->newFormats:Ljava/util/Map;

    .line 72
    iput-boolean p5, p0, Lcom/sleepycat/persist/impl/Evolver;->forceEvolution:Z

    .line 73
    iput-boolean p6, p0, Lcom/sleepycat/persist/impl/Evolver;->disallowClassChanges:Z

    .line 74
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->changedFormats:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->errors:Ljava/lang/StringBuilder;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->deleteDbs:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->renameDbs:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->renameFormats:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->evolvedFormats:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->unprocessedFormats:Ljava/util/List;

    .line 81
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->getSubclassMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->subclassMap:Ljava/util/Map;

    .line 82
    return-void
.end method

.method private addError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->errors:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->errors:Ljava/lang/StringBuilder;

    const-string v1, "\n---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->errors:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    return-void
.end method

.method private applyClassDeleter(Lcom/sleepycat/persist/evolve/Deleter;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)Z
    .locals 6
    .param p1, "deleter"    # Lcom/sleepycat/persist/evolve/Deleter;
    .param p2, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "newFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 552
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/persist/impl/Evolver;->checkUpdatedVersion(Lcom/sleepycat/persist/evolve/Mutation;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    return v0

    .line 555
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->isEntity()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->isCurrentVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Evolver;->deleteDbs:Ljava/util/Set;

    iget-object v2, p0, Lcom/sleepycat/persist/impl/Evolver;->storePrefix:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sleepycat/persist/impl/Store;->makePriDbName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getEntityMetadata()Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 561
    .local v2, "keyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    iget-object v3, p0, Lcom/sleepycat/persist/impl/Evolver;->deleteDbs:Ljava/util/Set;

    iget-object v4, p0, Lcom/sleepycat/persist/impl/Evolver;->storePrefix:Ljava/lang/String;

    .line 562
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/sleepycat/persist/impl/Store;->makeSecDbName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 561
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 563
    .end local v2    # "keyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    goto :goto_0

    .line 570
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sleepycat/persist/impl/Format;->setDeleted(Z)V

    .line 571
    if-eqz p3, :cond_2

    .line 572
    invoke-virtual {p2, p3}, Lcom/sleepycat/persist/impl/Format;->setLatestVersion(Lcom/sleepycat/persist/impl/Format;)V

    .line 575
    :cond_2
    invoke-direct {p0, p2}, Lcom/sleepycat/persist/impl/Evolver;->setFormatsChanged(Lcom/sleepycat/persist/impl/Format;)V

    .line 576
    return v0
.end method

.method private applyClassRenamer(Lcom/sleepycat/persist/evolve/Renamer;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)Z
    .locals 8
    .param p1, "renamer"    # Lcom/sleepycat/persist/evolve/Renamer;
    .param p2, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "newFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 508
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/persist/impl/Evolver;->checkUpdatedVersion(Lcom/sleepycat/persist/evolve/Mutation;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    return v0

    .line 511
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->isEntity()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->isCurrentVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p3}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "newClassName":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "oldClassName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Evolver;->renameDbs:Ljava/util/Map;

    iget-object v3, p0, Lcom/sleepycat/persist/impl/Evolver;->storePrefix:Ljava/lang/String;

    .line 516
    invoke-static {v3, v1}, Lcom/sleepycat/persist/impl/Store;->makePriDbName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/persist/impl/Evolver;->storePrefix:Ljava/lang/String;

    .line 517
    invoke-static {v4, v0}, Lcom/sleepycat/persist/impl/Store;->makePriDbName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 516
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getEntityMetadata()Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 520
    .local v3, "keyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual {v3}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v4

    .line 521
    .local v4, "keyName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Evolver;->renameDbs:Ljava/util/Map;

    iget-object v6, p0, Lcom/sleepycat/persist/impl/Evolver;->storePrefix:Ljava/lang/String;

    .line 522
    invoke-static {v6, v1, v4}, Lcom/sleepycat/persist/impl/Store;->makeSecDbName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/persist/impl/Evolver;->storePrefix:Ljava/lang/String;

    .line 523
    invoke-static {v7, v0, v4}, Lcom/sleepycat/persist/impl/Store;->makeSecDbName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 522
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .end local v3    # "keyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v4    # "keyName":Ljava/lang/String;
    goto :goto_0

    .line 531
    .end local v0    # "newClassName":Ljava/lang/String;
    .end local v1    # "oldClassName":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->renameFormats:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-direct {p0, p2}, Lcom/sleepycat/persist/impl/Evolver;->setFormatsChanged(Lcom/sleepycat/persist/impl/Format;)V

    .line 534
    const/4 v0, 0x1

    return v0
.end method

.method private applyConverter(Lcom/sleepycat/persist/evolve/Converter;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)Z
    .locals 2
    .param p1, "converter"    # Lcom/sleepycat/persist/evolve/Converter;
    .param p2, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "newFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 590
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/persist/impl/Evolver;->checkUpdatedVersion(Lcom/sleepycat/persist/evolve/Mutation;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    const/4 v0, 0x0

    return v0

    .line 593
    :cond_0
    new-instance v0, Lcom/sleepycat/persist/impl/ConverterReader;

    invoke-direct {v0, p1}, Lcom/sleepycat/persist/impl/ConverterReader;-><init>(Lcom/sleepycat/persist/evolve/Converter;)V

    .line 594
    .local v0, "reader":Lcom/sleepycat/persist/impl/Reader;
    invoke-virtual {p0, p2, v0, p3}, Lcom/sleepycat/persist/impl/Evolver;->useEvolvedFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Reader;Lcom/sleepycat/persist/impl/Format;)V

    .line 595
    const/4 v1, 0x1

    return v1
.end method

.method private checkClassChangesAllowed(Lcom/sleepycat/persist/impl/Format;)V
    .locals 3
    .param p1, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 114
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/Evolver;->disallowClassChanges:Z

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "When performing an upgrade changes are not allowed but were made to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 117
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkUpdatedVersion(Lcom/sleepycat/persist/evolve/Mutation;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)Z
    .locals 2
    .param p1, "mutation"    # Lcom/sleepycat/persist/evolve/Mutation;
    .param p2, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "newFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 605
    if-eqz p3, :cond_0

    .line 606
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p3}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v0

    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 608
    nop

    .line 609
    const-string v0, "A new higher version number must be assigned"

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/sleepycat/persist/impl/Evolver;->addInvalidMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Mutation;Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x0

    return v0

    .line 613
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private evolveFormatInternal(Lcom/sleepycat/persist/impl/Format;)Z
    .locals 13
    .param p1, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 279
    invoke-static {p1}, Lcom/sleepycat/persist/impl/Format;->isPredefined(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    .line 284
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v2

    .line 286
    .local v2, "oldVersion":I
    iget-object v3, p0, Lcom/sleepycat/persist/impl/Evolver;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4}, Lcom/sleepycat/persist/evolve/Mutations;->getRenamer(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Renamer;

    move-result-object v3

    .line 287
    .local v3, "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Evolver;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    invoke-virtual {v5, v0, v2, v4}, Lcom/sleepycat/persist/evolve/Mutations;->getDeleter(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Deleter;

    move-result-object v5

    .line 288
    .local v5, "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    iget-object v6, p0, Lcom/sleepycat/persist/impl/Evolver;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 289
    invoke-virtual {v6, v0, v2, v4}, Lcom/sleepycat/persist/evolve/Mutations;->getConverter(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Converter;

    move-result-object v6

    .line 290
    .local v6, "converter":Lcom/sleepycat/persist/evolve/Converter;
    const/4 v7, 0x0

    if-eqz v5, :cond_2

    if-nez v6, :cond_1

    if-eqz v3, :cond_2

    .line 291
    :cond_1
    nop

    .line 292
    const-string v1, "Class Deleter not allowed along with a Renamer or Converter for the same class"

    invoke-virtual {p0, p1, v4, v5, v1}, Lcom/sleepycat/persist/impl/Evolver;->addInvalidMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Mutation;Ljava/lang/String;)V

    .line 295
    return v7

    .line 304
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->isArray()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 305
    if-nez v5, :cond_7

    if-nez v6, :cond_7

    if-eqz v3, :cond_3

    goto :goto_2

    .line 313
    :cond_3
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getComponentType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    .line 314
    .local v4, "compFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {p0, v4}, Lcom/sleepycat/persist/impl/Evolver;->evolveFormat(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 315
    return v7

    .line 317
    :cond_4
    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v8

    .line 318
    .local v8, "latest":Lcom/sleepycat/persist/impl/Format;
    if-eq v8, v4, :cond_6

    .line 319
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/sleepycat/persist/impl/Format;->isArray()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "["

    goto :goto_0

    :cond_5
    const-string v10, "[L"

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 320
    invoke-virtual {v8}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3b

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "newName":Ljava/lang/String;
    goto :goto_1

    .line 322
    .end local v9    # "newName":Ljava/lang/String;
    :cond_6
    move-object v9, v0

    .line 324
    .end local v4    # "compFormat":Lcom/sleepycat/persist/impl/Format;
    .end local v8    # "latest":Lcom/sleepycat/persist/impl/Format;
    .restart local v9    # "newName":Ljava/lang/String;
    :goto_1
    goto :goto_5

    .line 306
    .end local v9    # "newName":Ljava/lang/String;
    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    move-object v1, v5

    goto :goto_3

    :cond_8
    if-eqz v6, :cond_9

    move-object v1, v6

    goto :goto_3

    :cond_9
    move-object v1, v3

    .line 308
    .local v1, "mutation":Lcom/sleepycat/persist/evolve/Mutation;
    :goto_3
    nop

    .line 309
    const-string v8, "Mutations not allowed for an array"

    invoke-virtual {p0, p1, v4, v1, v8}, Lcom/sleepycat/persist/impl/Evolver;->addInvalidMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Mutation;Ljava/lang/String;)V

    .line 311
    return v7

    .line 325
    .end local v1    # "mutation":Lcom/sleepycat/persist/evolve/Mutation;
    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/sleepycat/persist/evolve/Renamer;->getNewName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_b
    move-object v4, v0

    :goto_4
    move-object v9, v4

    .line 332
    .restart local v9    # "newName":Ljava/lang/String;
    :goto_5
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/persist/impl/Evolver;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v4, v9}, Lcom/sleepycat/persist/impl/PersistCatalog;->resolveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 334
    .local v4, "newClass":Ljava/lang/Class;
    :try_start_1
    iget-object v8, p0, Lcom/sleepycat/persist/impl/Evolver;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    iget-object v10, p0, Lcom/sleepycat/persist/impl/Evolver;->newFormats:Ljava/util/Map;

    invoke-virtual {v8, v4, v10}, Lcom/sleepycat/persist/impl/PersistCatalog;->createFormat(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v8

    .line 335
    .local v8, "newFormat":Lcom/sleepycat/persist/impl/Format;
    if-eq v8, p1, :cond_c

    .line 336
    const/4 v10, 0x0

    .line 340
    .local v10, "newFormatException":Ljava/lang/String;
    goto :goto_6

    .line 335
    .end local v10    # "newFormatException":Ljava/lang/String;
    :cond_c
    new-instance v10, Ljava/lang/AssertionError;

    invoke-virtual {v8}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "oldName":Ljava/lang/String;
    .end local v2    # "oldVersion":I
    .end local v3    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    .end local v4    # "newClass":Ljava/lang/Class;
    .end local v5    # "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    .end local v6    # "converter":Lcom/sleepycat/persist/evolve/Converter;
    .end local v9    # "newName":Ljava/lang/String;
    .end local p1    # "oldFormat":Lcom/sleepycat/persist/impl/Format;
    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    .end local v8    # "newFormat":Lcom/sleepycat/persist/impl/Format;
    .restart local v0    # "oldName":Ljava/lang/String;
    .restart local v2    # "oldVersion":I
    .restart local v3    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    .restart local v4    # "newClass":Ljava/lang/Class;
    .restart local v5    # "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    .restart local v6    # "converter":Lcom/sleepycat/persist/evolve/Converter;
    .restart local v9    # "newName":Ljava/lang/String;
    .restart local p1    # "oldFormat":Lcom/sleepycat/persist/impl/Format;
    :catch_0
    move-exception v8

    .line 338
    .local v8, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 339
    .local v10, "newFormat":Lcom/sleepycat/persist/impl/Format;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v10

    move-object v10, v11

    .line 344
    .end local v4    # "newClass":Ljava/lang/Class;
    .local v8, "newFormat":Lcom/sleepycat/persist/impl/Format;
    .local v10, "newFormatException":Ljava/lang/String;
    :goto_6
    goto :goto_7

    .line 341
    .end local v8    # "newFormat":Lcom/sleepycat/persist/impl/Format;
    .end local v10    # "newFormatException":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 342
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const/4 v8, 0x0

    .line 343
    .restart local v8    # "newFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    .line 346
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v10    # "newFormatException":Ljava/lang/String;
    :goto_7
    if-eqz v8, :cond_10

    .line 356
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    if-eq p1, v4, :cond_f

    .line 357
    invoke-virtual {v8}, Lcom/sleepycat/persist/impl/Format;->getPreviousVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    if-nez v4, :cond_f

    .line 358
    iget-object v4, p0, Lcom/sleepycat/persist/impl/Evolver;->newFormats:Ljava/util/Map;

    invoke-interface {v4, v8}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 359
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    .line 360
    .local v4, "oldLatestFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {p0, v4}, Lcom/sleepycat/persist/impl/Evolver;->evolveFormat(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 361
    return v7

    .line 363
    :cond_d
    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v11

    if-ne v4, v11, :cond_f

    .line 365
    iget-object v11, p0, Lcom/sleepycat/persist/impl/Evolver;->newFormats:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    move-object v8, v4

    goto :goto_8

    .line 358
    .end local v4    # "oldLatestFormat":Lcom/sleepycat/persist/impl/Format;
    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 380
    :cond_f
    :goto_8
    iget-boolean v4, p0, Lcom/sleepycat/persist/impl/Evolver;->forceEvolution:Z

    if-nez v4, :cond_10

    .line 381
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    if-ne v8, v4, :cond_10

    .line 382
    return v1

    .line 387
    :cond_10
    if-eqz v3, :cond_11

    .line 388
    invoke-direct {p0, v3, p1, v8}, Lcom/sleepycat/persist/impl/Evolver;->applyClassRenamer(Lcom/sleepycat/persist/evolve/Renamer;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 389
    return v7

    .line 394
    :cond_11
    if-eqz v6, :cond_15

    .line 395
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->isEntity()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 396
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Lcom/sleepycat/persist/impl/Format;->isEntity()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    .line 404
    :cond_12
    invoke-virtual {p1, v8, v6, p0}, Lcom/sleepycat/persist/impl/Format;->evolveMetadata(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Converter;Lcom/sleepycat/persist/impl/Evolver;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 405
    return v7

    .line 397
    :cond_13
    :goto_9
    nop

    .line 398
    const-string v1, "Class converter not allowed for an entity class that is no longer present or not having an @Entity annotation"

    invoke-virtual {p0, p1, v8, v6, v1}, Lcom/sleepycat/persist/impl/Evolver;->addInvalidMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Mutation;Ljava/lang/String;)V

    .line 402
    return v7

    .line 408
    :cond_14
    invoke-direct {p0, v6, p1, v8}, Lcom/sleepycat/persist/impl/Evolver;->applyConverter(Lcom/sleepycat/persist/evolve/Converter;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)Z

    move-result v1

    return v1

    .line 412
    :cond_15
    if-eqz v8, :cond_17

    .line 414
    invoke-virtual {v8}, Lcom/sleepycat/persist/impl/Format;->isEntity()Z

    move-result v4

    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->isEntity()Z

    move-result v11

    if-eq v4, v11, :cond_16

    goto :goto_a

    :cond_16
    move v1, v7

    goto :goto_b

    :cond_17
    :goto_a
    nop

    .line 415
    .local v1, "needDeleter":Z
    :goto_b
    if-eqz v5, :cond_19

    .line 416
    if-nez v1, :cond_18

    .line 417
    nop

    .line 418
    const-string v4, "Class deleter not allowed when the class and its @Entity or @Persistent annotation is still present"

    invoke-virtual {p0, p1, v8, v5, v4}, Lcom/sleepycat/persist/impl/Evolver;->addInvalidMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Mutation;Ljava/lang/String;)V

    .line 421
    return v7

    .line 423
    :cond_18
    invoke-direct {p0, v5, p1, v8}, Lcom/sleepycat/persist/impl/Evolver;->applyClassDeleter(Lcom/sleepycat/persist/evolve/Deleter;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)Z

    move-result v4

    return v4

    .line 425
    :cond_19
    if-eqz v1, :cond_1c

    .line 426
    if-nez v8, :cond_1b

    .line 427
    if-eqz v10, :cond_1a

    .line 429
    nop

    .line 430
    invoke-virtual {p0, p1, v8, v10}, Lcom/sleepycat/persist/impl/Evolver;->addMissingMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)V

    goto :goto_c

    .line 427
    :cond_1a
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 432
    :cond_1b
    nop

    .line 433
    const-string v4, "@Entity switched to/from @Persistent"

    invoke-virtual {p0, p1, v8, v4}, Lcom/sleepycat/persist/impl/Evolver;->addMissingMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)V

    .line 436
    :goto_c
    return v7

    .line 445
    :cond_1c
    invoke-virtual {p1, v8, p0}, Lcom/sleepycat/persist/impl/Format;->evolve(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Evolver;)Z

    move-result v4

    return v4

    .line 280
    .end local v0    # "oldName":Ljava/lang/String;
    .end local v1    # "needDeleter":Z
    .end local v2    # "oldVersion":I
    .end local v3    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    .end local v5    # "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    .end local v6    # "converter":Lcom/sleepycat/persist/evolve/Converter;
    .end local v8    # "newFormat":Lcom/sleepycat/persist/impl/Format;
    .end local v9    # "newName":Ljava/lang/String;
    .end local v10    # "newFormatException":Ljava/lang/String;
    :cond_1d
    :goto_d
    return v1
.end method

.method private getClassVersionLabel(Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 157
    if-eqz p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    return-object v0

    .line 162
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private setFormatsChanged(Lcom/sleepycat/persist/impl/Format;)V
    .locals 2
    .param p1, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 104
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/Evolver;->checkClassChangesAllowed(Lcom/sleepycat/persist/impl/Format;)V

    .line 105
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->changedFormats:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/persist/impl/Evolver;->nestedFormatsChanged:Z

    .line 108
    sget-boolean v0, Lcom/sleepycat/persist/impl/PersistCatalog;->expectNoClassChanges:Z

    if-nez v0, :cond_0

    .line 111
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expectNoClassChanges"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method addEvolveError(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "newFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "scenario"    # Ljava/lang/String;
    .param p4, "error"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/Evolver;->checkClassChangesAllowed(Lcom/sleepycat/persist/impl/Format;)V

    .line 174
    if-nez p3, :cond_0

    .line 175
    const-string p3, "Error"

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " when evolving"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    const-string v1, ""

    invoke-direct {p0, p1, v1}, Lcom/sleepycat/persist/impl/Evolver;->getClassVersionLabel(Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    const-string v1, " to"

    invoke-direct {p0, p2, v1}, Lcom/sleepycat/persist/impl/Evolver;->getClassVersionLabel(Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/Evolver;->addError(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method addInvalidMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Mutation;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "newFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "mutation"    # Lcom/sleepycat/persist/evolve/Mutation;
    .param p4, "error"    # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/Evolver;->checkClassChangesAllowed(Lcom/sleepycat/persist/impl/Format;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mutation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    const-string v1, " For"

    invoke-direct {p0, p1, v1}, Lcom/sleepycat/persist/impl/Evolver;->getClassVersionLabel(Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    const-string v1, " New"

    invoke-direct {p0, p2, v1}, Lcom/sleepycat/persist/impl/Evolver;->getClassVersionLabel(Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/Evolver;->addError(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method addMissingMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "newFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "error"    # Ljava/lang/String;

    .line 203
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/Evolver;->checkClassChangesAllowed(Lcom/sleepycat/persist/impl/Format;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mutation is missing to evolve"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    const-string v1, ""

    invoke-direct {p0, p1, v1}, Lcom/sleepycat/persist/impl/Evolver;->getClassVersionLabel(Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    const-string v1, " to"

    invoke-direct {p0, p2, v1}, Lcom/sleepycat/persist/impl/Evolver;->getClassVersionLabel(Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/Evolver;->addError(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method addNonEntityFormat(Lcom/sleepycat/persist/impl/Format;)V
    .locals 1
    .param p1, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 214
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->unprocessedFormats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method areFormatsChanged()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->changedFormats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method checkUpdatedVersion(Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)Z
    .locals 2
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "newFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 620
    if-eqz p3, :cond_0

    .line 621
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    invoke-virtual {p3}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v0

    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 623
    nop

    .line 624
    const-string v0, "A new higher version number must be assigned"

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/sleepycat/persist/impl/Evolver;->addEvolveError(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const/4 v0, 0x0

    return v0

    .line 628
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method deleteSecondaryDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldEntityClass"    # Ljava/lang/String;
    .param p2, "keyName"    # Ljava/lang/String;

    .line 583
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->deleteDbs:Ljava/util/Set;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/Evolver;->storePrefix:Ljava/lang/String;

    .line 584
    invoke-static {v1, p1, p2}, Lcom/sleepycat/persist/impl/Store;->makeSecDbName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 585
    return-void
.end method

.method evolveFormat(Lcom/sleepycat/persist/impl/Format;)Z
    .locals 8
    .param p1, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 238
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->isNew()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 239
    return v1

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getEntityFormat()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v0

    .line 243
    .local v0, "oldEntityFormat":Lcom/sleepycat/persist/impl/Format;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 244
    .local v3, "trackEntityChanges":Z
    :goto_0
    iget-boolean v4, p0, Lcom/sleepycat/persist/impl/Evolver;->nestedFormatsChanged:Z

    .line 245
    .local v4, "saveNestedFormatsChanged":Z
    if-eqz v3, :cond_2

    .line 246
    iput-boolean v2, p0, Lcom/sleepycat/persist/impl/Evolver;->nestedFormatsChanged:Z

    .line 248
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 249
    .local v2, "oldFormatId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Evolver;->evolvedFormats:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 250
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Evolver;->evolvedFormats:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .local v5, "result":Z
    goto :goto_1

    .line 252
    .end local v5    # "result":Z
    :cond_3
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Evolver;->evolvedFormats:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/Evolver;->evolveFormatInternal(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v5

    .line 254
    .restart local v5    # "result":Z
    iget-object v6, p0, Lcom/sleepycat/persist/impl/Evolver;->evolvedFormats:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :goto_1
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/persist/impl/Format;->isNew()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 257
    iput-boolean v1, p0, Lcom/sleepycat/persist/impl/Evolver;->nestedFormatsChanged:Z

    .line 259
    :cond_4
    if-eqz v3, :cond_6

    .line 260
    iget-boolean v6, p0, Lcom/sleepycat/persist/impl/Evolver;->nestedFormatsChanged:Z

    if-eqz v6, :cond_5

    .line 261
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v6

    .line 262
    .local v6, "latest":Lcom/sleepycat/persist/impl/Format;
    if-eqz v6, :cond_5

    .line 263
    invoke-virtual {v6, v1}, Lcom/sleepycat/persist/impl/Format;->setEvolveNeeded(Z)V

    .line 266
    .end local v6    # "latest":Lcom/sleepycat/persist/impl/Format;
    :cond_5
    iput-boolean v4, p0, Lcom/sleepycat/persist/impl/Evolver;->nestedFormatsChanged:Z

    .line 268
    :cond_6
    return v5
.end method

.method evolveRequiredKeyField(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/FieldInfo;Lcom/sleepycat/persist/impl/FieldInfo;)I
    .locals 16
    .param p1, "oldParent"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "newParent"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "oldField"    # Lcom/sleepycat/persist/impl/FieldInfo;
    .param p4, "newField"    # Lcom/sleepycat/persist/impl/FieldInfo;

    .line 683
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 684
    .local v3, "result":I
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 685
    .local v4, "oldName":Ljava/lang/String;
    const-string v5, "primary key field or composite key class field"

    .line 687
    .local v5, "FIELD_KIND":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "primary key field or composite key class field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 690
    .local v6, "FIELD_LABEL":Ljava/lang/String;
    const/4 v7, 0x2

    if-nez p4, :cond_0

    .line 691
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Field is missing and deletion is not allowed for a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 692
    invoke-virtual {v0, v1, v2, v8}, Lcom/sleepycat/persist/impl/Evolver;->addMissingMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)V

    .line 695
    return v7

    .line 699
    :cond_0
    iget-object v8, v0, Lcom/sleepycat/persist/impl/Evolver;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 700
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v10

    invoke-virtual {v8, v9, v10, v4}, Lcom/sleepycat/persist/evolve/Mutations;->getDeleter(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Deleter;

    move-result-object v8

    .line 701
    .local v8, "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    if-eqz v8, :cond_1

    .line 702
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleter is not allowed for a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 703
    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/sleepycat/persist/impl/Evolver;->addInvalidMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Mutation;Ljava/lang/String;)V

    .line 705
    return v7

    .line 707
    :cond_1
    iget-object v9, v0, Lcom/sleepycat/persist/impl/Evolver;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 708
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v11

    invoke-virtual {v9, v10, v11, v4}, Lcom/sleepycat/persist/evolve/Mutations;->getConverter(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Converter;

    move-result-object v9

    .line 709
    .local v9, "converter":Lcom/sleepycat/persist/evolve/Converter;
    const-string v10, "Converter is not allowed for a "

    if-eqz v9, :cond_2

    .line 710
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 711
    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/sleepycat/persist/impl/Evolver;->addInvalidMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Mutation;Ljava/lang/String;)V

    .line 713
    return v7

    .line 715
    :cond_2
    iget-object v11, v0, Lcom/sleepycat/persist/impl/Evolver;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 716
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v13

    invoke-virtual {v11, v12, v13, v4}, Lcom/sleepycat/persist/evolve/Mutations;->getRenamer(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Renamer;

    move-result-object v11

    .line 717
    .local v11, "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 718
    .local v12, "newName":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 719
    invoke-virtual {v11}, Lcom/sleepycat/persist/evolve/Renamer;->getNewName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 720
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 721
    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/sleepycat/persist/impl/Evolver;->addInvalidMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Mutation;Ljava/lang/String;)V

    .line 723
    return v7

    .line 725
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 727
    :cond_4
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 728
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Renamer is required when field name is changed from: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " to: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 729
    invoke-virtual {v0, v1, v2, v10}, Lcom/sleepycat/persist/impl/Evolver;->addMissingMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)V

    .line 732
    return v7

    .line 739
    :cond_5
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v10

    .line 740
    .local v10, "oldFieldFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v0, v10}, Lcom/sleepycat/persist/impl/Evolver;->evolveFormat(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 741
    return v7

    .line 743
    :cond_6
    invoke-virtual {v10}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v13

    .line 744
    .local v13, "oldLatestFormat":Lcom/sleepycat/persist/impl/Format;
    if-eq v10, v13, :cond_7

    .line 745
    const/4 v3, 0x1

    .line 747
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v14

    .line 749
    .local v14, "newFieldFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v13}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v15

    .line 750
    invoke-virtual {v14}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 752
    return v3

    .line 753
    :cond_8
    invoke-virtual {v13}, Lcom/sleepycat/persist/impl/Format;->getWrapperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 754
    invoke-virtual {v13}, Lcom/sleepycat/persist/impl/Format;->getWrapperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v7

    .line 755
    invoke-virtual {v14}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v15

    if-eq v7, v15, :cond_a

    .line 756
    :cond_9
    invoke-virtual {v14}, Lcom/sleepycat/persist/impl/Format;->getWrapperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 757
    invoke-virtual {v14}, Lcom/sleepycat/persist/impl/Format;->getWrapperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v7

    .line 758
    invoke-virtual {v13}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v15

    if-ne v7, v15, :cond_b

    .line 760
    :cond_a
    const/4 v7, 0x1

    return v7

    .line 763
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Old field type: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 766
    invoke-virtual {v13}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " is not compatible with the new type: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 768
    invoke-virtual {v14}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " for field: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 764
    const-string v15, "Type may not be changed for a primary key field or composite key class field"

    invoke-virtual {v0, v1, v2, v15, v7}, Lcom/sleepycat/persist/impl/Evolver;->addEvolveError(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const/4 v7, 0x2

    return v7
.end method

.method finishEvolution()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->unprocessedFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/Format;

    .line 228
    .local v1, "oldFormat":Lcom/sleepycat/persist/impl/Format;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/persist/impl/Format;->setUnused(Z)V

    .line 229
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/impl/Evolver;->evolveFormat(Lcom/sleepycat/persist/impl/Format;)Z

    .line 230
    .end local v1    # "oldFormat":Lcom/sleepycat/persist/impl/Format;
    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method getErrors()Ljava/lang/String;
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->errors:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/persist/impl/Evolver;->errors:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n---\n(Note that when upgrading an application in a replicated environment, this exception may indicate that the Master was mistakenly upgraded before this Replica could be upgraded, and the solution is to upgrade this Replica.)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final getMutations()Lcom/sleepycat/persist/evolve/Mutations;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    return-object v0
.end method

.method getSubclassFormats(Lcom/sleepycat/persist/impl/Format;)Ljava/util/Set;
    .locals 1
    .param p1, "superFormat"    # Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/Format;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->subclassMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method isClassConverted(Lcom/sleepycat/persist/impl/Format;)Z
    .locals 1
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;

    .line 599
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getReader()Lcom/sleepycat/persist/impl/Reader;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/persist/impl/ConverterReader;

    return v0
.end method

.method isFormatChanged(Lcom/sleepycat/persist/impl/Format;)Z
    .locals 1
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;

    .line 100
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->changedFormats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method renameAndRemoveDatabases(Lcom/sleepycat/persist/impl/Store;Lcom/sleepycat/je/Transaction;)V
    .locals 18
    .param p1, "store"    # Lcom/sleepycat/persist/impl/Store;
    .param p2, "txn"    # Lcom/sleepycat/je/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 635
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    iget-object v0, v1, Lcom/sleepycat/persist/impl/Evolver;->deleteDbs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 636
    .local v3, "dbName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/sleepycat/persist/impl/Store;->parseDbName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, "fileAndDbNames":[Ljava/lang/String;
    nop

    .line 639
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/persist/impl/Store;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v5

    aget-object v6, v4, v10

    aget-object v7, v4, v11

    invoke-static {v5, v9, v6, v7}, Lcom/sleepycat/compat/DbCompat;->removeDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;)Z

    .line 641
    .end local v3    # "dbName":Ljava/lang/String;
    .end local v4    # "fileAndDbNames":[Ljava/lang/String;
    goto :goto_0

    .line 653
    :cond_0
    const/4 v0, 0x0

    .line 654
    .local v0, "saveImportunate":Z
    if-eqz v9, :cond_1

    .line 655
    invoke-static {v9, v11}, Lcom/sleepycat/compat/DbCompat;->setImportunate(Lcom/sleepycat/je/Transaction;Z)Z

    move-result v0

    move v12, v0

    goto :goto_1

    .line 654
    :cond_1
    move v12, v0

    .line 658
    .end local v0    # "saveImportunate":Z
    .local v12, "saveImportunate":Z
    :goto_1
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/persist/impl/Evolver;->renameDbs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v13, v3

    .line 659
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v14, v3

    .line 660
    .local v14, "oldName":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v15, v3

    .line 661
    .local v15, "newName":Ljava/lang/String;
    invoke-virtual {v2, v14}, Lcom/sleepycat/persist/impl/Store;->parseDbName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    .line 662
    .local v16, "oldFileAndDbNames":[Ljava/lang/String;
    invoke-virtual {v2, v15}, Lcom/sleepycat/persist/impl/Store;->parseDbName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    .line 664
    .local v17, "newFileAndDbNames":[Ljava/lang/String;
    nop

    .line 665
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/persist/impl/Store;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v3

    aget-object v5, v16, v10

    aget-object v6, v16, v11

    aget-object v7, v17, v10

    aget-object v8, v17, v11

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, Lcom/sleepycat/compat/DbCompat;->renameDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    nop

    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "oldName":Ljava/lang/String;
    .end local v15    # "newName":Ljava/lang/String;
    .end local v16    # "oldFileAndDbNames":[Ljava/lang/String;
    .end local v17    # "newFileAndDbNames":[Ljava/lang/String;
    goto :goto_2

    .line 670
    :cond_2
    if-eqz v9, :cond_3

    .line 671
    invoke-static {v9, v12}, Lcom/sleepycat/compat/DbCompat;->setImportunate(Lcom/sleepycat/je/Transaction;Z)Z

    .line 674
    :cond_3
    return-void

    .line 670
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 671
    invoke-static {v9, v12}, Lcom/sleepycat/compat/DbCompat;->setImportunate(Lcom/sleepycat/je/Transaction;Z)Z

    :cond_4
    throw v0
.end method

.method renameSecondaryDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "oldEntityClass"    # Ljava/lang/String;
    .param p2, "newEntityClass"    # Ljava/lang/String;
    .param p3, "oldKeyName"    # Ljava/lang/String;
    .param p4, "newKeyName"    # Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->renameDbs:Ljava/util/Map;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/Evolver;->storePrefix:Ljava/lang/String;

    .line 545
    invoke-static {v1, p1, p3}, Lcom/sleepycat/persist/impl/Store;->makeSecDbName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/persist/impl/Evolver;->storePrefix:Ljava/lang/String;

    .line 546
    invoke-static {v2, p2, p4}, Lcom/sleepycat/persist/impl/Store;->makeSecDbName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    return-void
.end method

.method useEvolvedFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Reader;Lcom/sleepycat/persist/impl/Format;)V
    .locals 0
    .param p1, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "evolveReader"    # Lcom/sleepycat/persist/impl/Reader;
    .param p3, "newFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 498
    invoke-virtual {p1, p2}, Lcom/sleepycat/persist/impl/Format;->setReader(Lcom/sleepycat/persist/impl/Reader;)V

    .line 499
    if-eqz p3, :cond_0

    .line 500
    invoke-virtual {p1, p3}, Lcom/sleepycat/persist/impl/Format;->setLatestVersion(Lcom/sleepycat/persist/impl/Format;)V

    .line 502
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/Evolver;->setFormatsChanged(Lcom/sleepycat/persist/impl/Format;)V

    .line 503
    return-void
.end method

.method useOldFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)V
    .locals 3
    .param p1, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "newFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 453
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Evolver;->renameFormats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    .line 454
    .local v0, "renamedFormat":Lcom/sleepycat/persist/impl/Format;
    if-eqz v0, :cond_1

    .line 461
    if-ne v0, p2, :cond_0

    .line 462
    invoke-virtual {p0, p1, v0, v0}, Lcom/sleepycat/persist/impl/Evolver;->useEvolvedFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Reader;Lcom/sleepycat/persist/impl/Format;)V

    goto :goto_0

    .line 461
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 463
    :cond_1
    if-eqz p2, :cond_3

    .line 464
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v1

    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 465
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->isCurrentVersion()Z

    move-result v1

    if-nez v1, :cond_3

    .line 481
    :cond_2
    invoke-virtual {p0, p1, p2, p2}, Lcom/sleepycat/persist/impl/Evolver;->useEvolvedFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Reader;Lcom/sleepycat/persist/impl/Format;)V

    goto :goto_0

    .line 484
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Evolver;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v1, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->useExistingFormat(Lcom/sleepycat/persist/impl/Format;)V

    .line 485
    if-eqz p2, :cond_4

    .line 486
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Evolver;->newFormats:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_4
    :goto_0
    return-void
.end method
