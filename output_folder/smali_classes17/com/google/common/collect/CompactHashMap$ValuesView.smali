.class Lcom/google/common/collect/CompactHashMap$ValuesView;
.super Lcom/google/common/collect/Maps$Values;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$Values<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/CompactHashMap;

    .line 996
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$ValuesView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    .line 997
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    .line 998
    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1007
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$ValuesView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 1009
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 1010
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 1012
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v1}, Lcom/google/common/collect/CompactHashMap;->firstEntryIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1013
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v2, v1}, Lcom/google/common/collect/CompactHashMap;->access$800(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1012
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/CompactHashMap;->getSuccessor(I)I

    move-result v1

    goto :goto_0

    .line 1016
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1002
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$ValuesView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->valuesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 1020
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$ValuesView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1021
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 1024
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 1025
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    goto :goto_0

    .line 1026
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v3}, Lcom/google/common/collect/CompactHashMap;->access$1200(Lcom/google/common/collect/CompactHashMap;)[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v4}, Lcom/google/common/collect/CompactHashMap;->access$300(Lcom/google/common/collect/CompactHashMap;)I

    move-result v4

    invoke-static {v3, v2, v4, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v1

    .line 1024
    :goto_0
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 1031
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$ValuesView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1032
    new-array v0, v1, [Ljava/lang/Object;

    return-object v0

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 1035
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 1036
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 1037
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v2}, Lcom/google/common/collect/CompactHashMap;->access$1200(Lcom/google/common/collect/CompactHashMap;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v3}, Lcom/google/common/collect/CompactHashMap;->access$300(Lcom/google/common/collect/CompactHashMap;)I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/google/common/collect/ObjectArrays;->copyAsObjectArray([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    .line 1035
    :goto_0
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1043
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$ValuesView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1044
    array-length v0, p1

    if-lez v0, :cond_0

    .line 1045
    move-object v0, p1

    .line 1046
    .local v0, "unsoundlyCovariantArray":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1048
    .end local v0    # "unsoundlyCovariantArray":[Ljava/lang/Object;
    :cond_0
    return-object p1

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 1051
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 1052
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 1053
    :cond_2
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v2}, Lcom/google/common/collect/CompactHashMap;->access$1200(Lcom/google/common/collect/CompactHashMap;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap$ValuesView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v3}, Lcom/google/common/collect/CompactHashMap;->access$300(Lcom/google/common/collect/CompactHashMap;)I

    move-result v3

    invoke-static {v2, v1, v3, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 1051
    :goto_0
    return-object v1
.end method
