.class Lcom/sleepycat/je/rep/vlsn/VLSNTracker;
.super Ljava/lang/Object;
.source "VLSNTracker.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bucketCache:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/rep/vlsn/VLSNBucket;",
            ">;"
        }
    .end annotation
.end field

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final maxDistance:I

.field private final maxMappings:I

.field private final nBucketsCreated:Lcom/sleepycat/je/utilint/LongStat;

.field private final protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

.field protected volatile range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

.field private rangeTruncated:Z

.field private final stride:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;III)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "stride"    # I
    .param p3, "maxMappings"    # I
    .param p4, "maxDistance"    # I

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 65
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 182
    iput-object p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 183
    iput p2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->stride:I

    .line 184
    iput p3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->maxMappings:I

    .line 185
    iput p4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->maxDistance:I

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    .line 189
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "VLSNIndex"

    const-string v2, "VLSN Index related stats."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v0, "statistics":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_BUCKETS_CREATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->nBucketsCreated:Lcom/sleepycat/je/utilint/LongStat;

    .line 196
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->initEmpty()V

    .line 197
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;IIILcom/sleepycat/je/utilint/StatGroup;)V
    .locals 9
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "mappingDbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "stride"    # I
    .param p4, "maxMappings"    # I
    .param p5, "maxDistance"    # I
    .param p6, "statistics"    # Lcom/sleepycat/je/utilint/StatGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 65
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 113
    iput p3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->stride:I

    .line 114
    iput p4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->maxMappings:I

    .line 115
    iput p5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->maxDistance:I

    .line 116
    iput-object p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 117
    new-instance v0, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_BUCKETS_CREATED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, p6, v1}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->nBucketsCreated:Lcom/sleepycat/je/utilint/LongStat;

    .line 120
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    .line 127
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v0

    .line 129
    .local v0, "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    const-string v2, "VLSNIndex"

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/cleaner/FileProtector;->protectFileRange(Ljava/lang/String;JZZ)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    .line 133
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/FileProtector;->setVLSNIndexProtectedFileRange(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;)V

    .line 136
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 137
    .local v1, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 138
    .local v2, "data":Lcom/sleepycat/je/DatabaseEntry;
    const-wide/16 v3, -0x1

    invoke-static {v3, v4, v1}, Lcom/sleepycat/bind/tuple/LongBinding;->longToEntry(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 140
    const/4 v3, 0x0

    .line 141
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    const/4 v4, 0x0

    .line 143
    .local v4, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v5, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v6

    move-object v4, v6

    .line 144
    sget-object v6, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    invoke-static {p2, v4, v6}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v6

    move-object v3, v6

    .line 147
    invoke-static {v3}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/dbi/CursorImpl;->setAllowEviction(Z)V

    .line 149
    sget-object v6, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v3, v1, v2, v6}, Lcom/sleepycat/je/Cursor;->getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v6

    .line 151
    .local v6, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v7, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v6, v7, :cond_0

    .line 153
    new-instance v7, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;

    invoke-direct {v7}, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;-><init>()V

    .line 154
    .local v7, "rangeBinding":Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;
    invoke-virtual {v7, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    iput-object v8, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 155
    iget-object v8, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v8

    iput-object v8, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 156
    .end local v7    # "rangeBinding":Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;
    goto :goto_0

    :cond_0
    sget-object v7, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    if-ne v6, v7, :cond_3

    .line 158
    sget-object v7, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->EMPTY:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    iput-object v7, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v6    # "status":Lcom/sleepycat/je/OperationStatus;
    :goto_0
    if-eqz v3, :cond_1

    .line 165
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 168
    :cond_1
    if-eqz v4, :cond_2

    .line 169
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 172
    :cond_2
    return-void

    .line 160
    .restart local v6    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VLSNTracker init: status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 161
    invoke-static {v7}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v7

    .end local v0    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "mappingDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p3    # "stride":I
    .end local p4    # "maxMappings":I
    .end local p5    # "maxDistance":I
    .end local p6    # "statistics":Lcom/sleepycat/je/utilint/StatGroup;
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .end local v6    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v0    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .restart local v1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "mappingDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p3    # "stride":I
    .restart local p4    # "maxMappings":I
    .restart local p5    # "maxDistance":I
    .restart local p6    # "statistics":Lcom/sleepycat/je/utilint/StatGroup;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_4

    .line 165
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 168
    :cond_4
    if-eqz v4, :cond_5

    .line 169
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    :cond_5
    throw v6
.end method

.method private addEndMapping(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 8
    .param p1, "lastVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "lastLsn"    # J

    .line 969
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-nez v0, :cond_1

    .line 973
    new-instance v0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 974
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v2

    iget v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->stride:I

    iget v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->maxMappings:I

    iget v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->maxDistance:I

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;-><init>(JIIILcom/sleepycat/je/utilint/VLSN;)V

    .line 976
    .local v0, "addBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->put(Lcom/sleepycat/je/utilint/VLSN;J)Z

    .line 977
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->nBucketsCreated:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 978
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    iput-object p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 982
    :cond_0
    return-void

    .line 969
    .end local v0    # "addBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastVLSN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastLsn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " range="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private checkForGhostBucket(Ljava/util/SortedMap;J)V
    .locals 19
    .param p2, "deleteFileNum"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/rep/vlsn/VLSNBucket;",
            ">;J)V"
        }
    .end annotation

    .line 777
    .local p1, "buckets":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 778
    .local v2, "firstKey":Ljava/lang/Long;
    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 779
    .local v3, "firstBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    iget-object v4, v0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    .line 780
    .local v4, "firstRangeVLSN":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v11

    .line 781
    .local v11, "firstBucketVLSN":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v11, v4}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 782
    iget-object v5, v0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 783
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v5

    const/4 v6, 0x1

    move-wide/from16 v12, p2

    invoke-virtual {v5, v12, v13, v6}, Lcom/sleepycat/je/log/FileManager;->getFollowingFileNum(JZ)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 785
    .local v14, "nextFile":J
    invoke-virtual {v3, v11}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v16

    .line 786
    .local v16, "lastPossibleLsn":J
    new-instance v18, Lcom/sleepycat/je/rep/vlsn/GhostBucket;

    const/4 v5, 0x0

    .line 787
    invoke-static {v14, v15, v5}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v7

    move-object/from16 v5, v18

    move-object v6, v4

    move-wide/from16 v9, v16

    invoke-direct/range {v5 .. v10}, Lcom/sleepycat/je/rep/vlsn/GhostBucket;-><init>(Lcom/sleepycat/je/utilint/VLSN;JJ)V

    .line 789
    .local v5, "placeholder":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 781
    .end local v5    # "placeholder":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v14    # "nextFile":J
    .end local v16    # "lastPossibleLsn":J
    :cond_0
    move-wide/from16 v12, p2

    .line 791
    :goto_0
    return-void
