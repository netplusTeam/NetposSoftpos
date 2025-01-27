.class Lcom/sleepycat/persist/KeysIndex;
.super Lcom/sleepycat/persist/BasicIndex;
.source "KeysIndex.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SK:",
        "Ljava/lang/Object;",
        "PK:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/persist/BasicIndex<",
        "TSK;TPK;>;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TSK;TPK;>;"
        }
    .end annotation
.end field

.field private pkeyBinding:Lcom/sleepycat/bind/EntryBinding;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/Database;Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p3, "keyBinding"    # Lcom/sleepycat/bind/EntryBinding;
    .param p5, "pkeyBinding"    # Lcom/sleepycat/bind/EntryBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Ljava/lang/Class<",
            "TSK;>;",
            "Lcom/sleepycat/bind/EntryBinding;",
            "Ljava/lang/Class<",
            "TPK;>;",
            "Lcom/sleepycat/bind/EntryBinding;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/sleepycat/persist/KeysIndex;, "Lcom/sleepycat/persist/KeysIndex<TSK;TPK;>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TSK;>;"
    .local p4, "pkeyClass":Ljava/lang/Class;, "Ljava/lang/Class<TPK;>;"
    new-instance v0, Lcom/sleepycat/persist/DataValueAdapter;

    invoke-direct {v0, p4, p5}, Lcom/sleepycat/persist/DataValueAdapter;-><init>(Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/persist/BasicIndex;-><init>(Lcom/sleepycat/je/Database;Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/persist/ValueAdapter;)V

    .line 60
    iput-object p5, p0, Lcom/sleepycat/persist/KeysIndex;->pkeyBinding:Lcom/sleepycat/bind/EntryBinding;

    .line 61
    return-void
.end method


# virtual methods
.method public get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;
    .locals 8
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "getType"    # Lcom/sleepycat/je/Get;
    .param p4, "options"    # Lcom/sleepycat/je/ReadOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TSK;",
            "Lcom/sleepycat/je/Get;",
            "Lcom/sleepycat/je/ReadOptions;",
            ")",
            "Lcom/sleepycat/persist/EntityResult<",
            "TPK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/sleepycat/persist/KeysIndex;, "Lcom/sleepycat/persist/KeysIndex<TSK;TPK;>;"
    .local p2, "key":Ljava/lang/Object;, "TSK;"
    invoke-static {p3}, Lcom/sleepycat/persist/KeysIndex;->checkGetType(Lcom/sleepycat/je/Get;)V

    .line 107
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 108
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v7, v1

    .line 109
    .local v7, "pkeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/persist/KeysIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v1, p2, v0}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 111
    iget-object v1, p0, Lcom/sleepycat/persist/KeysIndex;->db:Lcom/sleepycat/je/Database;

    move-object v2, p1

    move-object v3, v0

    move-object v4, v7

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/Database;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 114
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v1, :cond_0

    .line 115
    new-instance v2, Lcom/sleepycat/persist/EntityResult;

    iget-object v3, p0, Lcom/sleepycat/persist/KeysIndex;->pkeyBinding:Lcom/sleepycat/bind/EntryBinding;

    .line 116
    invoke-interface {v3, v7}, Lcom/sleepycat/bind/EntryBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/persist/EntityResult;-><init>(Ljava/lang/Object;Lcom/sleepycat/je/OperationResult;)V

    .line 115
    return-object v2

    .line 119
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TSK;",
            "Lcom/sleepycat/je/LockMode;",
            ")TPK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/sleepycat/persist/KeysIndex;, "Lcom/sleepycat/persist/KeysIndex<TSK;TPK;>;"
    .local p2, "key":Ljava/lang/Object;, "TSK;"
    sget-object v0, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    .line 80
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 79
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/persist/KeysIndex;->get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v0

    .line 81
    .local v0, "result":Lcom/sleepycat/persist/EntityResult;, "Lcom/sleepycat/persist/EntityResult<TPK;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/persist/EntityResult;->value()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSK;)TPK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/sleepycat/persist/KeysIndex;, "Lcom/sleepycat/persist/KeysIndex<TSK;TPK;>;"
    .local p1, "key":Ljava/lang/Object;, "TSK;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/sleepycat/persist/KeysIndex;->get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isUpdateAllowed()Z
    .locals 1

    .line 136
    .local p0, "this":Lcom/sleepycat/persist/KeysIndex;, "Lcom/sleepycat/persist/KeysIndex<TSK;TPK;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TSK;TPK;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/sleepycat/persist/KeysIndex;, "Lcom/sleepycat/persist/KeysIndex<TSK;TPK;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/KeysIndex;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized sortedMap()Ljava/util/SortedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TSK;TPK;>;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/persist/KeysIndex;, "Lcom/sleepycat/persist/KeysIndex<TSK;TPK;>;"
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/KeysIndex;->map:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/sleepycat/collections/StoredSortedMap;

    iget-object v1, p0, Lcom/sleepycat/persist/KeysIndex;->db:Lcom/sleepycat/je/Database;

    iget-object v2, p0, Lcom/sleepycat/persist/KeysIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    iget-object v3, p0, Lcom/sleepycat/persist/KeysIndex;->pkeyBinding:Lcom/sleepycat/bind/EntryBinding;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/collections/StoredSortedMap;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Z)V

    iput-object v0, p0, Lcom/sleepycat/persist/KeysIndex;->map:Ljava/util/SortedMap;

    .line 132
    .end local p0    # "this":Lcom/sleepycat/persist/KeysIndex;, "Lcom/sleepycat/persist/KeysIndex<TSK;TPK;>;"
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/KeysIndex;->map:Ljava/util/SortedMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
