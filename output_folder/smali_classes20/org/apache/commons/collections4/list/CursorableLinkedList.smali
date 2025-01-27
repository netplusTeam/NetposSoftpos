.class public Lorg/apache/commons/collections4/list/CursorableLinkedList;
.super Lorg/apache/commons/collections4/list/AbstractLinkedList;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;,
        Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractLinkedList<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7aa12cb4b4f67ac1L


# instance fields
.field private transient cursors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<",
            "TE;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;-><init>()V

    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;-><init>(Ljava/util/Collection;)V

    .line 81
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 382
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 383
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 384
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 371
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 372
    return-void
.end method


# virtual methods
.method protected addNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 233
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    .local p1, "nodeToInsert":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p2, "insertBeforeNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->broadcastNodeInserted(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 235
    return-void
.end method

.method protected broadcastNodeChanged(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 312
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 313
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 315
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    .line 316
    .local v2, "cursor":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    if-nez v2, :cond_0

    .line 317
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 319
    :cond_0
    invoke-virtual {v2, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nodeChanged(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 321
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;"
    .end local v2    # "cursor":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    :goto_1
    goto :goto_0

    .line 322
    :cond_1
    return-void
.end method

.method protected broadcastNodeInserted(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 350
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 351
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 353
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    .line 354
    .local v2, "cursor":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    if-nez v2, :cond_0

    .line 355
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 357
    :cond_0
    invoke-virtual {v2, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nodeInserted(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 359
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;"
    .end local v2    # "cursor":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    :goto_1
    goto :goto_0

    .line 360
    :cond_1
    return-void
.end method

.method protected broadcastNodeRemoved(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 331
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 332
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 334
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    .line 335
    .local v2, "cursor":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    if-nez v2, :cond_0

    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 338
    :cond_0
    invoke-virtual {v2, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nodeRemoved(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 340
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;"
    .end local v2    # "cursor":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    :goto_1
    goto :goto_0

    .line 341
    :cond_1
    return-void
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

    .line 396
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    .local p1, "subList":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;I)V

    .line 397
    .local v0, "cursor":Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$SubCursor<TE;>;"
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;)V

    .line 398
    return-object v0
.end method

.method public cursor()Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<",
            "TE;>;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cursor(I)Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;
    .locals 1
    .param p1, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<",
            "TE;>;"
        }
    .end annotation

    .line 204
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/collections4/list/CursorableLinkedList;I)V

    .line 205
    .local v0, "cursor":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;)V

    .line 206
    return-object v0
.end method

.method protected init()V
    .locals 1

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->init()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    .line 91
    return-void
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

    .line 105
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    move-result-object v0

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

    .line 146
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected registerCursor(Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<",
            "TE;>;)V"
        }
    .end annotation

    .line 273
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    .local p1, "cursor":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 275
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 278
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;"
    :cond_0
    goto :goto_0

    .line 279
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;>;"
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method protected removeAllNodes()V
    .locals 2

    .line 254
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 257
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 262
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    return-void
.end method

.method protected removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 246
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->broadcastNodeRemoved(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 247
    return-void
.end method

.method protected unregisterCursor(Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<",
            "TE;>;)V"
        }
    .end annotation

    .line 288
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    .local p1, "cursor":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 290
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;

    .line 291
    .local v2, "cur":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    if-nez v2, :cond_0

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 296
    :cond_0
    if-ne v2, p1, :cond_1

    .line 297
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 299
    goto :goto_2

    .line 301
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;"
    .end local v2    # "cur":Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;, "Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 302
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor<TE;>;>;>;"
    :cond_2
    :goto_2
    return-void
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

    .line 220
    .local p0, "this":Lorg/apache/commons/collections4/list/CursorableLinkedList;, "Lorg/apache/commons/collections4/list/CursorableLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->updateNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->broadcastNodeChanged(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 222
    return-void
.end method