.end method

.method private getPreserveVLSN()J
    .locals 6

    .line 607
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 608
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastSync()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 609
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 610
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/rep/impl/RepParams;->MIN_VLSN_INDEX_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 607
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private updateRange(Lcom/sleepycat/je/utilint/VLSN;B)V
    .locals 2
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "entryTypeNum"    # B

    .line 361
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 362
    .local v0, "currentRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getUpdateForNewMapping(Lcom/sleepycat/je/utilint/VLSN;B)Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 363
    return-void
.end method

.method private validateBeforeWrite(Lcom/sleepycat/je/rep/vlsn/VLSNBucket;Lcom/sleepycat/je/rep/vlsn/VLSNRange;Lcom/sleepycat/je/utilint/VLSN;Z)V
    .locals 4
    .param p1, "target"    # Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .param p2, "flushRange"    # Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .param p3, "currentLastVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p4, "isLastBucket"    # Z

    .line 460
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p3, v0}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    const-string v1, " target="

    if-nez v0, :cond_1

    .line 461
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target bucket overlaps previous bucket. currentLastVLSN= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 468
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 475
    if-eqz p4, :cond_3

    .line 476
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end of last bucket should match end of range. range= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 482
    :cond_3
    :goto_1
    return-void

    .line 469
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target bucket exceeds flush range. range= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method static verifyBucketBoundaries(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sleepycat/je/utilint/VLSN;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sleepycat/je/utilint/VLSN;",
            ">;)Z"
        }
    .end annotation

    .line 1152
    .local p0, "firstVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    .local p1, "lastVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1153
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/utilint/VLSN;

    .line 1154
    .local v1, "first":Lcom/sleepycat/je/utilint/VLSN;
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/VLSN;

    .line 1155
    .local v2, "prevLast":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    if-gez v3, :cond_0

    .line 1156
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Boundary problem: bucket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " first "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " follows bucket.last "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1159
    const/4 v3, 0x0

    return v3

    .line 1152
    .end local v1    # "first":Lcom/sleepycat/je/utilint/VLSN;
    .end local v2    # "prevLast":Lcom/sleepycat/je/utilint/VLSN;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1162
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method append(Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;)V
    .locals 3
    .param p1, "recoveryTracker"    # Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;

    .line 1061
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 1063
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->getFirstTracked()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected this tracker to precede recovery tracker. This tracker= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recoveryTracker = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1066
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 1073
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    iget-object v1, p1, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 1074
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 1075
    .local v0, "currentRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getUpdate(Lcom/sleepycat/je/rep/vlsn/VLSNRange;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 1076
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1077
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 1078
    .local v1, "firstBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1080
    .end local v1    # "firstBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_2
    return-void
