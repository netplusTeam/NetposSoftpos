.class public Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;
.super Ljava/lang/Object;
.source "EventDataCacheQueueBased.java"

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

.field private signatureQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;, "Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased<TT;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;->map:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;->signatureQueue:Ljava/util/LinkedList;

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

    .line 89
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;, "Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased<TT;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 91
    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;->signatureQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 92
    return-object v0
.end method

.method public put(Lcom/itextpdf/kernel/counter/data/EventData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;, "Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased<TT;TV;>;"
    .local p1, "data":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    if-eqz p1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/counter/data/EventData;->getSignature()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/counter/data/EventData;

    .line 71
    .local v0, "old":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/counter/data/EventData;->mergeWith(Lcom/itextpdf/kernel/counter/data/EventData;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;->signatureQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/counter/data/EventData;->getSignature()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 77
    .end local v0    # "old":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    :cond_1
    :goto_0
    return-void
.end method

.method public retrieveNext()Lcom/itextpdf/kernel/counter/data/EventData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;, "Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased<TT;TV;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;->signatureQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataCacheQueueBased;->signatureQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/counter/data/EventData;

    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
