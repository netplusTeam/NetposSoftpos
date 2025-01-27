.class Ljava9/util/stream/Nodes$IntArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntArrayNode"
.end annotation


# instance fields
.field final array:[I

.field curSize:I


# direct methods
.method constructor <init>(J)V
    .locals 2
    .param p1, "size"    # J

    .line 1313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1316
    long-to-int v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Ljava9/util/stream/Nodes$IntArrayNode;->array:[I

    .line 1317
    const/4 v0, 0x0

    iput v0, p0, Ljava9/util/stream/Nodes$IntArrayNode;->curSize:I

    .line 1318
    return-void

    .line 1315
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([I)V
    .locals 1
    .param p1, "array"    # [I

    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1321
    iput-object p1, p0, Ljava9/util/stream/Nodes$IntArrayNode;->array:[I

    .line 1322
    array-length v0, p1

    iput v0, p0, Ljava9/util/stream/Nodes$IntArrayNode;->curSize:I

    .line 1323
    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 1309
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$IntArrayNode;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[I
    .locals 3

    .line 1334
    iget-object v0, p0, Ljava9/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v1, v0

    iget v2, p0, Ljava9/util/stream/Nodes$IntArrayNode;->curSize:I

    if-ne v1, v2, :cond_0

    .line 1335
    return-object v0

    .line 1337
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    .line 1309
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/Nodes$IntArrayNode;->copyInto([II)V

    return-void
.end method

.method public copyInto([II)V
    .locals 3
    .param p1, "dest"    # [I
    .param p2, "destOffset"    # I

    .line 1343
    iget-object v0, p0, Ljava9/util/stream/Nodes$IntArrayNode;->array:[I

    iget v1, p0, Ljava9/util/stream/Nodes$IntArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1344
    return-void
.end method

.method public count()J
    .locals 2

    .line 1348
    iget v0, p0, Ljava9/util/stream/Nodes$IntArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    .line 1309
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Nodes$IntArrayNode;->forEach(Ljava9/util/function/IntConsumer;)V

    return-void
.end method

.method public forEach(Ljava9/util/function/IntConsumer;)V
    .locals 2
    .param p1, "consumer"    # Ljava9/util/function/IntConsumer;

    .line 1353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava9/util/stream/Nodes$IntArrayNode;->curSize:I

    if-ge v0, v1, :cond_0

    .line 1354
    iget-object v1, p0, Ljava9/util/stream/Nodes$IntArrayNode;->array:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 1353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1356
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public spliterator()Ljava9/util/Spliterator$OfInt;
    .locals 3

    .line 1329
    iget-object v0, p0, Ljava9/util/stream/Nodes$IntArrayNode;->array:[I

    iget v1, p0, Ljava9/util/stream/Nodes$IntArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava9/util/J8Arrays;->spliterator([III)Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1309
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$IntArrayNode;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 1309
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$IntArrayNode;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1360
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava9/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v1, v1

    iget v2, p0, Ljava9/util/stream/Nodes$IntArrayNode;->curSize:I

    sub-int/2addr v1, v2

    .line 1361
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ljava9/util/stream/Nodes$IntArrayNode;->array:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1360
    const-string v1, "IntArrayNode[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