.end method

.method close()V
    .locals 2

    .line 1186
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v0

    .line 1188
    .local v0, "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/FileProtector;->removeFileProtection(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V

    .line 1189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/FileProtector;->setVLSNIndexProtectedFileRange(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;)V

    .line 1191
    .end local v0    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_0
    return-void
.end method

.method declared-synchronized ensureRangeEndIsMapped(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 3
    .param p1, "lastVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "lastLsn"    # J

    monitor-enter p0

    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-gez v0, :cond_2

    .line 937
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_0

    .line 952
    monitor-exit p0

    return-void

    .line 945
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected this tracker to cover vlsn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after truncateFromTail. LastOnDiskVLSN= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tracker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 946
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 960
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNTracker;
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->addEndMapping(Lcom/sleepycat/je/utilint/VLSN;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 962
    :cond_2
    monitor-exit p0

    return-void

    .line 929
    .end local p1    # "lastVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "lastLsn":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized flushToDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)V
    .locals 8
    .param p1, "mappingDbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "txn"    # Lcom/sleepycat/je/txn/Txn;

    monitor-enter p0

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 376
    .local v0, "flushRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 383
    iget-boolean v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->rangeTruncated:Z

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->writeToDatabase(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 386
    iput-boolean v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->rangeTruncated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNTracker;
    :cond_0
    monitor-exit p0

    return-void

    .line 400
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 401
    .local v1, "lastBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->close()V

    .line 412
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 413
    .local v3, "currentLastVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 415
    .local v5, "key":Ljava/lang/Long;
    iget-object v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v6, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 418
    .local v6, "target":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    if-ne v6, v1, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    invoke-direct {p0, v6, v0, v3, v7}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->validateBeforeWrite(Lcom/sleepycat/je/rep/vlsn/VLSNBucket;Lcom/sleepycat/je/rep/vlsn/VLSNRange;Lcom/sleepycat/je/utilint/VLSN;Z)V

    .line 422
    iget-object v7, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v6, v7, p1, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->writeToDatabase(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)V

    .line 423
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    move-object v3, v7

    .line 424
    .end local v5    # "key":Ljava/lang/Long;
    .end local v6    # "target":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    goto :goto_0

    .line 426
    :cond_3
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0, v4, p1, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->writeToDatabase(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 428
    iput-boolean v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->rangeTruncated:Z

    .line 448
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->clear()V

    .line 449
    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    .line 373
    .end local v0    # "flushRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v1    # "lastBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v3    # "currentLastVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local p1    # "mappingDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "txn":Lcom/sleepycat/je/txn/Txn;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getFirstTracked()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method declared-synchronized getGTEBucket(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .locals 8
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_0

    .line 212
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 215
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 216
    .local v0, "pivot":Ljava/lang/Long;
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 217
    .local v1, "head":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    const/4 v2, 0x0

    .line 218
    .local v2, "prevBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 219
    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-object v2, v3

    .line 220
    invoke-virtual {v2, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 221
    monitor-exit p0

    return-object v2

    .line 229
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNTracker;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    .line 230
    .local v3, "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 231
    invoke-interface {v3}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 232
    .local v4, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v4, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->follows(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VLSN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " got wrong bucket "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    :cond_3
    :goto_0
    monitor-exit p0

    return-object v4

    .line 237
    .end local v4    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_4
    :try_start_3
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VLSN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " should be held within this tracker. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " prevBucket="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 238
    invoke-static {v4, v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    .end local v0    # "pivot":Ljava/lang/Long;
    .end local v1    # "head":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    .end local v2    # "prevBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v3    # "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getLTEBucket(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .locals 7
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 251
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 256
    .local v0, "pivot":Ljava/lang/Long;
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 257
    .local v1, "head":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 258
    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 265
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNTracker;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    .line 266
    .local v2, "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    const/4 v3, 0x0

    .line 267
    .local v3, "nextBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 268
    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-object v3, v4

    .line 270
    :cond_2
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VLSN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " should be held within this tracker. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nextBucket="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    invoke-static {v4, v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    .end local v0    # "pivot":Ljava/lang/Long;
    .end local v1    # "head":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    .end local v2    # "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    .end local v3    # "nextBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 249
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getLastOnDisk()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method getProtectedRangeStartFile()J
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->getRangeStart()J

    move-result-wide v0

    return-wide v0
.end method

.method getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    return-object v0
.end method

.method initEmpty()V
    .locals 1

    .line 200
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    .line 201
    sget-object v0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->EMPTY:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 202
    return-void
.end method

.method initProtectedFileRange(J)V
    .locals 1
    .param p1, "firstFile"    # J

    .line 489
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->advanceRange(J)V

    .line 490
    return-void
.end method

.method isFlushedToDisk()Z
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    return v0
.end method

.method merge(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;)V
    .locals 7
    .param p1, "prunedLastOnDiskVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "recoveryTracker"    # Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;

    .line 1009
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 1010
    .local v0, "oldRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    iget-object v1, p2, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->merge(Lcom/sleepycat/je/rep/vlsn/VLSNRange;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 1011
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    .line 1013
    .local v1, "recoveryFirst":Lcom/sleepycat/je/utilint/VLSN;
    iput-object p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1023
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1025
    iget-object v2, p2, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->bucketCache:Ljava/util/SortedMap;

    iput-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    goto :goto_0

    .line 1027
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getGTEBucket(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v2

    .line 1028
    .local v2, "targetBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1031
    .local v3, "targetKey":Ljava/lang/Long;
    new-instance v4, Ljava/util/TreeMap;

    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    .line 1032
    invoke-interface {v5, v3}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    .line 1038
    .local v4, "newCache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    const-wide/16 v5, -0x1

    invoke-virtual {v2, v1, v5, v6}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->removeFromTail(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 1039
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->empty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1040
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    :cond_1
    iget-object v5, p2, Lcom/sleepycat/je/rep/vlsn/VLSNRecoveryTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v4, v5}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 1045
    iput-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    .line 1048
    .end local v2    # "targetBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v3    # "targetKey":Ljava/lang/Long;
    .end local v4    # "newCache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1049
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 1050
    .local v2, "firstBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1052
    .end local v2    # "firstBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_2
    return-void
.end method

.method declared-synchronized protectRangeHead(Ljava/lang/String;)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    .locals 7
    .param p1, "lockerName"    # Ljava/lang/String;

    monitor-enter p0

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v1

    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    .line 503
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->getRangeStart()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 502
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/cleaner/FileProtector;->protectFileRange(Ljava/lang/String;JZZ)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 501
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNTracker;
    .end local p1    # "lockerName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setLastOnDiskVLSN(Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 0
    .param p1, "lastOnDisk"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 1174
    iput-object p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1089
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1090
    const-string v1, " firstTracked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1091
    const-string v1, " lastOnDiskVLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1093
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 1094
    .local v2, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1096
    .end local v2    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    goto :goto_0

    .line 1097
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method declared-synchronized track(Lcom/sleepycat/je/utilint/VLSN;JB)V
    .locals 9
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "lsn"    # J
    .param p4, "entryTypeNum"    # B

    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-gez v0, :cond_0

    .line 293
    invoke-direct {p0, p1, p4}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->updateRange(Lcom/sleepycat/je/utilint/VLSN;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    .line 297
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNTracker;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 299
    new-instance v0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v2

    iget v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->stride:I

    iget v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->maxMappings:I

    iget v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->maxDistance:I

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;-><init>(JIIILcom/sleepycat/je/utilint/VLSN;)V

    .line 301
    .local v0, "currentBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->nBucketsCreated:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 303
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 307
    .end local v0    # "currentBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 316
    .restart local v0    # "currentBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->follows(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    invoke-direct {p0, p1, p4}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->updateRange(Lcom/sleepycat/je/utilint/VLSN;B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 321
    :cond_2
    :try_start_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->put(Lcom/sleepycat/je/utilint/VLSN;J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 327
    new-instance v1, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 328
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v3

    iget v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->stride:I

    iget v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->maxMappings:I

    iget v7, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->maxDistance:I

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;-><init>(JIIILcom/sleepycat/je/utilint/VLSN;)V

    move-object v0, v1

    .line 330
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->nBucketsCreated:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 331
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->put(Lcom/sleepycat/je/utilint/VLSN;J)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 334
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t put VLSN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-static {v1, v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 340
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p4}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->updateRange(Lcom/sleepycat/je/utilint/VLSN;B)V

    .line 347
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    if-ne v1, v2, :cond_5

    .line 348
    iput-object p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    :cond_5
    monitor-exit p0

    return-void

    .line 283
    .end local v0    # "currentBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "lsn":J
    .end local p4    # "entryTypeNum":B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized truncateFromHead(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/rep/vlsn/LogItemCache;)Z
    .locals 7
    .param p1, "deleteEnd"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "deleteFileNum"    # J
    .param p4, "logItemCache"    # Lcom/sleepycat/je/rep/vlsn/LogItemCache;

    monitor-enter p0

    .line 626
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 627
    monitor-exit p0

    return v1

    .line 637
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 639
    .local v0, "oldRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v2, :cond_1

    .line 641
    monitor-exit p0

    return v1

    .line 644
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 650
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastSync()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 651
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastSync()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 653
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t log clean away last matchpoint. DeleteEnd= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastSync="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 655
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastSync()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 653
    invoke-static {v1, v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 667
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNTracker;
    :cond_3
    :goto_0
    if-eqz p4, :cond_4

    .line 668
    invoke-virtual {p4}, Lcom/sleepycat/je/rep/vlsn/LogItemCache;->clear()V

    .line 677
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->advanceRange(J)V

    .line 687
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->shortenFromHead(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 693
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->rangeTruncated:Z

    .line 699
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 715
    .local v2, "afterDelete":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v4, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 716
    invoke-virtual {v3, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    if-ltz v3, :cond_7

    .line 722
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, p1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 723
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    if-lez v3, :cond_5

    .line 724
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-direct {p0, v3, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->checkForGhostBucket(Ljava/util/SortedMap;J)V

    .line 726
    :cond_5
    sget-object v3, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 728
    :cond_6
    monitor-exit p0

    return v1

    .line 731
    :cond_7
    :try_start_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v4, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 733
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 735
    sget-object v3, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 736
    monitor-exit p0

    return v1

    .line 739
    :cond_8
    :try_start_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    if-lez v3, :cond_9

    .line 743
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-direct {p0, v3, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->checkForGhostBucket(Ljava/util/SortedMap;J)V

    .line 744
    sget-object v3, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 745
    monitor-exit p0

    return v1

    .line 751
    :cond_9
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getLTEBucket(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v3

    .line 752
    .local v3, "owningBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 759
    .local v4, "retainBucketKey":Ljava/lang/Long;
    :try_start_6
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v5, v4}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v5

    .line 760
    .local v5, "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    invoke-direct {p0, v5, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->checkForGhostBucket(Ljava/util/SortedMap;J)V

    .line 761
    iput-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 765
    goto :goto_1

    .line 762
    .end local v5    # "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    :catch_0
    move-exception v5

    .line 763
    .local v5, "e":Ljava/util/NoSuchElementException;
    :try_start_7
    sget-object v6, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 764
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    iput-object v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    .line 767
    .end local v5    # "e":Ljava/util/NoSuchElementException;
    :goto_1
    sget-object v5, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->lastOnDiskVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 768
    monitor-exit p0

    return v1

    .line 731
    .end local v3    # "owningBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v4    # "retainBucketKey":Ljava/lang/Long;
    :cond_a
    :try_start_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 645
    .end local v2    # "afterDelete":Lcom/sleepycat/je/utilint/VLSN;
    :cond_b
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t expect current range to be empty.  End of delete range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 625
    .end local v0    # "oldRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local p1    # "deleteEnd":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "deleteFileNum":J
    .end local p4    # "logItemCache":Lcom/sleepycat/je/rep/vlsn/LogItemCache;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized truncateFromTail(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 8
    .param p1, "deleteStart"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "prevLsn"    # J

    monitor-enter p0

    .line 832
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 833
    .local v0, "oldRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->shortenFromEnd(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 839
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->rangeTruncated:Z

    .line 841
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v3, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 843
    monitor-exit p0

    return-void

    .line 846
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 852
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->clear()V

    .line 853
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    monitor-exit p0

    return-void

    .line 863
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNTracker;
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getGTEBucket(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v2

    .line 864
    .local v2, "targetBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 867
    .local v3, "targetKey":Ljava/lang/Long;
    new-instance v4, Ljava/util/TreeMap;

    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    .line 868
    invoke-interface {v5, v3}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    .line 874
    .local v4, "newCache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    invoke-virtual {v2, p1, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->removeFromTail(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 875
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->empty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 876
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    :cond_2
    iput-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    .line 902
    invoke-interface {v4}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 903
    const/4 v1, 0x1

    .local v1, "needEndMapping":Z
    goto :goto_0

    .line 905
    .end local v1    # "needEndMapping":Z
    :cond_3
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v5}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 906
    .local v5, "lastBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    nop

    .line 907
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v6

    if-gez v6, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 910
    .end local v5    # "lastBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .restart local v1    # "needEndMapping":Z
    :goto_0
    if-eqz v1, :cond_5

    .line 911
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->addEndMapping(Lcom/sleepycat/je/utilint/VLSN;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 913
    :cond_5
    monitor-exit p0

    return-void

    .line 831
    .end local v0    # "oldRange":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v1    # "needEndMapping":Z
    .end local v2    # "targetBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .end local v3    # "targetKey":Ljava/lang/Long;
    .end local v4    # "newCache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;>;"
    .end local p1    # "deleteStart":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "prevLsn":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized tryTruncateFromHead(JLcom/sleepycat/je/rep/vlsn/LogItemCache;)Lcom/sleepycat/je/utilint/Pair;
    .locals 7
    .param p1, "bytesNeeded"    # J
    .param p3, "logItemCache"    # Lcom/sleepycat/je/rep/vlsn/LogItemCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sleepycat/je/rep/vlsn/LogItemCache;",
            ")",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Lcom/sleepycat/je/utilint/VLSN;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 530
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getPreserveVLSN()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    .local v0, "preserveVlsn":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 533
    monitor-exit p0

    return-object v3

    .line 537
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 538
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v2

    new-instance v4, Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v4, v0, v1}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    invoke-virtual {v2, p1, p2, v4}, Lcom/sleepycat/je/cleaner/FileProtector;->checkVLSNIndexTruncation(JLcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    .local v2, "truncateInfo":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/Long;>;"
    if-nez v2, :cond_1

    .line 542
    monitor-exit p0

    return-object v3

    .line 554
    :cond_1
    nop

    .line 555
    :try_start_2
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 554
    invoke-virtual {p0, v4, v5, v6, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->truncateFromHead(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/rep/vlsn/LogItemCache;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    move-object v3, v2

    :cond_2
    monitor-exit p0

    return-object v3

    .line 529
    .end local v0    # "preserveVlsn":J
    .end local v2    # "truncateInfo":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/Long;>;"
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNTracker;
    .end local p1    # "bytesNeeded":J
    .end local p3    # "logItemCache":Lcom/sleepycat/je/rep/vlsn/LogItemCache;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized tryTruncateFromHead(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/rep/vlsn/LogItemCache;)Z
    .locals 4
    .param p1, "deleteEnd"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "deleteFileNum"    # J
    .param p4, "logItemCache"    # Lcom/sleepycat/je/rep/vlsn/LogItemCache;

    monitor-enter p0

    .line 580
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->getPreserveVLSN()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 581
    monitor-exit p0

    return v1

    .line 585
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v0

    .line 586
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 585
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/cleaner/FileProtector;->checkVLSNIndexTruncation(Ljava/lang/Long;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 587
    monitor-exit p0

    return v1

    .line 590
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->truncateFromHead(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/rep/vlsn/LogItemCache;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 579
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNTracker;
    .end local p1    # "deleteEnd":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "deleteFileNum":J
    .end local p4    # "logItemCache":Lcom/sleepycat/je/rep/vlsn/LogItemCache;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized verify(Z)Z
    .locals 7
    .param p1, "verbose"    # Z

    monitor-enter p0

    .line 1105
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->verify(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1106
    monitor-exit p0

    return v1

    .line 1110
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    .local v0, "firstVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    .local v2, "lastVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->bucketCache:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 1114
    .local v4, "b":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    nop

    .end local v4    # "b":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    goto :goto_0

    .line 1118
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNTracker;
    :cond_1
    invoke-static {v0, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->verifyBucketBoundaries(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 1119
    monitor-exit p0

    return v1

    .line 1122
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_6

    .line 1123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/VLSN;

    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1124
    if-eqz p1, :cond_3

    .line 1125
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "firstBucketVLSN = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " should equal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->firstTrackedVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1125
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1129
    :cond_3
    monitor-exit p0

    return v1

    .line 1132
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/VLSN;

    .line 1133
    .local v3, "lastBucketVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1134
    if-eqz p1, :cond_5

    .line 1135
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastBucketVLSN = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " should equal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNTracker;->range:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 1136
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1135
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1138
    :cond_5
    monitor-exit p0

    return v1

    .line 1142
    .end local v3    # "lastBucketVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :cond_6
    monitor-exit p0

    return v4

    .line 1104
    .end local v0    # "firstVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    .end local v2    # "lastVLSN":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sleepycat/je/utilint/VLSN;>;"
    .end local p1    # "verbose":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
