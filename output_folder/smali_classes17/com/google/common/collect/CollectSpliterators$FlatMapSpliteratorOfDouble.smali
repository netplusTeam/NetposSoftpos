.class final Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;
.super Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;
.source "CollectSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CollectSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSpliteratorOfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive<",
        "TInElementT;",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "Ljava/util/Spliterator$OfDouble;",
        ">;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfDouble;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V
    .locals 8
    .param p1, "prefix"    # Ljava/util/Spliterator$OfDouble;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p4, "characteristics"    # I
    .param p5, "estimatedSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator$OfDouble;",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Ljava/util/Spliterator$OfDouble;",
            ">;IJ)V"
        }
    .end annotation

    .line 548
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble<TInElementT;>;"
    .local p2, "from":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p3, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfDouble;>;"
    new-instance v4, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator;Ljava/util/function/Function;Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;IJ)V

    .line 550
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    .line 538
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble<TInElementT;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 0

    .line 538
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble<TInElementT;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 538
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble<TInElementT;>;"
    invoke-super {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method
