.class public abstract Lcom/sleepycat/collections/StoredCollection;
.super Lcom/sleepycat/collections/StoredContainer;
.source "StoredCollection.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/collections/StoredContainer;",
        "Ljava/util/Collection<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ITERATOR_BLOCK_SIZE:I = 0xa


# instance fields
.field private iteratorBlockSize:I


# direct methods
.method constructor <init>(Lcom/sleepycat/collections/DataView;)V
    .locals 1
    .param p1, "view"    # Lcom/sleepycat/collections/DataView;

    .line 69
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/collections/StoredContainer;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 65
    const/16 v0, 0xa

    iput v0, p0, Lcom/sleepycat/collections/StoredCollection;->iteratorBlockSize:I

    .line 70
    return-void
.end method

.method private static copyCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p0, "other"    # Ljava/lang/Object;

    .line 736
    instance-of v0, p0, Lcom/sleepycat/collections/StoredCollection;

    if-eqz v0, :cond_0

    .line 737
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredCollection;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 739
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method final add(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 105
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    const/4 v0, 0x0

    .line 106
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->beginAutoCommit()Z

    move-result v1

    .line 108
    .local v1, "doAutoCommit":Z
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v2

    .line 109
    const/4 v2, 0x0

    .line 110
    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/sleepycat/collections/DataCursor;->putNoDupData(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 111
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredCollection;->commitAutoCommit(Z)V

    .line 113
    sget-object v5, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    return v4

    .line 114
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 116
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/collections/StoredCollection;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 365
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    .line 366
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->beginAutoCommit()Z

    move-result v1

    .line 368
    .local v1, "doAutoCommit":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredCollection;->storedOrExternalIterator(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v2

    .line 369
    const/4 v2, 0x0

    .line 370
    .local v2, "changed":Z
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sleepycat/collections/StoredCollection;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    const/4 v2, 0x1

    goto :goto_0

    .line 375
    :cond_1
    invoke-static {v0}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 376
    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredCollection;->commitAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    return v2

    .line 378
    .end local v2    # "changed":Z
    :catch_0
    move-exception v2

    .line 379
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 380
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/collections/StoredCollection;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method blockIterator()Lcom/sleepycat/collections/BlockIterator;
    .locals 3

    .line 121
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    new-instance v0, Lcom/sleepycat/collections/BlockIterator;

    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->isWriteAllowed()Z

    move-result v1

    iget v2, p0, Lcom/sleepycat/collections/StoredCollection;->iteratorBlockSize:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/collections/BlockIterator;-><init>(Lcom/sleepycat/collections/StoredCollection;ZI)V

    return-object v0
.end method

.method checkIterAddAllowed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 724
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->areDuplicatesAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    return-void

    .line 725
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Duplicates required"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 325
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 327
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredCollection;->storedOrExternalIterator(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .line 328
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredCollection;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 330
    const/4 v1, 0x0

    .line 337
    invoke-static {v0}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 330
    return v1

    .line 333
    :cond_1
    const/4 v1, 0x1

    .line 337
    invoke-static {v0}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 333
    return v1

    .line 337
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 334
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local p1    # "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local p1    # "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    invoke-static {v0}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 484
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 485
    invoke-static {p1}, Lcom/sleepycat/collections/StoredCollection;->copyCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 486
    .local v0, "otherColl":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 488
    .local v2, "i":Lcom/sleepycat/collections/StoredIterator;
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->storedIterator()Lcom/sleepycat/collections/StoredIterator;

    move-result-object v3

    move-object v2, v3

    .line 489
    const/4 v3, 0x1

    .line 490
    .local v3, "otherHasAll":Z
    :cond_0
    invoke-virtual {v2}, Lcom/sleepycat/collections/StoredIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 491
    invoke-virtual {v2}, Lcom/sleepycat/collections/StoredIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 492
    const/4 v3, 0x0

    .line 496
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 500
    :cond_2
    invoke-static {v2}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 496
    return v1

    .line 500
    .end local v3    # "otherHasAll":Z
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 497
    :catch_0
    move-exception v1

    .line 498
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "otherColl":Ljava/util/Collection;
    .end local v2    # "i":Lcom/sleepycat/collections/StoredIterator;
    .end local p1    # "other":Ljava/lang/Object;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "otherColl":Ljava/util/Collection;
    .restart local v2    # "i":Lcom/sleepycat/collections/StoredIterator;
    .restart local p1    # "other":Ljava/lang/Object;
    :goto_0
    invoke-static {v2}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    throw v1

    .line 503
    .end local v0    # "otherColl":Ljava/util/Collection;
    .end local v2    # "i":Lcom/sleepycat/collections/StoredIterator;
    :cond_3
    return v1
.end method

.method final getFirstOrLast(Z)Ljava/lang/Object;
    .locals 4
    .param p1, "doGetFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TE;"
        }
    .end annotation

    .line 682
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    const/4 v0, 0x0

    .line 684
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    new-instance v1, Lcom/sleepycat/collections/DataCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v1

    .line 686
    if-eqz p1, :cond_0

    .line 687
    invoke-virtual {v0, v3}, Lcom/sleepycat/collections/DataCursor;->getFirst(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    goto :goto_0

    .line 689
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_0
    invoke-virtual {v0, v3}, Lcom/sleepycat/collections/DataCursor;->getLast(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 691
    .restart local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :goto_0
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 692
    invoke-virtual {p0, v3, v0}, Lcom/sleepycat/collections/StoredCollection;->makeIteratorData(Lcom/sleepycat/collections/BaseIterator;Lcom/sleepycat/collections/DataCursor;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    .line 697
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 691
    return-object v3

    .line 697
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 694
    :catch_0
    move-exception v1

    .line 695
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local p1    # "doGetFirst":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local p1    # "doGetFirst":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    throw v1
.end method

.method getIndexOffset()I
    .locals 1

    .line 731
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getIteratorBlockSize()I
    .locals 1

    .line 81
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    iget v0, p0, Lcom/sleepycat/collections/StoredCollection;->iteratorBlockSize:I

    return v0
.end method

.method abstract hasValues()Z
.end method

.method public hashCode()I
    .locals 1

    .line 512
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method iterateDuplicates()Z
    .locals 1

    .line 718
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator(Z)Lcom/sleepycat/collections/StoredIterator;
    .locals 1
    .param p1, "writeAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sleepycat/collections/StoredIterator<",
            "TE;>;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredCollection;->storedIterator(Z)Lcom/sleepycat/collections/StoredIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->blockIterator()Lcom/sleepycat/collections/BlockIterator;

    move-result-object v0

    return-object v0
.end method

.method public join([Lcom/sleepycat/collections/StoredContainer;[Ljava/lang/Object;Lcom/sleepycat/je/JoinConfig;)Lcom/sleepycat/collections/StoredIterator;
    .locals 4
    .param p1, "indices"    # [Lcom/sleepycat/collections/StoredContainer;
    .param p2, "indexKeys"    # [Ljava/lang/Object;
    .param p3, "joinConfig"    # Lcom/sleepycat/je/JoinConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sleepycat/collections/StoredContainer;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/sleepycat/je/JoinConfig;",
            ")",
            "Lcom/sleepycat/collections/StoredIterator<",
            "TE;>;"
        }
    .end annotation

    .line 669
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    :try_start_0
    array-length v0, p1

    new-array v0, v0, [Lcom/sleepycat/collections/DataView;

    .line 670
    .local v0, "indexViews":[Lcom/sleepycat/collections/DataView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 671
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    aput-object v2, v0, v1

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v1, v0, p2, p3}, Lcom/sleepycat/collections/DataView;->join([Lcom/sleepycat/collections/DataView;[Ljava/lang/Object;Lcom/sleepycat/je/JoinConfig;)Lcom/sleepycat/collections/DataCursor;

    move-result-object v1

    .line 674
    .local v1, "cursor":Lcom/sleepycat/collections/DataCursor;
    new-instance v2, Lcom/sleepycat/collections/StoredIterator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Lcom/sleepycat/collections/StoredIterator;-><init>(Lcom/sleepycat/collections/StoredCollection;ZLcom/sleepycat/collections/DataCursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 675
    .end local v0    # "indexViews":[Lcom/sleepycat/collections/DataView;
    .end local v1    # "cursor":Lcom/sleepycat/collections/DataCursor;
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method makeIteratorData(Lcom/sleepycat/collections/BaseIterator;Lcom/sleepycat/collections/DataCursor;)Ljava/lang/Object;
    .locals 3
    .param p1, "iterator"    # Lcom/sleepycat/collections/BaseIterator;
    .param p2, "cursor"    # Lcom/sleepycat/collections/DataCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/collections/BaseIterator;",
            "Lcom/sleepycat/collections/DataCursor;",
            ")TE;"
        }
    .end annotation

    .line 703
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    nop

    .line 704
    invoke-virtual {p2}, Lcom/sleepycat/collections/DataCursor;->getKeyThang()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    .line 705
    invoke-virtual {p2}, Lcom/sleepycat/collections/DataCursor;->getPrimaryKeyThang()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v1

    .line 706
    invoke-virtual {p2}, Lcom/sleepycat/collections/DataCursor;->getValueThang()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v2

    .line 703
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sleepycat/collections/StoredCollection;->makeIteratorData(Lcom/sleepycat/collections/BaseIterator;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract makeIteratorData(Lcom/sleepycat/collections/BaseIterator;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/collections/BaseIterator;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")TE;"
        }
    .end annotation
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 404
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 405
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->beginAutoCommit()Z

    move-result v1

    .line 407
    .local v1, "doAutoCommit":Z
    const/4 v2, 0x0

    .line 408
    .local v2, "changed":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredCollection;->storedOrExternalIterator(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    .line 409
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sleepycat/collections/StoredCollection;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    const/4 v2, 0x1

    goto :goto_0

    .line 414
    :cond_1
    invoke-static {v0}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 415
    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredCollection;->commitAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    return v2

    .line 417
    .end local v2    # "changed":Z
    :catch_0
    move-exception v2

    .line 418
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 419
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/collections/StoredCollection;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 444
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 445
    .local v0, "i":Lcom/sleepycat/collections/StoredIterator;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->beginAutoCommit()Z

    move-result v1

    .line 447
    .local v1, "doAutoCommit":Z
    const/4 v2, 0x0

    .line 448
    .local v2, "changed":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->storedIterator()Lcom/sleepycat/collections/StoredIterator;

    move-result-object v3

    move-object v0, v3

    .line 449
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 450
    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 451
    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredIterator;->remove()V

    .line 452
    const/4 v2, 0x1

    goto :goto_0

    .line 455
    :cond_1
    invoke-static {v0}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 456
    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredCollection;->commitAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    return v2

    .line 458
    .end local v2    # "changed":Z
    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 460
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/collections/StoredCollection;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public setIteratorBlockSize(I)V
    .locals 3
    .param p1, "blockSize"    # I

    .line 95
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 100
    iput p1, p0, Lcom/sleepycat/collections/StoredCollection;->iteratorBlockSize:I

    .line 101
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockSize is less than two: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 7

    .line 591
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->iterateDuplicates()Z

    move-result v0

    .line 592
    .local v0, "countDups":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-object v1, v1, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v1}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 594
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-object v1, v1, Lcom/sleepycat/collections/DataView;->db:Lcom/sleepycat/je/Database;

    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->getDatabaseCount(Lcom/sleepycat/je/Database;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v1

    return v1

    .line 595
    :catch_0
    move-exception v1

    .line 596
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 599
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    .line 600
    .local v1, "count":I
    iget-object v2, p0, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-object v2, v2, Lcom/sleepycat/collections/DataView;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    invoke-virtual {v2}, Lcom/sleepycat/collections/CurrentTransaction;->isLockingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sleepycat/je/CursorConfig;->READ_UNCOMMITTED:Lcom/sleepycat/je/CursorConfig;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 602
    .local v2, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    :goto_0
    const/4 v3, 0x0

    .line 605
    .local v3, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_1
    new-instance v4, Lcom/sleepycat/collections/DataCursor;

    iget-object v5, p0, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;ZLcom/sleepycat/je/CursorConfig;)V

    move-object v3, v4

    .line 606
    invoke-virtual {v3, v6}, Lcom/sleepycat/collections/DataCursor;->getFirst(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v4

    .line 607
    .local v4, "status":Lcom/sleepycat/je/OperationStatus;
    :goto_1
    sget-object v5, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v4, v5, :cond_3

    .line 608
    if-eqz v0, :cond_2

    .line 609
    invoke-virtual {v3}, Lcom/sleepycat/collections/DataCursor;->count()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_2

    .line 611
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 613
    :goto_2
    invoke-virtual {v3, v6}, Lcom/sleepycat/collections/DataCursor;->getNextNoDup(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    goto :goto_1

    .line 618
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 619
    nop

    .line 620
    return v1

    .line 618
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 615
    :catch_1
    move-exception v4

    .line 616
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v4}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "countDups":Z
    .end local v1    # "count":I
    .end local v2    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .end local v3    # "cursor":Lcom/sleepycat/collections/DataCursor;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 618
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "countDups":Z
    .restart local v1    # "count":I
    .restart local v2    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .restart local v3    # "cursor":Lcom/sleepycat/collections/DataCursor;
    :goto_3
    invoke-virtual {p0, v3}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    throw v4
.end method

.method public storedIterator()Lcom/sleepycat/collections/StoredIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/collections/StoredIterator<",
            "TE;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->isWriteAllowed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredCollection;->storedIterator(Z)Lcom/sleepycat/collections/StoredIterator;

    move-result-object v0

    return-object v0
.end method

.method public storedIterator(Z)Lcom/sleepycat/collections/StoredIterator;
    .locals 3
    .param p1, "writeAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sleepycat/collections/StoredIterator<",
            "TE;>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    :try_start_0
    new-instance v0, Lcom/sleepycat/collections/StoredIterator;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->isWriteAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/collections/StoredIterator;-><init>(Lcom/sleepycat/collections/StoredCollection;ZLcom/sleepycat/collections/DataCursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 248
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 251
    .local v1, "i":Lcom/sleepycat/collections/StoredIterator;
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->storedIterator()Lcom/sleepycat/collections/StoredIterator;

    move-result-object v2

    move-object v1, v2

    .line 252
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 259
    nop

    .line 260
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 258
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1    # "i":Lcom/sleepycat/collections/StoredIterator;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v1    # "i":Lcom/sleepycat/collections/StoredIterator;
    :goto_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    throw v2
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 283
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .line 284
    .local v0, "j":I
    const/4 v1, 0x0

    .line 286
    .local v1, "i":Lcom/sleepycat/collections/StoredIterator;
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->storedIterator()Lcom/sleepycat/collections/StoredIterator;

    move-result-object v2

    move-object v1, v2

    .line 287
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredIterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 288
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "j":I
    .local v2, "j":I
    :try_start_1
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredIterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v2

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    goto :goto_3

    .line 290
    .end local v2    # "j":I
    .restart local v0    # "j":I
    :cond_0
    :try_start_2
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 291
    const/4 v2, 0x0

    aput-object v2, p1, v0

    goto :goto_2

    .line 292
    :cond_1
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 293
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_1
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 297
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v3

    .line 302
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_3
    :goto_2
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 303
    nop

    .line 304
    return-object p1

    .line 302
    :catchall_0
    move-exception v2

    move-object v4, v2

    move v2, v0

    move-object v0, v4

    goto :goto_4

    .line 299
    :catch_1
    move-exception v2

    move-object v4, v2

    move v2, v0

    move-object v0, v4

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    .local v2, "j":I
    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v1    # "i":Lcom/sleepycat/collections/StoredIterator;
    .end local v2    # "j":I
    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":Lcom/sleepycat/collections/StoredIterator;
    .restart local v2    # "j":I
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    throw v0
.end method

.method public toList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 536
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v1, 0x0

    .line 539
    .local v1, "i":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->storedIterator()Lcom/sleepycat/collections/StoredIterator;

    move-result-object v2

    move-object v1, v2

    .line 540
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 543
    :cond_0
    nop

    .line 547
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 543
    return-object v0

    .line 547
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 544
    :catch_0
    move-exception v2

    .line 545
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .end local v1    # "i":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .restart local v1    # "i":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    :goto_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 570
    .local p0, "this":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const/4 v1, 0x0

    .line 574
    .local v1, "i":Lcom/sleepycat/collections/StoredIterator;
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredCollection;->storedIterator()Lcom/sleepycat/collections/StoredIterator;

    move-result-object v2

    move-object v1, v2

    .line 575
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 579
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 580
    return-object v2

    .line 584
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 581
    :catch_0
    move-exception v2

    .line 582
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "i":Lcom/sleepycat/collections/StoredIterator;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "i":Lcom/sleepycat/collections/StoredIterator;
    :goto_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    throw v2
.end method
