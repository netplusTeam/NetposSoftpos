.class public Lcom/sleepycat/collections/StoredKeySet;
.super Lcom/sleepycat/collections/StoredCollection;
.source "StoredKeySet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/collections/StoredCollection<",
        "TK;>;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sleepycat/collections/DataView;)V
    .locals 0
    .param p1, "keySetView"    # Lcom/sleepycat/collections/DataView;

    .line 67
    .local p0, "this":Lcom/sleepycat/collections/StoredKeySet;, "Lcom/sleepycat/collections/StoredKeySet<TK;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/collections/StoredCollection;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Z)V
    .locals 8
    .param p1, "database"    # Lcom/sleepycat/je/Database;
    .param p3, "writeAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TK;>;Z)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/sleepycat/collections/StoredKeySet;, "Lcom/sleepycat/collections/StoredKeySet<TK;>;"
    .local p2, "keyBinding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TK;>;"
    new-instance v7, Lcom/sleepycat/collections/DataView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/collections/DataView;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredCollection;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 63
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/sleepycat/collections/StoredKeySet;, "Lcom/sleepycat/collections/StoredKeySet<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 98
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredKeySet;->beginAutoCommit()Z

    move-result v1

    .line 100
    .local v1, "doAutoCommit":Z
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/StoredKeySet;->view:Lcom/sleepycat/collections/DataView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v2

    .line 101
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/sleepycat/collections/DataCursor;->putNoOverwrite(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 102
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredKeySet;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredKeySet;->commitAutoCommit(Z)V

    .line 104
    sget-object v5, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    return v4

    .line 105
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredKeySet;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 107
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/collections/StoredKeySet;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 155
    .local p0, "this":Lcom/sleepycat/collections/StoredKeySet;, "Lcom/sleepycat/collections/StoredKeySet<TK;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredKeySet;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasValues()Z
    .locals 1

    .line 160
    .local p0, "this":Lcom/sleepycat/collections/StoredKeySet;, "Lcom/sleepycat/collections/StoredKeySet<TK;>;"
    const/4 v0, 0x0

    return v0
.end method

.method iterateDuplicates()Z
    .locals 1

    .line 173
    .local p0, "this":Lcom/sleepycat/collections/StoredKeySet;, "Lcom/sleepycat/collections/StoredKeySet<TK;>;"
    const/4 v0, 0x0

    return v0
.end method

.method makeIteratorData(Lcom/sleepycat/collections/BaseIterator;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 1
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
            ")TK;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lcom/sleepycat/collections/StoredKeySet;, "Lcom/sleepycat/collections/StoredKeySet<TK;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredKeySet;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0, p2, p3}, Lcom/sleepycat/collections/DataView;->makeKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 134
    .local p0, "this":Lcom/sleepycat/collections/StoredKeySet;, "Lcom/sleepycat/collections/StoredKeySet<TK;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/collections/StoredKeySet;->removeKey(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
