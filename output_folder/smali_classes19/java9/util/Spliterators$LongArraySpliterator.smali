.class final Ljava9/util/Spliterators$LongArraySpliterator;
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
    name = "LongArraySpliterator"
.end annotation


# instance fields
.field private final array:[J

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([JI)V
    .locals 2
    .param p1, "array"    # [J
    .param p2, "additionalCharacteristics"    # I

    .line 1398
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ljava9/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    .line 1399
    return-void
.end method

.method public constructor <init>([JIII)V
    .locals 1
    .param p1, "array"    # [J
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1411
    iput-object p1, p0, Ljava9/util/Spliterators$LongArraySpliterator;->array:[J

    .line 1412
    iput p2, p0, Ljava9/util/Spliterators$LongArraySpliterator;->index:I

    .line 1413
    iput p3, p0, Ljava9/util/Spliterators$LongArraySpliterator;->fence:I

    .line 1414
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljava9/util/Spliterators$LongArraySpliterator;->characteristics:I

    .line 1415
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 1450
    iget v0, p0, Ljava9/util/Spliterators$LongArraySpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1446
    iget v0, p0, Ljava9/util/Spliterators$LongArraySpliterator;->fence:I

    iget v1, p0, Ljava9/util/Spliterators$LongArraySpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1384
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/Spliterators$LongArraySpliterator;->forEachRemaining(Ljava9/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/LongConsumer;)V
    .locals 6
    .param p1, "action"    # Ljava9/util/function/LongConsumer;

    .line 1428
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    iget-object v0, p0, Ljava9/util/Spliterators$LongArraySpliterator;->array:[J

    move-object v1, v0

    .local v1, "a":[J
    array-length v0, v0

    iget v2, p0, Ljava9/util/Spliterators$LongArraySpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-lt v0, v2, :cond_1

    iget v0, p0, Ljava9/util/Spliterators$LongArraySpliterator;->index:I

    move v2, v0

    .local v2, "i":I
    if-ltz v0, :cond_1

    iput v3, p0, Ljava9/util/Spliterators$LongArraySpliterator;->index:I

    if-ge v2, v3, :cond_1

    .line 1431
    :cond_0
    aget-wide v4, v1, v2

    invoke-interface {p1, v4, v5}, Ljava9/util/function/LongConsumer;->accept(J)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_0

    .line 1433
    .end local v2    # "i":I
    :cond_1
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

    .line 1455
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava9/util/Spliterators$LongArraySpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    const/4 v0, 0x0

    return-object v0

    .line 1457
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1384
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/Spliterators$LongArraySpliterator;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/LongConsumer;)Z
    .locals 3
    .param p1, "action"    # Ljava9/util/function/LongConsumer;

    .line 1437
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    iget v0, p0, Ljava9/util/Spliterators$LongArraySpliterator;->index:I

    if-ltz v0, :cond_0

    iget v1, p0, Ljava9/util/Spliterators$LongArraySpliterator;->fence:I

    if-ge v0, v1, :cond_0

    .line 1439
    iget-object v1, p0, Ljava9/util/Spliterators$LongArraySpliterator;->array:[J

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava9/util/Spliterators$LongArraySpliterator;->index:I

    aget-wide v0, v1, v0

    invoke-interface {p1, v0, v1}, Ljava9/util/function/LongConsumer;->accept(J)V

    .line 1440
    const/4 v0, 0x1

    return v0

    .line 1442
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava9/util/Spliterator$OfLong;
    .locals 5

    .line 1419
    iget v0, p0, Ljava9/util/Spliterators$LongArraySpliterator;->index:I

    .local v0, "lo":I
    iget v1, p0, Ljava9/util/Spliterators$LongArraySpliterator;->fence:I

    add-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 1420
    .local v1, "mid":I
    if-lt v0, v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava9/util/Spliterators$LongArraySpliterator;

    iget-object v3, p0, Ljava9/util/Spliterators$LongArraySpliterator;->array:[J

    iput v1, p0, Ljava9/util/Spliterators$LongArraySpliterator;->index:I

    iget v4, p0, Ljava9/util/Spliterators$LongArraySpliterator;->characteristics:I

    invoke-direct {v2, v3, v0, v1, v4}, Ljava9/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    :goto_0
    return-object v2
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1384
    invoke-virtual {p0}, Ljava9/util/Spliterators$LongArraySpliterator;->trySplit()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 1384
    invoke-virtual {p0}, Ljava9/util/Spliterators$LongArraySpliterator;->trySplit()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
