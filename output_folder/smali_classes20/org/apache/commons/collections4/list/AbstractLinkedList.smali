.class public abstract Lorg/apache/commons/collections4/list/AbstractLinkedList;
.super Ljava/lang/Object;
.source "AbstractLinkedList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;,
        Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubListIterator;,
        Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;,
        Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# instance fields
.field transient header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field transient modCount:I

.field transient size:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method protected constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->init()V

    .line 87
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addAll(Ljava/util/Collection;)Z

    .line 88
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 226
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 219
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addLast(Ljava/lang/Object;)Z

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 236
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p2, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v1

    .line 237
    .local v1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 238
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 239
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 240
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 231
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 342
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNodeAfter(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public addLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 347
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method protected addNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 516
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "nodeToInsert":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p2, "insertBeforeNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iput-object p2, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 517
    iget-object v0, p2, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 518
    iget-object v0, p2, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object p1, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 519
    iput-object p1, p2, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 520
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    .line 521
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    .line 522
    return-void
.end method

.method protected addNodeAfter(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;TE;)V"
        }
    .end annotation

    .line 504
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 505
    .local v0, "newNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 506
    return-void
.end method

.method protected addNodeBefore(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;TE;)V"
        }
    .end annotation

    .line 488
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 489
    .local v0, "newNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 490
    return-void
.end method

.method public clear()V
    .locals 0

    .line 320
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeAllNodes()V

    .line 321
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 163
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 168
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 169
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    const/4 v0, 0x0

    return v0

    .line 172
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected createHeaderNode()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 461
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;-><init>()V

    return-object v0
.end method

.method protected createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 473
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createSubListIterator(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 599
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "subList":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createSubListListIterator(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected createSubListListIterator(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;
    .locals 1
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<",
            "TE;>;I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 610
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "subList":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubListIterator;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubListIterator;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;I)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 643
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->init()V

    .line 644
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 645
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 646
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->add(Ljava/lang/Object;)Z

    .line 645
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 625
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 626
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 627
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 628
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 629
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 374
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 375
    return v0

    .line 377
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 378
    return v2

    .line 380
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 381
    .local v1, "other":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 382
    return v2

    .line 384
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 385
    .local v3, "it1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 386
    .local v4, "it2":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 387
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 388
    .local v5, "o1":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 389
    .local v6, "o2":Ljava/lang/Object;
    if-nez v5, :cond_3

    if-nez v6, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 390
    :cond_4
    return v2

    .line 392
    .end local v5    # "o1":Ljava/lang/Object;
    .end local v6    # "o2":Ljava/lang/Object;
    :cond_5
    :goto_1
    goto :goto_0

    .line 393
    :cond_6
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 115
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 327
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 330
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 328
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 335
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 338
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 336
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method protected getNode(IZ)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 3
    .param p1, "index"    # I
    .param p2, "endMarkerAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 560
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    const-string v0, "Couldn\'t get the node: index ("

    if-ltz p1, :cond_6

    .line 564
    if-nez p2, :cond_1

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is the size of the list."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    if-gt p1, v1, :cond_5

    .line 575
    div-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_3

    .line 577
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 578
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    const/4 v1, 0x0

    .local v1, "currentIndex":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 579
    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "currentIndex":I
    :cond_2
    goto :goto_3

    .line 583
    .end local v0    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 584
    .restart local v0    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    .restart local v1    # "currentIndex":I
    :goto_2
    if-le v1, p1, :cond_4

    .line 585
    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 584
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 588
    .end local v1    # "currentIndex":I
    :cond_4
    :goto_3
    return-object v0

    .line 569
    .end local v0    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :cond_5
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") greater than the size of the list ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 561
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") less than zero."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .locals 5

    .line 398
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    const/4 v0, 0x1

    .line 399
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 400
    .local v2, "e":Ljava/lang/Object;, "TE;"
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int v0, v3, v4

    .line 401
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 402
    :cond_1
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 139
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    const/4 v0, 0x0

    .line 140
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .local v1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_1

    .line 141
    invoke-virtual {v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    return v0

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 140
    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 146
    .end local v1    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method protected init()V
    .locals 1

    .line 97
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createHeaderNode()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 98
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 109
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .line 438
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    if-eq p1, p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
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

    .line 122
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 151
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 152
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .local v1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_1

    .line 153
    invoke-virtual {v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    return v0

    .line 156
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 152
    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 158
    .end local v1    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 247
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 248
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 249
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 250
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 255
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_1

    .line 256
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 258
    const/4 v1, 0x1

    return v1

    .line 255
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 261
    .end local v0    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 275
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 276
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 277
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 280
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    :cond_1
    return v0
.end method

.method protected removeAllNodes()V
    .locals 1

    .line 541
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 542
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    .line 544
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    .line 545
    return-void
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 352
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 353
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 356
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 357
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 358
    return-object v1

    .line 354
    .end local v1    # "oldValue":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 363
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 366
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 367
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 368
    return-object v1

    .line 364
    .end local v1    # "oldValue":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method protected removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 531
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v1, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 532
    iget-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v1, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 533
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    .line 534
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    .line 535
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 299
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 300
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 301
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 304
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :cond_1
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 313
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 314
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->updateNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 315
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 104
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndexInclusive"    # I
    .param p2, "toIndexExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 180
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    if-ge v0, v1, :cond_0

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 189
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 192
    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v0, 0x0

    .line 193
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .local v1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_1

    .line 194
    invoke-virtual {v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    .line 193
    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :cond_1
    array-length v1, p1

    iget v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    if-le v1, v2, :cond_2

    .line 198
    const/4 v1, 0x0

    aput-object v1, p1, v2

    .line 200
    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 407
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 408
    const-string v0, "[]"

    return-object v0

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 411
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 414
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 415
    .local v2, "hasNext":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 416
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 417
    .local v3, "value":Ljava/lang/Object;
    if-ne v3, p0, :cond_1

    const-string v4, "(this Collection)"

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 419
    if-eqz v2, :cond_2

    .line 420
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 423
    :cond_3
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected updateNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;TE;)V"
        }
    .end annotation

    .line 450
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 451
    return-void
.end method
