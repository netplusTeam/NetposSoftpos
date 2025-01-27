.class final Ljava9/util/stream/Nodes$LongSpinedNodeBuilder;
.super Ljava9/util/stream/SpinedBuffer$OfLong;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node$OfLong;
.implements Ljava9/util/stream/Node$Builder$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongSpinedNodeBuilder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1685
    invoke-direct {p0}, Ljava9/util/stream/SpinedBuffer$OfLong;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 0
    .param p1, "i"    # J

    .line 1705
    invoke-super {p0, p1, p2}, Ljava9/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 1706
    return-void
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 1681
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$LongSpinedNodeBuilder;->asPrimitiveArray()[J

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[J
    .locals 1

    .line 1720
    invoke-super {p0}, Ljava9/util/stream/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public begin(J)V
    .locals 0
    .param p1, "size"    # J

    .line 1699
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$LongSpinedNodeBuilder;->clear()V

    .line 1700
    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/Nodes$LongSpinedNodeBuilder;->ensureCapacity(J)V

    .line 1701
    return-void
.end method

.method public build()Ljava9/util/stream/Node$OfLong;
    .locals 0

    .line 1725
    return-object p0
.end method

.method public bridge synthetic build()Ljava9/util/stream/Node;
    .locals 1

    .line 1681
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$LongSpinedNodeBuilder;->build()Ljava9/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    .line 1681
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/Nodes$LongSpinedNodeBuilder;->copyInto([JI)V

    return-void
.end method

.method public copyInto([JI)V
    .locals 0
    .param p1, "array"    # [J
    .param p2, "offset"    # I

    .line 1715
    invoke-super {p0, p1, p2}, Ljava9/util/stream/SpinedBuffer$OfLong;->copyInto(Ljava/lang/Object;I)V

    .line 1716
    return-void
.end method

.method public end()V
    .locals 0

    .line 1711
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    .line 1681
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Nodes$LongSpinedNodeBuilder;->forEach(Ljava9/util/function/LongConsumer;)V

    return-void
.end method

.method public forEach(Ljava9/util/function/LongConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava9/util/function/LongConsumer;

    .line 1694
    invoke-super {p0, p1}, Ljava9/util/stream/SpinedBuffer$OfLong;->forEach(Ljava/lang/Object;)V

    .line 1695
    return-void
.end method

.method public spliterator()Ljava9/util/Spliterator$OfLong;
    .locals 1

    .line 1689
    invoke-super {p0}, Ljava9/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1681
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 1681
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
