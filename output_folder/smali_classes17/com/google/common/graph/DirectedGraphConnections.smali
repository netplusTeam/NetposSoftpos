.class final Lcom/google/common/graph/DirectedGraphConnections;
.super Ljava/lang/Object;
.source "DirectedGraphConnections.java"

# interfaces
.implements Lcom/google/common/graph/GraphConnections;


# annotations
.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;,
        Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/GraphConnections<",
        "TN;TV;>;"
    }
.end annotation


# static fields
.field private static final PRED:Ljava/lang/Object;


# instance fields
.field private final adjacentNodeValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TN;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final orderedNodeConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<",
            "TN;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private predecessorCount:I

.field private successorCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/List;II)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p3, "predecessorCount"    # I
    .param p4, "successorCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TN;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<",
            "TN;>;>;II)V"
        }
    .end annotation

    .line 146
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    .local p1, "adjacentNodeValues":Ljava/util/Map;, "Ljava/util/Map<TN;Ljava/lang/Object;>;"
    .local p2, "orderedNodeConnections":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    .line 148
    iput-object p2, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    .line 149
    invoke-static {p3}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    .line 150
    invoke-static {p4}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    .line 151
    nop

    .line 152
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 153
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gt p4, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/graph/DirectedGraphConnections;

    .line 54
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/graph/DirectedGraphConnections;

    .line 54
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 54
    invoke-static {p0}, Lcom/google/common/graph/DirectedGraphConnections;->isPredecessor(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/graph/DirectedGraphConnections;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/graph/DirectedGraphConnections;

    .line 54
    iget v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    return v0
.end method

.method static synthetic access$400(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 54
    invoke-static {p0}, Lcom/google/common/graph/DirectedGraphConnections;->isSuccessor(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/common/graph/DirectedGraphConnections;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/graph/DirectedGraphConnections;

    .line 54
    iget v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    return v0
.end method

.method private static isPredecessor(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 571
    sget-object v0, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    instance-of v0, p0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSuccessor(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 575
    sget-object v0, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static of(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/DirectedGraphConnections;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;)",
            "Lcom/google/common/graph/DirectedGraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 158
    .local p0, "incidentEdgeOrder":Lcom/google/common/graph/ElementOrder;, "Lcom/google/common/graph/ElementOrder<TN;>;"
    const/4 v0, 0x4

    .line 161
    .local v0, "initialCapacity":I
    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections$8;->$SwitchMap$com$google$common$graph$ElementOrder$Type:[I

    invoke-virtual {p0}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/graph/ElementOrder$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 169
    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 166
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v1, "orderedNodeConnections":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;>;"
    goto :goto_0

    .line 163
    .end local v1    # "orderedNodeConnections":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;>;"
    :pswitch_1
    const/4 v1, 0x0

    .line 164
    .restart local v1    # "orderedNodeConnections":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;>;"
    nop

    .line 172
    :goto_0
    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections;

    new-instance v3, Ljava/util/HashMap;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v4}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v4}, Lcom/google/common/graph/DirectedGraphConnections;-><init>(Ljava/util/Map;Ljava/util/List;II)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static ofImmutable(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/graph/DirectedGraphConnections;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TN;",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;",
            "Lcom/google/common/base/Function<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/DirectedGraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 181
    .local p0, "thisNode":Ljava/lang/Object;, "TN;"
    .local p1, "incidentEdges":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/graph/EndpointPair<TN;>;>;"
    .local p2, "successorNodeToValueFn":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TN;TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v0, "adjacentNodeValues":Ljava/util/Map;, "Ljava/util/Map<TN;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 187
    .local v1, "orderedNodeConnectionsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;>;"
    const/4 v2, 0x0

    .line 188
    .local v2, "predecessorCount":I
    const/4 v3, 0x0

    .line 190
    .local v3, "successorCount":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/graph/EndpointPair;

    .line 191
    .local v5, "incidentEdge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 194
    new-instance v6, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-interface {p2, p0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v6, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;

    invoke-direct {v6, p0}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 197
    new-instance v6, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;

    invoke-direct {v6, p0}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 198
    add-int/lit8 v2, v2, 0x1

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 200
    :cond_0
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 201
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v6

    .line 203
    .local v6, "predecessor":Ljava/lang/Object;, "TN;"
    sget-object v7, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 204
    .local v7, "existingValue":Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 205
    new-instance v8, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v8, v7}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_1
    new-instance v8, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;

    invoke-direct {v8, v6}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 209
    nop

    .end local v6    # "predecessor":Ljava/lang/Object;, "TN;"
    .end local v7    # "existingValue":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    .line 210
    goto :goto_2

    .line 211
    :cond_2
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 213
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    .line 214
    .local v6, "successor":Ljava/lang/Object;, "TN;"
    invoke-interface {p2, v6}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 216
    .local v7, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 217
    .local v8, "existingValue":Ljava/lang/Object;
    if-eqz v8, :cond_4

    .line 218
    sget-object v9, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne v8, v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 219
    new-instance v9, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v9, v7}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_4
    new-instance v9, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;

    invoke-direct {v9, v6}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 223
    add-int/lit8 v3, v3, 0x1

    .line 225
    .end local v5    # "incidentEdge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    .end local v6    # "successor":Ljava/lang/Object;, "TN;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    .end local v8    # "existingValue":Ljava/lang/Object;
    :goto_2
    goto/16 :goto_0

    .line 227
    :cond_5
    new-instance v4, Lcom/google/common/graph/DirectedGraphConnections;

    .line 229
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v4, v0, v5, v2, v3}, Lcom/google/common/graph/DirectedGraphConnections;-><init>(Ljava/util/Map;Ljava/util/List;II)V

    .line 227
    return-object v4
.end method


# virtual methods
.method public addPredecessor(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)V"
        }
    .end annotation

    .line 513
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    .local p2, "unused":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 516
    .local v0, "previousValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 517
    const/4 v1, 0x1

    .local v1, "addedPredecessor":Z
    goto :goto_0

    .line 518
    .end local v1    # "addedPredecessor":Z
    :cond_0
    instance-of v2, v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v2, :cond_1

    .line 520
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const/4 v1, 0x0

    .restart local v1    # "addedPredecessor":Z
    goto :goto_0

    .line 522
    .end local v1    # "addedPredecessor":Z
    :cond_1
    if-eq v0, v1, :cond_2

    .line 524
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v2, v0}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const/4 v1, 0x1

    .restart local v1    # "addedPredecessor":Z
    goto :goto_0

    .line 527
    .end local v1    # "addedPredecessor":Z
    :cond_2
    const/4 v1, 0x0

    .line 530
    .restart local v1    # "addedPredecessor":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 531
    iget v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    invoke-static {v2}, Lcom/google/common/graph/Graphs;->checkPositive(I)I

    .line 533
    iget-object v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 534
    new-instance v3, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;

    invoke-direct {v3, p1}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_3
    return-void
.end method

.method public addSuccessor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 543
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 546
    .local v0, "previousValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 547
    const/4 v1, 0x0

    .local v1, "previousSuccessor":Ljava/lang/Object;
    goto :goto_0

    .line 548
    .end local v1    # "previousSuccessor":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v2, p2}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    move-object v1, v0

    check-cast v1, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-static {v1}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->access$600(Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "previousSuccessor":Ljava/lang/Object;
    goto :goto_0

    .line 551
    .end local v1    # "previousSuccessor":Ljava/lang/Object;
    :cond_1
    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 552
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-direct {v2, p2}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const/4 v1, 0x0

    .restart local v1    # "previousSuccessor":Ljava/lang/Object;
    goto :goto_0

    .line 555
    .end local v1    # "previousSuccessor":Ljava/lang/Object;
    :cond_2
    move-object v1, v0

    .line 558
    .restart local v1    # "previousSuccessor":Ljava/lang/Object;
    :goto_0
    if-nez v1, :cond_3

    .line 559
    iget v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    invoke-static {v2}, Lcom/google/common/graph/Graphs;->checkPositive(I)I

    .line 561
    iget-object v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 562
    new-instance v3, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;

    invoke-direct {v3, p1}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_3
    if-nez v1, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method public adjacentNodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 239
    :cond_0
    new-instance v0, Lcom/google/common/graph/DirectedGraphConnections$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/DirectedGraphConnections$1;-><init>(Lcom/google/common/graph/DirectedGraphConnections;)V

    return-object v0
.end method

.method public incidentEdgeIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    .local p1, "thisNode":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    if-nez v0, :cond_0

    .line 379
    nop

    .line 382
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections;->predecessors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/DirectedGraphConnections$4;

    invoke-direct {v1, p0, p1}, Lcom/google/common/graph/DirectedGraphConnections$4;-><init>(Lcom/google/common/graph/DirectedGraphConnections;Ljava/lang/Object;)V

    .line 381
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    .line 390
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections;->successors()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections$5;

    invoke-direct {v2, p0, p1}, Lcom/google/common/graph/DirectedGraphConnections$5;-><init>(Lcom/google/common/graph/DirectedGraphConnections;Ljava/lang/Object;)V

    .line 389
    invoke-static {v1, v2}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v1

    .line 380
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    .local v0, "resultWithDoubleSelfLoop":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/graph/EndpointPair<TN;>;>;"
    goto :goto_0

    .line 398
    .end local v0    # "resultWithDoubleSelfLoop":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/graph/EndpointPair<TN;>;>;"
    :cond_0
    nop

    .line 400
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/DirectedGraphConnections$6;

    invoke-direct {v1, p0, p1}, Lcom/google/common/graph/DirectedGraphConnections$6;-><init>(Lcom/google/common/graph/DirectedGraphConnections;Ljava/lang/Object;)V

    .line 399
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    .line 413
    .restart local v0    # "resultWithDoubleSelfLoop":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/graph/EndpointPair<TN;>;>;"
    :goto_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 414
    .local v1, "alreadySeenSelfLoop":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/graph/DirectedGraphConnections$7;-><init>(Lcom/google/common/graph/DirectedGraphConnections;Ljava/util/Iterator;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v2
.end method

.method public predecessors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    new-instance v0, Lcom/google/common/graph/DirectedGraphConnections$2;

    invoke-direct {v0, p0}, Lcom/google/common/graph/DirectedGraphConnections$2;-><init>(Lcom/google/common/graph/DirectedGraphConnections;)V

    return-object v0
.end method

.method public removePredecessor(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 451
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 456
    .local v0, "previousValue":Ljava/lang/Object;
    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const/4 v1, 0x1

    .local v1, "removedPredecessor":Z
    goto :goto_0

    .line 459
    .end local v1    # "removedPredecessor":Z
    :cond_0
    instance-of v1, v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    move-object v2, v0

    check-cast v2, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-static {v2}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->access$600(Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const/4 v1, 0x1

    .restart local v1    # "removedPredecessor":Z
    goto :goto_0

    .line 463
    .end local v1    # "removedPredecessor":Z
    :cond_1
    const/4 v1, 0x0

    .line 466
    .restart local v1    # "removedPredecessor":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 467
    iget v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->predecessorCount:I

    invoke-static {v2}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    .line 469
    iget-object v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 470
    new-instance v3, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;

    invoke-direct {v3, p1}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Pred;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 473
    :cond_2
    return-void
.end method

.method public removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 479
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 483
    .local v0, "previousValue":Ljava/lang/Object;
    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    instance-of v2, v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v2, :cond_1

    .line 486
    iget-object v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    move-object v1, v0

    check-cast v1, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-static {v1}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->access$600(Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "removedValue":Ljava/lang/Object;
    goto :goto_1

    .line 489
    .end local v1    # "removedValue":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    move-object v1, v0

    .restart local v1    # "removedValue":Ljava/lang/Object;
    goto :goto_1

    .line 484
    .end local v1    # "removedValue":Ljava/lang/Object;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 493
    .restart local v1    # "removedValue":Ljava/lang/Object;
    :goto_1
    if-eqz v1, :cond_3

    .line 494
    iget v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I

    invoke-static {v2}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    .line 496
    iget-object v2, p0, Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 497
    new-instance v3, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;

    invoke-direct {v3, p1}, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 508
    :cond_3
    if-nez v1, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    return-object v2
.end method

.method public successors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 325
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    new-instance v0, Lcom/google/common/graph/DirectedGraphConnections$3;

    invoke-direct {v0, p0}, Lcom/google/common/graph/DirectedGraphConnections$3;-><init>(Lcom/google/common/graph/DirectedGraphConnections;)V

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 437
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections;, "Lcom/google/common/graph/DirectedGraphConnections<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 439
    .local v0, "value":Ljava/lang/Object;
    sget-object v1, Lcom/google/common/graph/DirectedGraphConnections;->PRED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 440
    const/4 v1, 0x0

    return-object v1

    .line 442
    :cond_0
    instance-of v1, v0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    if-eqz v1, :cond_1

    .line 443
    move-object v1, v0

    check-cast v1, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;

    invoke-static {v1}, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->access$600(Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 445
    :cond_1
    return-object v0
.end method
