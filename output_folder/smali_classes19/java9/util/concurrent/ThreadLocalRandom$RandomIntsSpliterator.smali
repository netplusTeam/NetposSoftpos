.class final Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljava9/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomIntsSpliterator"
.end annotation


# instance fields
.field final bound:I

.field final fence:J

.field index:J

.field final origin:I


# direct methods
.method constructor <init>(JJII)V
    .locals 0
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # I
    .param p6, "bound"    # I

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput-wide p1, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iput-wide p3, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    .line 741
    iput p5, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iput p6, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    .line 742
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 755
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 751
    iget-wide v0, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    iget-wide v2, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 733
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->forEachRemaining(Ljava9/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/IntConsumer;)V
    .locals 9
    .param p1, "consumer"    # Ljava9/util/function/IntConsumer;

    .line 771
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-wide v0, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    .line 773
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 774
    iput-wide v2, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .line 775
    iget v4, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    .local v4, "o":I
    iget v5, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    .line 776
    .local v5, "b":I
    invoke-static {}, Ljava9/util/concurrent/ThreadLocalRandom;->current()Ljava9/util/concurrent/ThreadLocalRandom;

    move-result-object v6

    .line 778
    .local v6, "rng":Ljava9/util/concurrent/ThreadLocalRandom;
    :cond_0
    invoke-static {v6, v4, v5}, Ljava9/util/concurrent/ThreadLocalRandom;->access$000(Ljava9/util/concurrent/ThreadLocalRandom;II)I

    move-result v7

    invoke-interface {p1, v7}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 779
    const-wide/16 v7, 0x1

    add-long/2addr v7, v0

    move-wide v0, v7

    cmp-long v7, v7, v2

    if-ltz v7, :cond_0

    .line 781
    .end local v4    # "o":I
    .end local v5    # "b":I
    .end local v6    # "rng":Ljava9/util/concurrent/ThreadLocalRandom;
    :cond_1
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 733
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/IntConsumer;)Z
    .locals 7
    .param p1, "consumer"    # Ljava9/util/function/IntConsumer;

    .line 760
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-wide v0, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    .line 762
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 763
    invoke-static {}, Ljava9/util/concurrent/ThreadLocalRandom;->current()Ljava9/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget v5, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    invoke-static {v4, v5, v6}, Ljava9/util/concurrent/ThreadLocalRandom;->access$000(Ljava9/util/concurrent/ThreadLocalRandom;II)I

    move-result v4

    invoke-interface {p1, v4}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 764
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .line 765
    const/4 v4, 0x1

    return v4

    .line 767
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfInt;
    .locals 1

    .line 733
    invoke-virtual {p0}, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 733
    invoke-virtual {p0}, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 733
    invoke-virtual {p0}, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
    .locals 12

    .line 745
    iget-wide v7, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .local v7, "i":J
    iget-wide v0, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    add-long/2addr v0, v7

    const/4 v2, 0x1

    ushr-long v9, v0, v2

    .line 746
    .local v9, "m":J
    cmp-long v0, v9, v7

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v11, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    iput-wide v9, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget v5, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    move-object v0, v11

    move-wide v1, v7

    move-wide v3, v9

    invoke-direct/range {v0 .. v6}, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    :goto_0
    return-object v0
.end method
