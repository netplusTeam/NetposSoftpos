.class public Lcom/sleepycat/persist/PrimaryIndex;
.super Lcom/sleepycat/persist/BasicIndex;
.source "PrimaryIndex.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PK:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/persist/BasicIndex<",
        "TPK;TE;>;"
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

.field private entityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private keyAssigner:Lcom/sleepycat/persist/impl/PersistKeyAssigner;

.field private map:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TPK;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/Database;Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;Ljava/lang/Class;Lcom/sleepycat/bind/EntityBinding;)V
    .locals 2
    .param p1, "database"    # Lcom/sleepycat/je/Database;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Ljava/lang/Class<",
            "TPK;>;",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TPK;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/sleepycat/bind/EntityBinding<",
            "TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 266
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TPK;>;"
    .local p3, "keyBinding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TPK;>;"
    .local p4, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p5, "entityBinding":Lcom/sleepycat/bind/EntityBinding;, "Lcom/sleepycat/bind/EntityBinding<TE;>;"
    new-instance v0, Lcom/sleepycat/persist/EntityValueAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p4, p5, v1}, Lcom/sleepycat/persist/EntityValueAdapter;-><init>(Ljava/lang/Class;Lcom/sleepycat/bind/EntityBinding;Z)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/persist/BasicIndex;-><init>(Lcom/sleepycat/je/Database;Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/persist/ValueAdapter;)V

    .line 269
    iput-object p4, p0, Lcom/sleepycat/persist/PrimaryIndex;->entityClass:Ljava/lang/Class;

    .line 270
    iput-object p5, p0, Lcom/sleepycat/persist/PrimaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    .line 272
    instance-of v0, p5, Lcom/sleepycat/persist/impl/PersistEntityBinding;

    if-eqz v0, :cond_0

    .line 273
    move-object v0, p5

    check-cast v0, Lcom/sleepycat/persist/impl/PersistEntityBinding;

    .line 274
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->getKeyAssigner()Lcom/sleepycat/persist/impl/PersistKeyAssigner;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/PrimaryIndex;->keyAssigner:Lcom/sleepycat/persist/impl/PersistKeyAssigner;

    .line 276
    :cond_0
    return-void
.end method

.method private assignKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p2, "keyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 642
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p1, "entity":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/sleepycat/persist/PrimaryIndex;->keyAssigner:Lcom/sleepycat/persist/impl/PersistKeyAssigner;

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->assignPrimaryKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/sleepycat/persist/PrimaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    invoke-interface {v0, p1, p2}, Lcom/sleepycat/bind/EntityBinding;->objectToKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    goto :goto_0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/PrimaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    invoke-interface {v0, p1, p2}, Lcom/sleepycat/bind/EntityBinding;->objectToKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 649
    :cond_1
    :goto_0
    return-void
.end method

