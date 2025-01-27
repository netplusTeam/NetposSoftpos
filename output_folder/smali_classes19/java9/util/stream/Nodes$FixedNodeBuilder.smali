.class final Ljava9/util/stream/Nodes$FixedNodeBuilder;
.super Ljava9/util/stream/Nodes$ArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedNodeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/Nodes$ArrayNode<",
        "TT;>;",
        "Ljava9/util/stream/Node$Builder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(JLjava9/util/function/IntFunction;)V
    .locals 0
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava9/util/function/IntFunction<",
            "[TT;>;)V"
        }
    .end annotation

    .line 1209
    .local p0, "this":Ljava9/util/stream/Nodes$FixedNodeBuilder;, "Ljava9/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    .local p3, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/Nodes$ArrayNode;-><init>(JLjava9/util/function/IntFunction;)V

    .line 1210
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1230
    .local p0, "this":Ljava9/util/stream/Nodes$FixedNodeBuilder;, "Ljava9/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1231
    iget-object v0, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    aput-object p1, v0, v1

    .line 1236
    return-void

    .line 1233
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v3, v3

    .line 1234
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1233
    const-string v2, "Accept exceeded fixed size of %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public begin(J)V
    .locals 4
    .param p1, "size"    # J

    .line 1222
    .local p0, "this":Ljava9/util/stream/Nodes$FixedNodeBuilder;, "Ljava9/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    iget-object v0, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1225
    iput v1, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    .line 1226
    return-void

    .line 1223
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1224
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1223
    const-string v1, "Begin size %d is not equal to fixed size %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Ljava9/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 1214
    .local p0, "this":Ljava9/util/stream/Nodes$FixedNodeBuilder;, "Ljava9/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    iget v0, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1217
    return-object p0

    .line 1215
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    .line 1216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1215
    const-string v2, "Current size %d is less than fixed size %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 4

    .line 1240
    .local p0, "this":Ljava9/util/stream/Nodes$FixedNodeBuilder;, "Ljava9/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    iget v0, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1243
    return-void

    .line 1241
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    .line 1242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1241
    const-string v2, "End size %d is less than fixed size %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1247
    .local p0, "this":Ljava9/util/stream/Nodes$FixedNodeBuilder;, "Ljava9/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    sub-int/2addr v1, v2

    .line 1248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ljava9/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1247
    const-string v1, "FixedNodeBuilder[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
