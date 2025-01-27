.class Ljava9/util/stream/Nodes$ArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field curSize:I


# direct methods
.method constructor <init>(JLjava9/util/function/IntFunction;)V
    .locals 2
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava9/util/function/IntFunction<",
            "[TT;>;)V"
        }
    .end annotation

    .line 650
    .local p0, "this":Ljava9/util/stream/Nodes$ArrayNode;, "Ljava9/util/stream/Nodes$ArrayNode<TT;>;"
    .local p3, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 653
    long-to-int v0, p1

    invoke-interface {p3, v0}, Ljava9/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava9/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    .line 654
    const/4 v0, 0x0

    iput v0, p0, Ljava9/util/stream/Nodes$ArrayNode;->curSize:I

    .line 655
    return-void

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 657
    .local p0, "this":Ljava9/util/stream/Nodes$ArrayNode;, "Ljava9/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p1, p0, Ljava9/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    .line 659
    array-length v0, p1

    iput v0, p0, Ljava9/util/stream/Nodes$ArrayNode;->curSize:I

    .line 660
    return-void
.end method


# virtual methods
.method public asArray(Ljava9/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 676
    .local p0, "this":Ljava9/util/stream/Nodes$ArrayNode;, "Ljava9/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    iget-object v0, p0, Ljava9/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Ljava9/util/stream/Nodes$ArrayNode;->curSize:I

    if-ne v1, v2, :cond_0

    .line 677
    return-object v0

    .line 679
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 3
    .param p2, "destOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 671
    .local p0, "this":Ljava9/util/stream/Nodes$ArrayNode;, "Ljava9/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "dest":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava9/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava9/util/stream/Nodes$ArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 672
    return-void
.end method

.method public count()J
    .locals 2

    .line 685
    .local p0, "this":Ljava9/util/stream/Nodes$ArrayNode;, "Ljava9/util/stream/Nodes$ArrayNode<TT;>;"
    iget v0, p0, Ljava9/util/stream/Nodes$ArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEach(Ljava9/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 690
    .local p0, "this":Ljava9/util/stream/Nodes$ArrayNode;, "Ljava9/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "consumer":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava9/util/stream/Nodes$ArrayNode;->curSize:I

    if-ge v0, v1, :cond_0

    .line 691
    iget-object v1, p0, Ljava9/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 693
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public spliterator()Ljava9/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 666
    .local p0, "this":Ljava9/util/stream/Nodes$ArrayNode;, "Ljava9/util/stream/Nodes$ArrayNode<TT;>;"
    iget-object v0, p0, Ljava9/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava9/util/stream/Nodes$ArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava9/util/J8Arrays;->spliterator([Ljava/lang/Object;II)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 699
    .local p0, "this":Ljava9/util/stream/Nodes$ArrayNode;, "Ljava9/util/stream/Nodes$ArrayNode<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava9/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Ljava9/util/stream/Nodes$ArrayNode;->curSize:I

    sub-int/2addr v1, v2

    .line 700
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ljava9/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 699
    const-string v1, "ArrayNode[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