.method private makeEntity(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 2
    .param p2, "keyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "dataEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPK;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")TE;"
        }
    .end annotation

    .line 716
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TPK;"
    iget-object v0, p0, Lcom/sleepycat/persist/PrimaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    instance-of v1, v0, Lcom/sleepycat/persist/impl/PersistEntityBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sleepycat/persist/impl/PersistEntityBinding;

    .line 718
    invoke-virtual {v0, p1, p3}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entryToObjectWithPriKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    .line 719
    invoke-interface {v0, p2, p3}, Lcom/sleepycat/bind/EntityBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    .line 716
    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic contains(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
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

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
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

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
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

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
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

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
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

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
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

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
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

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
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

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
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

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
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

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/BasicIndex;->entities(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/persist/EntityCursor;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;
    .locals 8
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "getType"    # Lcom/sleepycat/je/Get;
    .param p4, "options"    # Lcom/sleepycat/je/ReadOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TPK;",
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

    .line 693
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TPK;"
    invoke-static {p3}, Lcom/sleepycat/persist/PrimaryIndex;->checkGetType(Lcom/sleepycat/je/Get;)V

    .line 695
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 696
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v7, v1

    .line 697
    .local v7, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/persist/PrimaryIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v1, p2, v0}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 699
    iget-object v1, p0, Lcom/sleepycat/persist/PrimaryIndex;->db:Lcom/sleepycat/je/Database;

    move-object v2, p1

    move-object v3, v0

    move-object v4, v7

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/Database;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 702
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v1, :cond_0

    .line 703
    new-instance v2, Lcom/sleepycat/persist/EntityResult;

    .line 704
    invoke-direct {p0, p2, v0, v7}, Lcom/sleepycat/persist/PrimaryIndex;->makeEntity(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/persist/EntityResult;-><init>(Ljava/lang/Object;Lcom/sleepycat/je/OperationResult;)V

    .line 703
    return-object v2

    .line 707
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
            "TPK;",
            "Lcom/sleepycat/je/LockMode;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 667
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TPK;"
    sget-object v0, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    .line 668
    invoke-static {p3}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    .line 667
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/persist/PrimaryIndex;->get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v0

    .line 669
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
            "(TPK;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 659
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TPK;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/sleepycat/persist/PrimaryIndex;->get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getAutoCommitTransactionConfig()Lcom/sleepycat/je/TransactionConfig;
    .locals 1

    .line 746
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getDatabase()Lcom/sleepycat/je/Database;
    .locals 1

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    invoke-super {p0}, Lcom/sleepycat/persist/BasicIndex;->getDatabase()Lcom/sleepycat/je/Database;

    move-result-object v0

    return-object v0
.end method

.method public getEntityBinding()Lcom/sleepycat/bind/EntityBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/bind/EntityBinding<",
            "TE;>;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/PrimaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    return-object v0
.end method

.method public getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/PrimaryIndex;->entityClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getKeyBinding()Lcom/sleepycat/bind/EntryBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TPK;>;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/PrimaryIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    return-object v0
.end method

.method public getKeyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TPK;>;"
        }
    .end annotation

    .line 284
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/PrimaryIndex;->keyClass:Ljava/lang/Class;

    return-object v0
.end method

.method isUpdateAllowed()Z
    .locals 1

    .line 750
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic keys()Lcom/sleepycat/persist/EntityCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
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

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
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

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
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

    .line 225
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/BasicIndex;->keys(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/persist/EntityCursor;

    move-result-object p1

    return-object p1
.end method

.method public map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TPK;TE;>;"
        }
    .end annotation

    .line 723
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/PrimaryIndex;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 8
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "putType"    # Lcom/sleepycat/je/Put;
    .param p4, "options"    # Lcom/sleepycat/je/WriteOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TE;",
            "Lcom/sleepycat/je/Put;",
            "Lcom/sleepycat/je/WriteOptions;",
            ")",
            "Lcom/sleepycat/je/OperationResult;"
        }
    .end annotation

    .line 621
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p2, "entity":Ljava/lang/Object;, "TE;"
    sget-object v0, Lcom/sleepycat/je/Put;->OVERWRITE:Lcom/sleepycat/je/Put;

    if-eq p3, v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/Put;->NO_OVERWRITE:Lcom/sleepycat/je/Put;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 622
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putType not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_1
    :goto_0
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 627
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v7, v1

    .line 628
    .local v7, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-direct {p0, p2, v0}, Lcom/sleepycat/persist/PrimaryIndex;->assignKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 629
    iget-object v1, p0, Lcom/sleepycat/persist/PrimaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    invoke-interface {v1, p2, v7}, Lcom/sleepycat/bind/EntityBinding;->objectToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 631
    iget-object v1, p0, Lcom/sleepycat/persist/PrimaryIndex;->db:Lcom/sleepycat/je/Database;

    move-object v2, p1

    move-object v3, v0

    move-object v4, v7

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/Database;->put(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    return-object v1
.end method

.method public put(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TE;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 376
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p2, "entity":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 377
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 378
    .local v1, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-direct {p0, p2, v0}, Lcom/sleepycat/persist/PrimaryIndex;->assignKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 380
    const/4 v2, 0x0

    .line 381
    .local v2, "autoCommit":Z
    iget-object v3, p0, Lcom/sleepycat/persist/PrimaryIndex;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v3}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v3

    .line 382
    .local v3, "env":Lcom/sleepycat/je/Environment;
    iget-boolean v4, p0, Lcom/sleepycat/persist/PrimaryIndex;->transactional:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    .line 384
    invoke-static {v3}, Lcom/sleepycat/compat/DbCompat;->getThreadTransaction(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/Transaction;

    move-result-object v4

    if-nez v4, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/sleepycat/persist/PrimaryIndex;->getAutoCommitTransactionConfig()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object p1

    .line 386
    const/4 v2, 0x1

    .line 389
    :cond_0
    const/4 v4, 0x0

    .line 390
    .local v4, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    iget-boolean v6, p0, Lcom/sleepycat/persist/PrimaryIndex;->concurrentDB:Z

    if-eqz v6, :cond_1

    .line 391
    new-instance v6, Lcom/sleepycat/je/CursorConfig;

    invoke-direct {v6}, Lcom/sleepycat/je/CursorConfig;-><init>()V

    move-object v4, v6

    .line 392
    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/sleepycat/compat/DbCompat;->setWriteCursor(Lcom/sleepycat/je/CursorConfig;Z)V

    .line 394
    :cond_1
    const/4 v6, 0x1

    .line 395
    .local v6, "failed":Z
    iget-object v7, p0, Lcom/sleepycat/persist/PrimaryIndex;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v7, p1, v4}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v7

    .line 396
    .local v7, "cursor":Lcom/sleepycat/je/Cursor;
    iget-boolean v8, p0, Lcom/sleepycat/persist/PrimaryIndex;->locking:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    goto :goto_0

    :cond_2
    move-object v8, v5

    .line 399
    .local v8, "lockMode":Lcom/sleepycat/je/LockMode;
    :goto_0
    nop

    .line 400
    :try_start_0
    invoke-virtual {v7, v0, v1, v8}, Lcom/sleepycat/je/Cursor;->getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v9

    .line 401
    .local v9, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v10, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v9, v10, :cond_5

    .line 402
    iget-object v5, p0, Lcom/sleepycat/persist/PrimaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    .line 403
    invoke-interface {v5, v0, v1}, Lcom/sleepycat/bind/EntityBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v5

    .line 404
    .local v5, "existing":Ljava/lang/Object;, "TE;"
    iget-object v10, p0, Lcom/sleepycat/persist/PrimaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    invoke-interface {v10, p2, v1}, Lcom/sleepycat/bind/EntityBinding;->objectToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 405
    invoke-virtual {v7, v0, v1}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    const/4 v6, 0x0

    .line 407
    nop

    .line 418
    invoke-virtual {v7}, Lcom/sleepycat/je/Cursor;->close()V

    .line 419
    if-eqz v2, :cond_4

    .line 420
    if-eqz v6, :cond_3

    .line 421
    invoke-virtual {p1}, Lcom/sleepycat/je/Transaction;->abort()V

    goto :goto_1

    .line 423
    :cond_3
    invoke-virtual {p1}, Lcom/sleepycat/je/Transaction;->commit()V

    .line 407
    :cond_4
    :goto_1
    return-object v5

    .line 409
    .end local v5    # "existing":Ljava/lang/Object;, "TE;"
    :cond_5
    :try_start_1
    iget-object v10, p0, Lcom/sleepycat/persist/PrimaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    invoke-interface {v10, p2, v1}, Lcom/sleepycat/bind/EntityBinding;->objectToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 410
    invoke-virtual {v7, v0, v1}, Lcom/sleepycat/je/Cursor;->putNoOverwrite(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v10

    move-object v9, v10

    .line 411
    sget-object v10, Lcom/sleepycat/je/OperationStatus;->KEYEXIST:Lcom/sleepycat/je/OperationStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v9, v10, :cond_8

    .line 412
    const/4 v6, 0x0

    .line 413
    nop

    .line 418
    invoke-virtual {v7}, Lcom/sleepycat/je/Cursor;->close()V

    .line 419
    if-eqz v2, :cond_7

    .line 420
    if-eqz v6, :cond_6

    .line 421
    invoke-virtual {p1}, Lcom/sleepycat/je/Transaction;->abort()V

    goto :goto_2

    .line 423
    :cond_6
    invoke-virtual {p1}, Lcom/sleepycat/je/Transaction;->commit()V

    .line 413
    :cond_7
    :goto_2
    return-object v5

    .line 416
    .end local v9    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_8
    goto :goto_0

    .line 418
    :catchall_0
    move-exception v5

    invoke-virtual {v7}, Lcom/sleepycat/je/Cursor;->close()V

    .line 419
    if-eqz v2, :cond_a

    .line 420
    if-eqz v6, :cond_9

    .line 421
    invoke-virtual {p1}, Lcom/sleepycat/je/Transaction;->abort()V

    goto :goto_3

    .line 423
    :cond_9
    invoke-virtual {p1}, Lcom/sleepycat/je/Transaction;->commit()V

    :cond_a
    :goto_3
    throw v5
.end method

.method public put(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 343
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p1, "entity":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/persist/PrimaryIndex;->put(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putNoOverwrite(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TE;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 568
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p2, "entity":Ljava/lang/Object;, "TE;"
    sget-object v0, Lcom/sleepycat/je/Put;->NO_OVERWRITE:Lcom/sleepycat/je/Put;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/persist/PrimaryIndex;->put(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putNoOverwrite(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 533
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p1, "entity":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/persist/PrimaryIndex;->putNoOverwrite(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putNoReturn(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)V
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 491
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p2, "entity":Ljava/lang/Object;, "TE;"
    sget-object v0, Lcom/sleepycat/je/Put;->OVERWRITE:Lcom/sleepycat/je/Put;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/persist/PrimaryIndex;->put(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    .line 492
    return-void
.end method

.method public putNoReturn(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 457
    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p1, "entity":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/persist/PrimaryIndex;->putNoReturn(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)V

    .line 458
    return-void
.end method

.method public declared-synchronized sortedMap()Ljava/util/SortedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TPK;TE;>;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    monitor-enter p0

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/PrimaryIndex;->map:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Lcom/sleepycat/collections/StoredSortedMap;

    iget-object v1, p0, Lcom/sleepycat/persist/PrimaryIndex;->db:Lcom/sleepycat/je/Database;

    iget-object v2, p0, Lcom/sleepycat/persist/PrimaryIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    iget-object v3, p0, Lcom/sleepycat/persist/PrimaryIndex;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/collections/StoredSortedMap;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;Z)V

    iput-object v0, p0, Lcom/sleepycat/persist/PrimaryIndex;->map:Ljava/util/SortedMap;

    .line 730
    .end local p0    # "this":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/PrimaryIndex;->map:Ljava/util/SortedMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
