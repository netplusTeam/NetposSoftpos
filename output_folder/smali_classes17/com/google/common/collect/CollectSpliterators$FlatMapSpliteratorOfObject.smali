.class final Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;
.super Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;
.source "CollectSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CollectSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSpliteratorOfObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        "OutElementT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<",
        "TInElementT;TOutElementT;",
        "Ljava/util/Spliterator<",
        "TOutElementT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V
    .locals 8
    .param p1    # Ljava/util/Spliterator;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p4, "characteristics"    # I
    .param p5, "estimatedSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TOutElementT;>;",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Ljava/util/Spliterator<",
            "TOutElementT;>;>;IJ)V"
        }
    .end annotation

    .line 443
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject<TInElementT;TOutElementT;>;"
    .local p1, "prefix":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TOutElementT;>;"
    .local p2, "from":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p3, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator<TOutElementT;>;>;"
    new-instance v4, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;IJ)V

    .line 445
    return-void
.end method
