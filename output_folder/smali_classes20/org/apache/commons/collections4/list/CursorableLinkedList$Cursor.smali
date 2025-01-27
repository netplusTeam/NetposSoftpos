.class public Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;
.super Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;
.source "CursorableLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field currentRemovedByAnother:Z

.field nextIndexValid:Z

.field valid:Z


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/CursorableLinkedList;I)V
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList<",
            "TE;>;I)V"
        }
    .end annotation

    .line 421
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;I)V

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    .line 410
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    .line 412
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    .line 422
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    .line 423
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 461
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->add(Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 465
    return-void
.end method

.method protected checkModCount()V
    .locals 2

    .line 553
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    if-eqz v0, :cond_0

    .line 556
    return-void

    .line 554
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Cursor closed"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 567
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    check-cast v0, Lorg/apache/commons/collections4/list/CursorableLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->unregisterCursor(Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;)V

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    .line 571
    :cond_0
    return-void
.end method

.method public bridge synthetic hasNext()Z
    .locals 1

    .line 406
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasPrevious()Z
    .locals 1

    .line 406
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 406
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 3

    .line 479
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    if-nez v0, :cond_2

    .line 480
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndex:I

    goto :goto_1

    .line 483
    :cond_0
    const/4 v0, 0x0

    .line 484
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 485
    .local v1, "temp":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_1

    .line 486
    add-int/lit8 v0, v0, 0x1

    .line 487
    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 489
    :cond_1
    iput v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndex:I

    .line 491
    .end local v0    # "pos":I
    .end local v1    # "temp":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    .line 493
    :cond_2
    iget v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndex:I

    return v0
.end method

.method protected nodeChanged(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 503
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    return-void
.end method

.method protected nodeInserted(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 539
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 540
    iput-object p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 541
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne v0, p1, :cond_1

    .line 542
    iput-object p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 544
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    .line 546
    :goto_0
    return-void
.end method

.method protected nodeRemoved(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 511
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne p1, v0, :cond_0

    .line 513
    iget-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 514
    iput-object v1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 515
    iput-boolean v2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    goto :goto_0

    .line 516
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 519
    iget-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 520
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne p1, v0, :cond_2

    .line 524
    iput-object v1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 525
    iput-boolean v2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    .line 526
    iget v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndex:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndex:I

    goto :goto_0

    .line 528
    :cond_2
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    .line 529
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    .line 531
    :goto_0
    return-void
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 406
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousIndex()I
    .locals 1

    .line 406
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 440
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->checkModCount()V

    .line 447
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->getLastNodeReturned()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 449
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    .line 450
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 406
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
