.class Ljava9/util/stream/Nodes$LongArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongArrayNode"
.end annotation


# instance fields
.field final array:[J

.field curSize:I


# direct methods
.method constructor <init>(J)V
    .locals 2
    .param p1, "size"    # J

    .line 1369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1370
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1372
    long-to-int v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava9/util/stream/Nodes$LongArrayNode;->array:[J

    .line 1373
    const/4 v0, 0x0

    iput v0, p0, Ljava9/util/stream/Nodes$LongArrayNode;->curSize:I

    .line 1374
    return-void

    .line 1371
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([J)V
    .locals 1
    .param p1, "array"    # [J

    .line 1376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1377
    iput-object p1, p0, Ljava9/util/stream/Nodes$LongArrayNode;->array:[J

    .line 1378
    array-length v0, p1

    iput v0, p0, Ljava9/util/stream/Nodes$LongArrayNode;->curSize:I

    .line 1379
    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 1365
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$LongArrayNode;->asPrimitiveArray()[J

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[J
    .locals 3

    .line 1388
    iget-object v0, p0, Ljava9/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v1, v0

    iget v2, p0, Ljava9/util/stream/Nodes$LongArrayNode;->curSize:I

    if-ne v1, v2, :cond_0

    .line 1389
    return-object v0

    .line 1391
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    .line 1365
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/Nodes$LongArrayNode;->copyInto([JI)V

    return-void
.end method

.method public copyInto([JI)V
    .locals 3
    .param p1, "dest"    # [J
    .param p2, "destOffset"    # I

    .line 1397
    iget-object v0, p0, Ljava9/util/stream/Nodes$LongArrayNode;->array:[J

    iget v1, p0, Ljava9/util/stream/Nodes$LongArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1398
    return-void
.end method

.method public count()J
    .locals 2

    .line 1402
    iget v0, p0, Ljava9/util/stream/Nodes$LongArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    .line 1365
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Nodes$LongArrayNode;->forEach(Ljava9/util/function/LongConsumer;)V

    return-void
.end method

.method public forEach(Ljava9/util/function/LongConsumer;)V
    .locals 3
    .param p1, "consumer"    # Ljava9/util/function/LongConsumer;

    .line 1407
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava9/util/stream/Nodes$LongArrayNode;->curSize:I

    if-ge v0, v1, :cond_0

    .line 1408
    iget-object v1, p0, Ljava9/util/stream/Nodes$LongArrayNode;->array:[J

    aget-wide v1, v1, v0

    invoke-interface {p1, v1, v2}, Ljava9/util/function/LongConsumer;->accept(J)V

    .line 1407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1410
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public spliterator()Ljava9/util/Spliterator$OfLong;
    .locals 3

    .line 1383
    iget-object v0, p0, Ljava9/util/stream/Nodes$LongArrayNode;->array:[J

    iget v1, p0, Ljava9/util/stream/Nodes$LongArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava9/util/J8Arrays;->spliterator([JII)Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1365
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$LongArrayNode;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 1365
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$LongArrayNode;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1414
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava9/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v1, v1

    iget v2, p0, Ljava9/util/stream/Nodes$LongArrayNode;->curSize:I

    sub-int/2addr v1, v2

    .line 1415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ljava9/util/stream/Nodes$LongArrayNode;->array:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1414
    const-string v1, "LongArrayNode[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
