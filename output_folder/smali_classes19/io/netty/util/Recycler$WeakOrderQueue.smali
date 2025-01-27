.class final Lio/netty/util/Recycler$WeakOrderQueue;
.super Ljava/lang/ref/WeakReference;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakOrderQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/Recycler$WeakOrderQueue$Head;,
        Lio/netty/util/Recycler$WeakOrderQueue$Link;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;


# instance fields
.field private handleRecycleCount:I

.field private final head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

.field private final id:I

.field private final interval:I

.field private next:Lio/netty/util/Recycler$WeakOrderQueue;

.field private tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 238
    const-class v0, Lio/netty/util/Recycler;

    .line 240
    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue;

    invoke-direct {v0}, Lio/netty/util/Recycler$WeakOrderQueue;-><init>()V

    sput-object v0, Lio/netty/util/Recycler$WeakOrderQueue;->DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 315
    invoke-static {}, Lio/netty/util/Recycler;->access$600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->id:I

    .line 321
    new-instance v1, Lio/netty/util/Recycler$WeakOrderQueue$Head;

    invoke-direct {v1, v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    iput-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->interval:I

    .line 323
    return-void
.end method

.method private constructor <init>(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)V
    .locals 2
    .param p2, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;",
            "Ljava/lang/Thread;",
            ")V"
        }
    .end annotation

    .line 326
    .local p1, "stack":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<*>;"
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 315
    invoke-static {}, Lio/netty/util/Recycler;->access$600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->id:I

    .line 327
    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-direct {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;-><init>()V

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 332
    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue$Head;

    iget-object v1, p1, Lio/netty/util/Recycler$Stack;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Lio/netty/util/Recycler$WeakOrderQueue$Head;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    .line 333
    iget-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    iput-object v1, v0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 334
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$700(Lio/netty/util/Recycler$Stack;)I

    move-result v0

    iput v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->interval:I

    .line 335
    iput v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->handleRecycleCount:I

    .line 336
    return-void
.end method

.method static newQueue(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;",
            "Ljava/lang/Thread;",
            ")",
            "Lio/netty/util/Recycler$WeakOrderQueue;"
        }
    .end annotation

    .line 340
    .local p0, "stack":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<*>;"
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reserveSpaceForLink(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    return-object v0

    .line 343
    :cond_0
    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue;

    invoke-direct {v0, p0, p1}, Lio/netty/util/Recycler$WeakOrderQueue;-><init>(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)V

    .line 346
    .local v0, "queue":Lio/netty/util/Recycler$WeakOrderQueue;
    invoke-virtual {p0, v0}, Lio/netty/util/Recycler$Stack;->setHead(Lio/netty/util/Recycler$WeakOrderQueue;)V

    .line 348
    return-object v0
.end method


# virtual methods
.method add(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)V"
        }
    .end annotation

    .line 366
    .local p1, "handle":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<*>;"
    iget v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->id:I

    iput v0, p1, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    .line 371
    iget v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->handleRecycleCount:I

    iget v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->interval:I

    if-ge v0, v1, :cond_0

    .line 372
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->handleRecycleCount:I

    .line 374
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->handleRecycleCount:I

    .line 378
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 380
    .local v0, "tail":Lio/netty/util/Recycler$WeakOrderQueue$Link;
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v1

    move v2, v1

    .local v2, "writeIndex":I
    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 381
    iget-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    invoke-virtual {v1}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->newLink()Lio/netty/util/Recycler$WeakOrderQueue$Link;

    move-result-object v1

    .line 382
    .local v1, "link":Lio/netty/util/Recycler$WeakOrderQueue$Link;
    if-nez v1, :cond_1

    .line 384
    return-void

    .line 387
    :cond_1
    iput-object v1, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    move-object v0, v1

    iput-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 389
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v2

    .line 391
    .end local v1    # "link":Lio/netty/util/Recycler$WeakOrderQueue$Link;
    :cond_2
    iget-object v1, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    aput-object p1, v1, v2

    .line 392
    const/4 v1, 0x0

    iput-object v1, p1, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    .line 395
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->lazySet(I)V

    .line 396
    return-void
.end method

.method getNext()Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 1

    .line 352
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    return-object v0
.end method

.method hasFinalData()Z
    .locals 2

    .line 399
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    iget v0, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->readIndex:I

    iget-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-virtual {v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reclaimAllSpaceAndUnlink()V
    .locals 1

    .line 361
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reclaimAllSpaceAndUnlink()V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 363
    return-void
.end method

.method setNext(Lio/netty/util/Recycler$WeakOrderQueue;)V
    .locals 1
    .param p1, "next"    # Lio/netty/util/Recycler$WeakOrderQueue;

    .line 356
    if-eq p1, p0, :cond_0

    .line 357
    iput-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 358
    return-void

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method transfer(Lio/netty/util/Recycler$Stack;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;)Z"
        }
    .end annotation

    .line 405
    .local p1, "dst":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<*>;"
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    iget-object v0, v0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 406
    .local v0, "head":Lio/netty/util/Recycler$WeakOrderQueue$Link;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 407
    return v1

    .line 410
    :cond_0
    iget v2, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->readIndex:I

    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 411
    iget-object v2, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    if-nez v2, :cond_1

    .line 412
    return v1

    .line 414
    :cond_1
    iget-object v0, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 415
    iget-object v2, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    invoke-virtual {v2, v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->relink(Lio/netty/util/Recycler$WeakOrderQueue$Link;)V

    .line 418
    :cond_2
    iget v2, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->readIndex:I

    .line 419
    .local v2, "srcStart":I
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v3

    .line 420
    .local v3, "srcEnd":I
    sub-int v4, v3, v2

    .line 421
    .local v4, "srcSize":I
    if-nez v4, :cond_3

    .line 422
    return v1

    .line 425
    :cond_3
    iget v5, p1, Lio/netty/util/Recycler$Stack;->size:I

    .line 426
    .local v5, "dstSize":I
    add-int v6, v5, v4

    .line 428
    .local v6, "expectedCapacity":I
    iget-object v7, p1, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    array-length v7, v7

    if-le v6, v7, :cond_4

    .line 429
    invoke-virtual {p1, v6}, Lio/netty/util/Recycler$Stack;->increaseCapacity(I)I

    move-result v7

    .line 430
    .local v7, "actualCapacity":I
    add-int v8, v2, v7

    sub-int/2addr v8, v5

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 433
    .end local v7    # "actualCapacity":I
    :cond_4
    if-eq v2, v3, :cond_b

    .line 434
    iget-object v7, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 435
    .local v7, "srcElems":[Lio/netty/util/Recycler$DefaultHandle;
    iget-object v8, p1, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 436
    .local v8, "dstElems":[Lio/netty/util/Recycler$DefaultHandle;
    move v9, v5

    .line 437
    .local v9, "newDstSize":I
    move v10, v2

    .local v10, "i":I
    :goto_0
    if-ge v10, v3, :cond_8

    .line 438
    aget-object v11, v7, v10

    .line 439
    .local v11, "element":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<*>;"
    iget v12, v11, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    if-nez v12, :cond_5

    .line 440
    iget v12, v11, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    iput v12, v11, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    goto :goto_1

    .line 441
    :cond_5
    iget v12, v11, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    iget v13, v11, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    if-ne v12, v13, :cond_7

    .line 444
    :goto_1
    const/4 v12, 0x0

    aput-object v12, v7, v10

    .line 446
    invoke-virtual {p1, v11}, Lio/netty/util/Recycler$Stack;->dropHandle(Lio/netty/util/Recycler$DefaultHandle;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 448
    goto :goto_2

    .line 450
    :cond_6
    iput-object p1, v11, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    .line 451
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "newDstSize":I
    .local v12, "newDstSize":I
    aput-object v11, v8, v9

    move v9, v12

    .line 437
    .end local v11    # "element":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<*>;"
    .end local v12    # "newDstSize":I
    .restart local v9    # "newDstSize":I
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 442
    .restart local v11    # "element":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<*>;"
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v12, "recycled already"

    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    .end local v10    # "i":I
    .end local v11    # "element":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<*>;"
    :cond_8
    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    move-result v10

    if-ne v3, v10, :cond_9

    iget-object v10, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    if-eqz v10, :cond_9

    .line 456
    iget-object v10, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Head;

    iget-object v11, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-virtual {v10, v11}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->relink(Lio/netty/util/Recycler$WeakOrderQueue$Link;)V

    .line 459
    :cond_9
    iput v3, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->readIndex:I

    .line 460
    iget v10, p1, Lio/netty/util/Recycler$Stack;->size:I

    if-ne v10, v9, :cond_a

    .line 461
    return v1

    .line 463
    :cond_a
    iput v9, p1, Lio/netty/util/Recycler$Stack;->size:I

    .line 464
    const/4 v1, 0x1

    return v1

    .line 467
    .end local v7    # "srcElems":[Lio/netty/util/Recycler$DefaultHandle;
    .end local v8    # "dstElems":[Lio/netty/util/Recycler$DefaultHandle;
    .end local v9    # "newDstSize":I
    :cond_b
    return v1
.end method
