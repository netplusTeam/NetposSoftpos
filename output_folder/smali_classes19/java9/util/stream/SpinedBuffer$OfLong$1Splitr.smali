.class Ljava9/util/stream/SpinedBuffer$OfLong$1Splitr;
.super Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava9/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava9/util/Spliterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Long;",
        "[J",
        "Ljava9/util/function/LongConsumer;",
        ">.BaseSpliterator<",
        "Ljava9/util/Spliterator$OfLong;",
        ">;",
        "Ljava9/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava9/util/stream/SpinedBuffer$OfLong;


# direct methods
.method constructor <init>(Ljava9/util/stream/SpinedBuffer$OfLong;IIII)V
    .locals 0
    .param p1, "this$0"    # Ljava9/util/stream/SpinedBuffer$OfLong;
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    .line 901
    iput-object p1, p0, Ljava9/util/stream/SpinedBuffer$OfLong$1Splitr;->this$0:Ljava9/util/stream/SpinedBuffer$OfLong;

    .line 902
    invoke-direct/range {p0 .. p5}, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Ljava9/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    .line 904
    return-void
.end method


# virtual methods
.method bridge synthetic arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 898
    check-cast p1, [J

    check-cast p3, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava9/util/stream/SpinedBuffer$OfLong$1Splitr;->arrayForOne([JILjava9/util/function/LongConsumer;)V

    return-void
.end method

.method arrayForOne([JILjava9/util/function/LongConsumer;)V
    .locals 2
    .param p1, "array"    # [J
    .param p2, "index"    # I
    .param p3, "consumer"    # Ljava9/util/function/LongConsumer;

    .line 915
    aget-wide v0, p1, p2

    invoke-interface {p3, v0, v1}, Ljava9/util/function/LongConsumer;->accept(J)V

    .line 916
    return-void
.end method

.method arraySpliterator([JII)Ljava9/util/Spliterator$OfLong;
    .locals 1
    .param p1, "array"    # [J
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 920
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava9/util/J8Arrays;->spliterator([JII)Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic arraySpliterator(Ljava/lang/Object;II)Ljava9/util/Spliterator$OfPrimitive;
    .locals 0

    .line 898
    check-cast p1, [J

    invoke-virtual {p0, p1, p2, p3}, Ljava9/util/stream/SpinedBuffer$OfLong$1Splitr;->arraySpliterator([JII)Ljava9/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forEachRemaining(Ljava9/util/function/LongConsumer;)V
    .locals 0

    .line 898
    invoke-super {p0, p1}, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method bridge synthetic newSpliterator(IIII)Ljava9/util/Spliterator$OfPrimitive;
    .locals 0

    .line 898
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava9/util/stream/SpinedBuffer$OfLong$1Splitr;->newSpliterator(IIII)Ljava9/util/stream/SpinedBuffer$OfLong$1Splitr;

    move-result-object p1

    return-object p1
.end method

.method newSpliterator(IIII)Ljava9/util/stream/SpinedBuffer$OfLong$1Splitr;
    .locals 7
    .param p1, "firstSpineIndex"    # I
    .param p2, "lastSpineIndex"    # I
    .param p3, "firstSpineElementIndex"    # I
    .param p4, "lastSpineElementFence"    # I

    .line 909
    new-instance v6, Ljava9/util/stream/SpinedBuffer$OfLong$1Splitr;

    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$OfLong$1Splitr;->this$0:Ljava9/util/stream/SpinedBuffer$OfLong;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/SpinedBuffer$OfLong$1Splitr;-><init>(Ljava9/util/stream/SpinedBuffer$OfLong;IIII)V

    return-object v6
.end method

.method public bridge synthetic tryAdvance(Ljava9/util/function/LongConsumer;)Z
    .locals 0

    .line 898
    invoke-super {p0, p1}, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfLong;
    .locals 1

    .line 898
    invoke-super {p0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava9/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfLong;

    return-object v0
.end method
