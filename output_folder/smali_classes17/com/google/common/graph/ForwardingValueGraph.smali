.class abstract Lcom/google/common/graph/ForwardingValueGraph;
.super Lcom/google/common/graph/AbstractValueGraph;
.source "ForwardingValueGraph.java"


# annotations
.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-direct {p0}, Lcom/google/common/graph/AbstractValueGraph;-><init>()V

    return-void
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .line 56
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public degree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method abstract delegate()Lcom/google/common/graph/ValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation
.end method

.method protected edgeCount()J
    .locals 2

    .line 46
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public edgeValue(Lcom/google/common/graph/EndpointPair;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TV;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->edgeValue(Lcom/google/common/graph/EndpointPair;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Optional<",
            "TV;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public edgeValueOrDefault(Lcom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 128
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/ValueGraph;->edgeValueOrDefault(Lcom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 122
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasEdgeConnecting(Lcom/google/common/graph/EndpointPair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)Z"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->hasEdgeConnecting(Lcom/google/common/graph/EndpointPair;)Z

    move-result v0

    return v0
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/ValueGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public incidentEdgeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->incidentEdgeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public isDirected()Z
    .locals 1

    .line 51
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v0

    return v0
.end method

.method public nodeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public nodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 30
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ForwardingValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 30
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ForwardingValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
