.class final Ljava9/util/Spliterators$IntIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava9/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntIteratorSpliterator"
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J

.field private it:Ljava9/util/PrimitiveIterator$OfInt;


# direct methods
.method public constructor <init>(Ljava9/util/PrimitiveIterator$OfInt;I)V
    .locals 2
    .param p1, "iterator"    # Ljava9/util/PrimitiveIterator$OfInt;
    .param p2, "characteristics"    # I

    .line 2197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2198
    iput-object p1, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfInt;

    .line 2199
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->est:J

    .line 2200
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    .line 2201
    return-void
.end method

.method public constructor <init>(Ljava9/util/PrimitiveIterator$OfInt;JI)V
    .locals 1
    .param p1, "iterator"    # Ljava9/util/PrimitiveIterator$OfInt;
    .param p2, "size"    # J
    .param p4, "characteristics"    # I

    .line 2180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2181
    iput-object p1, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfInt;

    .line 2182
    iput-wide p2, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->est:J

    .line 2183
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_0

    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    iput v0, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    .line 2186
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 2245
    iget v0, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 2241
    iget-wide v0, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 2162
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/Spliterators$IntIteratorSpliterator;->forEachRemaining(Ljava9/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/IntConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava9/util/function/IntConsumer;

    .line 2226
    iget-object v0, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfInt;

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/function/IntConsumer;

    invoke-interface {v0, v1}, Ljava9/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava9/util/function/IntConsumer;)V

    .line 2227
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2249
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava9/util/Spliterators$IntIteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2250
    const/4 v0, 0x0

    return-object v0

    .line 2252
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 2162
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/Spliterators$IntIteratorSpliterator;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/IntConsumer;)Z
    .locals 1
    .param p1, "action"    # Ljava9/util/function/IntConsumer;

    .line 2231
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    iget-object v0, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 2234
    const/4 v0, 0x1

    return v0

    .line 2236
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava9/util/Spliterator$OfInt;
    .locals 10

    .line 2205
    iget-object v0, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->it:Ljava9/util/PrimitiveIterator$OfInt;

    .line 2206
    .local v0, "i":Ljava9/util/PrimitiveIterator$OfInt;
    iget-wide v1, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->est:J

    .line 2207
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2208
    iget v3, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 2209
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    .line 2210
    long-to-int v3, v1

    .line 2211
    :cond_0
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_1

    .line 2212
    const/high16 v3, 0x2000000

    .line 2213
    :cond_1
    new-array v4, v3, [I

    .line 2214
    .local v4, "a":[I
    const/4 v5, 0x0

    .line 2215
    .local v5, "j":I
    :cond_2
    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_3

    invoke-interface {v0}, Ljava9/util/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2216
    :cond_3
    iput v5, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->batch:I

    .line 2217
    iget-wide v6, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 2218
    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->est:J

    .line 2219
    :cond_4
    new-instance v6, Ljava9/util/Spliterators$IntArraySpliterator;

    const/4 v7, 0x0

    iget v8, p0, Ljava9/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    invoke-direct {v6, v4, v7, v5, v8}, Ljava9/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v6

    .line 2221
    .end local v3    # "n":I
    .end local v4    # "a":[I
    .end local v5    # "j":I
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 2162
    invoke-virtual {p0}, Ljava9/util/Spliterators$IntIteratorSpliterator;->trySplit()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 2162
    invoke-virtual {p0}, Ljava9/util/Spliterators$IntIteratorSpliterator;->trySplit()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
