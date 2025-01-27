.class abstract Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.super Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava9/util/function/DoubleConsumer;
.implements Ljava9/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;,
        Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "Ljava/lang/Double;",
        "Ljava9/util/Spliterator$OfDouble;",
        ">;",
        "Ljava9/util/function/DoubleConsumer;",
        "Ljava9/util/Spliterator$OfDouble;"
    }
.end annotation


# instance fields
.field final p:Ljava9/util/function/DoublePredicate;

.field t:D


# direct methods
.method constructor <init>(Ljava9/util/Spliterator$OfDouble;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V
    .locals 1
    .param p1, "s"    # Ljava9/util/Spliterator$OfDouble;
    .param p2, "parent"    # Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;

    .line 1048
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava9/util/Spliterator;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    .line 1049
    iget-object v0, p2, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava9/util/function/DoublePredicate;

    iput-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava9/util/function/DoublePredicate;

    .line 1050
    return-void
.end method

.method constructor <init>(Ljava9/util/Spliterator$OfDouble;ZLjava9/util/function/DoublePredicate;)V
    .locals 0
    .param p1, "s"    # Ljava9/util/Spliterator$OfDouble;
    .param p2, "noSplitting"    # Z
    .param p3, "p"    # Ljava9/util/function/DoublePredicate;

    .line 1043
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava9/util/Spliterator;Z)V

    .line 1044
    iput-object p3, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava9/util/function/DoublePredicate;

    .line 1045
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "t"    # D

    .line 1054
    iget v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->count:I

    .line 1055
    iput-wide p1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->t:D

    .line 1056
    return-void
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfDouble;
    .locals 1

    .line 1038
    invoke-super {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1038
    invoke-super {p0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    return-object v0
.end method
