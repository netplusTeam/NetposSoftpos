.class public Lcom/sleepycat/collections/StoredMap;
.super Lcom/sleepycat/collections/StoredContainer;
.source "StoredMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/collections/StoredContainer;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private entrySet:Lcom/sleepycat/collections/StoredEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/collections/StoredEntrySet<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/sleepycat/collections/StoredKeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/collections/StoredKeySet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private valueSet:Lcom/sleepycat/collections/StoredValueSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/collections/StoredValueSet<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sleepycat/collections/DataView;)V
    .locals 0
    .param p1, "view"    # Lcom/sleepycat/collections/DataView;

    .line 179
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/collections/StoredContainer;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 180
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredMap;->initView()V

    .line 181
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

    .line 172
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
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

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredContainer;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 174
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredMap;->initView()V

    .line 175
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

    .line 141
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
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

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredContainer;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 143
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredMap;->initView()V

    .line 144
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

    .line 111
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
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

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredContainer;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 113
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredMap;->initView()V

    .line 114
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

    .line 80
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
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

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredContainer;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 82
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredMap;->initView()V

    .line 83
    return-void
.end method

.method private initView()V
    .locals 2

    .line 201
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMap;->areKeyRangesAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Lcom/sleepycat/collections/StoredSortedEntrySet;

    iget-object v1, p0, Lcom/sleepycat/collections/StoredMap;->view:Lcom/sleepycat/collections/DataView;

    invoke-direct {v0, v1}, Lcom/sleepycat/collections/StoredSortedEntrySet;-><init>(Lcom/sleepycat/collections/DataView;)V

    iput-object v0, p0, Lcom/sleepycat/collections/StoredMap;->entrySet:Lcom/sleepycat/collections/StoredEntrySet;

    goto :goto_0

    .line 204
    :cond_0
    new-instance v0, Lcom/sleepycat/collections/StoredEntrySet;

    iget-object v1, p0, Lcom/sleepycat/collections/StoredMap;->view:Lcom/sleepycat/collections/DataView;

    invoke-direct {v0, v1}, Lcom/sleepycat/collections/StoredEntrySet;-><init>(Lcom/sleepycat/collections/DataView;)V

    iput-object v0, p0, Lcom/sleepycat/collections/StoredMap;->entrySet:Lcom/sleepycat/collections/StoredEntrySet;

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/collections/StoredMap;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataView;->keySetView()Lcom/sleepycat/collections/DataView;

    move-result-object v0

    .line 209
    .local v0, "newView":Lcom/sleepycat/collections/DataView;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMap;->areKeyRangesAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    new-instance v1, Lcom/sleepycat/collections/StoredSortedKeySet;

    invoke-direct {v1, v0}, Lcom/sleepycat/collections/StoredSortedKeySet;-><init>(Lcom/sleepycat/collections/DataView;)V

    iput-object v1, p0, Lcom/sleepycat/collections/StoredMap;->keySet:Lcom/sleepycat/collections/StoredKeySet;

    goto :goto_1

    .line 212
    :cond_1
    new-instance v1, Lcom/sleepycat/collections/StoredKeySet;

    invoke-direct {v1, v0}, Lcom/sleepycat/collections/StoredKeySet;-><init>(Lcom/sleepycat/collections/DataView;)V

    iput-object v1, p0, Lcom/sleepycat/collections/StoredMap;->keySet:Lcom/sleepycat/collections/StoredKeySet;

    .line 216
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/collections/StoredMap;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v1}, Lcom/sleepycat/collections/DataView;->valueSetView()Lcom/sleepycat/collections/DataView;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMap;->areKeyRangesAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataView;->canDeriveKeyFromValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    new-instance v1, Lcom/sleepycat/collections/StoredSortedValueSet;

    invoke-direct {v1, v0}, Lcom/sleepycat/collections/StoredSortedValueSet;-><init>(Lcom/sleepycat/collections/DataView;)V

    iput-object v1, p0, Lcom/sleepycat/collections/StoredMap;->valueSet:Lcom/sleepycat/collections/StoredValueSet;

    goto :goto_2

    .line 220
    :cond_2
    new-instance v1, Lcom/sleepycat/collections/StoredValueSet;

    invoke-direct {v1, v0}, Lcom/sleepycat/collections/StoredValueSet;-><init>(Lcom/sleepycat/collections/DataView;)V

    iput-object v1, p0, Lcom/sleepycat/collections/StoredMap;->valueSet:Lcom/sleepycat/collections/StoredValueSet;

    .line 222
    :goto_2
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMap;->beginAutoCommit()Z

    move-result v0

    .line 324
    .local v0, "doAutoCommit":Z
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 325
    .local v1, "key":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/sleepycat/collections/StoredMap;->view:Lcom/sleepycat/collections/DataView;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Lcom/sleepycat/collections/DataView;->append(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    .line 326
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredMap;->commitAutoCommit(Z)V

    .line 327
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 328
    .end local v1    # "key":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/collections/StoredMap;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 554
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/collections/StoredContainer;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 577
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/collections/StoredContainer;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public duplicates(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 715
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/collections/StoredMap;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0, p1}, Lcom/sleepycat/collections/DataView;->valueSetView(Ljava/lang/Object;)Lcom/sleepycat/collections/DataView;

    move-result-object v0

    .line 716
    .local v0, "newView":Lcom/sleepycat/collections/DataView;
    new-instance v1, Lcom/sleepycat/collections/StoredValueSet;

    invoke-direct {v1, v0}, Lcom/sleepycat/collections/StoredValueSet;-><init>(Lcom/sleepycat/collections/DataView;)V
    :try_end_0
    .catch Lcom/sleepycat/util/keyrange/KeyRangeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 719
    .end local v0    # "newView":Lcom/sleepycat/collections/DataView;
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 717
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 718
    .local v0, "e":Lcom/sleepycat/util/keyrange/KeyRangeException;
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v1
.end method

.method public duplicatesMap(Ljava/lang/Object;Lcom/sleepycat/bind/EntryBinding;)Ljava/util/Map;
    .locals 2
    .param p2, "primaryKeyBinding"    # Lcom/sleepycat/bind/EntryBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PK:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/sleepycat/bind/EntryBinding;",
            ")",
            "Ljava/util/Map<",
            "TPK;TV;>;"
        }
    .end annotation

    .line 751
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    .local p1, "secondaryKey":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/collections/StoredMap;->view:Lcom/sleepycat/collections/DataView;

    .line 752
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/collections/DataView;->duplicatesView(Ljava/lang/Object;Lcom/sleepycat/bind/EntryBinding;)Lcom/sleepycat/collections/DataView;

    move-result-object v0

    .line 753
    .local v0, "newView":Lcom/sleepycat/collections/DataView;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMap;->isOrdered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    new-instance v1, Lcom/sleepycat/collections/StoredSortedMap;

    invoke-direct {v1, v0}, Lcom/sleepycat/collections/StoredSortedMap;-><init>(Lcom/sleepycat/collections/DataView;)V

    return-object v1

    .line 756
    :cond_0
    new-instance v1, Lcom/sleepycat/collections/StoredMap;

    invoke-direct {v1, v0}, Lcom/sleepycat/collections/StoredMap;-><init>(Lcom/sleepycat/collections/DataView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 758
    .end local v0    # "newView":Lcom/sleepycat/collections/DataView;
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 664
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredMap;->entrySet:Lcom/sleepycat/collections/StoredEntrySet;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 783
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 786
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 795
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initAfterClone()V
    .locals 0

    .line 187
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredMap;->initView()V

    .line 188
    return-void
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 641
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredMap;->keySet:Lcom/sleepycat/collections/StoredKeySet;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/collections/StoredMap;->putKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 604
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMap;->beginAutoCommit()Z

    move-result v0

    .line 605
    .local v0, "doAutoCommit":Z
    const/4 v1, 0x0

    .line 607
    .local v1, "i":Ljava/util/Iterator;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 608
    .local v2, "coll":Ljava/util/Collection;
    invoke-virtual {p0, v2}, Lcom/sleepycat/collections/StoredMap;->storedOrExternalIterator(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .line 609
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 611
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sleepycat/collections/StoredMap;->putKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 613
    :cond_0
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 614
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredMap;->commitAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    .end local v2    # "coll":Ljava/util/Collection;
    nop

    .line 619
    return-void

    .line 615
    :catch_0
    move-exception v2

    .line 616
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 617
    invoke-virtual {p0, v2, v0}, Lcom/sleepycat/collections/StoredMap;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 379
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMap;->beginAutoCommit()Z

    move-result v1

    .line 381
    .local v1, "doAutoCommit":Z
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/StoredMap;->view:Lcom/sleepycat/collections/DataView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v2

    .line 384
    :cond_0
    nop

    .line 385
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2}, Lcom/sleepycat/collections/DataCursor;->putNoOverwrite(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    .line 386
    .local v3, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v4, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v3, v4, :cond_1

    .line 388
    const/4 v2, 0x0

    .line 389
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 391
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4, v2}, Lcom/sleepycat/collections/DataCursor;->getSearchKey(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 393
    .end local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v3, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->getCurrentValue()Ljava/lang/Object;

    move-result-object v3

    .line 396
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    move-object v2, v3

    .line 408
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredMap;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 409
    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredMap;->commitAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    return-object v2

    .line 411
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredMap;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 413
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/collections/StoredMap;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 355
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 356
    .local v0, "oldVal":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/collections/StoredMap;->removeKey(Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 357
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 435
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 436
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMap;->beginAutoCommit()Z

    move-result v1

    .line 438
    .local v1, "doAutoCommit":Z
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/StoredMap;->view:Lcom/sleepycat/collections/DataView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, p1}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;ZLjava/lang/Object;)V

    move-object v0, v2

    .line 439
    invoke-virtual {v0, v4}, Lcom/sleepycat/collections/DataCursor;->getFirst(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 441
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v3, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->getCurrentValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 443
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->delete()Lcom/sleepycat/je/OperationStatus;

    .line 444
    const/4 v3, 0x1

    .local v3, "removed":Z
    goto :goto_0

    .line 446
    .end local v3    # "removed":Z
    :cond_0
    const/4 v3, 0x0

    .line 448
    .restart local v3    # "removed":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredMap;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 449
    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredMap;->commitAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    return v3

    .line 451
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v3    # "removed":Z
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredMap;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 453
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/collections/StoredMap;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 475
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 476
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMap;->beginAutoCommit()Z

    move-result v1

    .line 478
    .local v1, "doAutoCommit":Z
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/StoredMap;->view:Lcom/sleepycat/collections/DataView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, p1}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;ZLjava/lang/Object;)V

    move-object v0, v2

    .line 479
    invoke-virtual {v0, v4}, Lcom/sleepycat/collections/DataCursor;->getFirst(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 481
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v3, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->getCurrentValue()Ljava/lang/Object;

    move-result-object v3

    .line 483
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {v0, p2}, Lcom/sleepycat/collections/DataCursor;->putCurrent(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    .line 485
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    const/4 v3, 0x0

    .line 487
    .restart local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredMap;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 488
    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredMap;->commitAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    return-object v3

    .line 490
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v2

    .line 491
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredMap;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 492
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/collections/StoredMap;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 514
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 515
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMap;->beginAutoCommit()Z

    move-result v1

    .line 517
    .local v1, "doAutoCommit":Z
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/StoredMap;->view:Lcom/sleepycat/collections/DataView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, p1}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;ZLjava/lang/Object;)V

    move-object v0, v2

    .line 518
    invoke-virtual {v0, v4}, Lcom/sleepycat/collections/DataCursor;->getFirst(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 520
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v3, :cond_0

    .line 521
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->getCurrentValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    invoke-virtual {v0, p3}, Lcom/sleepycat/collections/DataCursor;->putCurrent(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    .line 523
    const/4 v3, 0x1

    .local v3, "replaced":Z
    goto :goto_0

    .line 525
    .end local v3    # "replaced":Z
    :cond_0
    const/4 v3, 0x0

    .line 527
    .restart local v3    # "replaced":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredMap;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 528
    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredMap;->commitAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    return v3

    .line 530
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v3    # "replaced":Z
    :catch_0
    move-exception v2

    .line 531
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredMap;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 532
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/collections/StoredMap;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public size()I
    .locals 1

    .line 800
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 815
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 689
    .local p0, "this":Lcom/sleepycat/collections/StoredMap;, "Lcom/sleepycat/collections/StoredMap<TK;TV;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredMap;->valueSet:Lcom/sleepycat/collections/StoredValueSet;

    return-object v0
.end method
