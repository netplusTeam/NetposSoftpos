.class final Ljava9/util/Spliterators$EmptySpliterator$OfDouble;
.super Ljava9/util/Spliterators$EmptySpliterator;
.source "Spliterators.java"

# interfaces
.implements Ljava9/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/Spliterators$EmptySpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/Spliterators$EmptySpliterator<",
        "Ljava/lang/Double;",
        "Ljava9/util/Spliterator$OfDouble;",
        "Ljava9/util/function/DoubleConsumer;",
        ">;",
        "Ljava9/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1202
    invoke-direct {p0}, Ljava9/util/Spliterators$EmptySpliterator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava9/util/function/DoubleConsumer;)V
    .locals 0

    .line 1199
    invoke-super {p0, p1}, Ljava9/util/Spliterators$EmptySpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava9/util/function/DoubleConsumer;)Z
    .locals 0

    .line 1199
    invoke-super {p0, p1}, Ljava9/util/Spliterators$EmptySpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfDouble;
    .locals 1

    .line 1199
    invoke-super {p0}, Ljava9/util/Spliterators$EmptySpliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1199
    invoke-super {p0}, Ljava9/util/Spliterators$EmptySpliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    return-object v0
.end method
