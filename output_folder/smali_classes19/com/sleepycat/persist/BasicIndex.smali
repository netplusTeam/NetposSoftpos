.class abstract Lcom/sleepycat/persist/BasicIndex;
.super Ljava/lang/Object;
.source "BasicIndex.java"

# interfaces
.implements Lcom/sleepycat/persist/EntityIndex;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sleepycat/persist/EntityIndex<",
        "TK;TE;>;"
    }
.end annotation


# static fields
.field static final NO_RETURN_ENTRY:Lcom/sleepycat/je/DatabaseEntry;


# instance fields
.field concurrentDB:Z

.field db:Lcom/sleepycat/je/Database;

.field emptyRange:Lcom/sleepycat/util/keyrange/KeyRange;

.field entityAdapter:Lcom/sleepycat/persist/ValueAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/ValueAdapter<",
            "TE;>;"
        }
    .end annotation
.end field

.field keyAdapter:Lcom/sleepycat/persist/ValueAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/ValueAdapter<",
            "TK;>;"
        }
    .end annotation
.end field

.field keyBinding:Lcom/sleepycat/bind/EntryBinding;

.field keyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation
.end field

.field locking:Z

.field sortedDups:Z

.field transactional:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    sput-object v0, Lcom/sleepycat/persist/BasicIndex;->NO_RETURN_ENTRY:Lcom/sleepycat/je/DatabaseEntry;

    .line 52
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/Database;Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/persist/ValueAdapter;)V
    .locals 4
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p3, "keyBinding"    # Lcom/sleepycat/bind/EntryBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/sleepycat/bind/EntryBinding;",
            "Lcom/sleepycat/persist/ValueAdapter<",
            "TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p4, "entityAdapter":Lcom/sleepycat/persist/ValueAdapter;, "Lcom/sleepycat/persist/ValueAdapter<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sleepycat/persist/BasicIndex;->db:Lcom/sleepycat/je/Database;

    .line 73
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->getConfig()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    .line 74
    .local v0, "config":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/persist/BasicIndex;->transactional:Z

    .line 75
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getSortedDuplicates()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/persist/BasicIndex;->sortedDups:Z

    .line 76
    nop

    .line 77
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->getInitializeLocking(Lcom/sleepycat/je/EnvironmentConfig;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/persist/BasicIndex;->locking:Z

    .line 78
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v1

    .line 79
    .local v1, "env":Lcom/sleepycat/je/Environment;
    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/compat/DbCompat;->getInitializeCDB(Lcom/sleepycat/je/EnvironmentConfig;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sleepycat/persist/BasicIndex;->concurrentDB:Z

    .line 80
    iput-object p2, p0, Lcom/sleepycat/persist/BasicIndex;->keyClass:Ljava/lang/Class;

    .line 81
    iput-object p3, p0, Lcom/sleepycat/persist/BasicIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    .line 82
    iput-object p4, p0, Lcom/sleepycat/persist/BasicIndex;->entityAdapter:Lcom/sleepycat/persist/ValueAdapter;

    .line 84
    new-instance v2, Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/util/keyrange/KeyRange;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lcom/sleepycat/persist/BasicIndex;->emptyRange:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 85
    new-instance v2, Lcom/sleepycat/persist/KeyValueAdapter;

    invoke-direct {v2, p2, p3}, Lcom/sleepycat/persist/KeyValueAdapter;-><init>(Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;)V

    iput-object v2, p0, Lcom/sleepycat/persist/BasicIndex;->keyAdapter:Lcom/sleepycat/persist/ValueAdapter;

    .line 86
    return-void
.end method

.method static checkGetType(Lcom/sleepycat/je/Get;)V
    .locals 3
    .param p0, "getType"    # Lcom/sleepycat/je/Get;

    .line 292
    sget-object v0, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    if-ne p0, v0, :cond_0

    .line 296
    return-void

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getType not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "range"    # Lcom/sleepycat/util/keyrange/KeyRange;
    .param p4, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sleepycat/je/Transaction;",
            "Lcom/sleepycat/util/keyrange/KeyRange;",
            "Lcom/sleepycat/persist/ValueAdapter<",
            "TV;>;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 281
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    .local p3, "adapter":Lcom/sleepycat/persist/ValueAdapter;, "Lcom/sleepycat/persist/ValueAdapter<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicIndex;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v0, p1, p4}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    .line 282
    .local v0, "cursor":Lcom/sleepycat/je/Cursor;
    new-instance v1, Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-boolean v2, p0, Lcom/sleepycat/persist/BasicIndex;->sortedDups:Z

    const/4 v3, 0x0

    invoke-direct {v1, p2, v3, v2, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;-><init>(Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/util/keyrange/KeyRange;ZLcom/sleepycat/je/Cursor;)V

    .line 284
    .local v1, "rangeCursor":Lcom/sleepycat/util/keyrange/RangeCursor;
    new-instance v2, Lcom/sleepycat/persist/BasicCursor;

    invoke-virtual {p0}, Lcom/sleepycat/persist/BasicIndex;->isUpdateAllowed()Z

    move-result v3

    invoke-direct {v2, v1, p3, v3}, Lcom/sleepycat/persist/BasicCursor;-><init>(Lcom/sleepycat/util/keyrange/RangeCursor;Lcom/sleepycat/persist/ValueAdapter;Z)V

    return-object v2
.end method

.method private cursor(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "fromInclusive"    # Z
    .param p5, "toInclusive"    # Z
    .param p7, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sleepycat/je/Transaction;",
            "TK;ZTK;Z",
            "Lcom/sleepycat/persist/ValueAdapter<",
            "TV;>;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 260
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    .local p2, "fromKey":Ljava/lang/Object;, "TK;"
    .local p4, "toKey":Ljava/lang/Object;, "TK;"
    .local p6, "adapter":Lcom/sleepycat/persist/ValueAdapter;, "Lcom/sleepycat/persist/ValueAdapter<TV;>;"
    const/4 v0, 0x0

    .line 261
    .local v0, "fromEntry":Lcom/sleepycat/je/DatabaseEntry;
    if-eqz p2, :cond_0

    .line 262
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v0, v1

    .line 263
    iget-object v1, p0, Lcom/sleepycat/persist/BasicIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v1, p2, v0}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 265
    :cond_0
    const/4 v1, 0x0

    .line 266
    .local v1, "toEntry":Lcom/sleepycat/je/DatabaseEntry;
    if-eqz p4, :cond_1

    .line 267
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v1, v2

    .line 268
    iget-object v2, p0, Lcom/sleepycat/persist/BasicIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v2, p4, v1}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 270
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/persist/BasicIndex;->emptyRange:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 271
    invoke-virtual {v2, v0, p3, v1, p5}, Lcom/sleepycat/util/keyrange/KeyRange;->subRange(Lcom/sleepycat/je/DatabaseEntry;ZLcom/sleepycat/je/DatabaseEntry;Z)Lcom/sleepycat/util/keyrange/KeyRange;

    move-result-object v2

    .line 272
    .local v2, "range":Lcom/sleepycat/util/keyrange/KeyRange;
    invoke-direct {p0, p1, v2, p6, p7}, Lcom/sleepycat/persist/BasicIndex;->cursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public contains(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Z
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TK;",
            "Lcom/sleepycat/je/LockMode;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 107
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v1, Lcom/sleepycat/persist/BasicIndex;->NO_RETURN_ENTRY:Lcom/sleepycat/je/DatabaseEntry;

    .line 108
    .local v1, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v2, p0, Lcom/sleepycat/persist/BasicIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v2, p2, v0}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 110
    iget-object v2, p0, Lcom/sleepycat/persist/BasicIndex;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v2, p1, v0, v1, p3}, Lcom/sleepycat/je/Database;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 111
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/sleepycat/persist/BasicIndex;->contains(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Z

    move-result v0

    return v0
.end method

.method public count()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicIndex;->db:Lcom/sleepycat/je/Database;

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getDatabaseCount(Lcom/sleepycat/je/Database;)J

    move-result-wide v0

    return-wide v0
.end method

.method public count(J)J
    .locals 2
    .param p1, "memoryLimit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 148
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicIndex;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/Database;->count(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "options"    # Lcom/sleepycat/je/WriteOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TK;",
            "Lcom/sleepycat/je/WriteOptions;",
            ")",
            "Lcom/sleepycat/je/OperationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 180
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/persist/BasicIndex;->keyBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v1, p2, v0}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 182
    iget-object v1, p0, Lcom/sleepycat/persist/BasicIndex;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v1, p1, v0, p3}, Lcom/sleepycat/je/Database;->delete(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    return-object v1
.end method

.method public delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/persist/BasicIndex;->delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public delete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/persist/BasicIndex;->delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entities()Lcom/sleepycat/persist/EntityCursor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicIndex;->emptyRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicIndex;->entityAdapter:Lcom/sleepycat/persist/ValueAdapter;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/sleepycat/persist/BasicIndex;->cursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public entities(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicIndex;->emptyRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicIndex;->entityAdapter:Lcom/sleepycat/persist/ValueAdapter;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sleepycat/persist/BasicIndex;->cursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public entities(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 8
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "fromInclusive"    # Z
    .param p5, "toInclusive"    # Z
    .param p6, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TK;ZTK;Z",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 247
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    .local p2, "fromKey":Ljava/lang/Object;, "TK;"
    .local p4, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v6, p0, Lcom/sleepycat/persist/BasicIndex;->entityAdapter:Lcom/sleepycat/persist/ValueAdapter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/persist/BasicIndex;->cursor(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public entities(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/persist/EntityCursor;
    .locals 8
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 235
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v6, p0, Lcom/sleepycat/persist/BasicIndex;->entityAdapter:Lcom/sleepycat/persist/ValueAdapter;

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/persist/BasicIndex;->cursor(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Lcom/sleepycat/je/Database;
    .locals 1

    .line 89
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicIndex;->db:Lcom/sleepycat/je/Database;

    return-object v0
.end method

.method abstract isUpdateAllowed()Z
.end method

.method public keys()Lcom/sleepycat/persist/EntityCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sleepycat/persist/BasicIndex;->keys(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public keys(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicIndex;->emptyRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicIndex;->keyAdapter:Lcom/sleepycat/persist/ValueAdapter;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sleepycat/persist/BasicIndex;->cursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public keys(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .locals 8
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "fromInclusive"    # Z
    .param p5, "toInclusive"    # Z
    .param p6, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TK;ZTK;Z",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    .local p2, "fromKey":Ljava/lang/Object;, "TK;"
    .local p4, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v6, p0, Lcom/sleepycat/persist/BasicIndex;->keyAdapter:Lcom/sleepycat/persist/ValueAdapter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/persist/BasicIndex;->cursor(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method

.method public keys(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/persist/EntityCursor;
    .locals 8
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/sleepycat/persist/BasicIndex;, "Lcom/sleepycat/persist/BasicIndex<TK;TE;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v6, p0, Lcom/sleepycat/persist/BasicIndex;->keyAdapter:Lcom/sleepycat/persist/ValueAdapter;

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/persist/BasicIndex;->cursor(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/persist/ValueAdapter;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;

    move-result-object v0

    return-object v0
.end method
