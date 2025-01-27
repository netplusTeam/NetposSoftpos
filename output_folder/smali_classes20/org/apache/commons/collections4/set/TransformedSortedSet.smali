.class public Lorg/apache/commons/collections4/set/TransformedSortedSet;
.super Lorg/apache/commons/collections4/set/TransformedSet;
.source "TransformedSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/TransformedSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x17408660b86f89a2L


# direct methods
.method protected constructor <init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedSortedSet;, "Lorg/apache/commons/collections4/set/TransformedSortedSet<TE;>;"
    .local p1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p2, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/set/TransformedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)V

    .line 104
    return-void
.end method

.method public static transformedSortedSet(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedSortedSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/set/TransformedSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 79
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedSortedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V

    .line 80
    .local v0, "decorated":Lorg/apache/commons/collections4/set/TransformedSortedSet;, "Lorg/apache/commons/collections4/set/TransformedSortedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 82
    invoke-interface {p0}, Ljava/util/SortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 83
    .local v1, "values":[Ljava/lang/Object;, "[TE;"
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    .line 84
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 85
    .local v4, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->decorated()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {p1, v4}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "values":[Ljava/lang/Object;, "[TE;"
    :cond_0
    return-object v0
.end method

.method public static transformingSortedSet(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/set/TransformedSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 58
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedSortedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedSortedSet;, "Lorg/apache/commons/collections4/set/TransformedSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedSortedSet;, "Lorg/apache/commons/collections4/set/TransformedSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedSet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedSortedSet;, "Lorg/apache/commons/collections4/set/TransformedSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedSortedSet;, "Lorg/apache/commons/collections4/set/TransformedSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 141
    .local v0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/set/TransformedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections4/set/TransformedSortedSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V

    return-object v1
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedSortedSet;, "Lorg/apache/commons/collections4/set/TransformedSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedSortedSet;, "Lorg/apache/commons/collections4/set/TransformedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 135
    .local v0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/set/TransformedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections4/set/TransformedSortedSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedSortedSet;, "Lorg/apache/commons/collections4/set/TransformedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 147
    .local v0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/set/TransformedSortedSet;

    iget-object v2, p0, Lorg/apache/commons/collections4/set/TransformedSortedSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V

    return-object v1
.end method
