.class public Lcom/sleepycat/je/dbi/DatabaseImpl;
.super Ljava/lang/Object;
.source "DatabaseImpl.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;,
        Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DELETE_FINISHED:S = 0x3s

.field private static final DELETE_STARTED:S = 0x2s

.field private static final DUPS_CONVERTED:B = 0x40t

.field private static final DUPS_ENABLED:B = 0x1t

.field private static final IS_REPLICATED_BIT:B = 0x4t

.field private static final NOT_DELETED:S = 0x1s

.field private static final NOT_REPLICATED_BIT:B = 0x8t

.field private static final PREFIXING_ENABLED:B = 0x10t

.field private static final TEMPORARY_BIT:B = 0x2t

.field private static final forceKeyPrefixing:Z


# instance fields
.field private binDeltaPercent:I

.field private btreeBinaryEqualityComparator:Z

.field private btreeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field private btreeComparatorByClassName:Z

.field private btreeComparatorBytes:[B

.field private btreePartialComparator:Z

.field private cacheMode:Lcom/sleepycat/je/CacheMode;

.field private createdAtLogVersion:B

.field private dbFileSummaries:Lcom/sleepycat/je/cleaner/DbFileSummaryMap;

.field private dbType:Lcom/sleepycat/je/dbi/DbType;

.field private volatile deleteState:S

.field private volatile dirty:Z

.field private duplicateBinaryEqualityComparator:Z

.field private duplicateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field private duplicateComparatorByClassName:Z

.field private duplicateComparatorBytes:[B

.field private duplicatePartialComparator:Z

.field private durableDeferredWrite:Z

.field private envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private eofLsn:J

.field private flags:B

.field private id:Lcom/sleepycat/je/dbi/DatabaseId;

.field private keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field private volatile knownSecondary:Z

.field private maxTreeEntriesPerNode:I

.field private volatile name:Ljava/lang/String;

.field private referringHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/Database;",
            ">;"
        }
    .end annotation
.end field

.field private transactional:Z

.field private transientTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;"
        }
    .end annotation
.end field

.field private tree:Lcom/sleepycat/je/tree/Tree;

