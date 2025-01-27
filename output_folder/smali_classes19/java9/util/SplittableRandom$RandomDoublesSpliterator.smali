.class final Ljava9/util/SplittableRandom$RandomDoublesSpliterator;
.super Ljava/lang/Object;
.source "SplittableRandom.java"

# interfaces
.implements Ljava9/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/SplittableRandom;
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

.field final rng:Ljava9/util/SplittableRandom;


# direct methods
.method constructor <init>(Ljava9/util/SplittableRandom;JJDD)V
    .locals 0
    .param p1, "rng"    # Ljava9/util/SplittableRandom;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # D
    .param p8, "bound"    # D

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-object p1, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava9/util/SplittableRandom;

    iput-wide p2, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    iput-wide p4, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    .line 973
    iput-wide p6, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iput-wide p8, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    .line 974
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 987
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 983
    iget-wide v0, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    iget-wide v2, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 964
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->forEachRemaining(Ljava9/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/DoubleConsumer;)V
    .locals 11
    .param p1, "consumer"    # Ljava9/util/function/DoubleConsumer;

    .line 1003
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-wide v0, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    .line 1005
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 1006
    iput-wide v2, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .line 1007
    iget-object v4, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava9/util/SplittableRandom;

    .line 1008
    .local v4, "r":Ljava9/util/SplittableRandom;
    iget-wide v5, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    .local v5, "o":D
    iget-wide v7, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    .line 1010
    .local v7, "b":D
    :cond_0
    invoke-virtual {v4, v5, v6, v7, v8}, Ljava9/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava9/util/function/DoubleConsumer;->accept(D)V

    .line 1011
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v9, v9, v2

    if-ltz v9, :cond_0

    .line 1013
    .end local v4    # "r":Ljava9/util/SplittableRandom;
    .end local v5    # "o":D
    .end local v7    # "b":D
    :cond_1
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 964
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/DoubleConsumer;)Z
    .locals 9
    .param p1, "consumer"    # Ljava9/util/function/DoubleConsumer;

    .line 992
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-wide v0, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    .line 994
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 995
    iget-object v4, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava9/util/SplittableRandom;

    iget-wide v5, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v7, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava9/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava9/util/function/DoubleConsumer;->accept(D)V

    .line 996
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .line 997
    const/4 v4, 0x1

    return v4

    .line 999
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfDouble;
    .locals 1

    .line 964
    invoke-virtual {p0}, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava9/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 964
    invoke-virtual {p0}, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava9/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 964
    invoke-virtual {p0}, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava9/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava9/util/SplittableRandom$RandomDoublesSpliterator;
    .locals 15

    .line 977
    iget-wide v10, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .local v10, "i":J
    iget-wide v0, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    add-long/2addr v0, v10

    const/4 v2, 0x1

    ushr-long v12, v0, v2

    .line 978
    .local v12, "m":J
    cmp-long v0, v12, v10

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v14, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;

    iget-object v0, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava9/util/SplittableRandom;

    .line 979
    invoke-virtual {v0}, Ljava9/util/SplittableRandom;->split()Ljava9/util/SplittableRandom;

    move-result-object v1

    iput-wide v12, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    iget-wide v6, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    move-object v0, v14

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v0 .. v9}, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava9/util/SplittableRandom;JJDD)V

    :goto_0
    return-object v0
.end method
