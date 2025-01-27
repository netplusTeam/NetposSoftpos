.class final Ljava9/util/SplittableRandom$RandomLongsSpliterator;
.super Ljava/lang/Object;
.source "SplittableRandom.java"

# interfaces
.implements Ljava9/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/SplittableRandom;
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

.field final rng:Ljava9/util/SplittableRandom;


# direct methods
.method constructor <init>(Ljava9/util/SplittableRandom;JJJJ)V
    .locals 0
    .param p1, "rng"    # Ljava9/util/SplittableRandom;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # J
    .param p8, "bound"    # J

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p1, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava9/util/SplittableRandom;

    iput-wide p2, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->index:J

    iput-wide p4, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    .line 918
    iput-wide p6, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    iput-wide p8, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    .line 919
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 932
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 928
    iget-wide v0, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    iget-wide v2, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 909
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->forEachRemaining(Ljava9/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/LongConsumer;)V
    .locals 11
    .param p1, "consumer"    # Ljava9/util/function/LongConsumer;

    .line 948
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    iget-wide v0, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    .line 950
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 951
    iput-wide v2, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .line 952
    iget-object v4, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava9/util/SplittableRandom;

    .line 953
    .local v4, "r":Ljava9/util/SplittableRandom;
    iget-wide v5, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    .local v5, "o":J
    iget-wide v7, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    .line 955
    .local v7, "b":J
    :cond_0
    invoke-virtual {v4, v5, v6, v7, v8}, Ljava9/util/SplittableRandom;->internalNextLong(JJ)J

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava9/util/function/LongConsumer;->accept(J)V

    .line 956
    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v9, v9, v2

    if-ltz v9, :cond_0

    .line 958
    .end local v4    # "r":Ljava9/util/SplittableRandom;
    .end local v5    # "o":J
    .end local v7    # "b":J
    :cond_1
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 909
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/LongConsumer;)Z
    .locals 9
    .param p1, "consumer"    # Ljava9/util/function/LongConsumer;

    .line 937
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    iget-wide v0, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .local v0, "i":J
    iget-wide v2, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    .line 939
    .local v2, "f":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 940
    iget-object v4, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava9/util/SplittableRandom;

    iget-wide v5, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    iget-wide v7, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava9/util/SplittableRandom;->internalNextLong(JJ)J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava9/util/function/LongConsumer;->accept(J)V

    .line 941
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .line 942
    const/4 v4, 0x1

    return v4

    .line 944
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfLong;
    .locals 1

    .line 909
    invoke-virtual {p0}, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava9/util/SplittableRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 909
    invoke-virtual {p0}, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava9/util/SplittableRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 909
    invoke-virtual {p0}, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava9/util/SplittableRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava9/util/SplittableRandom$RandomLongsSpliterator;
    .locals 15

    .line 922
    iget-wide v10, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .local v10, "i":J
    iget-wide v0, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    add-long/2addr v0, v10

    const/4 v2, 0x1

    ushr-long v12, v0, v2

    .line 923
    .local v12, "m":J
    cmp-long v0, v12, v10

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v14, Ljava9/util/SplittableRandom$RandomLongsSpliterator;

    iget-object v0, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava9/util/SplittableRandom;

    .line 924
    invoke-virtual {v0}, Ljava9/util/SplittableRandom;->split()Ljava9/util/SplittableRandom;

    move-result-object v1

    iput-wide v12, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->index:J

    iget-wide v6, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    iget-wide v8, p0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    move-object v0, v14

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v0 .. v9}, Ljava9/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava9/util/SplittableRandom;JJJJ)V

    :goto_0
    return-object v0
.end method