.field private triggerBytes:[[B

.field private triggers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;>;"
        }
    .end annotation
.end field

.field private useCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final writeCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    nop

    .line 213
    nop

    .line 214
    const-string v0, "je.forceKeyPrefixing"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "forceKeyPrefixingProp":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sleepycat/je/dbi/DatabaseImpl;->forceKeyPrefixing:Z

    goto :goto_0

    .line 218
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sleepycat/je/dbi/DatabaseImpl;->forceKeyPrefixing:Z

    .line 220
    .end local v0    # "forceKeyPrefixingProp":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->useCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->writeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->dbFileSummaries:Lcom/sleepycat/je/cleaner/DbFileSummaryMap;

    .line 148
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    .line 149
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparator:Ljava/util/Comparator;

    .line 150
    sget-object v1, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorBytes:[B

    .line 151
    sget-object v1, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorBytes:[B

    .line 153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorByClassName:Z

    .line 154
    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorByClassName:Z

    .line 155
    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreePartialComparator:Z

    .line 156
    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicatePartialComparator:Z

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeBinaryEqualityComparator:Z

    .line 158
    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateBinaryEqualityComparator:Z

    .line 161
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->keyComparator:Ljava/util/Comparator;

    .line 173
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 175
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->transientTriggers:Ljava/util/List;

    .line 176
    move-object v2, v0

    check-cast v2, [[B

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    .line 193
    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->knownSecondary:Z

    .line 263
    new-instance v1, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v1}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 264
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 266
    new-instance v0, Lcom/sleepycat/je/tree/Tree;

    invoke-direct {v0}, Lcom/sleepycat/je/tree/Tree;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->tree:Lcom/sleepycat/je/tree/Tree;

    .line 268
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->commonInit()V

    .line 271
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/DatabaseConfig;)V
    .locals 3
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "id"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p4, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p5, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->useCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->writeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->dbFileSummaries:Lcom/sleepycat/je/cleaner/DbFileSummaryMap;

    .line 148
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    .line 149
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparator:Ljava/util/Comparator;

    .line 150
    sget-object v1, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorBytes:[B

    .line 151
    sget-object v1, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorBytes:[B

    .line 153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorByClassName:Z

    .line 154
    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorByClassName:Z

    .line 155
    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreePartialComparator:Z

    .line 156
    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicatePartialComparator:Z

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeBinaryEqualityComparator:Z

    .line 158
    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateBinaryEqualityComparator:Z

    .line 161
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->keyComparator:Ljava/util/Comparator;

    .line 173
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 175
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->transientTriggers:Ljava/util/List;

    .line 176
    move-object v2, v0

    check-cast v2, [[B

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    .line 193
    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->knownSecondary:Z

    .line 232
    iput-object p3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 233
    iput-object p4, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 235
    invoke-virtual {p0, p1, p2, p5, p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setConfigProperties(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 236
    invoke-virtual {p5}, Lcom/sleepycat/je/DatabaseConfig;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 238
    const/16 v0, 0x11

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->createdAtLogVersion:B

    .line 241
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDupsConverted()V

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->commonInit()V

    .line 247
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->initWithEnvironment()V

    .line 253
    new-instance v0, Lcom/sleepycat/je/tree/Tree;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/tree/Tree;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->tree:Lcom/sleepycat/je/tree/Tree;

    .line 255
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setNameAndType(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public static bytesToObject([BLjava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 1952
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1953
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Lcom/sleepycat/util/ClassResolver$Stream;

    invoke-direct {v1, v0, p2}, Lcom/sleepycat/util/ClassResolver$Stream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 1954
    .local v1, "ois":Lcom/sleepycat/util/ClassResolver$Stream;
    invoke-virtual {v1}, Lcom/sleepycat/util/ClassResolver$Stream;->readObject()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1955
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "ois":Lcom/sleepycat/util/ClassResolver$Stream;
    :catch_0
    move-exception v0

    .line 1956
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while trying to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1957
    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method private clearTransientTriggers()V
    .locals 5

    .line 879
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTriggers()Ljava/util/List;

    move-result-object v0

    .line 880
    .local v0, "oldTriggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    if-nez v0, :cond_0

    .line 881
    return-void

    .line 883
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 884
    .local v1, "newTriggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 885
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/trigger/Trigger;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 886
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/trigger/Trigger;

    .line 887
    .local v3, "trigger":Lcom/sleepycat/je/trigger/Trigger;
    instance-of v4, v3, Lcom/sleepycat/je/trigger/PersistentTrigger;

    if-nez v4, :cond_1

    .line 888
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 890
    .end local v3    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    :cond_1
    goto :goto_0

    .line 892
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v1, v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setTriggers(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/util/List;Z)Z

    .line 894
    return-void
.end method

.method private commonInit()V
    .locals 1

    .line 316
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->deleteState:S

    .line 317
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 318
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->referringHandles:Ljava/util/Set;

    .line 319
    return-void
.end method

.method public static comparatorToBytes(Ljava/util/Comparator;ZLjava/lang/String;)[B
    .locals 2
    .param p1, "byClassName"    # Z
    .param p2, "comparatorType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;Z",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 1917
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    if-nez p0, :cond_0

    .line 1918
    sget-object v0, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    return-object v0

    .line 1921
    :cond_0
    if-eqz p1, :cond_1

    .line 1922
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 1924
    .local v0, "obj":Ljava/lang/Object;
    :goto_0
    invoke-static {v0, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->objectToBytes(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method private count(Lcom/sleepycat/je/DatabaseEntry;ZLcom/sleepycat/je/DatabaseEntry;Z)J
    .locals 14
    .param p1, "beginKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "beginInclusive"    # Z
    .param p3, "endKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "endInclusive"    # Z

    .line 1538
    move-object v1, p0

    move-object v2, p1

    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v3, v0

    .line 1539
    .local v3, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v4, v0

    .line 1540
    .local v4, "noData":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v0, v5}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 1542
    iget-object v0, v1, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v6

    .line 1543
    .local v6, "locker":Lcom/sleepycat/je/txn/Locker;
    sget-object v7, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    .line 1546
    .local v7, "lockMode":Lcom/sleepycat/je/LockMode;
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v6, v0}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v0

    .line 1551
    .local v8, "c":Lcom/sleepycat/je/Cursor;
    const-wide/16 v9, 0x0

    if-eqz v2, :cond_1

    .line 1553
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v11

    .line 1554
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v12

    .line 1553
    invoke-virtual {v3, v0, v11, v12}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 1556
    invoke-virtual {v8, v3, v4, v7}, Lcom/sleepycat/je/Cursor;->getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    sget-object v11, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v11, :cond_0

    .line 1558
    nop

    .line 1582
    :try_start_2
    invoke-virtual {v8}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1585
    invoke-virtual {v6, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1558
    return-wide v9

    .line 1561
    :cond_0
    if-nez p2, :cond_2

    :try_start_3
    invoke-virtual {v3, p1}, Lcom/sleepycat/je/DatabaseEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1562
    invoke-virtual {v8, v3, v4, v7}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    sget-object v11, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v0, v11, :cond_2

    .line 1564
    nop

    .line 1582
    :try_start_4
    invoke-virtual {v8}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1585
    invoke-virtual {v6, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1564
    return-wide v9

    .line 1568
    :cond_1
    :try_start_5
    invoke-virtual {v8, v3, v4, v7}, Lcom/sleepycat/je/Cursor;->getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    sget-object v11, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eq v0, v11, :cond_2

    .line 1570
    nop

    .line 1582
    :try_start_6
    invoke-virtual {v8}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1585
    invoke-virtual {v6, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1570
    return-wide v9

    .line 1575
    :cond_2
    const/4 v0, 0x0

    .line 1578
    .local v0, "rangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    const-wide/16 v11, 0x1

    :try_start_7
    invoke-static {v8}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v13

    invoke-virtual {v13, v5, v9, v10, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->skip(ZJLcom/sleepycat/je/dbi/RangeConstraint;)J

    move-result-wide v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-long/2addr v9, v11

    .line 1582
    :try_start_8
    invoke-virtual {v8}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1585
    invoke-virtual {v6, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1578
    return-wide v9

    .line 1582
    .end local v0    # "rangeConstraint":Lcom/sleepycat/je/dbi/RangeConstraint;
    :catchall_0
    move-exception v0

    :try_start_9
    invoke-virtual {v8}, Lcom/sleepycat/je/Cursor;->close()V

    .end local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "noData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v7    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local p1    # "beginKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p2    # "beginInclusive":Z
    .end local p3    # "endKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "endInclusive":Z
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1585
    .end local v8    # "c":Lcom/sleepycat/je/Cursor;
    .restart local v3    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "noData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v6    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v7    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local p1    # "beginKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p2    # "beginInclusive":Z
    .restart local p3    # "endKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "endInclusive":Z
    :catchall_1
    move-exception v0

    invoke-virtual {v6, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    throw v0
.end method

.method static dumpFlags(Ljava/lang/StringBuilder;ZB)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "verbose"    # Z
    .param p2, "flags"    # B

    .line 1842
    const-string v0, " dupsort=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1843
    const-string v0, "\" replicated=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1844
    const-string v0, "\" temp=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1845
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    return-void
.end method

.method private static getComparatorClassName(Ljava/util/Comparator;[B)Ljava/lang/String;
    .locals 2
    .param p1, "comparatorBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;[B)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1872
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    if-eqz p0, :cond_0

    .line 1873
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1874
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 1881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteLen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1883
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method static getKeyPrefixing(B)Z
    .locals 1
    .param p0, "flagVal"    # B

    .line 633
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getSortedDuplicates(B)Z
    .locals 1
    .param p0, "flagVal"    # B

    .line 532
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initWithEnvironment()V
    .locals 8

    .line 349
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getNodeSequence()Lcom/sleepycat/je/dbi/NodeSequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/NodeSequence;->getNextTransientLsn()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->eofLsn:J

    .line 351
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->replicatedBitSet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->notReplicatedBitSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The replicated AND notReplicated bits should never be set  together"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 369
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 371
    .local v0, "configMgr":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->BIN_DELTA_PERCENT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 372
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->binDeltaPercent:I

    .line 380
    iget v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->maxTreeEntriesPerNode:I

    if-nez v1, :cond_2

    .line 381
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->NODE_MAX:Lcom/sleepycat/je/config/IntConfigParam;

    .line 382
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->maxTreeEntriesPerNode:I

    .line 386
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getNoComparators()Z

    move-result v1

    if-nez v1, :cond_7

    .line 388
    new-instance v1, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorBytes:[B

    iget-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 390
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "BtreeComparator"

    invoke-direct {v1, v2, v4, v3}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;-><init>([BLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 391
    .local v1, "reader":Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    .line 392
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->isClass()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorByClassName:Z

    .line 393
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    instance-of v3, v2, Lcom/sleepycat/je/PartialComparator;

    iput-boolean v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreePartialComparator:Z

    .line 395
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    instance-of v2, v2, Lcom/sleepycat/je/BinaryEqualityComparator;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeBinaryEqualityComparator:Z

    .line 399
    new-instance v2, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;

    iget-object v5, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorBytes:[B

    iget-object v6, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 401
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "DuplicateComparator"

    invoke-direct {v2, v5, v7, v6}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;-><init>([BLjava/lang/String;Ljava/lang/ClassLoader;)V

    move-object v1, v2

    .line 402
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparator:Ljava/util/Comparator;

    .line 403
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->isClass()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorByClassName:Z

    .line 404
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparator:Ljava/util/Comparator;

    instance-of v5, v2, Lcom/sleepycat/je/PartialComparator;

    iput-boolean v5, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicatePartialComparator:Z

    .line 406
    if-eqz v2, :cond_5

    instance-of v2, v2, Lcom/sleepycat/je/BinaryEqualityComparator;

    if-eqz v2, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    iput-boolean v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateBinaryEqualityComparator:Z

    .line 411
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->resetKeyComparator()V

    .line 413
    .end local v1    # "reader":Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;
    :cond_7
    return-void
.end method

.method public static instantiateComparator(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Comparator;
    .locals 3
    .param p1, "comparatorType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Comparator<",
            "[B>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 1895
    .local p0, "comparatorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Comparator<[B>;>;"
    if-nez p0, :cond_0

    .line 1896
    const/4 v0, 0x0

    return-object v0

    .line 1900
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1901
    :catch_0
    move-exception v0

    .line 1902
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while trying to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Comparator class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1903
    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public static isTemporary(B)Z
    .locals 1
    .param p0, "flagVal"    # B

    .line 485
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notReplicatedBitSet()Z
    .locals 1

    .line 676
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static objectToBytes(Ljava/lang/Object;Ljava/lang/String;)[B
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "label"    # Ljava/lang/String;

    .line 1934
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1935
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1936
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1937
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1938
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 1939
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while trying to store "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1940
    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method private replicatedBitSet()Z
    .locals 1

    .line 665
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetKeyComparator()V
    .locals 3

    .line 962
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    instance-of v1, v0, Lcom/sleepycat/je/DatabaseComparator;

    if-eqz v1, :cond_0

    .line 963
    check-cast v0, Lcom/sleepycat/je/DatabaseComparator;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 964
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/DatabaseComparator;->initialize(Ljava/lang/ClassLoader;)V

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparator:Ljava/util/Comparator;

    instance-of v1, v0, Lcom/sleepycat/je/DatabaseComparator;

    if-eqz v1, :cond_1

    .line 967
    check-cast v0, Lcom/sleepycat/je/DatabaseComparator;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 968
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/DatabaseComparator;->initialize(Ljava/lang/ClassLoader;)V

    .line 972
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 973
    new-instance v0, Lcom/sleepycat/je/dbi/DupKeyData$TwoPartKeyComparator;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/dbi/DupKeyData$TwoPartKeyComparator;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->keyComparator:Ljava/util/Comparator;

    goto :goto_0

    .line 976
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->keyComparator:Ljava/util/Comparator;

    .line 978
    :goto_0
    return-void
.end method

.method private setNotReplicatedBit()V
    .locals 1

    .line 680
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    .line 681
    return-void
.end method

.method private setTemporary()V
    .locals 1

    .line 497
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    .line 498
    return-void
.end method


# virtual methods
.method public addReferringHandle(Lcom/sleepycat/je/Database;)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/Database;

    .line 1050
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->referringHandles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1051
    return-void
.end method

.method public allowReplicaWrite()Z
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbType;->isMixedReplication()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public allowsKeyUpdates()Z
    .locals 1

    .line 1009
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreePartialComparator:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicatePartialComparator:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public clearDbFileSummaries()V
    .locals 1

    .line 1287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->dbFileSummaries:Lcom/sleepycat/je/cleaner/DbFileSummaryMap;

    .line 1288
    return-void
.end method

.method public clearKeyPrefixing()V
    .locals 1

    .line 641
    sget-boolean v0, Lcom/sleepycat/je/dbi/DatabaseImpl;->forceKeyPrefixing:Z

    if-eqz v0, :cond_0

    .line 642
    return-void

    .line 644
    :cond_0
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    .line 645
    return-void
.end method

.method cloneDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 2

    .line 423
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .local v0, "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    nop

    .line 430
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 431
    iput-object v1, v0, Lcom/sleepycat/je/dbi/DatabaseImpl;->tree:Lcom/sleepycat/je/tree/Tree;

    .line 432
    const/16 v1, 0x11

    iput-byte v1, v0, Lcom/sleepycat/je/dbi/DatabaseImpl;->createdAtLogVersion:B

    .line 433
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, v0, Lcom/sleepycat/je/dbi/DatabaseImpl;->useCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 434
    return-object v0

    .line 424
    .end local v0    # "newDb":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public compareEntries(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Z)I
    .locals 7
    .param p1, "entry1"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "entry2"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "duplicates"    # Z

    .line 1964
    nop

    .line 1965
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v2

    .line 1966
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v4

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v5

    if-eqz p3, :cond_0

    iget-object v6, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparator:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    .line 1965
    :goto_0
    invoke-static/range {v0 .. v6}, Lcom/sleepycat/je/tree/Key;->compareKeys([BII[BIILjava/util/Comparator;)I

    move-result v0

    .line 1964
    return v0
.end method

.method public count(J)J
    .locals 22
    .param p1, "memoryLimit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1475
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    .line 1481
    .local v0, "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    const-wide/32 v2, 0x100000

    .line 1489
    .local v2, "minMem":J
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 1491
    invoke-static {}, Lcom/sleepycat/je/utilint/JVMSystemUtils;->getRuntimeMaxMemory()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getMaxMemory()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xa

    div-long/2addr v4, v6
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .end local p1    # "memoryLimit":J
    .local v4, "memoryLimit":J
    goto :goto_0

    .line 1489
    .end local v4    # "memoryLimit":J
    .restart local p1    # "memoryLimit":J
    :cond_0
    move-wide/from16 v4, p1

    .line 1494
    .end local p1    # "memoryLimit":J
    .restart local v4    # "memoryLimit":J
    :goto_0
    cmp-long v6, v4, v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gez v6, :cond_1

    .line 1496
    :try_start_1
    invoke-direct {v1, v8, v7, v8, v7}, Lcom/sleepycat/je/dbi/DatabaseImpl;->count(Lcom/sleepycat/je/DatabaseEntry;ZLcom/sleepycat/je/DatabaseEntry;Z)J

    move-result-wide v6

    return-wide v6

    .line 1499
    :cond_1
    new-instance v6, Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;

    invoke-direct {v6, v8}, Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl$1;)V

    move-object v15, v6

    .line 1501
    .local v15, "counter":Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;
    new-array v6, v7, [Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-object/from16 v18, v6

    .line 1502
    .local v18, "dbs":[Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/16 v19, 0x0

    aput-object v1, v18, v19

    .line 1504
    new-instance v20, Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-wide v13, 0x7fffffffffffffffL

    const/16 v17, 0x0

    move-object/from16 v6, v20

    move-object/from16 v7, v18

    move-object v8, v15

    move-object/from16 v21, v15

    .end local v15    # "counter":Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;
    .local v21, "counter":Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;
    move-wide v15, v4

    invoke-direct/range {v6 .. v17}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;-><init>([Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;ZZZZJJZ)V

    move-object/from16 v6, v20

    .line 1510
    .local v6, "scanner":Lcom/sleepycat/je/dbi/DiskOrderedScanner;
    const-string v7, "DatabaseCount"

    iget-object v8, v1, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1512
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getNodeSequence()Lcom/sleepycat/je/dbi/NodeSequence;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/NodeSequence;->getNextDatabaseCountId()J

    move-result-wide v8

    .line 1510
    invoke-virtual {v6, v7, v8, v9}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->scan(Ljava/lang/String;J)V

    .line 1514
    sget-boolean v7, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v7, :cond_2

    .line 1515
    invoke-static/range {v19 .. v19}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V

    .line 1518
    :cond_2
    move-object/from16 v7, v21

    .end local v21    # "counter":Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;
    .local v7, "counter":Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;
    iget-wide v8, v7, Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;->count:J
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v8

    .line 1520
    .end local v0    # "mb":Lcom/sleepycat/je/dbi/MemoryBudget;
    .end local v2    # "minMem":J
    .end local v6    # "scanner":Lcom/sleepycat/je/dbi/DiskOrderedScanner;
    .end local v7    # "counter":Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;
    .end local v18    # "dbs":[Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v4    # "memoryLimit":J
    .restart local p1    # "memoryLimit":J
    :catch_1
    move-exception v0

    move-wide/from16 v4, p1

    .line 1521
    .end local p1    # "memoryLimit":J
    .local v0, "E":Ljava/lang/Error;
    .restart local v4    # "memoryLimit":J
    :goto_1
    iget-object v2, v1, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 1522
    throw v0
.end method

.method public countObsoleteOldVersionDb(Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;J)V
    .locals 1
    .param p1, "tracker"    # Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;
    .param p2, "mapLnLsn"    # J

    .line 1372
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->dbFileSummaries:Lcom/sleepycat/je/cleaner/DbFileSummaryMap;

    if-eqz v0, :cond_0

    .line 1373
    invoke-virtual {p1, v0, p2, p3}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->countObsoleteDb(Lcom/sleepycat/je/cleaner/DbFileSummaryMap;J)V

    .line 1375
    :cond_0
    return-void
.end method

.method decrementUseCount()V
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->useCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->useCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1196
    return-void

    .line 1194
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 1808
    const-string v0, "<database"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    const-string v0, " name=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    iget-byte v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    invoke-static {p1, p2, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->dumpFlags(Ljava/lang/StringBuilder;ZB)V

    .line 1813
    const-string v1, " btcmp=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorBytes:[B

    invoke-static {v1, v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getComparatorClassName(Ljava/util/Comparator;[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    const-string v0, " dupcmp=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorBytes:[B

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getComparatorClassName(Ljava/util/Comparator;[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    const-string v0, "\" > "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 1822
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->tree:Lcom/sleepycat/je/tree/Tree;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/tree/Tree;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 1823
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->dbFileSummaries:Lcom/sleepycat/je/cleaner/DbFileSummaryMap;

    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/DbFileSummaryMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1827
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/DbFileSummary;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1828
    .local v2, "fileNum":Ljava/lang/Long;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/cleaner/DbFileSummary;

    .line 1829
    .local v3, "summary":Lcom/sleepycat/je/cleaner/DbFileSummary;
    const-string v4, "<file file=\""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1830
    const-string v4, "\">"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1832
    const-string v4, "</file>"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/DbFileSummary;>;"
    .end local v2    # "fileNum":Ljava/lang/Long;
    .end local v3    # "summary":Lcom/sleepycat/je/cleaner/DbFileSummary;
    goto :goto_0

    .line 1835
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTriggers()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/dbi/TriggerUtils;->dumpTriggers(Ljava/lang/StringBuilder;[[BLjava/util/List;)V

    .line 1836
    const-string v0, "</database>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    return-void
.end method

.method public dumpString(I)Ljava/lang/String;
    .locals 6
    .param p1, "nSpaces"    # I

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1594
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    const-string v1, "<database id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    const-string v2, " deleteState=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    iget-short v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->deleteState:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    const-string v2, " useCount=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->useCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    const-string v2, " dupsort=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    const-string v2, " temporary=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    const-string v2, " deferredWrite=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDurableDeferredWrite()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    const-string v2, " keyPrefixing=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyPrefixing()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_0

    .line 1617
    const-string v2, " btc=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorBytes:[B

    invoke-static {v2, v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getComparatorClassName(Ljava/util/Comparator;[B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    const-string v2, " btcPartial=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreePartialComparator:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_1

    .line 1626
    const-string v2, " dupc=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorBytes:[B

    invoke-static {v2, v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getComparatorClassName(Ljava/util/Comparator;[B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    const-string v2, " dupcPartial=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicatePartialComparator:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->dbFileSummaries:Lcom/sleepycat/je/cleaner/DbFileSummaryMap;

    if-eqz v1, :cond_2

    .line 1637
    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/DbFileSummaryMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1638
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/DbFileSummary;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1639
    .local v3, "fileNum":Ljava/lang/Long;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/cleaner/DbFileSummary;

    .line 1640
    .local v4, "summary":Lcom/sleepycat/je/cleaner/DbFileSummary;
    const-string v5, "<file file=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1641
    const-string v5, "\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1643
    const-string v5, "/file>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/DbFileSummary;>;"
    .end local v3    # "fileNum":Ljava/lang/Long;
    .end local v4    # "summary":Lcom/sleepycat/je/cleaner/DbFileSummary;
    goto :goto_0

    .line 1646
    :cond_2
    const-string v1, "</database>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public findPrimaryDatabase()Lcom/sleepycat/je/Database;
    .locals 4

    .line 1261
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->referringHandles:Ljava/util/Set;

    monitor-enter v0

    .line 1262
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->referringHandles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/Database;

    .line 1263
    .local v2, "obj":Lcom/sleepycat/je/Database;
    instance-of v3, v2, Lcom/sleepycat/je/SecondaryDatabase;

    if-eqz v3, :cond_0

    .line 1264
    move-object v1, v2

    check-cast v1, Lcom/sleepycat/je/SecondaryDatabase;

    invoke-virtual {v1}, Lcom/sleepycat/je/SecondaryDatabase;->getPrimaryDatabase()Lcom/sleepycat/je/Database;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1266
    .end local v2    # "obj":Lcom/sleepycat/je/Database;
    :cond_0
    goto :goto_0

    .line 1267
    :cond_1
    monitor-exit v0

    .line 1268
    const/4 v0, 0x0

    return-object v0

    .line 1267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBinDeltaPercent()I
    .locals 1

    .line 2047
    iget v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->binDeltaPercent:I

    return v0
.end method

.method public getBtreeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 943
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getBtreeComparatorByClass()Z
    .locals 1

    .line 997
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorByClassName:Z

    return v0
.end method

.method public getDbType()Lcom/sleepycat/je/dbi/DbType;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->dbType:Lcom/sleepycat/je/dbi/DbType;

    return-object v0
.end method

.method public getDefaultCacheMode()Lcom/sleepycat/je/CacheMode;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    if-eqz v0, :cond_0

    .line 720
    return-object v0

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    sget-object v0, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    return-object v0

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDefaultCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v0

    return-object v0
.end method

.method public getDuplicateComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getDuplicateComparatorByClass()Z
    .locals 1

    .line 1005
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorByClassName:Z

    return v0
.end method

.method public getDupsConverted()Z
    .locals 1

    .line 540
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method getEofLsn()J
    .locals 2

    .line 460
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->eofLsn:J

    return-wide v0
.end method

.method public getId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    return-object v0
.end method

.method public getKeyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 989
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->keyComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getKeyPrefixing()Z
    .locals 1

    .line 625
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLogSize()I
    .locals 3

    .line 1665
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    sget-object v1, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 1666
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    sget-object v1, Lcom/sleepycat/je/dbi/DbTree;->NAME_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 1667
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->name:Ljava/lang/String;

    .line 1668
    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getStringLogSize(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1670
    .local v0, "nameSize":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 1671
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseId;->getLogSize()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->tree:Lcom/sleepycat/je/tree/Tree;

    .line 1673
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/Tree;->getLogSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorBytes:[B

    .line 1675
    invoke-static {v2}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorBytes:[B

    .line 1676
    invoke-static {v2}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->maxTreeEntriesPerNode:I

    .line 1677
    invoke-static {v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1680
    .local v1, "size":I
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    invoke-static {v2}, Lcom/sleepycat/je/dbi/TriggerUtils;->logSize([[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 1681
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeMaxTreeEntries()I
    .locals 1

    .line 684
    iget v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->maxTreeEntriesPerNode:I

    return v0
.end method

.method getOperationRepContext(Lcom/sleepycat/je/log/entry/DbOperationType;)Lcom/sleepycat/je/log/DbOpReplicationContext;
    .locals 1
    .param p1, "operationType"    # Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 2123
    sget-object v0, Lcom/sleepycat/je/log/entry/DbOperationType;->TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    if-eq p1, v0, :cond_0

    .line 2124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getOperationRepContext(Lcom/sleepycat/je/log/entry/DbOperationType;Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/log/DbOpReplicationContext;

    move-result-object v0

    return-object v0

    .line 2123
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getOperationRepContext(Lcom/sleepycat/je/log/entry/DbOperationType;Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/log/DbOpReplicationContext;
    .locals 8
    .param p1, "operationType"    # Lcom/sleepycat/je/log/entry/DbOperationType;
    .param p2, "oldDbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 2097
    new-instance v0, Lcom/sleepycat/je/log/DbOpReplicationContext;

    .line 2098
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/sleepycat/je/log/DbOpReplicationContext;-><init>(ZLcom/sleepycat/je/log/entry/DbOperationType;)V

    .line 2100
    .local v0, "context":Lcom/sleepycat/je/log/DbOpReplicationContext;
    invoke-static {p1}, Lcom/sleepycat/je/log/entry/DbOperationType;->isWriteConfigType(Lcom/sleepycat/je/log/entry/DbOperationType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2101
    if-nez p2, :cond_0

    .line 2102
    new-instance v1, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    iget-byte v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    iget v4, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->maxTreeEntriesPerNode:I

    iget-object v5, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorBytes:[B

    iget-object v6, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorBytes:[B

    iget-object v7, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;-><init>(BI[B[B[[B)V

    .line 2103
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/DbOpReplicationContext;->setCreateConfig(Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;)V

    goto :goto_0

    .line 2101
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2108
    :cond_1
    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    if-ne p1, v1, :cond_3

    .line 2109
    if-eqz p2, :cond_2

    .line 2110
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/log/DbOpReplicationContext;->setTruncateOldDbId(Lcom/sleepycat/je/dbi/DatabaseId;)V

    goto :goto_0

    .line 2109
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2112
    :cond_3
    :goto_0
    return-object v0
.end method

.method getReferringHandleCount()I
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->referringHandles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getReferringHandles()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/Database;",
            ">;"
        }
    .end annotation

    .line 1064
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1065
    .local v0, "copy":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/Database;>;"
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->referringHandles:Ljava/util/Set;

    monitor-enter v1

    .line 1066
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->referringHandles:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1067
    monitor-exit v1

    .line 1068
    return-object v0

    .line 1067
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getRepContext()Lcom/sleepycat/je/log/ReplicationContext;
    .locals 1

    .line 2073
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/log/ReplicationContext;->MASTER:Lcom/sleepycat/je/log/ReplicationContext;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    :goto_0
    return-object v0
.end method

.method public getSortedDuplicates()Z
    .locals 2

    .line 528
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getTransactionId()J
    .locals 2

    .line 1853
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTree()Lcom/sleepycat/je/tree/Tree;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->tree:Lcom/sleepycat/je/tree/Tree;

    return-object v0
.end method

.method public getTriggers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getNoComparators()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->transientTriggers:Ljava/util/List;

    if-nez v0, :cond_1

    .line 586
    return-object v1

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 591
    .local v0, "myTriggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    if-eqz v0, :cond_2

    .line 592
    return-object v0

    .line 601
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    iget-object v4, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 602
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 601
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/dbi/TriggerUtils;->unmarshallTriggers(Ljava/lang/String;[[BLjava/lang/ClassLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .line 603
    if-nez v0, :cond_3

    .line 604
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v2

    .line 606
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->transientTriggers:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 607
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 609
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v1, v0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 610
    return-object v0

    .line 612
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 613
    if-eqz v0, :cond_6

    .line 614
    return-object v0

    .line 613
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 581
    .end local v0    # "myTriggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    :cond_7
    :goto_0
    return-object v1
.end method

.method public handleClosed(ZZ)V
    .locals 6
    .param p1, "doSyncDw"    # Z
    .param p2, "deleteTempDb"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1077
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->referringHandles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->clearTransientTriggers()V

    .line 1103
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1104
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1105
    invoke-static {v1, v0}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v1

    .line 1106
    .local v1, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v2, 0x0

    .line 1108
    .local v2, "operationOk":Z
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/sleepycat/je/dbi/DbTree;->dbRemove(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_0
    .catch Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    const/4 v2, 0x1

    goto :goto_0

    .line 1127
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "E":Ljava/lang/Error;
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->invalidate(Ljava/lang/Error;)V

    .line 1125
    nop

    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "operationOk":Z
    .end local p1    # "doSyncDw":Z
    .end local p2    # "deleteTempDb":Z
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    .end local v0    # "E":Ljava/lang/Error;
    .restart local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "operationOk":Z
    .restart local p1    # "doSyncDw":Z
    .restart local p2    # "deleteTempDb":Z
    :catch_1
    move-exception v3

    goto :goto_0

    .line 1114
    :catch_2
    move-exception v3

    .line 1127
    :goto_0
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1128
    goto :goto_2

    .line 1110
    :catch_3
    move-exception v0

    .line 1112
    .local v0, "e":Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
    :try_start_2
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "operationOk":Z
    .end local p1    # "doSyncDw":Z
    .end local p2    # "deleteTempDb":Z
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1127
    .end local v0    # "e":Lcom/sleepycat/je/dbi/DbTree$NeedRepLockerException;
    .restart local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "operationOk":Z
    .restart local p1    # "doSyncDw":Z
    .restart local p2    # "deleteTempDb":Z
    :goto_1
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    throw v0

    .line 1136
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "operationOk":Z
    :cond_0
    :goto_2
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDurableDeferredWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1137
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->sync(Z)V

    .line 1140
    :cond_1
    return-void
.end method

.method public hasBtreeBinaryEqualityComparator()Z
    .locals 1

    .line 1016
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeBinaryEqualityComparator:Z

    return v0
.end method

.method public hasDuplicateBinaryEqualityComparator()Z
    .locals 1

    .line 1023
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateBinaryEqualityComparator:Z

    return v0
.end method

.method public hasOpenHandles()Z
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->referringHandles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserTriggers()Z
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->transientTriggers:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method incrementUseCount()V
    .locals 2

    .line 1161
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleteFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->useCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1167
    return-void

    .line 1162
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteFinished state for active DB id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " useCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->useCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1164
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1162
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public isCheckpointNeeded()Z
    .locals 1

    .line 1314
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDirty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDeferredWriteMode()Z
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDurableDeferredWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDeleteFinished()Z
    .locals 2

    .line 1339
    iget-short v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->deleteState:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeleting()Z
    .locals 2

    .line 1327
    iget-short v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->deleteState:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDirty()Z
    .locals 1

    .line 1295
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->dirty:Z

    return v0
.end method

.method public isDurableDeferredWrite()Z
    .locals 1

    .line 505
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->durableDeferredWrite:Z

    return v0
.end method

.method public isInUse()Z
    .locals 1

    .line 1219
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->useCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInUseDuringDbRemove()Z
    .locals 2

    .line 1233
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->useCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInternalDb()Z
    .locals 1

    .line 489
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbType;->isInternal()Z

    move-result v0

    return v0
.end method

.method isKnownSecondary()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->knownSecondary:Z

    return v0
.end method

.method public isLNImmediatelyObsolete()Z
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreePartialComparator:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicatePartialComparator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReplicated()Z
    .locals 1

    .line 653
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->replicatedBitSet()Z

    move-result v0

    return v0
.end method

.method public isTemporary()Z
    .locals 1

    .line 481
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransactional()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->transactional:Z

    return v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 1862
    const/4 v0, 0x0

    return v0
.end method

.method public noteWriteHandleClose()I
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->writeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 1183
    .local v0, "count":I
    if-ltz v0, :cond_0

    .line 1184
    return v0

    .line 1183
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public noteWriteHandleOpen()I
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->writeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public preload(Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/PreloadStats;
    .locals 3
    .param p1, "config"    # Lcom/sleepycat/je/PreloadConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1429
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->preload([Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/PreloadStats;

    move-result-object v0

    return-object v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 9
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 1719
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-lt p2, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1721
    .local v2, "version6OrLater":Z
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v3, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 1723
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    sget-object v4, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    if-eqz v3, :cond_1

    .line 1724
    sget-object v3, Lcom/sleepycat/je/dbi/DbType;->ID:Lcom/sleepycat/je/dbi/DbType;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setNameAndType(Ljava/lang/String;)V

    goto :goto_1

    .line 1725
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    sget-object v6, Lcom/sleepycat/je/dbi/DbTree;->NAME_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v3, v6}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1726
    sget-object v3, Lcom/sleepycat/je/dbi/DbType;->NAME:Lcom/sleepycat/je/dbi/DbType;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setNameAndType(Ljava/lang/String;)V

    goto :goto_1

    .line 1728
    :cond_2
    if-lt p2, v5, :cond_3

    .line 1729
    nop

    .line 1730
    invoke-static {p1, v0, p2}, Lcom/sleepycat/je/log/LogUtils;->readString(Ljava/nio/ByteBuffer;ZI)Ljava/lang/String;

    move-result-object v3

    .line 1729
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setNameAndType(Ljava/lang/String;)V

    goto :goto_1

    .line 1733
    :cond_3
    iput-object v4, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->name:Ljava/lang/String;

    .line 1737
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->tree:Lcom/sleepycat/je/tree/Tree;

    invoke-virtual {v3, p1, p2}, Lcom/sleepycat/je/tree/Tree;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 1744
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    .line 1746
    sget-boolean v3, Lcom/sleepycat/je/dbi/DatabaseImpl;->forceKeyPrefixing:Z

    if-eqz v3, :cond_4

    .line 1747
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setKeyPrefixing()V

    .line 1750
    :cond_4
    const/4 v3, 0x2

    if-lt p2, v3, :cond_7

    .line 1751
    if-nez v2, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v0

    .line 1752
    :goto_2
    invoke-static {p1, v3}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorBytes:[B

    .line 1753
    if-nez v2, :cond_6

    move v3, v1

    goto :goto_3

    :cond_6
    move v3, v0

    .line 1754
    :goto_3
    invoke-static {p1, v3}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorBytes:[B

    goto :goto_7

    .line 1756
    :cond_7
    if-nez v2, :cond_8

    move v3, v1

    goto :goto_4

    :cond_8
    move v3, v0

    .line 1757
    :goto_4
    invoke-static {p1, v3, p2}, Lcom/sleepycat/je/log/LogUtils;->readString(Ljava/nio/ByteBuffer;ZI)Ljava/lang/String;

    move-result-object v3

    .line 1758
    .local v3, "btreeClassName":Ljava/lang/String;
    if-nez v2, :cond_9

    move v6, v1

    goto :goto_5

    :cond_9
    move v6, v0

    .line 1759
    :goto_5
    invoke-static {p1, v6, p2}, Lcom/sleepycat/je/log/LogUtils;->readString(Ljava/nio/ByteBuffer;ZI)Ljava/lang/String;

    move-result-object v6

    .line 1760
    .local v6, "dupClassName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_a

    .line 1761
    sget-object v7, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    iput-object v7, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorBytes:[B

    goto :goto_6

    .line 1763
    :cond_a
    nop

    .line 1764
    const-string v7, "BtreeComparator"

    invoke-static {v3, v7}, Lcom/sleepycat/je/dbi/DatabaseImpl;->objectToBytes(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorBytes:[B

    .line 1766
    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_b

    .line 1767
    sget-object v7, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    iput-object v7, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorBytes:[B

    goto :goto_7

    .line 1769
    :cond_b
    nop

    .line 1770
    const-string v7, "DuplicateComparator"

    invoke-static {v6, v7}, Lcom/sleepycat/je/dbi/DatabaseImpl;->objectToBytes(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorBytes:[B

    .line 1774
    .end local v3    # "btreeClassName":Ljava/lang/String;
    .end local v6    # "dupClassName":Ljava/lang/String;
    :goto_7
    const/16 v3, 0x8

    if-lt p2, v1, :cond_e

    .line 1775
    if-nez v2, :cond_c

    move v6, v1

    goto :goto_8

    :cond_c
    move v6, v0

    .line 1776
    :goto_8
    invoke-static {p1, v6}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v6

    iput v6, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->maxTreeEntriesPerNode:I

    .line 1777
    if-ge p2, v3, :cond_e

    .line 1779
    if-nez v2, :cond_d

    move v0, v1

    :cond_d
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    .line 1783
    :cond_e
    if-eqz v2, :cond_f

    .line 1784
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->createdAtLogVersion:B

    .line 1787
    :cond_f
    if-eqz v2, :cond_10

    if-ge p2, v5, :cond_10

    .line 1788
    new-instance v0, Lcom/sleepycat/je/cleaner/DbFileSummaryMap;

    invoke-direct {v0}, Lcom/sleepycat/je/cleaner/DbFileSummaryMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->dbFileSummaries:Lcom/sleepycat/je/cleaner/DbFileSummaryMap;

    .line 1789
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1790
    .local v0, "nFiles":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_10

    .line 1791
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    .line 1792
    .local v5, "fileNum":J
    iget-object v7, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->dbFileSummaries:Lcom/sleepycat/je/cleaner/DbFileSummaryMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/cleaner/DbFileSummaryMap;->get(Ljava/lang/Long;)Lcom/sleepycat/je/cleaner/DbFileSummary;

    move-result-object v7

    .line 1793
    .local v7, "summary":Lcom/sleepycat/je/cleaner/DbFileSummary;
    invoke-virtual {v7, p1, p2}, Lcom/sleepycat/je/cleaner/DbFileSummary;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 1790
    .end local v5    # "fileNum":J
    .end local v7    # "summary":Lcom/sleepycat/je/cleaner/DbFileSummary;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1797
    .end local v0    # "nFiles":I
    .end local v1    # "i":I
    :cond_10
    if-ge p2, v3, :cond_11

    move-object v0, v4

    check-cast v0, [[B

    goto :goto_a

    .line 1799
    :cond_11
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/TriggerUtils;->readTriggers(Ljava/nio/ByteBuffer;I)[[B

    move-result-object v4

    :goto_a
    iput-object v4, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    .line 1801
    return-void
.end method

.method public removeReferringHandle(Lcom/sleepycat/je/Database;)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/Database;

    .line 1057
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->referringHandles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1058
    return-void
.end method

.method public setBtreeComparator(Ljava/util/Comparator;Z)Z
    .locals 6
    .param p2, "byClassName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 908
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    nop

    .line 909
    const-string v0, "BtreeComparator"

    invoke-static {p1, p2, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->comparatorToBytes(Ljava/util/Comparator;ZLjava/lang/String;)[B

    move-result-object v0

    .line 911
    .local v0, "newBytes":[B
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorBytes:[B

    .line 912
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    instance-of v4, v1, Lcom/sleepycat/je/PartialComparator;

    instance-of v5, p1, Lcom/sleepycat/je/PartialComparator;

    if-ne v4, v5, :cond_1

    instance-of v1, v1, Lcom/sleepycat/je/BinaryEqualityComparator;

    instance-of v4, p1, Lcom/sleepycat/je/BinaryEqualityComparator;

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 918
    .local v1, "changed":Z
    :goto_1
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparator:Ljava/util/Comparator;

    .line 919
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorBytes:[B

    .line 920
    iput-boolean p2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorByClassName:Z

    .line 922
    instance-of v4, p1, Lcom/sleepycat/je/PartialComparator;

    iput-boolean v4, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreePartialComparator:Z

    .line 925
    if-eqz p1, :cond_2

    instance-of v4, p1, Lcom/sleepycat/je/BinaryEqualityComparator;

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeBinaryEqualityComparator:Z

    .line 929
    if-eqz v1, :cond_4

    .line 931
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->resetKeyComparator()V

    .line 933
    :cond_4
    return v1
.end method

.method public setCacheMode(Lcom/sleepycat/je/CacheMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/sleepycat/je/CacheMode;

    .line 710
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 711
    return-void
.end method

.method public setConfigProperties(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 2
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p4, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 278
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 279
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getBtreeComparatorByClassName()Z

    move-result v1

    .line 278
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setBtreeComparator(Ljava/util/Comparator;Z)Z

    .line 280
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getDuplicateComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 281
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getDuplicateComparatorByClassName()Z

    move-result v1

    .line 280
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDuplicateComparator(Ljava/util/Comparator;Z)Z

    .line 283
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getTriggers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setTriggers(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/util/List;Z)Z

    .line 286
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getSortedDuplicates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setSortedDuplicates()V

    .line 290
    :cond_0
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getKeyPrefixing()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/sleepycat/je/dbi/DatabaseImpl;->forceKeyPrefixing:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->clearKeyPrefixing()V

    goto :goto_1

    .line 292
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setKeyPrefixing()V

    .line 297
    :goto_1
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getTemporary()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setTemporary()V

    .line 301
    :cond_3
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getReplicated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setIsReplicatedBit()V

    goto :goto_2

    .line 305
    :cond_4
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setNotReplicatedBit()V

    .line 309
    :cond_5
    :goto_2
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->transactional:Z

    .line 310
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getDeferredWrite()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->durableDeferredWrite:Z

    .line 311
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getNodeMaxEntries()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->maxTreeEntriesPerNode:I

    .line 312
    return-void
.end method

.method public setDeferredWrite(Z)V
    .locals 0
    .param p1, "durableDeferredWrite"    # Z

    .line 521
    iput-boolean p1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->durableDeferredWrite:Z

    .line 522
    return-void
.end method

.method public setDeleteFinished()V
    .locals 2

    .line 1357
    iget-short v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->deleteState:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1359
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->deleteState:S

    .line 1360
    return-void

    .line 1357
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setDeleteStarted()V
    .locals 2

    .line 1347
    iget-short v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->deleteState:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1349
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->deleteState:S

    .line 1350
    return-void

    .line 1347
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setDirty()V
    .locals 1

    .line 1306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->dirty:Z

    .line 1307
    return-void
.end method

.method public setDuplicateComparator(Ljava/util/Comparator;Z)Z
    .locals 6
    .param p2, "byClassName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 740
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    nop

    .line 741
    const-string v0, "DuplicateComparator"

    invoke-static {p1, p2, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->comparatorToBytes(Ljava/util/Comparator;ZLjava/lang/String;)[B

    move-result-object v0

    .line 743
    .local v0, "newBytes":[B
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorBytes:[B

    .line 744
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    instance-of v1, p1, Lcom/sleepycat/je/PartialComparator;

    iget-object v4, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparator:Ljava/util/Comparator;

    instance-of v5, v4, Lcom/sleepycat/je/PartialComparator;

    if-ne v1, v5, :cond_1

    instance-of v1, p1, Lcom/sleepycat/je/BinaryEqualityComparator;

    instance-of v4, v4, Lcom/sleepycat/je/BinaryEqualityComparator;

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 750
    .local v1, "changed":Z
    :goto_1
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparator:Ljava/util/Comparator;

    .line 751
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorBytes:[B

    .line 752
    iput-boolean p2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorByClassName:Z

    .line 754
    instance-of v4, p1, Lcom/sleepycat/je/PartialComparator;

    iput-boolean v4, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicatePartialComparator:Z

    .line 757
    if-eqz p1, :cond_2

    instance-of v4, p1, Lcom/sleepycat/je/BinaryEqualityComparator;

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateBinaryEqualityComparator:Z

    .line 761
    if-eqz v1, :cond_4

    .line 763
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->resetKeyComparator()V

    .line 765
    :cond_4
    return v1
.end method

.method public setDupsConverted()V
    .locals 1

    .line 544
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    .line 545
    return-void
.end method

.method public setEnvironmentImpl(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1030
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1031
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->initWithEnvironment()V

    .line 1032
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->tree:Lcom/sleepycat/je/tree/Tree;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/tree/Tree;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1033
    return-void
.end method

.method setId(Lcom/sleepycat/je/dbi/DatabaseId;)V
    .locals 0
    .param p1, "id"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 456
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 457
    return-void
.end method

.method public setIsReplicatedBit()V
    .locals 1

    .line 669
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    .line 670
    return-void
.end method

.method public setKeyPrefixing()V
    .locals 1

    .line 637
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    .line 638
    return-void
.end method

.method public setKnownSecondary()V
    .locals 1

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->knownSecondary:Z

    .line 340
    return-void
.end method

.method public setNameAndType(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 322
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->name:Ljava/lang/String;

    .line 327
    invoke-static {p1}, Lcom/sleepycat/je/dbi/DbTree;->typeForDbName(Ljava/lang/String;)Lcom/sleepycat/je/dbi/DbType;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->dbType:Lcom/sleepycat/je/dbi/DbType;

    .line 328
    return-void
.end method

.method public setNodeMaxTreeEntries(I)V
    .locals 0
    .param p1, "newNodeMaxTreeEntries"    # I

    .line 688
    iput p1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->maxTreeEntriesPerNode:I

    .line 689
    return-void
.end method

.method public setSortedDuplicates()V
    .locals 1

    .line 536
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    .line 537
    return-void
.end method

.method public setTransactional(Z)V
    .locals 0
    .param p1, "transactional"    # Z

    .line 474
    iput-boolean p1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->transactional:Z

    .line 475
    return-void
.end method

.method setTree(Lcom/sleepycat/je/tree/Tree;)V
    .locals 0
    .param p1, "tree"    # Lcom/sleepycat/je/tree/Tree;

    .line 445
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->tree:Lcom/sleepycat/je/tree/Tree;

    .line 446
    return-void
.end method

.method public setTriggers(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 11
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p4, "overridePersistentTriggers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/txn/Locker;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;Z)Z"
        }
    .end annotation

    .line 785
    .local p3, "newTriggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 786
    const/4 p3, 0x0

    .line 793
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_9

    .line 794
    if-nez p3, :cond_2

    .line 795
    move-object v3, v0

    check-cast v3, [[B

    .line 796
    .local v3, "newTriggerBytes":[[B
    iget-object v4, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    .local v4, "persistentChange":Z
    :goto_0
    goto/16 :goto_5

    .line 799
    .end local v3    # "newTriggerBytes":[[B
    .end local v4    # "persistentChange":Z
    :cond_2
    const/4 v3, 0x0

    .line 800
    .local v3, "nTriggers":I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/trigger/Trigger;

    .line 801
    .local v5, "trigger":Lcom/sleepycat/je/trigger/Trigger;
    instance-of v6, v5, Lcom/sleepycat/je/trigger/PersistentTrigger;

    if-eqz v6, :cond_3

    .line 802
    add-int/lit8 v3, v3, 0x1

    .line 804
    .end local v5    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    :cond_3
    goto :goto_1

    .line 805
    :cond_4
    if-nez v3, :cond_6

    .line 806
    move-object v4, v0

    check-cast v4, [[B

    .line 807
    .local v4, "newTriggerBytes":[[B
    iget-object v5, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_2

    :cond_5
    move v5, v1

    :goto_2
    move-object v3, v4

    move v4, v5

    .local v5, "persistentChange":Z
    goto :goto_4

    .line 809
    .end local v4    # "newTriggerBytes":[[B
    .end local v5    # "persistentChange":Z
    :cond_6
    new-array v4, v3, [[B

    .line 810
    .restart local v4    # "newTriggerBytes":[[B
    const/4 v5, 0x0

    .line 811
    .local v5, "i":I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/trigger/Trigger;

    .line 812
    .local v7, "trigger":Lcom/sleepycat/je/trigger/Trigger;
    instance-of v8, v7, Lcom/sleepycat/je/trigger/PersistentTrigger;

    if-eqz v8, :cond_7

    .line 813
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trigger-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 814
    invoke-interface {v7}, Lcom/sleepycat/je/trigger/Trigger;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/sleepycat/je/dbi/DatabaseImpl;->objectToBytes(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v4, v5

    .line 815
    invoke-interface {v7, p2}, Lcom/sleepycat/je/trigger/Trigger;->setDatabaseName(Ljava/lang/String;)Lcom/sleepycat/je/trigger/Trigger;

    move v5, v8

    .line 817
    .end local v7    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_7
    goto :goto_3

    .line 818
    :cond_8
    iget-object v6, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    .line 819
    invoke-static {v6, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v2

    move-object v3, v4

    move v4, v6

    .line 821
    .end local v5    # "i":I
    .local v3, "newTriggerBytes":[[B
    .local v4, "persistentChange":Z
    :goto_4
    goto :goto_5

    .line 823
    .end local v3    # "newTriggerBytes":[[B
    .end local v4    # "persistentChange":Z
    :cond_9
    iget-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    .line 824
    .restart local v3    # "newTriggerBytes":[[B
    const/4 v4, 0x0

    .line 831
    .restart local v4    # "persistentChange":Z
    :goto_5
    if-nez p3, :cond_b

    .line 832
    const/4 v5, 0x0

    .line 833
    .local v5, "newTransientTriggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    iget-object v6, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->transientTriggers:Ljava/util/List;

    if-eqz v6, :cond_a

    move v1, v2

    .local v1, "transientChange":Z
    :cond_a
    goto :goto_8

    .line 835
    .end local v1    # "transientChange":Z
    .end local v5    # "newTransientTriggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    :cond_b
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 836
    .restart local v5    # "newTransientTriggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    .line 837
    .local v6, "diffs":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/trigger/Trigger;Ljava/lang/Object;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/trigger/Trigger;

    .line 838
    .local v8, "trigger":Lcom/sleepycat/je/trigger/Trigger;
    instance-of v9, v8, Lcom/sleepycat/je/trigger/PersistentTrigger;

    if-nez v9, :cond_c

    .line 839
    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-interface {v8, p2}, Lcom/sleepycat/je/trigger/Trigger;->setDatabaseName(Ljava/lang/String;)Lcom/sleepycat/je/trigger/Trigger;

    .line 843
    .end local v8    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    :cond_c
    goto :goto_6

    .line 844
    :cond_d
    iget-object v7, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->transientTriggers:Ljava/util/List;

    if-nez v7, :cond_f

    .line 845
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_e

    move v1, v2

    .restart local v1    # "transientChange":Z
    :cond_e
    goto :goto_8

    .line 846
    .end local v1    # "transientChange":Z
    :cond_f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 847
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_10

    .line 848
    const/4 v1, 0x1

    .restart local v1    # "transientChange":Z
    goto :goto_8

    .line 850
    .end local v1    # "transientChange":Z
    :cond_10
    iget-object v7, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->transientTriggers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/trigger/Trigger;

    .line 851
    .restart local v8    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .end local v8    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    goto :goto_7

    .line 853
    :cond_11
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_12

    move v1, v2

    .line 857
    .end local v6    # "diffs":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/trigger/Trigger;Ljava/lang/Object;>;"
    .restart local v1    # "transientChange":Z
    :cond_12
    :goto_8
    if-nez v4, :cond_13

    if-eqz v1, :cond_15

    .line 858
    :cond_13
    nop

    .line 859
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTriggers()Ljava/util/List;

    move-result-object v2

    .line 858
    invoke-static {p1, v2, p3}, Lcom/sleepycat/je/dbi/TriggerManager;->invokeAddRemoveTriggers(Lcom/sleepycat/je/txn/Locker;Ljava/util/List;Ljava/util/List;)V

    .line 862
    iput-object v3, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    .line 863
    if-eqz v5, :cond_14

    .line 865
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    move-object v0, v5

    goto :goto_9

    :cond_14
    nop

    :goto_9
    iput-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->transientTriggers:Ljava/util/List;

    .line 868
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 871
    :cond_15
    return v4
.end method

.method public stat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/BtreeStats;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1380
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->tree:Lcom/sleepycat/je/tree/Tree;

    if-nez v0, :cond_0

    .line 1381
    new-instance v0, Lcom/sleepycat/je/BtreeStats;

    invoke-direct {v0}, Lcom/sleepycat/je/BtreeStats;-><init>()V

    return-object v0

    .line 1386
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getFast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1387
    new-instance v0, Lcom/sleepycat/je/BtreeStats;

    invoke-direct {v0}, Lcom/sleepycat/je/BtreeStats;-><init>()V

    .local v0, "stats":Lcom/sleepycat/je/BtreeStats;
    goto :goto_0

    .line 1394
    .end local v0    # "stats":Lcom/sleepycat/je/BtreeStats;
    :cond_1
    new-instance v0, Lcom/sleepycat/je/VerifyConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/VerifyConfig;-><init>()V

    .line 1396
    .local v0, "verifyConfig":Lcom/sleepycat/je/VerifyConfig;
    nop

    .line 1397
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getShowProgressInterval()I

    move-result v1

    .line 1396
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/VerifyConfig;->setShowProgressInterval(I)Lcom/sleepycat/je/VerifyConfig;

    .line 1399
    nop

    .line 1400
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getShowProgressStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 1399
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/VerifyConfig;->setShowProgressStream(Ljava/io/PrintStream;)Lcom/sleepycat/je/VerifyConfig;

    .line 1402
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->verify(Lcom/sleepycat/je/VerifyConfig;)Lcom/sleepycat/je/BtreeStats;

    move-result-object v1

    move-object v0, v1

    .line 1405
    .local v0, "stats":Lcom/sleepycat/je/BtreeStats;
    :goto_0
    return-object v0
.end method

.method public declared-synchronized sync(Z)V
    .locals 2
    .param p1, "flushLog"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 1244
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDurableDeferredWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->tree:Lcom/sleepycat/je/tree/Tree;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/Tree;->rootExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCheckpointer()Lcom/sleepycat/je/recovery/Checkpointer;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0, v1, p0, p1}, Lcom/sleepycat/je/recovery/Checkpointer;->syncDatabase(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    .end local p0    # "this":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 1245
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Database.sync() is only supported for deferred-write databases"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1243
    .end local p1    # "flushLog":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unknownReplicated()Z
    .locals 2

    .line 660
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public verify(Lcom/sleepycat/je/VerifyConfig;)Lcom/sleepycat/je/BtreeStats;
    .locals 3
    .param p1, "config"    # Lcom/sleepycat/je/VerifyConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1411
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->tree:Lcom/sleepycat/je/tree/Tree;

    if-nez v0, :cond_0

    .line 1412
    new-instance v0, Lcom/sleepycat/je/BtreeStats;

    invoke-direct {v0}, Lcom/sleepycat/je/BtreeStats;-><init>()V

    return-object v0

    .line 1415
    :cond_0
    new-instance v0, Lcom/sleepycat/je/util/verify/BtreeVerifier;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 1416
    .local v0, "verifier":Lcom/sleepycat/je/util/verify/BtreeVerifier;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->setBtreeVerifyConfig(Lcom/sleepycat/je/VerifyConfig;)V

    .line 1418
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyDatabase(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/BtreeStats;

    move-result-object v1

    return-object v1
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 1690
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/DatabaseId;->writeToLog(Ljava/nio/ByteBuffer;)V

    .line 1692
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    sget-object v1, Lcom/sleepycat/je/dbi/DbTree;->ID_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->id:Lcom/sleepycat/je/dbi/DatabaseId;

    sget-object v1, Lcom/sleepycat/je/dbi/DbTree;->NAME_DB_ID:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 1693
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1697
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->tree:Lcom/sleepycat/je/tree/Tree;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/Tree;->writeToLog(Ljava/nio/ByteBuffer;)V

    .line 1699
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->flags:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1701
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->btreeComparatorBytes:[B

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 1702
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->duplicateComparatorBytes:[B

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 1704
    iget v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->maxTreeEntriesPerNode:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 1706
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->createdAtLogVersion:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1708
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->triggerBytes:[[B

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/TriggerUtils;->writeTriggers(Ljava/nio/ByteBuffer;[[B)V

    .line 1710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl;->dirty:Z

    .line 1711
    return-void
.end method
