.class final Ljava9/util/Spliterators$LongIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava9/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongIteratorSpliterator"
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J

.field private it:Ljava9/util/PrimitiveIterator$OfLong;


# direct methods
.method public constructor <init>(Ljava9/util/PrimitiveIterator$OfLong;I)V
    .locals 2
    .param p1, "iterator"    # Ljava9/util/PrimitiveIterator$OfLong;
    .param p2, "characteristics"    # I

    .line 2291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2292
    iput-object p1, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfLong;

    .line 2293
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 2294
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    .line 2295
    return-void
.end method

.method public constructor <init>(Ljava9/util/PrimitiveIterator$OfLong;JI)V
    .locals 1
    .param p1, "iterator"    # Ljava9/util/PrimitiveIterator$OfLong;
    .param p2, "size"    # J
    .param p4, "characteristics"    # I

    .line 2274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2275
    iput-object p1, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfLong;

    .line 2276
    iput-wide p2, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 2277
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_0

    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    iput v0, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    .line 2280
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 2339
    iget v0, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 2335
    iget-wide v0, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 2256
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/Spliterators$LongIteratorSpliterator;->forEachRemaining(Ljava9/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/LongConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava9/util/function/LongConsumer;

    .line 2320
    iget-object v0, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfLong;

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/function/LongConsumer;

    invoke-interface {v0, v1}, Ljava9/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava9/util/function/LongConsumer;)V

    .line 2321
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2343
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava9/util/Spliterators$LongIteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2344
    const/4 v0, 0x0

    return-object v0

    .line 2346
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 2256
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/Spliterators$LongIteratorSpliterator;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/LongConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava9/util/function/LongConsumer;

    .line 2325
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2326
    iget-object v0, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2327
    iget-object v0, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava9/util/function/LongConsumer;->accept(J)V

    .line 2328
    const/4 v0, 0x1

    return v0

    .line 2330
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava9/util/Spliterator$OfLong;
    .locals 10

    .line 2299
    iget-object v0, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfLong;

    .line 2300
    .local v0, "i":Ljava9/util/PrimitiveIterator$OfLong;
    iget-wide v1, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 2301
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2302
    iget v3, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 2303
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    .line 2304
    long-to-int v3, v1

    .line 2305
    :cond_0
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_1

    .line 2306
    const/high16 v3, 0x2000000

    .line 2307
    :cond_1
    new-array v4, v3, [J

    .line 2308
    .local v4, "a":[J
    const/4 v5, 0x0

    .line 2309
    .local v5, "j":I
    :cond_2
    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_3

    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2310
    :cond_3
    iput v5, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->batch:I

    .line 2311
    iget-wide v6, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 2312
    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 2313
    :cond_4
    new-instance v6, Ljava9/util/Spliterators$LongArraySpliterator;

    const/4 v7, 0x0

    iget v8, p0, Ljava9/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    invoke-direct {v6, v4, v7, v5, v8}, Ljava9/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v6

    .line 2315
    .end local v3    # "n":I
    .end local v4    # "a":[J
    .end local v5    # "j":I
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 2256
    invoke-virtual {p0}, Ljava9/util/Spliterators$LongIteratorSpliterator;->trySplit()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 2256
    invoke-virtual {p0}, Ljava9/util/Spliterators$LongIteratorSpliterator;->trySplit()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
