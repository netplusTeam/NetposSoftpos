.class public Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;
.super Ljava/lang/Object;
.source "EventDataCacheComparatorBased.java"

# interfaces
.implements Lcom/itextpdf/kernel/counter/data/IEventDataCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/itextpdf/kernel/counter/data/EventData<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/itextpdf/kernel/counter/data/IEventDataCache<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;TV;>;"
        }
    .end annotation
.end field

.field private orderedCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TV;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;, "Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased<TT;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;->map:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;->orderedCache:Ljava/util/Set;

    .line 71
    return-void
.end method


# virtual methods
.method public clear()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;, "Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased<TT;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 103
    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;->orderedCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 104
    return-object v0
.end method

.method public put(Lcom/itextpdf/kernel/counter/data/EventData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;, "Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased<TT;TV;>;"
    .local p1, "data":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    if-eqz p1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/counter/data/EventData;->getSignature()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/counter/data/EventData;

    .line 77
    .local v0, "old":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;->orderedCache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/counter/data/EventData;->mergeWith(Lcom/itextpdf/kernel/counter/data/EventData;)V

    .line 80
    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;->orderedCache:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;->orderedCache:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v0    # "old":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    :cond_1
    :goto_0
    return-void
.end method

.method public retrieveNext()Lcom/itextpdf/kernel/counter/data/EventData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;, "Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased<TT;TV;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;->orderedCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/counter/data/EventData;

    .line 90
    .local v1, "data":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    if-eqz v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;->map:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/counter/data/EventData;->getSignature()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheComparatorBased;->orderedCache:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 93
    return-object v1

    .line 95
    .end local v1    # "data":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    :cond_0
    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
