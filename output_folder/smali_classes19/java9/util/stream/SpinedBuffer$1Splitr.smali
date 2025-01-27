.class Ljava9/util/stream/SpinedBuffer$1Splitr;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/SpinedBuffer;->spliterator()Ljava9/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final lastSpineElementFence:I

.field final lastSpineIndex:I

.field splChunk:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field splElementIndex:I

.field splSpineIndex:I

.field final synthetic this$0:Ljava9/util/stream/SpinedBuffer;


# direct methods
.method constructor <init>(Ljava9/util/stream/SpinedBuffer;IIII)V
    .locals 1
    .param p1, "this$0"    # Ljava9/util/stream/SpinedBuffer;
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    .line 304
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$1Splitr;, "Ljava9/util/stream/SpinedBuffer$1Splitr;"
    iput-object p1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava9/util/stream/SpinedBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput p2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .line 306
    iput p3, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    .line 307
    iput p4, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 308
    iput p5, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    .line 310
    iget-object v0, p1, Ljava9/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p1, Ljava9/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Ljava9/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v0, v0, p2

    :goto_0
    iput-object v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    .line 311
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 325
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$1Splitr;, "Ljava9/util/stream/SpinedBuffer$1Splitr;"
    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 315
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$1Splitr;, "Ljava9/util/stream/SpinedBuffer$1Splitr;"
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava9/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljava9/util/stream/SpinedBuffer;->priorElementCount:[J

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    aget-wide v0, v0, v1

    iget v2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava9/util/stream/SpinedBuffer;

    iget-object v2, v2, Ljava9/util/stream/SpinedBuffer;->priorElementCount:[J

    iget v3, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    :goto_0
    iget v2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 349
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$1Splitr;, "Ljava9/util/stream/SpinedBuffer$1Splitr;"
    .local p1, "consumer":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_5

    iget v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    if-ge v0, v1, :cond_5

    .line 353
    :cond_0
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 355
    .local v0, "i":I
    iget v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .local v1, "sp":I
    :goto_0
    iget v2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ge v1, v2, :cond_2

    .line 356
    iget-object v2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava9/util/stream/SpinedBuffer;

    iget-object v2, v2, Ljava9/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 357
    .local v2, "chunk":[Ljava/lang/Object;, "[TE;"
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 358
    aget-object v3, v2, v0

    invoke-interface {p1, v3}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    :cond_1
    const/4 v0, 0x0

    .line 355
    .end local v2    # "chunk":[Ljava/lang/Object;, "[TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v1    # "sp":I
    :cond_2
    iget v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava9/util/stream/SpinedBuffer;

    iget-object v1, v1, Ljava9/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    aget-object v1, v1, v2

    .line 364
    .local v1, "chunk":[Ljava/lang/Object;, "[TE;"
    :goto_2
    iget v2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    .line 365
    .local v2, "hElementIndex":I
    :goto_3
    if-ge v0, v2, :cond_4

    .line 366
    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 369
    :cond_4
    iget v3, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput v3, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .line 370
    iget v3, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    iput v3, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 372
    .end local v0    # "i":I
    .end local v1    # "chunk":[Ljava/lang/Object;, "[TE;"
    .end local v2    # "hElementIndex":I
    :cond_5
    return-void
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 330
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$1Splitr;, "Ljava9/util/stream/SpinedBuffer$1Splitr;"
    .local p1, "consumer":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    return v2

    .line 334
    :cond_1
    :goto_0
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 336
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 337
    iput v2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 338
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .line 339
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava9/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljava9/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-gt v0, v1, :cond_2

    .line 340
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava9/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljava9/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    .line 342
    :cond_2
    return v3
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 376
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$1Splitr;, "Ljava9/util/stream/SpinedBuffer$1Splitr;"
    iget v2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ge v2, v0, :cond_0

    .line 378
    new-instance v6, Ljava9/util/stream/SpinedBuffer$1Splitr;

    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava9/util/stream/SpinedBuffer;

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v0, v1, Ljava9/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v5, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v0, v5

    array-length v5, v0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/SpinedBuffer$1Splitr;-><init>(Ljava9/util/stream/SpinedBuffer;IIII)V

    .line 381
    .local v0, "ret":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TE;>;"
    iget v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .line 382
    const/4 v1, 0x0

    iput v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 383
    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava9/util/stream/SpinedBuffer;

    iget-object v1, v1, Ljava9/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    .line 384
    return-object v0

    .line 386
    .end local v0    # "ret":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TE;>;"
    :cond_0
    const/4 v1, 0x0

    if-ne v2, v0, :cond_2

    .line 387
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    iget v2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 388
    .local v0, "t":I
    if-nez v0, :cond_1

    .line 389
    return-object v1

    .line 391
    :cond_1
    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava9/util/J8Arrays;->spliterator([Ljava/lang/Object;II)Ljava9/util/Spliterator;

    move-result-object v1

    .line 392
    .local v1, "ret":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TE;>;"
    iget v2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava9/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 393
    return-object v1

    .line 397
    .end local v0    # "t":I
    .end local v1    # "ret":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TE;>;"
    :cond_2
    return-object v1
.end method
