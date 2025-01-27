.class public Lcom/sleepycat/collections/StoredValueSet;
.super Lcom/sleepycat/collections/StoredCollection;
.source "StoredValueSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/collections/StoredCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sleepycat/collections/DataView;)V
    .locals 0
    .param p1, "valueSetView"    # Lcom/sleepycat/collections/DataView;

    .line 95
    .local p0, "this":Lcom/sleepycat/collections/StoredValueSet;, "Lcom/sleepycat/collections/StoredValueSet<TE;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/collections/StoredCollection;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntityBinding;Z)V
    .locals 8
    .param p1, "database"    # Lcom/sleepycat/je/Database;
    .param p3, "writeAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/bind/EntityBinding<",
            "TE;>;Z)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/sleepycat/collections/StoredValueSet;, "Lcom/sleepycat/collections/StoredValueSet<TE;>;"
    .local p2, "valueEntityBinding":Lcom/sleepycat/bind/EntityBinding;, "Lcom/sleepycat/bind/EntityBinding<TE;>;"
    new-instance v7, Lcom/sleepycat/collections/DataView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/collections/DataView;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredCollection;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 91
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
            "TE;>;Z)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/sleepycat/collections/StoredValueSet;, "Lcom/sleepycat/collections/StoredValueSet<TE;>;"
    .local p2, "valueBinding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TE;>;"
    new-instance v7, Lcom/sleepycat/collections/DataView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/collections/DataView;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredCollection;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 66
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/sleepycat/collections/StoredValueSet;, "Lcom/sleepycat/collections/StoredValueSet<TE;>;"
    .local p1, "entity":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredValueSet;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataView;->isSecondary()Z

    move-result v0

    if-nez v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/sleepycat/collections/StoredValueSet;->view:Lcom/sleepycat/collections/DataView;

    iget-object v0, v0, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->isSingleKey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/sleepycat/collections/StoredValueSet;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->dupsAllowed:Z

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredValueSet;->beginAutoCommit()Z

    move-result v2

    .line 136
    .local v2, "doAutoCommit":Z
    :try_start_0
    new-instance v3, Lcom/sleepycat/collections/DataCursor;

    iget-object v4, p0, Lcom/sleepycat/collections/StoredValueSet;->view:Lcom/sleepycat/collections/DataView;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v3

    .line 137
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->useRangeKey()V

    .line 138
    nop

    .line 139
    invoke-virtual {v0, v1, p1, v1, v5}, Lcom/sleepycat/collections/DataCursor;->putNoDupData(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 140
    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredValueSet;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 141
    invoke-virtual {p0, v2}, Lcom/sleepycat/collections/StoredValueSet;->commitAutoCommit(Z)V

    .line 142
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 143
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredValueSet;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 145
    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/collections/StoredValueSet;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 131
    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "doAutoCommit":Z
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Duplicates required"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/collections/StoredValueSet;->view:Lcom/sleepycat/collections/DataView;

    iget-object v0, v0, Lcom/sleepycat/collections/DataView;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {p0, v1, p1}, Lcom/sleepycat/collections/StoredValueSet;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 148
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Add requires entity binding"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Add not allowed with index"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 178
    .local p0, "this":Lcom/sleepycat/collections/StoredValueSet;, "Lcom/sleepycat/collections/StoredValueSet<TE;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredValueSet;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasValues()Z
    .locals 1

    .line 218
    .local p0, "this":Lcom/sleepycat/collections/StoredValueSet;, "Lcom/sleepycat/collections/StoredValueSet<TE;>;"
    const/4 v0, 0x1

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
            ")TE;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lcom/sleepycat/collections/StoredValueSet;, "Lcom/sleepycat/collections/StoredValueSet<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredValueSet;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0, p3, p4}, Lcom/sleepycat/collections/DataView;->makeValue(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 205
    .local p0, "this":Lcom/sleepycat/collections/StoredValueSet;, "Lcom/sleepycat/collections/StoredValueSet<TE;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredValueSet;->removeValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
