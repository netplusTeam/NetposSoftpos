.class final Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;
.super Ljava9/util/stream/Nodes$InternalNodeSpliterator;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/Nodes$InternalNodeSpliterator<",
        "TT;",
        "Ljava9/util/Spliterator<",
        "TT;>;",
        "Ljava9/util/stream/Node<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/stream/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 1072
    .local p0, "this":Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef<TT;>;"
    .local p1, "curNode":Ljava9/util/stream/Node;, "Ljava9/util/stream/Node<TT;>;"
    invoke-direct {p0, p1}, Ljava9/util/stream/Nodes$InternalNodeSpliterator;-><init>(Ljava9/util/stream/Node;)V

    .line 1073
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1099
    .local p0, "this":Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef<TT;>;"
    .local p1, "consumer":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljava9/util/stream/Node;

    if-nez v0, :cond_0

    .line 1100
    return-void

    .line 1102
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava9/util/Spliterator;

    if-nez v0, :cond_3

    .line 1103
    iget-object v0, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljava9/util/Spliterator;

    if-nez v0, :cond_2

    .line 1104
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->initStack()Ljava/util/Deque;

    move-result-object v0

    .line 1106
    .local v0, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljava9/util/stream/Node<TT;>;>;"
    :goto_0
    invoke-virtual {p0, v0}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->findNextLeafNode(Ljava/util/Deque;)Ljava9/util/stream/Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "leaf":Ljava9/util/stream/Node;, "Ljava9/util/stream/Node<TT;>;"
    if-eqz v1, :cond_1

    .line 1107
    invoke-interface {v2, p1}, Ljava9/util/stream/Node;->forEach(Ljava9/util/function/Consumer;)V

    goto :goto_0

    .line 1109
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljava9/util/stream/Node;

    .line 1110
    .end local v0    # "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljava9/util/stream/Node<TT;>;>;"
    .end local v2    # "leaf":Ljava9/util/stream/Node;, "Ljava9/util/stream/Node<TT;>;"
    goto :goto_2

    .line 1112
    :cond_2
    iget-object v0, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator;->forEachRemaining(Ljava9/util/function/Consumer;)V

    goto :goto_2

    .line 1115
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1116
    :cond_4
    :goto_2
    return-void
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1077
    .local p0, "this":Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;, "Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef<TT;>;"
    .local p1, "consumer":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->initTryAdvance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    const/4 v0, 0x0

    return v0

    .line 1080
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v0

    .line 1081
    .local v0, "hasNext":Z
    if-nez v0, :cond_2

    .line 1082
    iget-object v1, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljava9/util/Spliterator;

    if-nez v1, :cond_1

    .line 1084
    iget-object v1, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->findNextLeafNode(Ljava/util/Deque;)Ljava9/util/stream/Node;

    move-result-object v1

    .line 1085
    .local v1, "leaf":Ljava9/util/stream/Node;, "Ljava9/util/stream/Node<TT;>;"
    if-eqz v1, :cond_1

    .line 1086
    invoke-interface {v1}, Ljava9/util/stream/Node;->spliterator()Ljava9/util/Spliterator;

    move-result-object v2

    iput-object v2, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava9/util/Spliterator;

    .line 1088
    iget-object v2, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava9/util/Spliterator;

    invoke-interface {v2, p1}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v2

    return v2

    .line 1092
    .end local v1    # "leaf":Ljava9/util/stream/Node;, "Ljava9/util/stream/Node<TT;>;"
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljava9/util/stream/Node;

    .line 1094
    :cond_2
    return v0
.end method
