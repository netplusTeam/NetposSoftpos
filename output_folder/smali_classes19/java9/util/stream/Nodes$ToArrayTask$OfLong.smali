.class final Ljava9/util/stream/Nodes$ToArrayTask$OfLong;
.super Ljava9/util/stream/Nodes$ToArrayTask$OfPrimitive;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Nodes$ToArrayTask$OfPrimitive<",
        "Ljava/lang/Long;",
        "Ljava9/util/function/LongConsumer;",
        "[J",
        "Ljava9/util/Spliterator$OfLong;",
        "Ljava9/util/stream/Node$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava9/util/stream/Node$OfLong;[JI)V
    .locals 1
    .param p1, "node"    # Ljava9/util/stream/Node$OfLong;
    .param p2, "array"    # [J
    .param p3, "offset"    # I

    .line 2088
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava9/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Ljava9/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILjava9/util/stream/Nodes$1;)V

    .line 2089
    return-void
.end method

.method synthetic constructor <init>(Ljava9/util/stream/Node$OfLong;[JILjava9/util/stream/Nodes$1;)V
    .locals 0
    .param p1, "x0"    # Ljava9/util/stream/Node$OfLong;
    .param p2, "x1"    # [J
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava9/util/stream/Nodes$1;

    .line 2085
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/Nodes$ToArrayTask$OfLong;-><init>(Ljava9/util/stream/Node$OfLong;[JI)V

    return-void
.end method
