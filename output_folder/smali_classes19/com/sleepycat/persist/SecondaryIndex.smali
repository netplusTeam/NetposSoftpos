.class public Lcom/sleepycat/persist/SecondaryIndex;
.super Lcom/sleepycat/persist/BasicIndex;
.source "SecondaryIndex.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SK:",
        "Ljava/lang/Object;",
        "PK:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/persist/BasicIndex<",
        "TSK;TE;>;"
    }
.end annotation


# instance fields
.field private entityBinding:Lcom/sleepycat/bind/EntityBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/bind/EntityBinding<",
            "TE;>;"
        }
    .end annotation
.end field

.field private keysDb:Lcom/sleepycat/je/Database;

.field private keysIndex:Lcom/sleepycat/persist/EntityIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/EntityIndex<",
            "TSK;TPK;>;"
        }
    .end annotation
.end field

.field private map:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TSK;TE;>;"
        }
    .end annotation
.end field

.field private priIndex:Lcom/sleepycat/persist/PrimaryIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "TPK;TE;>;"
        }
    .end annotation
.end field

.field private secDb:Lcom/sleepycat/je/SecondaryDatabase;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/Database;Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;)V
    .locals 4
    .param p1, "database"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "keysDatabase"    # Lcom/sleepycat/je/Database;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/SecondaryDatabase;",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "TPK;TE;>;",
            "Ljava/lang/Class<",
            "TSK;>;",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TSK;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 828
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    .local p3, "primaryIndex":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p4, "secondaryKeyClass":Ljava/lang/Class;, "Ljava/lang/Class<TSK;>;"
    .local p5, "secondaryKeyBinding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TSK;>;"
    new-instance v0, Lcom/sleepycat/persist/EntityValueAdapter;

    .line 829
    invoke-virtual {p3}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityClass()Ljava/lang/Class;

    move-result-object v1

    .line 830
    invoke-virtual {p3}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityBinding()Lcom/sleepycat/bind/EntityBinding;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/persist/EntityValueAdapter;-><init>(Ljava/lang/Class;Lcom/sleepycat/bind/EntityBinding;Z)V

    .line 828
    invoke-direct {p0, p1, p4, p5, v0}, Lcom/sleepycat/persist/BasicIndex;-><init>(Lcom/sleepycat/je/Database;Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/persist/ValueAdapter;)V

    .line 832
    iput-object p1, p0, Lcom/sleepycat/persist/SecondaryIndex;->secDb:Lcom/sleepycat/je/SecondaryDatabase;

    .line 833
    iput-object p2, p0, Lcom/sleepycat/persist/SecondaryIndex;->keysDb:Lcom/sleepycat/je/Database;

    .line 834
    iput-object p3, p0, Lcom/sleepycat/persist/SecondaryIndex;->priIndex:Lcom/sleepycat/persist/PrimaryIndex;

    .line 835
    invoke-virtual {p3}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityBinding()Lcom/sleepycat/bind/EntityBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    .line 836
    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/persist/BasicIndex;->contains(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/persist/BasicIndex;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic count()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super {p0}, Lcom/sleepycat/persist/BasicIndex;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic count(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super {p0, p1, p2}, Lcom/sleepycat/persist/BasicIndex;->count(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/persist/BasicIndex;->delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super {p0, p1, p2}, Lcom/sleepycat/persist/BasicIndex;->delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/persist/BasicIndex;->delete(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic entities()Lcom/sleepycat/persist/EntityCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super {p0}, Lcom/sleepycat/persist/BasicIndex;->entities()Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entities(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super {p0, p1, p2}, Lcom/sleepycat/persist/BasicIndex;->entities(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic entities(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super/range {p0 .. p6}, Lcom/sleepycat/persist/BasicIndex;->entities(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic entities(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/persist/EntityCursor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/BasicIndex;->entities(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/persist/EntityCursor;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;
    .locals 10
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
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1001
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TSK;"
    invoke-static {p3}, Lcom/sleepycat/persist/SecondaryIndex;->checkGetType(Lcom/sleepycat/je/Get;)V

    .line 1003
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1004
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v8, v1

    .line 1005
    .local v8, "pkeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v9, v1

    .line 1006
    .local v9, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/persist/SecondaryIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v1, p2, v0}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 1008
    iget-object v1, p0, Lcom/sleepycat/persist/SecondaryIndex;->secDb:Lcom/sleepycat/je/SecondaryDatabase;

    move-object v2, p1

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/SecondaryDatabase;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 1011
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v1, :cond_0

    .line 1012
    new-instance v2, Lcom/sleepycat/persist/EntityResult;

    iget-object v3, p0, Lcom/sleepycat/persist/SecondaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    .line 1013
    invoke-interface {v3, v8, v9}, Lcom/sleepycat/bind/EntityBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/persist/EntityResult;-><init>(Ljava/lang/Object;Lcom/sleepycat/je/OperationResult;)V

    .line 1012
    return-object v2

    .line 1016
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
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 973
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TSK;"
    sget-object v0, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    .line 974
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 973
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/persist/SecondaryIndex;->get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v0

    .line 975
    .local v0, "result":Lcom/sleepycat/persist/EntityResult;, "Lcom/sleepycat/persist/EntityResult<TE;>;"
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
            "(TSK;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 965
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TSK;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/sleepycat/persist/SecondaryIndex;->get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getAutoCommitTransactionConfig()Lcom/sleepycat/je/TransactionConfig;
    .locals 1

    .line 1045
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getDatabase()Lcom/sleepycat/je/Database;
    .locals 1

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/SecondaryIndex;->getDatabase()Lcom/sleepycat/je/SecondaryDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Lcom/sleepycat/je/SecondaryDatabase;
    .locals 1

    .line 845
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->secDb:Lcom/sleepycat/je/SecondaryDatabase;

    return-object v0
.end method

.method public getKeyBinding()Lcom/sleepycat/bind/EntryBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TSK;>;"
        }
    .end annotation

    .line 882
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    return-object v0
.end method

.method public getKeyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TSK;>;"
        }
    .end annotation

    .line 873
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->keyClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getKeysDatabase()Lcom/sleepycat/je/Database;
    .locals 1

    .line 855
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->keysDb:Lcom/sleepycat/je/Database;

    return-object v0
.end method

.method public getPrimaryIndex()Lcom/sleepycat/persist/PrimaryIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "TPK;TE;>;"
        }
    .end annotation

    .line 864
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->priIndex:Lcom/sleepycat/persist/PrimaryIndex;

    return-object v0
.end method

.method isUpdateAllowed()Z
    .locals 1

    .line 1049
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keys()Lcom/sleepycat/persist/EntityCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super {p0}, Lcom/sleepycat/persist/BasicIndex;->keys()Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super {p0, p1, p2}, Lcom/sleepycat/persist/BasicIndex;->keys(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keys(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super/range {p0 .. p6}, Lcom/sleepycat/persist/BasicIndex;->keys(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keys(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/persist/EntityCursor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/BasicIndex;->keys(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/persist/EntityCursor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized keysIndex()Lcom/sleepycat/persist/EntityIndex;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/persist/EntityIndex<",
            "TSK;TPK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    monitor-enter p0

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->keysIndex:Lcom/sleepycat/persist/EntityIndex;

    if-nez v0, :cond_2

    .line 910
    iget-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->keysDb:Lcom/sleepycat/je/Database;

    if-nez v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->secDb:Lcom/sleepycat/je/SecondaryDatabase;

    invoke-virtual {v0}, Lcom/sleepycat/je/SecondaryDatabase;->getConfig()Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v0

    .line 912
    .local v0, "config":Lcom/sleepycat/je/DatabaseConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 913
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 914
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setExclusiveCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 915
    iget-object v1, p0, Lcom/sleepycat/persist/SecondaryIndex;->db:Lcom/sleepycat/je/Database;

    .line 916
    invoke-virtual {v1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sleepycat/persist/SecondaryIndex;->secDb:Lcom/sleepycat/je/SecondaryDatabase;

    .line 917
    invoke-static {v3}, Lcom/sleepycat/compat/DbCompat;->getDatabaseFile(Lcom/sleepycat/je/Database;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/persist/SecondaryIndex;->secDb:Lcom/sleepycat/je/SecondaryDatabase;

    .line 918
    invoke-virtual {v4}, Lcom/sleepycat/je/SecondaryDatabase;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    .line 916
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sleepycat/compat/DbCompat;->openDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/persist/SecondaryIndex;->keysDb:Lcom/sleepycat/je/Database;

    .line 920
    if-eqz v1, :cond_0

    goto :goto_0

    .line 921
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open existing DB, file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/persist/SecondaryIndex;->secDb:Lcom/sleepycat/je/SecondaryDatabase;

    .line 923
    invoke-static {v3}, Lcom/sleepycat/compat/DbCompat;->getDatabaseFile(Lcom/sleepycat/je/Database;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/persist/SecondaryIndex;->secDb:Lcom/sleepycat/je/SecondaryDatabase;

    .line 924
    invoke-virtual {v3}, Lcom/sleepycat/je/SecondaryDatabase;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 927
    .end local v0    # "config":Lcom/sleepycat/je/DatabaseConfig;
    .end local p0    # "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    :cond_1
    :goto_0
    new-instance v0, Lcom/sleepycat/persist/KeysIndex;

    iget-object v2, p0, Lcom/sleepycat/persist/SecondaryIndex;->keysDb:Lcom/sleepycat/je/Database;

    iget-object v3, p0, Lcom/sleepycat/persist/SecondaryIndex;->keyClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/sleepycat/persist/SecondaryIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    iget-object v1, p0, Lcom/sleepycat/persist/SecondaryIndex;->priIndex:Lcom/sleepycat/persist/PrimaryIndex;

    .line 929
    invoke-virtual {v1}, Lcom/sleepycat/persist/PrimaryIndex;->getKeyClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v1, p0, Lcom/sleepycat/persist/SecondaryIndex;->priIndex:Lcom/sleepycat/persist/PrimaryIndex;

    invoke-virtual {v1}, Lcom/sleepycat/persist/PrimaryIndex;->getKeyBinding()Lcom/sleepycat/bind/EntryBinding;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/persist/KeysIndex;-><init>(Lcom/sleepycat/je/Database;Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;)V

    iput-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->keysIndex:Lcom/sleepycat/persist/EntityIndex;

    .line 931
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->keysIndex:Lcom/sleepycat/persist/EntityIndex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 908
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TSK;TE;>;"
        }
    .end annotation

    .line 1022
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/SecondaryIndex;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized sortedMap()Ljava/util/SortedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TSK;TE;>;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    monitor-enter p0

    .line 1026
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->map:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    .line 1027
    new-instance v0, Lcom/sleepycat/collections/StoredSortedMap;

    iget-object v1, p0, Lcom/sleepycat/persist/SecondaryIndex;->db:Lcom/sleepycat/je/Database;

    iget-object v2, p0, Lcom/sleepycat/persist/SecondaryIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    iget-object v3, p0, Lcom/sleepycat/persist/SecondaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/collections/StoredSortedMap;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;Z)V

    iput-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->map:Ljava/util/SortedMap;

    .line 1029
    .end local p0    # "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/SecondaryIndex;->map:Ljava/util/SortedMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1025
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public subIndex(Ljava/lang/Object;)Lcom/sleepycat/persist/EntityIndex;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSK;)",
            "Lcom/sleepycat/persist/EntityIndex<",
            "TPK;TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 954
    .local p0, "this":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TSK;"
    new-instance v0, Lcom/sleepycat/persist/SubIndex;

    iget-object v1, p0, Lcom/sleepycat/persist/SecondaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    invoke-direct {v0, p0, v1, p1}, Lcom/sleepycat/persist/SubIndex;-><init>(Lcom/sleepycat/persist/SecondaryIndex;Lcom/sleepycat/bind/EntityBinding;Ljava/lang/Object;)V

    return-object v0
.end method
