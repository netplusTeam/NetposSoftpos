.class public Lcom/sleepycat/collections/StoredIterator;
.super Lcom/sleepycat/collections/BaseIterator;
.source "StoredIterator.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/collections/BaseIterator<",
        "TE;>;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final MOVE_FIRST:I = 0x3

.field private static final MOVE_NEXT:I = 0x1

.field private static final MOVE_PREV:I = 0x2


# instance fields
.field private coll:Lcom/sleepycat/collections/StoredCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/collections/StoredCollection<",
            "TE;>;"
        }
    .end annotation
.end field

.field private currentData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private cursor:Lcom/sleepycat/collections/DataCursor;

.field private lockForWrite:Z

.field private setAndRemoveAllowed:Z

.field private toCurrent:I

.field private toNext:I

.field private toPrevious:I

.field private writeAllowed:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/collections/StoredCollection;ZLcom/sleepycat/collections/DataCursor;)V
    .locals 2
    .param p2, "writeAllowed"    # Z
    .param p3, "joinCursor"    # Lcom/sleepycat/collections/DataCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/collections/StoredCollection<",
            "TE;>;Z",
            "Lcom/sleepycat/collections/DataCursor;",
            ")V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    .local p1, "coll":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    invoke-direct {p0}, Lcom/sleepycat/collections/BaseIterator;-><init>()V

    .line 105
    :try_start_0
    iput-object p1, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    .line 106
    iput-boolean p2, p0, Lcom/sleepycat/collections/StoredIterator;->writeAllowed:Z

    .line 107
    if-nez p3, :cond_0

    .line 108
    new-instance v0, Lcom/sleepycat/collections/DataCursor;

    iget-object v1, p1, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    invoke-direct {v0, v1, p2}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    iput-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    goto :goto_0

    .line 110
    :cond_0
    iput-object p3, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredIterator;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    nop

    .line 121
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredIterator;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    goto :goto_1

    .line 116
    :catch_1
    move-exception v1

    .line 119
    :goto_1
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static close(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    .line 82
    .local p0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    instance-of v0, p0, Lcom/sleepycat/collections/StoredIterator;

    if-eqz v0, :cond_0

    .line 83
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/collections/StoredIterator;

    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredIterator;->close()V

    .line 85
    :cond_0
    return-void
.end method

.method private move(I)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 717
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    packed-switch p1, :pswitch_data_0

    .line 733
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 731
    :pswitch_0
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    iget-boolean v1, p0, Lcom/sleepycat/collections/StoredIterator;->lockForWrite:Z

    invoke-virtual {v0, v1}, Lcom/sleepycat/collections/DataCursor;->getFirst(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0

    .line 725
    :pswitch_1
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredCollection;->iterateDuplicates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    iget-boolean v1, p0, Lcom/sleepycat/collections/StoredIterator;->lockForWrite:Z

    invoke-virtual {v0, v1}, Lcom/sleepycat/collections/DataCursor;->getPrev(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    iget-boolean v1, p0, Lcom/sleepycat/collections/StoredIterator;->lockForWrite:Z

    invoke-virtual {v0, v1}, Lcom/sleepycat/collections/DataCursor;->getPrevNoDup(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0

    .line 719
    :pswitch_2
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredCollection;->iterateDuplicates()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    iget-boolean v1, p0, Lcom/sleepycat/collections/StoredIterator;->lockForWrite:Z

    invoke-virtual {v0, v1}, Lcom/sleepycat/collections/DataCursor;->getNext(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    iget-boolean v1, p0, Lcom/sleepycat/collections/StoredIterator;->lockForWrite:Z

    invoke-virtual {v0, v1}, Lcom/sleepycat/collections/DataCursor;->getNextNoDup(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private moveToCurrent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 708
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    iget v0, p0, Lcom/sleepycat/collections/StoredIterator;->toCurrent:I

    if-eqz v0, :cond_0

    .line 709
    invoke-direct {p0, v0}, Lcom/sleepycat/collections/StoredIterator;->move(I)Lcom/sleepycat/je/OperationStatus;

    .line 710
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/collections/StoredIterator;->toCurrent:I

    .line 712
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .line 590
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    const/4 v0, 0x3

    iput v0, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I

    .line 591
    const/4 v0, 0x2

    iput v0, p0, Lcom/sleepycat/collections/StoredIterator;->toPrevious:I

    .line 592
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/collections/StoredIterator;->toCurrent:I

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->currentData:Ljava/lang/Object;

    .line 600
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredIterator;->hasNext()Z

    .line 601
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 527
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredCollection;->checkIterAddAllowed()V

    .line 529
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    .line 530
    .local v0, "status":Lcom/sleepycat/je/OperationStatus;
    iget v1, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sleepycat/collections/StoredIterator;->toPrevious:I

    if-eqz v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v1, v1, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v1, v1, Lcom/sleepycat/collections/DataView;->keysRenumbered:Z

    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredIterator;->close()V

    .line 539
    iget-object v1, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v1, v1, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v1, p1, v3, v3}, Lcom/sleepycat/collections/DataView;->append(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    move-object v0, v1

    .line 540
    new-instance v1, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v3, v3, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v4, p0, Lcom/sleepycat/collections/StoredIterator;->writeAllowed:Z

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    iput-object v1, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    .line 541
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredIterator;->reset()V

    .line 542
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredIterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 544
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Collection is empty, cannot add() duplicate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "value":Ljava/lang/Object;, "TE;"
    throw v1

    .line 548
    .restart local p1    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v1, 0x0

    .line 549
    .local v1, "putBefore":Z
    iget-object v4, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v4, v4, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v4, v4, Lcom/sleepycat/collections/DataView;->keysRenumbered:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 550
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredIterator;->moveToCurrent()V

    .line 551
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 552
    iget-object v3, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    invoke-virtual {v3, p1}, Lcom/sleepycat/collections/DataCursor;->putBefore(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    move-object v0, v3

    .line 553
    const/4 v1, 0x1

    goto :goto_0

    .line 555
    :cond_2
    iget-object v3, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    invoke-virtual {v3, p1}, Lcom/sleepycat/collections/DataCursor;->putAfter(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 558
    :cond_3
    iget-object v4, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v4}, Lcom/sleepycat/collections/StoredCollection;->areDuplicatesOrdered()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 559
    iget-object v4, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    invoke-virtual {v4, v3, p1, v3, v5}, Lcom/sleepycat/collections/DataCursor;->putNoDupData(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 560
    :cond_4
    iget v3, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I

    if-nez v3, :cond_5

    .line 561
    iget-object v3, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    invoke-virtual {v3, p1}, Lcom/sleepycat/collections/DataCursor;->putBefore(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    move-object v0, v3

    .line 562
    const/4 v1, 0x1

    goto :goto_0

    .line 564
    :cond_5
    iget-object v3, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    invoke-virtual {v3, p1}, Lcom/sleepycat/collections/DataCursor;->putAfter(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    move-object v0, v3

    .line 567
    :goto_0
    if-eqz v1, :cond_6

    .line 568
    iput v2, p0, Lcom/sleepycat/collections/StoredIterator;->toPrevious:I

    .line 569
    iput v5, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I

    .line 572
    .end local v1    # "putBefore":Z
    :cond_6
    :goto_1
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->KEYEXIST:Lcom/sleepycat/je/OperationStatus;

    if-eq v0, v1, :cond_8

    .line 574
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v0, v1, :cond_7

    .line 577
    iput-boolean v2, p0, Lcom/sleepycat/collections/StoredIterator;->setAndRemoveAllowed:Z

    .line 580
    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    nop

    .line 581
    return-void

    .line 575
    .restart local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not insert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p1    # "value":Ljava/lang/Object;, "TE;"
    throw v1

    .line 573
    .restart local p1    # "value":Ljava/lang/Object;, "TE;"
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Duplicate value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "value":Ljava/lang/Object;, "TE;"
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local p1    # "value":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public close()V
    .locals 2

    .line 654
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    if-eqz v0, :cond_0

    .line 655
    iget-object v1, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v1, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    .line 658
    :cond_0
    return-void
.end method

.method public count()I
    .locals 2

    .line 627
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    iget-boolean v0, p0, Lcom/sleepycat/collections/StoredIterator;->setAndRemoveAllowed:Z

    if-eqz v0, :cond_0

    .line 631
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredIterator;->moveToCurrent()V

    .line 632
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->count()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final dup()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 677
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/collections/StoredIterator;

    .line 678
    .local v0, "o":Lcom/sleepycat/collections/StoredIterator;
    iget-object v1, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    invoke-virtual {v1}, Lcom/sleepycat/collections/DataCursor;->cloneCursor()Lcom/sleepycat/collections/DataCursor;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    return-object v0

    .line 680
    .end local v0    # "o":Lcom/sleepycat/collections/StoredIterator;
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final getCollection()Lcom/sleepycat/collections/StoredCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/collections/StoredCollection<",
            "TE;>;"
        }
    .end annotation

    .line 669
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .line 172
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 173
    return v1

    .line 176
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I

    if-eqz v0, :cond_1

    .line 177
    invoke-direct {p0, v0}, Lcom/sleepycat/collections/StoredIterator;->move(I)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 178
    .local v0, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v0, v2, :cond_1

    .line 179
    iput v1, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I

    .line 180
    const/4 v2, 0x2

    iput v2, p0, Lcom/sleepycat/collections/StoredIterator;->toPrevious:I

    .line 181
    iput v2, p0, Lcom/sleepycat/collections/StoredIterator;->toCurrent:I

    .line 184
    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_1
    iget v0, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasPrevious()Z
    .locals 4

    .line 211
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 212
    return v1

    .line 215
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/sleepycat/collections/StoredIterator;->toPrevious:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0, v0}, Lcom/sleepycat/collections/StoredIterator;->move(I)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 217
    .local v0, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v0, v3, :cond_1

    .line 218
    iput v1, p0, Lcom/sleepycat/collections/StoredIterator;->toPrevious:I

    .line 219
    iput v2, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I

    .line 220
    iput v2, p0, Lcom/sleepycat/collections/StoredIterator;->toCurrent:I

    .line 223
    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_1
    iget v0, p0, Lcom/sleepycat/collections/StoredIterator;->toPrevious:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method final isCurrentData(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "currentData"    # Ljava/lang/Object;

    .line 687
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->currentData:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isReadModifyWrite()Z
    .locals 1

    .line 133
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    iget-boolean v0, p0, Lcom/sleepycat/collections/StoredIterator;->lockForWrite:Z

    return v0
.end method

.method final moveToIndex(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 693
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    .line 694
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/sleepycat/collections/StoredIterator;->lockForWrite:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/collections/DataCursor;->getSearchKey(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 696
    .local v0, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sleepycat/collections/StoredIterator;->setAndRemoveAllowed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    return v1

    .line 698
    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    :try_start_0
    iget v0, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, v0}, Lcom/sleepycat/collections/StoredIterator;->move(I)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 252
    .local v0, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v0, v2, :cond_0

    .line 253
    iput v1, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I

    .line 256
    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_0
    iget v0, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v2, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    invoke-virtual {v0, p0, v2}, Lcom/sleepycat/collections/StoredCollection;->makeIteratorData(Lcom/sleepycat/collections/BaseIterator;Lcom/sleepycat/collections/DataCursor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->currentData:Ljava/lang/Object;

    .line 258
    const/4 v2, 0x1

    iput v2, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I

    .line 259
    iput v1, p0, Lcom/sleepycat/collections/StoredIterator;->toPrevious:I

    .line 260
    iput v1, p0, Lcom/sleepycat/collections/StoredIterator;->toCurrent:I

    .line 261
    iput-boolean v2, p0, Lcom/sleepycat/collections/StoredIterator;->setAndRemoveAllowed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    return-object v0

    .line 267
    :cond_1
    nop

    .line 268
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public nextIndex()I
    .locals 2

    .line 341
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v0, v0, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->recNumAccess:Z

    if-eqz v0, :cond_1

    .line 346
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->getCurrentRecordNumber()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    .line 347
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredCollection;->getIndexOffset()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    .line 346
    :goto_0
    return v0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Record number access not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    :try_start_0
    iget v0, p0, Lcom/sleepycat/collections/StoredIterator;->toPrevious:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0, v0}, Lcom/sleepycat/collections/StoredIterator;->move(I)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 294
    .local v0, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v0, v2, :cond_0

    .line 295
    iput v1, p0, Lcom/sleepycat/collections/StoredIterator;->toPrevious:I

    .line 298
    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_0
    iget v0, p0, Lcom/sleepycat/collections/StoredIterator;->toPrevious:I

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v2, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    invoke-virtual {v0, p0, v2}, Lcom/sleepycat/collections/StoredCollection;->makeIteratorData(Lcom/sleepycat/collections/BaseIterator;Lcom/sleepycat/collections/DataCursor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->currentData:Ljava/lang/Object;

    .line 300
    const/4 v2, 0x2

    iput v2, p0, Lcom/sleepycat/collections/StoredIterator;->toPrevious:I

    .line 301
    iput v1, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I

    .line 302
    iput v1, p0, Lcom/sleepycat/collections/StoredIterator;->toCurrent:I

    .line 303
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/collections/StoredIterator;->setAndRemoveAllowed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    return-object v0

    .line 309
    :cond_1
    nop

    .line 310
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public previousIndex()I
    .locals 2

    .line 379
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v0, v0, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->recNumAccess:Z

    if-eqz v0, :cond_1

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->getCurrentRecordNumber()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    .line 385
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredCollection;->getIndexOffset()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 384
    :goto_0
    return v0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Record number access not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 472
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    iget-boolean v0, p0, Lcom/sleepycat/collections/StoredIterator;->setAndRemoveAllowed:Z

    if-eqz v0, :cond_0

    .line 476
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredIterator;->moveToCurrent()V

    .line 477
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->delete()Lcom/sleepycat/je/OperationStatus;

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/collections/StoredIterator;->setAndRemoveAllowed:Z

    .line 479
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/collections/StoredIterator;->toNext:I

    .line 480
    const/4 v0, 0x2

    iput v0, p0, Lcom/sleepycat/collections/StoredIterator;->toPrevious:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    nop

    .line 484
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 473
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 426
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredCollection;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-boolean v0, p0, Lcom/sleepycat/collections/StoredIterator;->setAndRemoveAllowed:Z

    if-eqz v0, :cond_0

    .line 433
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredIterator;->moveToCurrent()V

    .line 434
    iget-object v0, p0, Lcom/sleepycat/collections/StoredIterator;->cursor:Lcom/sleepycat/collections/DataCursor;

    invoke-virtual {v0, p1}, Lcom/sleepycat/collections/DataCursor;->putCurrent(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    nop

    .line 438
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 430
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 427
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setReadModifyWrite(Z)V
    .locals 0
    .param p1, "lockForWrite"    # Z

    .line 146
    .local p0, "this":Lcom/sleepycat/collections/StoredIterator;, "Lcom/sleepycat/collections/StoredIterator<TE;>;"
    iput-boolean p1, p0, Lcom/sleepycat/collections/StoredIterator;->lockForWrite:Z

    .line 147
    return-void
.end method
