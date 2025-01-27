.class final Ljava9/util/stream/Nodes$IntSpinedNodeBuilder;
.super Ljava9/util/stream/SpinedBuffer$OfInt;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node$OfInt;
.implements Ljava9/util/stream/Node$Builder$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntSpinedNodeBuilder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1636
    invoke-direct {p0}, Ljava9/util/stream/SpinedBuffer$OfInt;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 0
    .param p1, "i"    # I

    .line 1657
    invoke-super {p0, p1}, Ljava9/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 1658
    return-void
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 1632
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$IntSpinedNodeBuilder;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[I
    .locals 1

    .line 1672
    invoke-super {p0}, Ljava9/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public begin(J)V
    .locals 0
    .param p1, "size"    # J

    .line 1651
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$IntSpinedNodeBuilder;->clear()V

    .line 1652
    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/Nodes$IntSpinedNodeBuilder;->ensureCapacity(J)V

    .line 1653
    return-void
.end method

.method public build()Ljava9/util/stream/Node$OfInt;
    .locals 0

    .line 1677
    return-object p0
.end method

.method public bridge synthetic build()Ljava9/util/stream/Node;
    .locals 1

    .line 1632
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$IntSpinedNodeBuilder;->build()Ljava9/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    .line 1632
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/Nodes$IntSpinedNodeBuilder;->copyInto([II)V

    return-void
.end method

.method public copyInto([II)V
    .locals 0
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1667
    invoke-super {p0, p1, p2}, Ljava9/util/stream/SpinedBuffer$OfInt;->copyInto(Ljava/lang/Object;I)V

    .line 1668
    return-void
.end method

.method public end()V
    .locals 0

    .line 1663
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    .line 1632
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Nodes$IntSpinedNodeBuilder;->forEach(Ljava9/util/function/IntConsumer;)V

    return-void
.end method

.method public forEach(Ljava9/util/function/IntConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava9/util/function/IntConsumer;

    .line 1645
    invoke-super {p0, p1}, Ljava9/util/stream/SpinedBuffer$OfInt;->forEach(Ljava/lang/Object;)V

    .line 1646
    return-void
.end method

.method public spliterator()Ljava9/util/Spliterator$OfInt;
    .locals 1

    .line 1640
    invoke-super {p0}, Ljava9/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1632
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 1632
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
