.class abstract Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MapWithIndexSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Ljava/util/Spliterator<",
        "*>;R:",
        "Ljava/lang/Object;",
        "S:",
        "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<",
        "TF;TR;TS;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final fromSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field index:J


# direct methods
.method constructor <init>(Ljava/util/Spliterator;J)V
    .locals 0
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;J)V"
        }
    .end annotation

    .line 753
    .local p0, "this":Lcom/google/common/collect/Streams$MapWithIndexSpliterator;, "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    .local p1, "fromSpliterator":Ljava/util/Spliterator;, "TF;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput-object p1, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Ljava/util/Spliterator;

    .line 755
    iput-wide p2, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    .line 756
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 781
    .local p0, "this":Lcom/google/common/collect/Streams$MapWithIndexSpliterator;, "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, 0x4050

    return v0
.end method

.method abstract createSplit(Ljava/util/Spliterator;J)Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;J)TS;"
        }
    .end annotation
.end method

.method public estimateSize()J
    .locals 2

    .line 776
    .local p0, "this":Lcom/google/common/collect/Streams$MapWithIndexSpliterator;, "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public trySplit()Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 763
    .local p0, "this":Lcom/google/common/collect/Streams$MapWithIndexSpliterator;, "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 764
    .local v0, "splitOrNull":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    if-nez v0, :cond_0

    .line 765
    const/4 v1, 0x0

    return-object v1

    .line 768
    :cond_0
    move-object v1, v0

    .line 769
    .local v1, "split":Ljava/util/Spliterator;, "TF;"
    iget-wide v2, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->createSplit(Ljava/util/Spliterator;J)Lcom/google/common/collect/Streams$MapWithIndexSpliterator;

    move-result-object v2

    .line 770
    .local v2, "result":Lcom/google/common/collect/Streams$MapWithIndexSpliterator;, "TS;"
    iget-wide v3, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    invoke-interface {v1}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    .line 771
    return-object v2
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 745
    .local p0, "this":Lcom/google/common/collect/Streams$MapWithIndexSpliterator;, "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->trySplit()Lcom/google/common/collect/Streams$MapWithIndexSpliterator;

    move-result-object v0

    return-object v0
.end method
