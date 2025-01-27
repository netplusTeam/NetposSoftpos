.class final Ljava9/util/Spliterators$DoubleIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava9/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleIteratorSpliterator"
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J

.field private it:Ljava9/util/PrimitiveIterator$OfDouble;


# direct methods
.method public constructor <init>(Ljava9/util/PrimitiveIterator$OfDouble;I)V
    .locals 2
    .param p1, "iterator"    # Ljava9/util/PrimitiveIterator$OfDouble;
    .param p2, "characteristics"    # I

    .line 2385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2386
    iput-object p1, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfDouble;

    .line 2387
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2388
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    .line 2389
    return-void
.end method

.method public constructor <init>(Ljava9/util/PrimitiveIterator$OfDouble;JI)V
    .locals 1
    .param p1, "iterator"    # Ljava9/util/PrimitiveIterator$OfDouble;
    .param p2, "size"    # J
    .param p4, "characteristics"    # I

    .line 2368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2369
    iput-object p1, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfDouble;

    .line 2370
    iput-wide p2, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2371
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_0

    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    iput v0, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    .line 2374
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 2433
    iget v0, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 2429
    iget-wide v0, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 2350
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->forEachRemaining(Ljava9/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava9/util/function/DoubleConsumer;

    .line 2414
    iget-object v0, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfDouble;

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/function/DoubleConsumer;

    invoke-interface {v0, v1}, Ljava9/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava9/util/function/DoubleConsumer;)V

    .line 2415
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2437
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2438
    const/4 v0, 0x0

    return-object v0

    .line 2440
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 2350
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/DoubleConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava9/util/function/DoubleConsumer;

    .line 2419
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    iget-object v0, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2421
    iget-object v0, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava9/util/function/DoubleConsumer;->accept(D)V

    .line 2422
    const/4 v0, 0x1

    return v0

    .line 2424
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava9/util/Spliterator$OfDouble;
    .locals 10

    .line 2393
    iget-object v0, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfDouble;

    .line 2394
    .local v0, "i":Ljava9/util/PrimitiveIterator$OfDouble;
    iget-wide v1, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2395
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2396
    iget v3, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 2397
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    .line 2398
    long-to-int v3, v1

    .line 2399
    :cond_0
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_1

    .line 2400
    const/high16 v3, 0x2000000

    .line 2401
    :cond_1
    new-array v4, v3, [D

    .line 2402
    .local v4, "a":[D
    const/4 v5, 0x0

    .line 2403
    .local v5, "j":I
    :cond_2
    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_3

    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2404
    :cond_3
    iput v5, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->batch:I

    .line 2405
    iget-wide v6, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 2406
    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2407
    :cond_4
    new-instance v6, Ljava9/util/Spliterators$DoubleArraySpliterator;

    const/4 v7, 0x0

    iget v8, p0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    invoke-direct {v6, v4, v7, v5, v8}, Ljava9/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v6

    .line 2409
    .end local v3    # "n":I
    .end local v4    # "a":[D
    .end local v5    # "j":I
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 2350
    invoke-virtual {p0}, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->trySplit()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 2350
    invoke-virtual {p0}, Ljava9/util/Spliterators$DoubleIteratorSpliterator;->trySplit()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
