.class final Lcom/sleepycat/collections/StoredMapEntry;
.super Lcom/sleepycat/collections/MapEntryParameter;
.source "StoredMapEntry.java"


# instance fields
.field private coll:Lcom/sleepycat/collections/StoredCollection;

.field private iter:Lcom/sleepycat/collections/BaseIterator;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/sleepycat/collections/StoredCollection;Lcom/sleepycat/collections/BaseIterator;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "coll"    # Lcom/sleepycat/collections/StoredCollection;
    .param p4, "iter"    # Lcom/sleepycat/collections/BaseIterator;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/collections/MapEntryParameter;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    iput-object p3, p0, Lcom/sleepycat/collections/StoredMapEntry;->coll:Lcom/sleepycat/collections/StoredCollection;

    .line 31
    iput-object p4, p0, Lcom/sleepycat/collections/StoredMapEntry;->iter:Lcom/sleepycat/collections/BaseIterator;

    .line 32
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/sleepycat/collections/StoredMapEntry;->iter:Lcom/sleepycat/collections/BaseIterator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sleepycat/collections/BaseIterator;->isCurrentData(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v1, p0, Lcom/sleepycat/collections/StoredMapEntry;->iter:Lcom/sleepycat/collections/BaseIterator;

    invoke-virtual {v1, p1}, Lcom/sleepycat/collections/BaseIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    .end local v0    # "oldValue":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/StoredMapEntry;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v0, v0, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->dupsAllowed:Z

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/sleepycat/collections/StoredMapEntry;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/collections/StoredCollection;->putKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .restart local v0    # "oldValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredMapEntry;->setValueInternal(Ljava/lang/Object;)V

    .line 47
    return-object v0

    .line 42
    .end local v0    # "oldValue":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "May not insert duplicates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
