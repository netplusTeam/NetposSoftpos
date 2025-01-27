.class Ljava9/util/stream/Nodes$DoubleArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleArrayNode"
.end annotation


# instance fields
.field final array:[D

.field curSize:I


# direct methods
.method constructor <init>(J)V
    .locals 2
    .param p1, "size"    # J

    .line 1423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1424
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1426
    long-to-int v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->array:[D

    .line 1427
    const/4 v0, 0x0

    iput v0, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->curSize:I

    .line 1428
    return-void

    .line 1425
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([D)V
    .locals 1
    .param p1, "array"    # [D

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1431
    iput-object p1, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->array:[D

    .line 1432
    array-length v0, p1

    iput v0, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->curSize:I

    .line 1433
    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 1419
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$DoubleArrayNode;->asPrimitiveArray()[D

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[D
    .locals 3

    .line 1442
    iget-object v0, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->array:[D

    array-length v1, v0

    iget v2, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->curSize:I

    if-ne v1, v2, :cond_0

    .line 1443
    return-object v0

    .line 1445
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    .line 1419
    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/Nodes$DoubleArrayNode;->copyInto([DI)V

    return-void
.end method

.method public copyInto([DI)V
    .locals 3
    .param p1, "dest"    # [D
    .param p2, "destOffset"    # I

    .line 1451
    iget-object v0, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->array:[D

    iget v1, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1452
    return-void
.end method

.method public count()J
    .locals 2

    .line 1456
    iget v0, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    .line 1419
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Nodes$DoubleArrayNode;->forEach(Ljava9/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEach(Ljava9/util/function/DoubleConsumer;)V
    .locals 3
    .param p1, "consumer"    # Ljava9/util/function/DoubleConsumer;

    .line 1461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->curSize:I

    if-ge v0, v1, :cond_0

    .line 1462
    iget-object v1, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->array:[D

    aget-wide v1, v1, v0

    invoke-interface {p1, v1, v2}, Ljava9/util/function/DoubleConsumer;->accept(D)V

    .line 1461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1464
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public spliterator()Ljava9/util/Spliterator$OfDouble;
    .locals 3

    .line 1437
    iget-object v0, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->array:[D

    iget v1, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava9/util/J8Arrays;->spliterator([DII)Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1419
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$DoubleArrayNode;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 1419
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$DoubleArrayNode;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1468
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->array:[D

    array-length v1, v1

    iget v2, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->curSize:I

    sub-int/2addr v1, v2

    .line 1469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ljava9/util/stream/Nodes$DoubleArrayNode;->array:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1468
    const-string v1, "DoubleArrayNode[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
