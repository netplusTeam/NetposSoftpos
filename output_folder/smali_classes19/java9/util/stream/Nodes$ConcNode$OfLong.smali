.class final Ljava9/util/stream/Nodes$ConcNode$OfLong;
.super Ljava9/util/stream/Nodes$ConcNode$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes$ConcNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Nodes$ConcNode$OfPrimitive<",
        "Ljava/lang/Long;",
        "Ljava9/util/function/LongConsumer;",
        "[J",
        "Ljava9/util/Spliterator$OfLong;",
        "Ljava9/util/stream/Node$OfLong;",
        ">;",
        "Ljava9/util/stream/Node$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/stream/Node$OfLong;Ljava9/util/stream/Node$OfLong;)V
    .locals 0
    .param p1, "left"    # Ljava9/util/stream/Node$OfLong;
    .param p2, "right"    # Ljava9/util/stream/Node$OfLong;

    .line 912
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Ljava9/util/stream/Node$OfPrimitive;Ljava9/util/stream/Node$OfPrimitive;)V

    .line 913
    return-void
.end method


# virtual methods
.method public spliterator()Ljava9/util/Spliterator$OfLong;
    .locals 1

    .line 917
    new-instance v0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfLong;

    invoke-direct {v0, p0}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfLong;-><init>(Ljava9/util/stream/Node$OfLong;)V

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 907
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$ConcNode$OfLong;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 907
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$ConcNode$OfLong;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
