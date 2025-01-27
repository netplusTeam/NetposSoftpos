.class final Ljava9/util/SplittableRandom$RandomIntsSpliterator;
.super Ljava/lang/Object;
.source "SplittableRandom.java"

# interfaces
.implements Ljava9/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/SplittableRandom;
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

.field final rng:Ljava9/util/SplittableRandom;


# direct methods
.method constructor <init>(Ljava9/util/SplittableRandom;JJII)V
    .locals 0
    .param p1, "rng"    # Ljava9/util/SplittableRandom;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # I
    .param p7, "bound"    # I

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    iput-object p1, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->rng:Ljava9/util/SplittableRandom;

    iput-wide p2, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->index:J

    iput-wide p4, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    .line 863
    iput p6, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->origin:I

    iput p7, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->bound:I

    .line 864
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 877
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 873
    iget-wide v0, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    iget-wide v2, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 854
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->forEachRemaining(Ljava9/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/IntConsumer;)V
    .locals 9
    .param p1, "consumer"    # Ljava9/util/function/IntConsumer;

    .line 893
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    iget-wide v0, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    .line 895
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 896
    iput-wide v2, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->index:J

    .line 897
    iget-object v4, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->rng:Ljava9/util/SplittableRandom;

    .line 898
    .local v4, "r":Ljava9/util/SplittableRandom;
    iget v5, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->origin:I

    .local v5, "o":I
    iget v6, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->bound:I

    .line 900
    .local v6, "b":I
    :cond_0
    invoke-virtual {v4, v5, v6}, Ljava9/util/SplittableRandom;->internalNextInt(II)I

    move-result v7

    invoke-interface {p1, v7}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 901
    const-wide/16 v7, 0x1

    add-long/2addr v7, v0

    move-wide v0, v7

    cmp-long v7, v7, v2

    if-ltz v7, :cond_0

    .line 903
    .end local v4    # "r":Ljava9/util/SplittableRandom;
    .end local v5    # "o":I
    .end local v6    # "b":I
    :cond_1
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 854
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/IntConsumer;)Z
    .locals 7
    .param p1, "consumer"    # Ljava9/util/function/IntConsumer;

    .line 882
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    iget-wide v0, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    .line 884
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 885
    iget-object v4, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->rng:Ljava9/util/SplittableRandom;

    iget v5, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->bound:I

    invoke-virtual {v4, v5, v6}, Ljava9/util/SplittableRandom;->internalNextInt(II)I

    move-result v4

    invoke-interface {p1, v4}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 886
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->index:J

    .line 887
    const/4 v4, 0x1

    return v4

    .line 889
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfInt;
    .locals 1

    .line 854
    invoke-virtual {p0}, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->trySplit()Ljava9/util/SplittableRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 854
    invoke-virtual {p0}, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->trySplit()Ljava9/util/SplittableRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 854
    invoke-virtual {p0}, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->trySplit()Ljava9/util/SplittableRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava9/util/SplittableRandom$RandomIntsSpliterator;
    .locals 13

    .line 867
    iget-wide v8, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->index:J

    .local v8, "i":J
    iget-wide v0, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    add-long/2addr v0, v8

    const/4 v2, 0x1

    ushr-long v10, v0, v2

    .line 868
    .local v10, "m":J
    cmp-long v0, v10, v8

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v12, Ljava9/util/SplittableRandom$RandomIntsSpliterator;

    iget-object v0, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->rng:Ljava9/util/SplittableRandom;

    .line 869
    invoke-virtual {v0}, Ljava9/util/SplittableRandom;->split()Ljava9/util/SplittableRandom;

    move-result-object v1

    iput-wide v10, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->index:J

    iget v6, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->origin:I

    iget v7, p0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;->bound:I

    move-object v0, v12

    move-wide v2, v8

    move-wide v4, v10

    invoke-direct/range {v0 .. v7}, Ljava9/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava9/util/SplittableRandom;JJII)V

    :goto_0
    return-object v0
.end method
