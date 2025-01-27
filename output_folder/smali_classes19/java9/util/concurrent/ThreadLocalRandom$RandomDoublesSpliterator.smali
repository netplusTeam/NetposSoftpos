.class final Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljava9/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomDoublesSpliterator"
.end annotation


# instance fields
.field final bound:D

.field final fence:J

.field index:J

.field final origin:D


# direct methods
.method constructor <init>(JJDD)V
    .locals 0
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # D
    .param p7, "bound"    # D

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput-wide p1, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iput-wide p3, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    .line 849
    iput-wide p5, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iput-wide p7, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    .line 850
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 863
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 859
    iget-wide v0, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    iget-wide v2, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 841
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->forEachRemaining(Ljava9/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/DoubleConsumer;)V
    .locals 11
    .param p1, "consumer"    # Ljava9/util/function/DoubleConsumer;

    .line 879
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iget-wide v0, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    .line 881
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 882
    iput-wide v2, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .line 883
    iget-wide v4, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    .local v4, "o":D
    iget-wide v6, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    .line 884
    .local v6, "b":D
    invoke-static {}, Ljava9/util/concurrent/ThreadLocalRandom;->current()Ljava9/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    .line 886
    .local v8, "rng":Ljava9/util/concurrent/ThreadLocalRandom;
    :cond_0
    invoke-static {v8, v4, v5, v6, v7}, Ljava9/util/concurrent/ThreadLocalRandom;->access$200(Ljava9/util/concurrent/ThreadLocalRandom;DD)D

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava9/util/function/DoubleConsumer;->accept(D)V

    .line 887
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v9, v9, v2

    if-ltz v9, :cond_0

    .line 889
    .end local v4    # "o":D
    .end local v6    # "b":D
    .end local v8    # "rng":Ljava9/util/concurrent/ThreadLocalRandom;
    :cond_1
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 841
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/DoubleConsumer;)Z
    .locals 9
    .param p1, "consumer"    # Ljava9/util/function/DoubleConsumer;

    .line 868
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    iget-wide v0, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    .line 870
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 871
    invoke-static {}, Ljava9/util/concurrent/ThreadLocalRandom;->current()Ljava9/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget-wide v5, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v7, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    invoke-static {v4, v5, v6, v7, v8}, Ljava9/util/concurrent/ThreadLocalRandom;->access$200(Ljava9/util/concurrent/ThreadLocalRandom;DD)D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava9/util/function/DoubleConsumer;->accept(D)V

    .line 872
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .line 873
    const/4 v4, 0x1

    return v4

    .line 875
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfDouble;
    .locals 1

    .line 841
    invoke-virtual {p0}, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 841
    invoke-virtual {p0}, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 841
    invoke-virtual {p0}, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->trySplit()Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;
    .locals 14

    .line 853
    iget-wide v9, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    .local v9, "i":J
    iget-wide v0, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->fence:J

    add-long/2addr v0, v9

    const/4 v2, 0x1

    ushr-long v11, v0, v2

    .line 854
    .local v11, "m":J
    cmp-long v0, v11, v9

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v13, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    iput-wide v11, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->index:J

    iget-wide v5, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v7, p0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;->bound:D

    move-object v0, v13

    move-wide v1, v9

    move-wide v3, v11

    invoke-direct/range {v0 .. v8}, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    :goto_0
    return-object v0
.end method
