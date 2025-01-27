.class final Ljava9/util/stream/Nodes$ConcNode;
.super Ljava9/util/stream/Nodes$AbstractConcNode;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/Nodes$ConcNode$OfDouble;,
        Ljava9/util/stream/Nodes$ConcNode$OfLong;,
        Ljava9/util/stream/Nodes$ConcNode$OfInt;,
        Ljava9/util/stream/Nodes$ConcNode$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/Nodes$AbstractConcNode<",
        "TT;",
        "Ljava9/util/stream/Node<",
        "TT;>;>;",
        "Ljava9/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/stream/Node;Ljava9/util/stream/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/Node<",
            "TT;>;",
            "Ljava9/util/stream/Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 793
    .local p0, "this":Ljava9/util/stream/Nodes$ConcNode;, "Ljava9/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "left":Ljava9/util/stream/Node;, "Ljava9/util/stream/Node<TT;>;"
    .local p2, "right":Ljava9/util/stream/Node;, "Ljava9/util/stream/Node<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/Nodes$AbstractConcNode;-><init>(Ljava9/util/stream/Node;Ljava9/util/stream/Node;)V

    .line 794
    return-void
.end method


# virtual methods
.method public asArray(Ljava9/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 812
    .local p0, "this":Ljava9/util/stream/Nodes$ConcNode;, "Ljava9/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    .line 813
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 815
    long-to-int v2, v0

    invoke-interface {p1, v2}, Ljava9/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 816
    .local v2, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava9/util/stream/Nodes$ConcNode;->copyInto([Ljava/lang/Object;I)V

    .line 817
    return-object v2

    .line 814
    .end local v2    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 3
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 803
    .local p0, "this":Ljava9/util/stream/Nodes$ConcNode;, "Ljava9/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v0, p0, Ljava9/util/stream/Nodes$ConcNode;->left:Ljava9/util/stream/Node;

    invoke-interface {v0, p1, p2}, Ljava9/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 807
    iget-object v0, p0, Ljava9/util/stream/Nodes$ConcNode;->right:Ljava9/util/stream/Node;

    iget-object v1, p0, Ljava9/util/stream/Nodes$ConcNode;->left:Ljava9/util/stream/Node;

    invoke-interface {v1}, Ljava9/util/stream/Node;->count()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v1, p2

    invoke-interface {v0, p1, v1}, Ljava9/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 808
    return-void
.end method

.method public forEach(Ljava9/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 822
    .local p0, "this":Ljava9/util/stream/Nodes$ConcNode;, "Ljava9/util/stream/Nodes$ConcNode<TT;>;"
    .local p1, "consumer":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava9/util/stream/Nodes$ConcNode;->left:Ljava9/util/stream/Node;

    invoke-interface {v0, p1}, Ljava9/util/stream/Node;->forEach(Ljava9/util/function/Consumer;)V

    .line 823
    iget-object v0, p0, Ljava9/util/stream/Nodes$ConcNode;->right:Ljava9/util/stream/Node;

    invoke-interface {v0, p1}, Ljava9/util/stream/Node;->forEach(Ljava9/util/function/Consumer;)V

    .line 824
    return-void
.end method

.method public spliterator()Ljava9/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 798
    .local p0, "this":Ljava9/util/stream/Nodes$ConcNode;, "Ljava9/util/stream/Nodes$ConcNode<TT;>;"
    new-instance v0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;

    invoke-direct {v0, p0}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;-><init>(Ljava9/util/stream/Node;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 843
    .local p0, "this":Ljava9/util/stream/Nodes$ConcNode;, "Ljava9/util/stream/Nodes$ConcNode<TT;>;"
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    .line 844
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Ljava9/util/stream/Nodes$ConcNode;->left:Ljava9/util/stream/Node;

    aput-object v3, v0, v1

    iget-object v1, p0, Ljava9/util/stream/Nodes$ConcNode;->right:Ljava9/util/stream/Node;

    aput-object v1, v0, v2

    const-string v1, "ConcNode[%s.%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 846
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava9/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ConcNode[size=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 16
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava9/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava9/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 828
    .local p0, "this":Ljava9/util/stream/Nodes$ConcNode;, "Ljava9/util/stream/Nodes$ConcNode<TT;>;"
    .local p5, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava9/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 829
    return-object v0

    .line 830
    :cond_0
    iget-object v1, v0, Ljava9/util/stream/Nodes$ConcNode;->left:Ljava9/util/stream/Node;

    invoke-interface {v1}, Ljava9/util/stream/Node;->count()J

    move-result-wide v7

    .line 831
    .local v7, "leftCount":J
    cmp-long v1, p1, v7

    if-ltz v1, :cond_1

    .line 832
    iget-object v9, v0, Ljava9/util/stream/Nodes$ConcNode;->right:Ljava9/util/stream/Node;

    sub-long v10, p1, v7

    sub-long v12, p3, v7

    move-object/from16 v14, p5

    invoke-interface/range {v9 .. v14}, Ljava9/util/stream/Node;->truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v1

    return-object v1

    .line 833
    :cond_1
    cmp-long v1, p3, v7

    if-gtz v1, :cond_2

    .line 834
    iget-object v1, v0, Ljava9/util/stream/Nodes$ConcNode;->left:Ljava9/util/stream/Node;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljava9/util/stream/Node;->truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v1

    return-object v1

    .line 836
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava9/util/stream/Nodes$ConcNode;->getShape()Ljava9/util/stream/StreamShape;

    move-result-object v9

    iget-object v1, v0, Ljava9/util/stream/Nodes$ConcNode;->left:Ljava9/util/stream/Node;

    move-wide/from16 v2, p1

    move-wide v4, v7

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljava9/util/stream/Node;->truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v1

    iget-object v10, v0, Ljava9/util/stream/Nodes$ConcNode;->right:Ljava9/util/stream/Node;

    const-wide/16 v11, 0x0

    sub-long v13, p3, v7

    .line 837
    move-object/from16 v15, p5

    invoke-interface/range {v10 .. v15}, Ljava9/util/stream/Node;->truncate(JJLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v2

    .line 836
    invoke-static {v9, v1, v2}, Ljava9/util/stream/Nodes;->conc(Ljava9/util/stream/StreamShape;Ljava9/util/stream/Node;Ljava9/util/stream/Node;)Ljava9/util/stream/Node;

    move-result-object v1

    return-object v1
.end method
