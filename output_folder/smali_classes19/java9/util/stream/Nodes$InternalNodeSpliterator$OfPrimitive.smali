.class abstract Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;
.super Ljava9/util/stream/Nodes$InternalNodeSpliterator;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava9/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;N::",
        "Ljava9/util/stream/Node$OfPrimitive<",
        "TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TN;>;>",
        "Ljava9/util/stream/Nodes$InternalNodeSpliterator<",
        "TT;TT_SP",
        "LITR;",
        "TN;>;",
        "Ljava9/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/stream/Node$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 1126
    .local p0, "this":Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    .local p1, "cur":Ljava9/util/stream/Node$OfPrimitive;, "TN;"
    invoke-direct {p0, p1}, Ljava9/util/stream/Nodes$InternalNodeSpliterator;-><init>(Ljava9/util/stream/Node;)V

    .line 1127
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 1153
    .local p0, "this":Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    iget-object v0, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->curNode:Ljava9/util/stream/Node;

    if-nez v0, :cond_0

    .line 1154
    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Ljava9/util/Spliterator;

    if-nez v0, :cond_3

    .line 1157
    iget-object v0, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->lastNodeSpliterator:Ljava9/util/Spliterator;

    if-nez v0, :cond_2

    .line 1158
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->initStack()Ljava/util/Deque;

    move-result-object v0

    .line 1160
    .local v0, "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    :goto_0
    invoke-virtual {p0, v0}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->findNextLeafNode(Ljava/util/Deque;)Ljava9/util/stream/Node;

    move-result-object v1

    check-cast v1, Ljava9/util/stream/Node$OfPrimitive;

    move-object v2, v1

    .local v2, "leaf":Ljava9/util/stream/Node$OfPrimitive;, "TN;"
    if-eqz v1, :cond_1

    .line 1161
    invoke-interface {v2, p1}, Ljava9/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 1163
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->curNode:Ljava9/util/stream/Node;

    .line 1164
    .end local v0    # "stack":Ljava/util/Deque;, "Ljava/util/Deque<TN;>;"
    .end local v2    # "leaf":Ljava9/util/stream/Node$OfPrimitive;, "TN;"
    goto :goto_2

    .line 1166
    :cond_2
    iget-object v0, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->lastNodeSpliterator:Ljava9/util/Spliterator;

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    goto :goto_2

    .line 1169
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1170
    :cond_4
    :goto_2
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 1131
    .local p0, "this":Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->initTryAdvance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1132
    const/4 v0, 0x0

    return v0

    .line 1134
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Ljava9/util/Spliterator;

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    .line 1135
    .local v0, "hasNext":Z
    if-nez v0, :cond_2

    .line 1136
    iget-object v1, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->lastNodeSpliterator:Ljava9/util/Spliterator;

    if-nez v1, :cond_1

    .line 1138
    iget-object v1, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->findNextLeafNode(Ljava/util/Deque;)Ljava9/util/stream/Node;

    move-result-object v1

    check-cast v1, Ljava9/util/stream/Node$OfPrimitive;

    .line 1139
    .local v1, "leaf":Ljava9/util/stream/Node$OfPrimitive;, "TN;"
    if-eqz v1, :cond_1

    .line 1140
    invoke-interface {v1}, Ljava9/util/stream/Node$OfPrimitive;->spliterator()Ljava9/util/Spliterator$OfPrimitive;

    move-result-object v2

    iput-object v2, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Ljava9/util/Spliterator;

    .line 1142
    iget-object v2, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvanceSpliterator:Ljava9/util/Spliterator;

    check-cast v2, Ljava9/util/Spliterator$OfPrimitive;

    invoke-interface {v2, p1}, Ljava9/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 1146
    .end local v1    # "leaf":Ljava9/util/stream/Node$OfPrimitive;, "TN;"
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->curNode:Ljava9/util/stream/Node;

    .line 1148
    :cond_2
    return v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1119
    .local p0, "this":Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;, "Ljava9/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TN;>;"
    invoke-super {p0}, Ljava9/util/stream/Nodes$InternalNodeSpliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    return-object v0
.end method
