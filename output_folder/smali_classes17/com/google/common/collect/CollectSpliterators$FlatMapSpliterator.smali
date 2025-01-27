.class abstract Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CollectSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FlatMapSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        "OutElementT:",
        "Ljava/lang/Object;",
        "OutSpliteratorT::",
        "Ljava/util/Spliterator<",
        "TOutElementT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TOutElementT;>;"
    }
.end annotation


# instance fields
.field characteristics:I

.field estimatedSize:J

.field final factory:Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory<",
            "TInElementT;TOutSpliteratorT;>;"
        }
    .end annotation
.end field

.field final from:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TInElementT;>;"
        }
    .end annotation
.end field

.field final function:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TInElementT;TOutSpliteratorT;>;"
        }
    .end annotation
.end field

.field prefix:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOutSpliteratorT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;IJ)V
    .locals 0
    .param p1    # Ljava/util/Spliterator;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p5, "characteristics"    # I
    .param p6, "estimatedSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutSpliteratorT;",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;TOutSpliteratorT;>;",
            "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory<",
            "TInElementT;TOutSpliteratorT;>;IJ)V"
        }
    .end annotation

    .line 334
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    .local p1, "prefix":Ljava/util/Spliterator;, "TOutSpliteratorT;"
    .local p2, "from":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p3, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;TOutSpliteratorT;>;"
    .local p4, "factory":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory<TInElementT;TOutSpliteratorT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 336
    iput-object p2, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->from:Ljava/util/Spliterator;

    .line 337
    iput-object p3, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    .line 338
    iput-object p4, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->factory:Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;

    .line 339
    iput p5, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->characteristics:I

    .line 340
    iput-wide p6, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 341
    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    .line 419
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->characteristics:I

    return v0
.end method

.method public final estimateSize()J
    .locals 5

    .line 411
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v0, :cond_0

    .line 412
    iget-wide v1, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 414
    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TOutElementT;>;)V"
        }
    .end annotation

    .line 369
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TOutElementT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->from:Ljava/util/Spliterator;

    new-instance v1, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 380
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 381
    return-void
.end method

.method synthetic lambda$forEachRemaining$1$com-google-common-collect-CollectSpliterators$FlatMapSpliterator(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/Consumer;
    .param p2, "fromElement"    # Ljava/lang/Object;

    .line 375
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator;

    .line 376
    .local v0, "elements":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TOutElementT;>;"
    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 379
    :cond_0
    return-void
.end method

.method synthetic lambda$tryAdvance$0$com-google-common-collect-CollectSpliterators$FlatMapSpliterator(Ljava/lang/Object;)V
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;

    .line 361
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator;

    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    return-void
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TOutElementT;>;)Z"
        }
    .end annotation

    .line 353
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TOutElementT;>;"
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 355
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 357
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 359
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 361
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->from:Ljava/util/Spliterator;

    new-instance v1, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 362
    const/4 v0, 0x0

    return v0

    .line 361
    :cond_2
    goto :goto_0
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOutSpliteratorT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 386
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->from:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 387
    .local v0, "fromSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 388
    iget v1, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->characteristics:I

    and-int/lit8 v9, v1, -0x41

    .line 389
    .local v9, "splitCharacteristics":I
    invoke-virtual {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimateSize()J

    move-result-wide v1

    .line 390
    .local v1, "estSplitSize":J
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 391
    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    .line 392
    iget-wide v3, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 393
    iput v9, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->characteristics:I

    move-wide v10, v1

    goto :goto_0

    .line 390
    :cond_0
    move-wide v10, v1

    .line 395
    .end local v1    # "estSplitSize":J
    .local v10, "estSplitSize":J
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->factory:Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;

    iget-object v2, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    iget-object v4, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    .line 396
    move-object v3, v0

    move v5, v9

    move-wide v6, v10

    invoke-interface/range {v1 .. v7}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;->newFlatMapSpliterator(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object v1

    .line 398
    .local v1, "result":Ljava/util/Spliterator;, "TOutSpliteratorT;"
    iput-object v8, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 399
    return-object v1

    .line 400
    .end local v1    # "result":Ljava/util/Spliterator;, "TOutSpliteratorT;"
    .end local v9    # "splitCharacteristics":I
    .end local v10    # "estSplitSize":J
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 402
    .restart local v1    # "result":Ljava/util/Spliterator;, "TOutSpliteratorT;"
    iput-object v8, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 403
    return-object v1

    .line 405
    .end local v1    # "result":Ljava/util/Spliterator;, "TOutSpliteratorT;"
    :cond_2
    return-object v8
.end method
