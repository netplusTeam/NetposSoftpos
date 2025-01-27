.class final Ljava9/util/stream/Nodes$IntFixedNodeBuilder;
.super Ljava9/util/stream/Nodes$IntArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node$Builder$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntFixedNodeBuilder"
.end annotation


# direct methods
.method constructor <init>(J)V
    .locals 0
    .param p1, "size"    # J

    .line 1478
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/Nodes$IntArrayNode;-><init>(J)V

    .line 1479
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 4
    .param p1, "i"    # I

    .line 1503
    iget v0, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1504
    iget-object v0, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    iget v1, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    aput p1, v0, v1

    .line 1509
    return-void

    .line 1506
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v3, v3

    .line 1507
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1506
    const-string v2, "Accept exceeded fixed size of %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public begin(J)V
    .locals 4
    .param p1, "size"    # J

    .line 1493
    iget-object v0, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1498
    iput v1, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    .line 1499
    return-void

    .line 1494
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1495
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1494
    const-string v1, "Begin size %d is not equal to fixed size %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Ljava9/util/stream/Node$OfInt;
    .locals 4

    .line 1483
    iget v0, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1488
    return-object p0

    .line 1484
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    .line 1485
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1484
    const-string v2, "Current size %d is less than fixed size %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic build()Ljava9/util/stream/Node;
    .locals 1

    .line 1473
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->build()Ljava9/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 4

    .line 1513
    iget v0, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1517
    return-void

    .line 1514
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    .line 1515
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1514
    const-string v2, "End size %d is less than fixed size %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1521
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v1, v1

    iget v2, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    sub-int/2addr v1, v2

    .line 1522
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ljava9/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1521
    const-string v1, "IntFixedNodeBuilder[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
