.class final Lio/netty/util/Recycler$Stack;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Stack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

.field private cursor:Lio/netty/util/Recycler$WeakOrderQueue;

.field elements:[Lio/netty/util/Recycler$DefaultHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;"
        }
    .end annotation
.end field

.field private handleRecycleCount:I

.field private volatile head:Lio/netty/util/Recycler$WeakOrderQueue;

.field private final interval:I

.field private final maxCapacity:I

.field private final maxDelayedQueues:I

.field final parent:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private prev:Lio/netty/util/Recycler$WeakOrderQueue;

.field size:I

.field final threadRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/netty/util/Recycler;Ljava/lang/Thread;IIII)V
    .locals 3
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "maxCapacity"    # I
    .param p4, "maxSharedCapacityFactor"    # I
    .param p5, "interval"    # I
    .param p6, "maxDelayedQueues"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler<",
            "TT;>;",
            "Ljava/lang/Thread;",
            "IIII)V"
        }
    .end annotation

    .line 499
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    .local p1, "parent":Lio/netty/util/Recycler;, "Lio/netty/util/Recycler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->parent:Lio/netty/util/Recycler;

    .line 501
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->threadRef:Ljava/lang/ref/WeakReference;

    .line 502
    iput p3, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    .line 503
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    div-int v1, p3, p4

    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 504
    invoke-static {}, Lio/netty/util/Recycler;->access$800()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 505
    iput p5, p0, Lio/netty/util/Recycler$Stack;->interval:I

    .line 506
    iput p5, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    .line 507
    iput p6, p0, Lio/netty/util/Recycler$Stack;->maxDelayedQueues:I

    .line 508
    return-void
.end method

