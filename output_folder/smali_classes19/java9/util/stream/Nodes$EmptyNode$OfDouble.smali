.class final Ljava9/util/stream/Nodes$EmptyNode$OfDouble;
.super Ljava9/util/stream/Nodes$EmptyNode;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Nodes$EmptyNode<",
        "Ljava/lang/Double;",
        "[D",
        "Ljava9/util/function/DoubleConsumer;",
        ">;",
        "Ljava9/util/stream/Node$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 631
    invoke-direct {p0}, Ljava9/util/stream/Nodes$EmptyNode;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 627
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$EmptyNode$OfDouble;->asPrimitiveArray()[D

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[D
    .locals 1

    .line 640
    invoke-static {}, Ljava9/util/stream/Nodes;->access$700()[D

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava9/util/Spliterator$OfDouble;
    .locals 1

    .line 635
    invoke-static {}, Ljava9/util/Spliterators;->emptyDoubleSpliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 627
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$EmptyNode$OfDouble;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 627
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$EmptyNode$OfDouble;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
