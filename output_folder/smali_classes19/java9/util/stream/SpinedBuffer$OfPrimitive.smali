.class abstract Ljava9/util/stream/SpinedBuffer$OfPrimitive;
.super Ljava9/util/stream/AbstractSpinedBuffer;
.source "SpinedBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/AbstractSpinedBuffer;"
    }
.end annotation


# instance fields
.field curChunk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field

.field spine:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT_ARR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 462
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-direct {p0}, Ljava9/util/stream/AbstractSpinedBuffer;-><init>()V

    .line 463
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 464
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 454
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-direct {p0, p1}, Ljava9/util/stream/AbstractSpinedBuffer;-><init>(I)V

    .line 455
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 456
    return-void
.end method

.method private inflateSpine()V
    .locals 3

    .line 490
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 491
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->newArrayArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 492
    new-array v0, v0, [J

    iput-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 493
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 495
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;IITT_CONS;)V"
        }
    .end annotation
.end method

.method protected abstract arrayLength(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;)I"
        }
    .end annotation
.end method

.method public asPrimitiveArray()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation

    .line 557
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v0

    .line 558
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 560
    long-to-int v2, v0

    invoke-virtual {p0, v2}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v2

    .line 561
    .local v2, "result":Ljava/lang/Object;, "TT_ARR;"
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    .line 562
    return-object v2

    .line 559
    .end local v2    # "result":Ljava/lang/Object;, "TT_ARR;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected capacity()J
    .locals 4

    .line 484
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 485
    invoke-virtual {p0, v0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-wide v0, v0, v1

    iget-object v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v3, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-object v2, v2, v3

    .line 486
    invoke-virtual {p0, v2}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method protected chunkFor(J)I
    .locals 5
    .param p1, "index"    # J

    .line 520
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v0, :cond_1

    .line 521
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    return v0

    .line 524
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_1
    invoke-virtual {p0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    .line 530
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-gt v0, v1, :cond_3

    .line 531
    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    aget-wide v1, v1, v0

    iget-object v3, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_2

    .line 532
    return v0

    .line 530
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    .end local v0    # "j":I
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 2

    .line 577
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 578
    aget-object v0, v0, v1

    iput-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 580
    iput-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 582
    :cond_0
    iput v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    .line 583
    iput v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    .line 584
    return-void
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .locals 6
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation

    .line 538
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    .local p1, "array":Ljava/lang/Object;, "TT_ARR;"
    int-to-long v0, p2

    invoke-virtual {p0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 539
    .local v0, "finalOffset":J
    invoke-virtual {p0, p1}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 543
    iget v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 544
    iget-object v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v4, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 547
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-ge v2, v4, :cond_1

    .line 548
    iget-object v4, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v4, v3, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    iget-object v4, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr p2, v4

    .line 547
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "i":I
    :cond_1
    iget v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    if-lez v2, :cond_2

    .line 552
    iget-object v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v4, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    :cond_2
    :goto_1
    return-void

    .line 540
    :cond_3
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "does not fit"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final ensureCapacity(J)V
    .locals 9
    .param p1, "targetSize"    # J

    .line 498
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    .line 499
    .local v0, "capacity":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 500
    invoke-direct {p0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    .line 501
    iget v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    :goto_0
    cmp-long v3, p1, v0

    if-lez v3, :cond_1

    .line 502
    iget-object v3, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 503
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 504
    .local v4, "newSpineSize":I
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    .line 505
    iget-object v3, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    .line 507
    .end local v4    # "newSpineSize":I
    :cond_0
    invoke-virtual {p0, v2}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->chunkSize(I)I

    move-result v3

    .line 508
    .local v3, "nextChunkSize":I
    iget-object v4, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    invoke-virtual {p0, v3}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v2

    .line 509
    iget-object v4, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget-object v5, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    add-int/lit8 v6, v2, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    aput-wide v5, v4, v2

    .line 510
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 501
    .end local v3    # "nextChunkSize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public forEach(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 588
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 589
    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, p1}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    .end local v0    # "j":I
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-virtual {p0, v0, v2, v1, p1}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 594
    return-void
.end method

.method public abstract forEach(Ljava9/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation
.end method

.method protected increaseCapacity()V
    .locals 4

    .line 516
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    .line 517
    return-void
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract newArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_ARR;"
        }
    .end annotation
.end method

.method protected abstract newArrayArray(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT_ARR;"
        }
    .end annotation
.end method

.method protected preAccept()V
    .locals 3

    .line 566
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 567
    invoke-direct {p0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    .line 568
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    if-nez v0, :cond_1

    .line 569
    :cond_0
    invoke-virtual {p0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->increaseCapacity()V

    .line 570
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    .line 571
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    .line 572
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    .line 574
    :cond_2
    return-void
.end method
