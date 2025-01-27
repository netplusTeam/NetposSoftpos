.class final Ljava9/util/stream/Nodes$ConcNode$OfDouble;
.super Ljava9/util/stream/Nodes$ConcNode$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes$ConcNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Nodes$ConcNode$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava9/util/function/DoubleConsumer;",
        "[D",
        "Ljava9/util/Spliterator$OfDouble;",
        "Ljava9/util/stream/Node$OfDouble;",
        ">;",
        "Ljava9/util/stream/Node$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/stream/Node$OfDouble;Ljava9/util/stream/Node$OfDouble;)V
    .locals 0
    .param p1, "left"    # Ljava9/util/stream/Node$OfDouble;
    .param p2, "right"    # Ljava9/util/stream/Node$OfDouble;

    .line 926
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Ljava9/util/stream/Node$OfPrimitive;Ljava9/util/stream/Node$OfPrimitive;)V

    .line 927
    return-void
.end method


# virtual methods
.method public spliterator()Ljava9/util/Spliterator$OfDouble;
    .locals 1

    .line 931
    new-instance v0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfDouble;

    invoke-direct {v0, p0}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfDouble;-><init>(Ljava9/util/stream/Node$OfDouble;)V

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 921
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$ConcNode$OfDouble;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 921
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$ConcNode$OfDouble;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
