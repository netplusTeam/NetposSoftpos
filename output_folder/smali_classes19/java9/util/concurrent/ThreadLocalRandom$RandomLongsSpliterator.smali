.class final Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljava9/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomLongsSpliterator"
.end annotation


# instance fields
.field final bound:J

.field final fence:J

.field index:J

.field final origin:J


# direct methods
.method constructor <init>(JJJJ)V
    .locals 0
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # J
    .param p7, "bound"    # J

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput-wide p1, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iput-wide p3, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    .line 795
    iput-wide p5, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iput-wide p7, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    .line 796
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 809
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 805
    iget-wide v0, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    iget-wide v2, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 787
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->forEachRemaining(Ljava9/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/LongConsumer;)V
    .locals 11
    .param p1, "consumer"    # Ljava9/util/function/LongConsumer;

    .line 825
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iget-wide v0, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    .line 827
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 828
    iput-wide v2, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .line 829
    iget-wide v4, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    .local v4, "o":J
    iget-wide v6, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    .line 830
    .local v6, "b":J
    invoke-static {}, Ljava9/util/concurrent/ThreadLocalRandom;->current()Ljava9/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    .line 832
    .local v8, "rng":Ljava9/util/concurrent/ThreadLocalRandom;
    :cond_0
    invoke-static {v8, v4, v5, v6, v7}, Ljava9/util/concurrent/ThreadLocalRandom;->access$100(Ljava9/util/concurrent/ThreadLocalRandom;JJ)J

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava9/util/function/LongConsumer;->accept(J)V

    .line 833
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v9, v9, v2

    if-ltz v9, :cond_0

    .line 835
    .end local v4    # "o":J
    .end local v6    # "b":J
    .end local v8    # "rng":Ljava9/util/concurrent/ThreadLocalRandom;
    :cond_1
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 787
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/LongConsumer;)Z
    .locals 9
    .param p1, "consumer"    # Ljava9/util/function/LongConsumer;

    .line 814
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    iget-wide v0, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    .line 816
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 817
    invoke-static {}, Ljava9/util/concurrent/ThreadLocalRandom;->current()Ljava9/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget-wide v5, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v7, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    invoke-static {v4, v5, v6, v7, v8}, Ljava9/util/concurrent/ThreadLocalRandom;->access$100(Ljava9/util/concurrent/ThreadLocalRandom;JJ)J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava9/util/function/LongConsumer;->accept(J)V

    .line 818
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .line 819
    const/4 v4, 0x1

    return v4

    .line 821
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfLong;
    .locals 1

    .line 787
    invoke-virtual {p0}, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 787
    invoke-virtual {p0}, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 787
    invoke-virtual {p0}, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
    .locals 14

    .line 799
    iget-wide v9, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .local v9, "i":J
    iget-wide v0, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    add-long/2addr v0, v9

    const/4 v2, 0x1

    ushr-long v11, v0, v2

    .line 800
    .local v11, "m":J
    cmp-long v0, v11, v9

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v13, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    iput-wide v11, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iget-wide v5, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v7, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    move-object v0, v13

    move-wide v1, v9

    move-wide v3, v11

    invoke-direct/range {v0 .. v8}, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    :goto_0
    return-object v0
.end method
