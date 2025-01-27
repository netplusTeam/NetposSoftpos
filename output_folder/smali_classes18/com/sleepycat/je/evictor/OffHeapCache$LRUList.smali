.class Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;
.super Ljava/lang/Object;
.source "OffHeapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/OffHeapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LRUList"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private back:I

.field private front:I

.field private size:I

.field final synthetic this$0:Lcom/sleepycat/je/evictor/OffHeapCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 374
    const-class v0, Lcom/sleepycat/je/evictor/OffHeapCache;

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/evictor/OffHeapCache;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    const/4 p1, -0x1

    iput p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    .line 382
    iput p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    .line 383
    const/4 p1, 0x0

    iput p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->size:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/evictor/OffHeapCache;Lcom/sleepycat/je/evictor/OffHeapCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/evictor/OffHeapCache;
    .param p2, "x1"    # Lcom/sleepycat/je/evictor/OffHeapCache$1;

    .line 374
    invoke-direct {p0, p1}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;-><init>(Lcom/sleepycat/je/evictor/OffHeapCache;)V

    return-void
.end method

.method private addBackInternal(ILcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)V
    .locals 5
    .param p1, "entry"    # I
    .param p2, "chunk"    # Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .param p3, "chunkIdx"    # I

    .line 477
    iget-object v0, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v0, v0, p3

    if-eqz v0, :cond_6

    .line 478
    iget-object v0, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aget v0, v0, p3

    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    .line 480
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    const/4 v1, -0x1

    if-gez v0, :cond_2

    .line 481
    if-ne v0, v1, :cond_1

    .line 482
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    if-ne v0, v1, :cond_0

    .line 484
    iget-object v0, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->prev:[I

    aput v1, v0, p3

    .line 485
    iget-object v0, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aput v1, v0, p3

    .line 487
    iput p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    .line 488
    iput p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    goto :goto_0

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 481
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 490
    :cond_2
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    if-ltz v0, :cond_4

    .line 492
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$000(Lcom/sleepycat/je/evictor/OffHeapCache;)[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    move-result-object v0

    iget v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    const v3, 0x19000

    div-int v4, v2, v3

    aget-object v0, v0, v4

    .line 493
    .local v0, "nextChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int/2addr v2, v3

    .line 495
    .local v2, "nextIdx":I
    iget-object v3, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->prev:[I

    aget v3, v3, v2

    if-gez v3, :cond_3

    .line 497
    iget-object v3, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->prev:[I

    aput p1, v3, v2

    .line 499
    iget-object v3, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    iget v4, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    aput v4, v3, p3

    .line 500
    iget-object v3, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->prev:[I

    aput v1, v3, p3

    .line 502
    iput p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    .line 505
    .end local v0    # "nextChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v2    # "nextIdx":I
    :goto_0
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->size:I

    .line 506
    return-void

    .line 495
    .restart local v0    # "nextChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local v2    # "nextIdx":I
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 490
    .end local v0    # "nextChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v2    # "nextIdx":I
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 478
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 477
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private addFrontInternal(ILcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)V
    .locals 5
    .param p1, "entry"    # I
    .param p2, "chunk"    # Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .param p3, "chunkIdx"    # I

    .line 512
    iget-object v0, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v0, v0, p3

    if-eqz v0, :cond_6

    .line 513
    iget-object v0, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aget v0, v0, p3

    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    .line 515
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    const/4 v1, -0x1

    if-gez v0, :cond_2

    .line 516
    iget v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    if-ne v2, v1, :cond_1

    .line 517
    if-ne v0, v1, :cond_0

    .line 519
    iget-object v0, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->prev:[I

    aput v1, v0, p3

    .line 520
    iget-object v0, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aput v1, v0, p3

    .line 522
    iput p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    .line 523
    iput p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    goto :goto_0

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 516
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 525
    :cond_2
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    if-ltz v0, :cond_4

    .line 527
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$000(Lcom/sleepycat/je/evictor/OffHeapCache;)[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    move-result-object v0

    iget v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    const v3, 0x19000

    div-int v4, v2, v3

    aget-object v0, v0, v4

    .line 528
    .local v0, "prevChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int/2addr v2, v3

    .line 530
    .local v2, "prevIdx":I
    iget-object v3, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aget v3, v3, v2

    if-gez v3, :cond_3

    .line 532
    iget-object v3, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aput p1, v3, v2

    .line 534
    iget-object v3, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->prev:[I

    iget v4, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    aput v4, v3, p3

    .line 535
    iget-object v3, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aput v1, v3, p3

    .line 537
    iput p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    .line 540
    .end local v0    # "prevChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v2    # "prevIdx":I
    :goto_0
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->size:I

    .line 541
    return-void

    .line 530
    .restart local v0    # "prevChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local v2    # "prevIdx":I
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 525
    .end local v0    # "prevChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v2    # "prevIdx":I
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 513
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 512
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private removeInternal(ILcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)V
    .locals 8
    .param p1, "entry"    # I
    .param p2, "chunk"    # Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .param p3, "chunkIdx"    # I

    .line 547
    iget-object v0, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v0, v0, p3

    if-eqz v0, :cond_d

    .line 549
    iget-object v0, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aget v0, v0, p3

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 550
    return-void

    .line 553
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    if-ltz v0, :cond_c

    .line 554
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    if-ltz v0, :cond_b

    .line 556
    iget-object v0, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->prev:[I

    aget v0, v0, p3

    .line 557
    .local v0, "prev":I
    iget-object v2, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aget v2, v2, p3

    .line 559
    .local v2, "next":I
    const/4 v3, -0x1

    const v4, 0x19000

    if-gez v0, :cond_3

    .line 560
    if-ne v0, v3, :cond_2

    .line 561
    iget v5, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    if-ne v5, p1, :cond_1

    .line 563
    iput v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    goto :goto_0

    .line 561
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 560
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 565
    :cond_3
    iget v5, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    if-eq v5, p1, :cond_a

    .line 567
    iget-object v5, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v5}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$000(Lcom/sleepycat/je/evictor/OffHeapCache;)[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    move-result-object v5

    div-int v6, v0, v4

    aget-object v5, v5, v6

    .line 568
    .local v5, "prevChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v6, v0, v4

    .line 570
    .local v6, "prevIdx":I
    iget-object v7, v5, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aget v7, v7, v6

    if-ne v7, p1, :cond_9

    .line 572
    iget-object v7, v5, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aput v2, v7, v6

    .line 575
    .end local v5    # "prevChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v6    # "prevIdx":I
    :goto_0
    if-gez v2, :cond_6

    .line 576
    if-ne v2, v3, :cond_5

    .line 577
    iget v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    if-ne v3, p1, :cond_4

    .line 579
    iput v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    goto :goto_1

    .line 577
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 576
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 581
    :cond_6
    iget v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    if-eq v3, p1, :cond_8

    .line 583
    iget-object v3, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$000(Lcom/sleepycat/je/evictor/OffHeapCache;)[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    move-result-object v3

    div-int v5, v2, v4

    aget-object v3, v3, v5

    .line 584
    .local v3, "nextChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v4, v2, v4

    .line 586
    .local v4, "nextIdx":I
    iget-object v5, v3, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->prev:[I

    aget v5, v5, v4

    if-ne v5, p1, :cond_7

    .line 588
    iget-object v5, v3, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->prev:[I

    aput v0, v5, v4

    .line 591
    .end local v3    # "nextChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v4    # "nextIdx":I
    :goto_1
    iget-object v3, p2, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aput v1, v3, p3

    .line 593
    iget v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->size:I

    .line 594
    return-void

    .line 586
    .restart local v3    # "nextChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local v4    # "nextIdx":I
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 581
    .end local v3    # "nextChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v4    # "nextIdx":I
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 570
    .restart local v5    # "prevChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local v6    # "prevIdx":I
    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 565
    .end local v5    # "prevChunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v6    # "prevIdx":I
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 554
    .end local v0    # "prev":I
    .end local v2    # "next":I
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 553
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 547
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method addBack(ILcom/sleepycat/je/tree/IN;J)V
    .locals 3
    .param p1, "entry"    # I
    .param p2, "owner"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "memId"    # J

    .line 387
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$000(Lcom/sleepycat/je/evictor/OffHeapCache;)[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    move-result-object v0

    const v1, 0x19000

    div-int v2, p1, v1

    aget-object v0, v0, v2

    .line 388
    .local v0, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v1, p1, v1

    .line 395
    .local v1, "chunkIdx":I
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aput-object p2, v2, v1

    .line 396
    iget-object v2, v0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->memIds:[J

    aput-wide p3, v2, v1

    .line 398
    monitor-enter p0

    .line 399
    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->addBackInternal(ILcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)V

    .line 400
    monitor-exit p0

    .line 401
    return-void

    .line 400
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method addFront(I)V
    .locals 3
    .param p1, "entry"    # I

    .line 405
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$000(Lcom/sleepycat/je/evictor/OffHeapCache;)[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    move-result-object v0

    const v1, 0x19000

    div-int v2, p1, v1

    aget-object v0, v0, v2

    .line 406
    .local v0, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v1, p1, v1

    .line 408
    .local v1, "chunkIdx":I
    monitor-enter p0

    .line 409
    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->addFrontInternal(ILcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)V

    .line 410
    monitor-exit p0

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method contains(Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)Z
    .locals 2
    .param p1, "chunk"    # Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .param p2, "chunkIdx"    # I

    .line 598
    monitor-enter p0

    .line 599
    :try_start_0
    iget-object v0, p1, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aget v0, v0, p2

    const/4 v1, -0x2

    if-lt v0, v1, :cond_1

    .line 601
    iget-object v0, p1, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    aget v0, v0, p2

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 599
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local p2    # "chunkIdx":I
    throw v0

    .line 603
    .restart local p1    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .restart local p2    # "chunkIdx":I
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1
.end method

.method getSize()I
    .locals 1

    .line 607
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->size:I

    return v0
.end method

.method moveBack(I)V
    .locals 3
    .param p1, "entry"    # I

    .line 415
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$000(Lcom/sleepycat/je/evictor/OffHeapCache;)[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    move-result-object v0

    const v1, 0x19000

    div-int v2, p1, v1

    aget-object v0, v0, v2

    .line 416
    .local v0, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v1, p1, v1

    .line 418
    .local v1, "chunkIdx":I
    monitor-enter p0

    .line 420
    :try_start_0
    iget v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->back:I

    if-ne v2, p1, :cond_0

    .line 421
    monitor-exit p0

    return-void

    .line 424
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->removeInternal(ILcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)V

    .line 425
    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->addBackInternal(ILcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)V

    .line 426
    monitor-exit p0

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method moveFront(I)V
    .locals 3
    .param p1, "entry"    # I

    .line 431
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$000(Lcom/sleepycat/je/evictor/OffHeapCache;)[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    move-result-object v0

    const v1, 0x19000

    div-int v2, p1, v1

    aget-object v0, v0, v2

    .line 432
    .local v0, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v1, p1, v1

    .line 434
    .local v1, "chunkIdx":I
    monitor-enter p0

    .line 436
    :try_start_0
    iget v2, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    if-ne v2, p1, :cond_0

    .line 437
    monitor-exit p0

    return-void

    .line 440
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->removeInternal(ILcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)V

    .line 441
    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->addFrontInternal(ILcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)V

    .line 442
    monitor-exit p0

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method remove(I)V
    .locals 3
    .param p1, "entry"    # I

    .line 465
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$000(Lcom/sleepycat/je/evictor/OffHeapCache;)[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    move-result-object v0

    const v1, 0x19000

    div-int v2, p1, v1

    aget-object v0, v0, v2

    .line 466
    .local v0, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v1, p1, v1

    .line 468
    .local v1, "chunkIdx":I
    monitor-enter p0

    .line 469
    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->removeInternal(ILcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)V

    .line 470
    monitor-exit p0

    .line 471
    return-void

    .line 470
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removeFront()I
    .locals 4

    .line 447
    monitor-enter p0

    .line 449
    :try_start_0
    iget v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->front:I

    .line 450
    .local v0, "entry":I
    if-gez v0, :cond_0

    .line 451
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$000(Lcom/sleepycat/je/evictor/OffHeapCache;)[Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;

    move-result-object v1

    const v2, 0x19000

    div-int v3, v0, v2

    aget-object v1, v1, v3

    .line 455
    .local v1, "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    rem-int v2, v0, v2

    .line 457
    .local v2, "chunkIdx":I
    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/je/evictor/OffHeapCache$LRUList;->removeInternal(ILcom/sleepycat/je/evictor/OffHeapCache$Chunk;I)V

    .line 459
    monitor-exit p0

    return v0

    .line 460
    .end local v0    # "entry":I
    .end local v1    # "chunk":Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
    .end local v2    # "chunkIdx":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
