.class final Ljava9/util/stream/Nodes$ConcNode$OfInt;
.super Ljava9/util/stream/Nodes$ConcNode$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes$ConcNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Nodes$ConcNode$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava9/util/function/IntConsumer;",
        "[I",
        "Ljava9/util/Spliterator$OfInt;",
        "Ljava9/util/stream/Node$OfInt;",
        ">;",
        "Ljava9/util/stream/Node$OfInt;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/stream/Node$OfInt;Ljava9/util/stream/Node$OfInt;)V
    .locals 0
    .param p1, "left"    # Ljava9/util/stream/Node$OfInt;
    .param p2, "right"    # Ljava9/util/stream/Node$OfInt;

    .line 898
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Ljava9/util/stream/Node$OfPrimitive;Ljava9/util/stream/Node$OfPrimitive;)V

    .line 899
    return-void
.end method


# virtual methods
.method public spliterator()Ljava9/util/Spliterator$OfInt;
    .locals 1

    .line 903
    new-instance v0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfInt;

    invoke-direct {v0, p0}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfInt;-><init>(Ljava9/util/stream/Node$OfInt;)V

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 893
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$ConcNode$OfInt;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 893
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$ConcNode$OfInt;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
