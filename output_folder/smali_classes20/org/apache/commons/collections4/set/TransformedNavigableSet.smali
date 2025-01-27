.class public Lorg/apache/commons/collections4/set/TransformedNavigableSet;
.super Lorg/apache/commons/collections4/set/TransformedSortedSet;
.source "TransformedNavigableSet.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/TransformedSortedSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337900L


# direct methods
.method protected constructor <init>(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p2, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)V

    .line 101
    return-void
.end method

.method public static transformedNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/set/TransformedNavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 75
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;-><init>(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)V

    .line 76
    .local v0, "decorated":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    invoke-interface {p0}, Ljava/util/NavigableSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 78
    invoke-interface {p0}, Ljava/util/NavigableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 79
    .local v1, "values":[Ljava/lang/Object;, "[TE;"
    invoke-interface {p0}, Ljava/util/NavigableSet;->clear()V

    .line 80
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 81
    .local v4, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v5

    invoke-interface {p1, v4}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "values":[Ljava/lang/Object;, "[TE;"
    :cond_0
    return-object v0
.end method

.method public static transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/set/TransformedNavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 55
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;-><init>(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 35
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 165
    .local v0, "head":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    move-result-object v1

    return-object v1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 159
    .local v0, "sub":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    move-result-object v1

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedNavigableSet;, "Lorg/apache/commons/collections4/set/TransformedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 171
    .local v0, "tail":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformer:Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    move-result-object v1

    return-object v1
.end method
