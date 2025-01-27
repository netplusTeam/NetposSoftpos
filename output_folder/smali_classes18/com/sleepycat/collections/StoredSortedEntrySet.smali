.class public Lcom/sleepycat/collections/StoredSortedEntrySet;
.super Lcom/sleepycat/collections/StoredEntrySet;
.source "StoredSortedEntrySet.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/collections/StoredEntrySet<",
        "TK;TV;>;",
        "Ljava/util/SortedSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sleepycat/collections/DataView;)V
    .locals 0
    .param p1, "mapView"    # Lcom/sleepycat/collections/DataView;

    .line 52
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/collections/StoredEntrySet;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 53
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    .line 46
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredSortedEntrySet;->first()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredSortedEntrySet;->getFirstOrLast(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 46
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredSortedEntrySet;->headSet(Ljava/util/Map$Entry;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/util/Map$Entry;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Ljava/util/SortedSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    .local p1, "toMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Lcom/sleepycat/collections/StoredSortedEntrySet;->subSet(Ljava/util/Map$Entry;ZLjava/util/Map$Entry;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/util/Map$Entry;Z)Ljava/util/SortedSet;
    .locals 2
    .param p2, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;Z)",
            "Ljava/util/SortedSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    .local p1, "toMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sleepycat/collections/StoredSortedEntrySet;->subSet(Ljava/util/Map$Entry;ZLjava/util/Map$Entry;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .line 46
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredSortedEntrySet;->last()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredSortedEntrySet;->getFirstOrLast(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 46
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/collections/StoredSortedEntrySet;->subSet(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public subSet(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Ljava/util/SortedSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    .local p1, "fromMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p2, "toMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sleepycat/collections/StoredSortedEntrySet;->subSet(Ljava/util/Map$Entry;ZLjava/util/Map$Entry;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/util/Map$Entry;ZLjava/util/Map$Entry;Z)Ljava/util/SortedSet;
    .locals 8
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;Z",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;Z)",
            "Ljava/util/SortedSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    .local p1, "fromMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p3, "toMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 252
    .local v3, "fromKey":Ljava/lang/Object;
    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    move-object v5, v0

    .line 254
    .local v5, "toKey":Ljava/lang/Object;
    :try_start_0
    new-instance v0, Lcom/sleepycat/collections/StoredSortedEntrySet;

    iget-object v2, p0, Lcom/sleepycat/collections/StoredSortedEntrySet;->view:Lcom/sleepycat/collections/DataView;

    const/4 v7, 0x0

    .line 255
    move v4, p2

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/collections/DataView;->subView(Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/bind/EntryBinding;)Lcom/sleepycat/collections/DataView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/collections/StoredSortedEntrySet;-><init>(Lcom/sleepycat/collections/DataView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    return-object v0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 46
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredSortedEntrySet;->tailSet(Ljava/util/Map$Entry;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/util/Map$Entry;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Ljava/util/SortedSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    .local p1, "fromMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sleepycat/collections/StoredSortedEntrySet;->subSet(Ljava/util/Map$Entry;ZLjava/util/Map$Entry;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/util/Map$Entry;Z)Ljava/util/SortedSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;Z)",
            "Ljava/util/SortedSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedEntrySet;, "Lcom/sleepycat/collections/StoredSortedEntrySet<TK;TV;>;"
    .local p1, "fromMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/collections/StoredSortedEntrySet;->subSet(Ljava/util/Map$Entry;ZLjava/util/Map$Entry;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
