.class public Lcom/sleepycat/collections/StoredEntrySet;
.super Lcom/sleepycat/collections/StoredCollection;
.source "StoredEntrySet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/collections/StoredCollection<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sleepycat/collections/DataView;)V
    .locals 0
    .param p1, "mapView"    # Lcom/sleepycat/collections/DataView;

    .line 44
    .local p0, "this":Lcom/sleepycat/collections/StoredEntrySet;, "Lcom/sleepycat/collections/StoredEntrySet<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/collections/StoredCollection;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 38
    .local p0, "this":Lcom/sleepycat/collections/StoredEntrySet;, "Lcom/sleepycat/collections/StoredEntrySet<TK;TV;>;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredEntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/sleepycat/collections/StoredEntrySet;, "Lcom/sleepycat/collections/StoredEntrySet<TK;TV;>;"
    .local p1, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/collections/StoredEntrySet;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "mapEntry"    # Ljava/lang/Object;

    .line 152
    .local p0, "this":Lcom/sleepycat/collections/StoredEntrySet;, "Lcom/sleepycat/collections/StoredEntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 153
    return v1

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 157
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/StoredEntrySet;->view:Lcom/sleepycat/collections/DataView;

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v2

    .line 158
    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    .local v2, "entry":Ljava/util/Map$Entry;
    nop

    .line 160
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1}, Lcom/sleepycat/collections/DataCursor;->findBoth(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    .line 161
    .local v3, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v4, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 165
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredEntrySet;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 161
    return v1

    .line 165
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local p1    # "mapEntry":Ljava/lang/Object;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local p1    # "mapEntry":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredEntrySet;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    throw v1
.end method

.method hasValues()Z
    .locals 1

    .line 206
    .local p0, "this":Lcom/sleepycat/collections/StoredEntrySet;, "Lcom/sleepycat/collections/StoredEntrySet<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method bridge synthetic makeIteratorData(Lcom/sleepycat/collections/BaseIterator;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 0

    .line 38
    .local p0, "this":Lcom/sleepycat/collections/StoredEntrySet;, "Lcom/sleepycat/collections/StoredEntrySet<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/collections/StoredEntrySet;->makeIteratorData(Lcom/sleepycat/collections/BaseIterator;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method makeIteratorData(Lcom/sleepycat/collections/BaseIterator;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/util/Map$Entry;
    .locals 3
    .param p1, "iterator"    # Lcom/sleepycat/collections/BaseIterator;
    .param p2, "keyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "priKeyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "valueEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/collections/BaseIterator;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/sleepycat/collections/StoredEntrySet;, "Lcom/sleepycat/collections/StoredEntrySet<TK;TV;>;"
    new-instance v0, Lcom/sleepycat/collections/StoredMapEntry;

    iget-object v1, p0, Lcom/sleepycat/collections/StoredEntrySet;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v1, p2, p3}, Lcom/sleepycat/collections/DataView;->makeKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/collections/StoredEntrySet;->view:Lcom/sleepycat/collections/DataView;

    .line 200
    invoke-virtual {v2, p3, p4}, Lcom/sleepycat/collections/DataView;->makeValue(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/sleepycat/collections/StoredMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/sleepycat/collections/StoredCollection;Lcom/sleepycat/collections/BaseIterator;)V

    .line 199
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "mapEntry"    # Ljava/lang/Object;

    .line 106
    .local p0, "this":Lcom/sleepycat/collections/StoredEntrySet;, "Lcom/sleepycat/collections/StoredEntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    return v1

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 110
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredEntrySet;->beginAutoCommit()Z

    move-result v2

    .line 112
    .local v2, "doAutoCommit":Z
    :try_start_0
    new-instance v3, Lcom/sleepycat/collections/DataCursor;

    iget-object v4, p0, Lcom/sleepycat/collections/StoredEntrySet;->view:Lcom/sleepycat/collections/DataView;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v3

    .line 113
    move-object v3, p1

    check-cast v3, Ljava/util/Map$Entry;

    .line 114
    .local v3, "entry":Ljava/util/Map$Entry;
    nop

    .line 115
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v6, v5}, Lcom/sleepycat/collections/DataCursor;->findBoth(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v4

    .line 116
    .local v4, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v6, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v4, v6, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->delete()Lcom/sleepycat/je/OperationStatus;

    .line 119
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredEntrySet;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/sleepycat/collections/StoredEntrySet;->commitAutoCommit(Z)V

    .line 121
    sget-object v6, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v6, :cond_2

    move v1, v5

    :cond_2
    return v1

    .line 122
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredEntrySet;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 124
    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/collections/StoredEntrySet;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 171
    .local p0, "this":Lcom/sleepycat/collections/StoredEntrySet;, "Lcom/sleepycat/collections/StoredEntrySet<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, "i":Lcom/sleepycat/collections/StoredIterator;
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredEntrySet;->storedIterator()Lcom/sleepycat/collections/StoredIterator;

    move-result-object v2

    move-object v1, v2

    .line 176
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 180
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 181
    .local v4, "val":Ljava/lang/Object;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_1
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "val":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 185
    :cond_3
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 186
    return-object v2

    .line 190
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "i":Lcom/sleepycat/collections/StoredIterator;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "i":Lcom/sleepycat/collections/StoredIterator;
    :goto_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    throw v2
.end method