.method static synthetic access$700(Lio/netty/util/Recycler$Stack;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/util/Recycler$Stack;

    .line 472
    iget v0, p0, Lio/netty/util/Recycler$Stack;->interval:I

    return v0
.end method

.method private newWeakOrderQueue(Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 691
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    invoke-static {p0, p1}, Lio/netty/util/Recycler$WeakOrderQueue;->newQueue(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;

    move-result-object v0

    return-object v0
.end method

.method private pushLater(Lio/netty/util/Recycler$DefaultHandle;Ljava/lang/Thread;)V
    .locals 4
    .param p2, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;",
            "Ljava/lang/Thread;",
            ")V"
        }
    .end annotation

    .line 657
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    .local p1, "item":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<*>;"
    iget v0, p0, Lio/netty/util/Recycler$Stack;->maxDelayedQueues:I

    if-nez v0, :cond_0

    .line 659
    return-void

    .line 665
    :cond_0
    invoke-static {}, Lio/netty/util/Recycler;->access$400()Lio/netty/util/concurrent/FastThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 666
    .local v0, "delayedRecycled":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/util/Recycler$Stack<*>;Lio/netty/util/Recycler$WeakOrderQueue;>;"
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/Recycler$WeakOrderQueue;

    .line 667
    .local v1, "queue":Lio/netty/util/Recycler$WeakOrderQueue;
    if-nez v1, :cond_3

    .line 668
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    iget v3, p0, Lio/netty/util/Recycler$Stack;->maxDelayedQueues:I

    if-lt v2, v3, :cond_1

    .line 670
    sget-object v2, Lio/netty/util/Recycler$WeakOrderQueue;->DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    return-void

    .line 674
    :cond_1
    invoke-direct {p0, p2}, Lio/netty/util/Recycler$Stack;->newWeakOrderQueue(Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;

    move-result-object v2

    move-object v1, v2

    if-nez v2, :cond_2

    .line 676
    return-void

    .line 678
    :cond_2
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 679
    :cond_3
    sget-object v2, Lio/netty/util/Recycler$WeakOrderQueue;->DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;

    if-ne v1, v2, :cond_4

    .line 681
    return-void

    .line 684
    :cond_4
    :goto_0
    invoke-virtual {v1, p1}, Lio/netty/util/Recycler$WeakOrderQueue;->add(Lio/netty/util/Recycler$DefaultHandle;)V

    .line 685
    return-void
.end method

.method private pushNow(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)V"
        }
    .end annotation

    .line 638
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    .local p1, "item":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<*>;"
    iget v0, p1, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    iget v1, p1, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    or-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 641
    invoke-static {}, Lio/netty/util/Recycler;->access$900()I

    move-result v0

    iput v0, p1, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    iput v0, p1, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    .line 643
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 644
    .local v0, "size":I
    iget v1, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lio/netty/util/Recycler$Stack;->dropHandle(Lio/netty/util/Recycler$DefaultHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 649
    shl-int/lit8 v2, v0, 0x1

    iget v3, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 652
    :cond_1
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    aput-object p1, v1, v0

    .line 653
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 654
    return-void

    .line 646
    :cond_2
    :goto_0
    return-void

    .line 639
    .end local v0    # "size":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "recycled already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scavenge()Z
    .locals 1

    .line 562
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    invoke-direct {p0}, Lio/netty/util/Recycler$Stack;->scavengeSome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x1

    return v0

    .line 567
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 568
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method private scavengeSome()Z
    .locals 5

    .line 574
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 575
    .local v0, "cursor":Lio/netty/util/Recycler$WeakOrderQueue;
    if-nez v0, :cond_0

    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, "prev":Lio/netty/util/Recycler$WeakOrderQueue;
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 578
    if-nez v0, :cond_1

    .line 579
    const/4 v2, 0x0

    return v2

    .line 582
    .end local v1    # "prev":Lio/netty/util/Recycler$WeakOrderQueue;
    :cond_0
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 585
    .restart local v1    # "prev":Lio/netty/util/Recycler$WeakOrderQueue;
    :cond_1
    const/4 v2, 0x0

    .line 587
    .local v2, "success":Z
    :cond_2
    invoke-virtual {v0, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->transfer(Lio/netty/util/Recycler$Stack;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 588
    const/4 v2, 0x1

    .line 589
    goto :goto_2

    .line 591
    :cond_3
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue;->getNext()Lio/netty/util/Recycler$WeakOrderQueue;

    move-result-object v3

    .line 592
    .local v3, "next":Lio/netty/util/Recycler$WeakOrderQueue;
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 596
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue;->hasFinalData()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 598
    :goto_0
    invoke-virtual {v0, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->transfer(Lio/netty/util/Recycler$Stack;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 599
    const/4 v2, 0x1

    goto :goto_0

    .line 606
    :cond_4
    if-eqz v1, :cond_6

    .line 608
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue;->reclaimAllSpaceAndUnlink()V

    .line 609
    invoke-virtual {v1, v3}, Lio/netty/util/Recycler$WeakOrderQueue;->setNext(Lio/netty/util/Recycler$WeakOrderQueue;)V

    goto :goto_1

    .line 612
    :cond_5
    move-object v1, v0

    .line 615
    :cond_6
    :goto_1
    move-object v0, v3

    .line 617
    .end local v3    # "next":Lio/netty/util/Recycler$WeakOrderQueue;
    if-eqz v0, :cond_7

    if-eqz v2, :cond_2

    .line 619
    :cond_7
    :goto_2
    iput-object v1, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 620
    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 621
    return v2
.end method


# virtual methods
.method dropHandle(Lio/netty/util/Recycler$DefaultHandle;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)Z"
        }
    .end annotation

    .line 695
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    .local p1, "handle":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<*>;"
    iget-boolean v0, p1, Lio/netty/util/Recycler$DefaultHandle;->hasBeenRecycled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 696
    iget v0, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    iget v2, p0, Lio/netty/util/Recycler$Stack;->interval:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    .line 697
    add-int/2addr v0, v3

    iput v0, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    .line 699
    return v3

    .line 701
    :cond_0
    iput v1, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    .line 702
    iput-boolean v3, p1, Lio/netty/util/Recycler$DefaultHandle;->hasBeenRecycled:Z

    .line 704
    :cond_1
    return v1
.end method

.method increaseCapacity(I)I
    .locals 4
    .param p1, "expectedCapacity"    # I

    .line 517
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    array-length v0, v0

    .line 518
    .local v0, "newCapacity":I
    iget v1, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    .line 520
    .local v1, "maxCapacity":I
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 521
    if-ge v0, p1, :cond_1

    if-lt v0, v1, :cond_0

    .line 523
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 524
    iget-object v2, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    array-length v3, v2

    if-eq v0, v3, :cond_2

    .line 525
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object v2, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 528
    :cond_2
    return v0
.end method

.method newHandle()Lio/netty/util/Recycler$DefaultHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;"
        }
    .end annotation

    .line 708
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    new-instance v0, Lio/netty/util/Recycler$DefaultHandle;

    invoke-direct {v0, p0}, Lio/netty/util/Recycler$DefaultHandle;-><init>(Lio/netty/util/Recycler$Stack;)V

    return-object v0
.end method

.method pop()Lio/netty/util/Recycler$DefaultHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;"
        }
    .end annotation

    .line 533
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 534
    .local v0, "size":I
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 535
    invoke-direct {p0}, Lio/netty/util/Recycler$Stack;->scavenge()Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    return-object v1

    .line 538
    :cond_0
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 539
    if-gtz v0, :cond_1

    .line 541
    return-object v1

    .line 544
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 545
    iget-object v2, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    aget-object v3, v2, v0

    .line 546
    .local v3, "ret":Lio/netty/util/Recycler$DefaultHandle;
    aput-object v1, v2, v0

    .line 550
    iput v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 552
    iget v1, v3, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    iget v2, v3, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    if-ne v1, v2, :cond_2

    .line 555
    const/4 v1, 0x0

    iput v1, v3, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    .line 556
    iput v1, v3, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    .line 557
    return-object v3

    .line 553
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "recycled multiple times"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method push(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)V"
        }
    .end annotation

    .line 625
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    .local p1, "item":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 626
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->threadRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 628
    invoke-direct {p0, p1}, Lio/netty/util/Recycler$Stack;->pushNow(Lio/netty/util/Recycler$DefaultHandle;)V

    goto :goto_0

    .line 633
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/netty/util/Recycler$Stack;->pushLater(Lio/netty/util/Recycler$DefaultHandle;Ljava/lang/Thread;)V

    .line 635
    :goto_0
    return-void
.end method

.method declared-synchronized setHead(Lio/netty/util/Recycler$WeakOrderQueue;)V
    .locals 1
    .param p1, "queue"    # Lio/netty/util/Recycler$WeakOrderQueue;

    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    monitor-enter p0

    .line 512
    :try_start_0
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    invoke-virtual {p1, v0}, Lio/netty/util/Recycler$WeakOrderQueue;->setNext(Lio/netty/util/Recycler$WeakOrderQueue;)V

    .line 513
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    .line 511
    .end local p0    # "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    .end local p1    # "queue":Lio/netty/util/Recycler$WeakOrderQueue;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
