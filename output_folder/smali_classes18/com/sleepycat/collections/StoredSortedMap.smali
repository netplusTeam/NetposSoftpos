.class public Lcom/sleepycat/collections/StoredSortedMap;
.super Lcom/sleepycat/collections/StoredMap;
.source "StoredSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/collections/StoredMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sleepycat/collections/DataView;)V
    .locals 0
    .param p1, "mapView"    # Lcom/sleepycat/collections/DataView;

    .line 167
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/collections/StoredMap;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;Lcom/sleepycat/collections/PrimaryKeyAssigner;)V
    .locals 8
    .param p1, "database"    # Lcom/sleepycat/je/Database;
    .param p4, "keyAssigner"    # Lcom/sleepycat/collections/PrimaryKeyAssigner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TK;>;",
            "Lcom/sleepycat/bind/EntityBinding<",
            "TV;>;",
            "Lcom/sleepycat/collections/PrimaryKeyAssigner;",
            ")V"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    .local p2, "keyBinding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TK;>;"
    .local p3, "valueEntityBinding":Lcom/sleepycat/bind/EntityBinding;, "Lcom/sleepycat/bind/EntityBinding<TV;>;"
    new-instance v7, Lcom/sleepycat/collections/DataView;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/collections/DataView;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredMap;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;Z)V
    .locals 8
    .param p1, "database"    # Lcom/sleepycat/je/Database;
    .param p4, "writeAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TK;>;",
            "Lcom/sleepycat/bind/EntityBinding<",
            "TV;>;Z)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    .local p2, "keyBinding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TK;>;"
    .local p3, "valueEntityBinding":Lcom/sleepycat/bind/EntityBinding;, "Lcom/sleepycat/bind/EntityBinding<TV;>;"
    new-instance v7, Lcom/sleepycat/collections/DataView;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/collections/DataView;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredMap;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/collections/PrimaryKeyAssigner;)V
    .locals 8
    .param p1, "database"    # Lcom/sleepycat/je/Database;
    .param p4, "keyAssigner"    # Lcom/sleepycat/collections/PrimaryKeyAssigner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TK;>;",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TV;>;",
            "Lcom/sleepycat/collections/PrimaryKeyAssigner;",
            ")V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    .local p2, "keyBinding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TK;>;"
    .local p3, "valueBinding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TV;>;"
    new-instance v7, Lcom/sleepycat/collections/DataView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/collections/DataView;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredMap;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Z)V
    .locals 8
    .param p1, "database"    # Lcom/sleepycat/je/Database;
    .param p4, "writeAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TK;>;",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TV;>;Z)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    .local p2, "keyBinding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TK;>;"
    .local p3, "valueBinding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TV;>;"
    new-instance v7, Lcom/sleepycat/collections/DataView;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/collections/DataView;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredMap;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 74
    return-void
.end method

.method private getFirstOrLastKey(Z)Ljava/lang/Object;
    .locals 4
    .param p1, "doGetFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 234
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    new-instance v1, Lcom/sleepycat/collections/DataCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/StoredSortedMap;->view:Lcom/sleepycat/collections/DataView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v1

    .line 236
    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {v0, v3}, Lcom/sleepycat/collections/DataCursor;->getFirst(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    goto :goto_0

    .line 239
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_0
    invoke-virtual {v0, v3}, Lcom/sleepycat/collections/DataCursor;->getLast(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 241
    .restart local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :goto_0
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v1, v2, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->getCurrentKey()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 247
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredSortedMap;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 241
    return-object v2

    .line 247
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local p1    # "doGetFirst":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local p1    # "doGetFirst":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredSortedMap;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    throw v1
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 204
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/collections/StoredSortedMap;->getFirstOrLastKey(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 268
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Lcom/sleepycat/collections/StoredSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/SortedMap;
    .locals 2
    .param p2, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sleepycat/collections/StoredSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/collections/StoredSortedMap;->getFirstOrLastKey(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sleepycat/collections/StoredSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedMap;
    .locals 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 384
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    :try_start_0
    new-instance v0, Lcom/sleepycat/collections/StoredSortedMap;

    iget-object v1, p0, Lcom/sleepycat/collections/StoredSortedMap;->view:Lcom/sleepycat/collections/DataView;

    const/4 v6, 0x0

    .line 385
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/collections/DataView;->subView(Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/bind/EntryBinding;)Lcom/sleepycat/collections/DataView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/collections/StoredSortedMap;-><init>(Lcom/sleepycat/collections/DataView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    return-object v0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sleepycat/collections/StoredSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/SortedMap;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedMap;, "Lcom/sleepycat/collections/StoredSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/collections/StoredSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
