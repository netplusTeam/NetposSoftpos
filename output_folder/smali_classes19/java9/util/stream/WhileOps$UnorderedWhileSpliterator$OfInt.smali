.class abstract Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.super Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava9/util/function/IntConsumer;
.implements Ljava9/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;,
        Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "Ljava/lang/Integer;",
        "Ljava9/util/Spliterator$OfInt;",
        ">;",
        "Ljava9/util/function/IntConsumer;",
        "Ljava9/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field final p:Ljava9/util/function/IntPredicate;

.field t:I


# direct methods
.method constructor <init>(Ljava9/util/Spliterator$OfInt;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V
    .locals 1
    .param p1, "s"    # Ljava9/util/Spliterator$OfInt;
    .param p2, "parent"    # Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;

    .line 838
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava9/util/Spliterator;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    .line 839
    iget-object v0, p2, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava9/util/function/IntPredicate;

    iput-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava9/util/function/IntPredicate;

    .line 840
    return-void
.end method

.method constructor <init>(Ljava9/util/Spliterator$OfInt;ZLjava9/util/function/IntPredicate;)V
    .locals 0
    .param p1, "s"    # Ljava9/util/Spliterator$OfInt;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava9/util/function/IntPredicate;

    .line 833
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava9/util/Spliterator;Z)V

    .line 834
    iput-object p3, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava9/util/function/IntPredicate;

    .line 835
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    .line 844
    iget v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->count:I

    .line 845
    iput p1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->t:I

    .line 846
    return-void
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfInt;
    .locals 1

    .line 828
    invoke-super {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 828
    invoke-super {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    return-object v0
.end method
