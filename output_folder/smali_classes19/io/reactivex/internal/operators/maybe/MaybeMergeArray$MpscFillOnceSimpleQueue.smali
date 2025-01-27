.class final Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "MaybeMergeArray.java"

# interfaces
.implements Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeMergeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MpscFillOnceSimpleQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "TT;>;",
        "Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6e97ccfd52a2b6ebL


# instance fields
.field consumerIndex:I

.field final producerIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .line 327
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;, "Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 328
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 329
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 391
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;, "Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method public consumerIndex()I
    .locals 1

    .line 396
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;, "Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue<TT;>;"
    iget v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->consumerIndex:I

    return v0
.end method

.method public drop()V
    .locals 2

    .line 379
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;, "Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue<TT;>;"
    iget v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->consumerIndex:I

    .line 380
    .local v0, "ci":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->lazySet(ILjava/lang/Object;)V

    .line 381
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->consumerIndex:I

    .line 382
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .line 386
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;, "Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue<TT;>;"
    iget v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->consumerIndex:I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->producerIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 333
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;, "Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "value is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 335
    .local v0, "idx":I
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 336
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->lazySet(ILjava/lang/Object;)V

    .line 337
    const/4 v1, 0x1

    return v1

    .line 339
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 344
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;, "Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue<TT;>;"
    .local p1, "v1":Ljava/lang/Object;, "TT;"
    .local p2, "v2":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 370
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;, "Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue<TT;>;"
    iget v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->consumerIndex:I

    .line 371
    .local v0, "ci":I
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 372
    const/4 v1, 0x0

    return-object v1

    .line 374
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 350
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;, "Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue<TT;>;"
    iget v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->consumerIndex:I

    .line 351
    .local v0, "ci":I
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 352
    return-object v2

    .line 354
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 356
    .local v1, "pi":Ljava/util/concurrent/atomic/AtomicInteger;
    :goto_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 357
    .local v3, "v":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_1

    .line 358
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->consumerIndex:I

    .line 359
    invoke-virtual {p0, v0, v2}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->lazySet(ILjava/lang/Object;)V

    .line 360
    return-object v3

    .line 362
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 363
    return-object v2

    .line 365
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    :cond_2
    goto :goto_0
.end method

.method public producerIndex()I
    .locals 1

    .line 401
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;, "Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
