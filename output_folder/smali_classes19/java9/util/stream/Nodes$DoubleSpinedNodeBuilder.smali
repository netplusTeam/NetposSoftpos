.class final Ljava9/util/stream/Nodes$DoubleSpinedNodeBuilder;
.super Ljava9/util/stream/SpinedBuffer$OfDouble;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node$OfDouble;
.implements Ljava9/util/stream/Node$Builder$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoubleSpinedNodeBuilder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1733
    invoke-direct {p0}, Ljava9/util/stream/SpinedBuffer$OfDouble;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0
    .param p1, "i"    # D

    .line 1753
    invoke-super {p0, p1, p2}, Ljava9/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 1754
    return-void
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 1729
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$DoubleSpinedNodeBuilder;->asPrimitiveArray()[D

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[D
    .locals 1

    .line 1768
    invoke-super {p0}, Ljava9/util/stream/SpinedBuffer$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public begin(J)V
    .locals 0
    .param p1, "size"    # J

    .line 1747
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$DoubleSpinedNodeBuilder;->clear()V

    .line 1748
    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/Nodes$DoubleSpinedNodeBuilder;->ensureCapacity(J)V

    .line 1749
    return-void
.end method

.method public build()Ljava9/util/stream/Node$OfDouble;
    .locals 0

    .line 1773
    return-object p0
.end method

.method public bridge synthetic build()Ljava9/util/stream/Node;
    .locals 1

    .line 1729
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$DoubleSpinedNodeBuilder;->build()Ljava9/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    .line 1729
    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/Nodes$DoubleSpinedNodeBuilder;->copyInto([DI)V

    return-void
.end method

.method public copyInto([DI)V
    .locals 0
    .param p1, "array"    # [D
    .param p2, "offset"    # I

    .line 1763
    invoke-super {p0, p1, p2}, Ljava9/util/stream/SpinedBuffer$OfDouble;->copyInto(Ljava/lang/Object;I)V

    .line 1764
    return-void
.end method

.method public end()V
    .locals 0

    .line 1759
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    .line 1729
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Nodes$DoubleSpinedNodeBuilder;->forEach(Ljava9/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEach(Ljava9/util/function/DoubleConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava9/util/function/DoubleConsumer;

    .line 1742
    invoke-super {p0, p1}, Ljava9/util/stream/SpinedBuffer$OfDouble;->forEach(Ljava/lang/Object;)V

    .line 1743
    return-void
.end method

.method public spliterator()Ljava9/util/Spliterator$OfDouble;
    .locals 1

    .line 1737
    invoke-super {p0}, Ljava9/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1729
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$DoubleSpinedNodeBuilder;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 1729
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$DoubleSpinedNodeBuilder;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
