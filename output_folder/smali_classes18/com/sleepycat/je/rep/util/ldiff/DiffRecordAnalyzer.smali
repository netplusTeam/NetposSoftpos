.class public Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;
.super Ljava/lang/Object;
.source "DiffRecordAnalyzer.java"


# static fields
.field public static final DATABASE_END:J = -0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAnalysis(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;Z)V
    .locals 10
    .param p0, "localDb"    # Lcom/sleepycat/je/Database;
    .param p1, "remoteDb"    # Lcom/sleepycat/je/Database;
    .param p2, "tracker"    # Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;
    .param p3, "doPrint"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->getDiffRegions()Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;>;"
    const/4 v1, 0x0

    .line 107
    .local v1, "localCursor":Lcom/sleepycat/je/Cursor;
    const/4 v2, 0x0

    .line 109
    .local v2, "remoteCursor":Lcom/sleepycat/je/Cursor;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v3}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v4

    move-object v1, v4

    .line 110
    invoke-virtual {p1, v3, v3}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;

    .line 113
    .local v4, "region":Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->isLocalAdditional()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    invoke-static {v1, v4, p3}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->printLocalAdditional(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;Z)V

    .line 115
    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->isRemoteAdditional()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    nop

    .line 120
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getRemoteBeginKey()[B

    move-result-object v5

    .line 121
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getRemoteBeginData()[B

    move-result-object v6

    .line 122
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getRemoteDiffSize()J

    move-result-wide v7

    .line 120
    invoke-static {v2, v5, v6, v7, v8}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->getDiffArea(Lcom/sleepycat/je/Cursor;[B[BJ)Ljava/util/HashSet;

    move-result-object v5

    .line 123
    .local v5, "records":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    if-eqz p3, :cond_1

    .line 124
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->printAdditional(Ljava/util/HashSet;Z)V

    .line 126
    :cond_1
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 127
    goto :goto_0

    .line 130
    .end local v5    # "records":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    :cond_2
    nop

    .line 131
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getLocalBeginKey()[B

    move-result-object v5

    .line 132
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getLocalBeginData()[B

    move-result-object v6

    .line 133
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getLocalDiffSize()J

    move-result-wide v7

    .line 131
    invoke-static {v1, v5, v6, v7, v8}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->getDiffArea(Lcom/sleepycat/je/Cursor;[B[BJ)Ljava/util/HashSet;

    move-result-object v5

    .line 134
    .local v5, "localRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    nop

    .line 135
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getRemoteBeginKey()[B

    move-result-object v6

    .line 136
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getRemoteBeginData()[B

    move-result-object v7

    .line 137
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getRemoteDiffSize()J

    move-result-wide v8

    .line 135
    invoke-static {v2, v6, v7, v8, v9}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->getDiffArea(Lcom/sleepycat/je/Cursor;[B[BJ)Ljava/util/HashSet;

    move-result-object v6

    .line 138
    .local v6, "remoteRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    if-eqz p3, :cond_3

    .line 139
    invoke-static {v5, v6}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->printDiffs(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 141
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 142
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v4    # "region":Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;
    .end local v5    # "localRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    .end local v6    # "remoteRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    goto :goto_0

    .line 145
    :cond_4
    if-eqz v1, :cond_5

    .line 146
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 148
    :cond_5
    if-eqz v2, :cond_6

    .line 149
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    .line 152
    :cond_6
    return-void

    .line 145
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_7

    .line 146
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 148
    :cond_7
    if-eqz v2, :cond_8

    .line 149
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    :cond_8
    throw v3
.end method

.method public static doAnalysis(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/rep/util/ldiff/Protocol;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;Z)V
    .locals 8
    .param p0, "localDb"    # Lcom/sleepycat/je/Database;
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p3, "tracker"    # Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;
    .param p4, "doPrint"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-virtual {p3}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->getDiffRegions()Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;>;"
    const/4 v1, 0x0

    .line 61
    .local v1, "localCursor":Lcom/sleepycat/je/Cursor;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v2}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;

    .line 64
    .local v3, "region":Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->isLocalAdditional()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-static {v1, v3, p4}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->printLocalAdditional(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;Z)V

    .line 66
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->isRemoteAdditional()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    nop

    .line 71
    invoke-static {p1, p2, v3}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->getDiffArea(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;)Ljava/util/HashSet;

    move-result-object v4

    .line 72
    .local v4, "records":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    if-eqz p4, :cond_1

    .line 73
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->printAdditional(Ljava/util/HashSet;Z)V

    .line 75
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 76
    goto :goto_0

    .line 79
    .end local v4    # "records":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    :cond_2
    nop

    .line 80
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getLocalBeginKey()[B

    move-result-object v4

    .line 81
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getLocalBeginData()[B

    move-result-object v5

    .line 82
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getLocalDiffSize()J

    move-result-wide v6

    .line 80
    invoke-static {v1, v4, v5, v6, v7}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->getDiffArea(Lcom/sleepycat/je/Cursor;[B[BJ)Ljava/util/HashSet;

    move-result-object v4

    .line 83
    .local v4, "localRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    nop

    .line 84
    invoke-static {p1, p2, v3}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->getDiffArea(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;)Ljava/util/HashSet;

    move-result-object v5

    .line 85
    .local v5, "remoteRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    if-eqz p4, :cond_3

    .line 86
    invoke-static {v4, v5}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->printDiffs(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 88
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 89
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v3    # "region":Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;
    .end local v4    # "localRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    .end local v5    # "remoteRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    goto :goto_0

    .line 92
    :cond_4
    if-eqz v1, :cond_5

    .line 93
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 96
    :cond_5
    return-void

    .line 92
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_6

    .line 93
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public static getDiffArea(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;)Ljava/util/HashSet;
    .locals 4
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "request"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Cursor;",
            "Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;",
            ")",
            "Ljava/util/HashSet<",
            "Lcom/sleepycat/je/rep/util/ldiff/Record;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->getKey()[B

    move-result-object v0

    .line 246
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;->getDiffSize()J

    move-result-wide v2

    .line 245
    invoke-static {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->getDiffArea(Lcom/sleepycat/je/Cursor;[B[BJ)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method private static getDiffArea(Lcom/sleepycat/je/Cursor;[B[BJ)Ljava/util/HashSet;
    .locals 15
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "beginKey"    # [B
    .param p2, "beginData"    # [B
    .param p3, "diffSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Cursor;",
            "[B[BJ)",
            "Ljava/util/HashSet<",
            "Lcom/sleepycat/je/rep/util/ldiff/Record;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    move-object v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 216
    .local v1, "records":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    nop

    .line 217
    invoke-virtual {p0}, Lcom/sleepycat/je/Cursor;->getDatabase()Lcom/sleepycat/je/Database;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v2

    .line 219
    .local v2, "logManager":Lcom/sleepycat/je/log/LogManager;
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 220
    .local v3, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    move-object/from16 v6, p2

    invoke-direct {v5, v6}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 221
    .local v5, "data":Lcom/sleepycat/je/DatabaseEntry;
    const-wide/16 v7, -0x1

    cmp-long v7, p3, v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 222
    .local v7, "scanToEnd":Z
    :goto_0
    const-wide/16 v8, 0x1

    .line 224
    .local v8, "count":J
    sget-object v10, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    .line 225
    invoke-virtual {p0, v3, v5, v10}, Lcom/sleepycat/je/Cursor;->getSearchBoth(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v10

    .line 226
    .local v10, "status":Lcom/sleepycat/je/OperationStatus;
    :goto_1
    sget-object v11, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v10, v11, :cond_2

    .line 229
    if-nez v7, :cond_1

    cmp-long v11, v8, p3

    if-lez v11, :cond_1

    .line 230
    goto :goto_2

    .line 232
    :cond_1
    new-instance v11, Lcom/sleepycat/je/rep/util/ldiff/Record;

    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v12

    invoke-virtual {v5}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v13

    .line 233
    invoke-static {p0, v2}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->getVLSN(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/log/LogManager;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v14

    invoke-direct {v11, v12, v13, v14}, Lcom/sleepycat/je/rep/util/ldiff/Record;-><init>([B[BLcom/sleepycat/je/utilint/VLSN;)V

    .line 232
    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    const-wide/16 v11, 0x1

    add-long/2addr v8, v11

    .line 227
    sget-object v11, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {p0, v3, v5, v11}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v10

    goto :goto_1

    .line 237
    .end local v10    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_2
    :goto_2
    return-object v1
.end method

.method private static getDiffArea(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;)Ljava/util/HashSet;
    .locals 7
    .param p0, "protocol"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p2, "region"    # Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/util/ldiff/Protocol;",
            "Lcom/sleepycat/je/rep/net/DataChannel;",
            "Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;",
            ")",
            "Ljava/util/HashSet<",
            "Lcom/sleepycat/je/rep/util/ldiff/Record;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;-><init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;)V

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    .line 259
    .local v0, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->ERROR:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-eq v1, v2, :cond_2

    .line 264
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DIFF_AREA_START:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v1, v2, :cond_1

    .line 270
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 273
    .local v1, "records":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    :goto_0
    :try_start_0
    const-class v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;

    .line 274
    invoke-virtual {p0, p1, v2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;

    .line 275
    .local v2, "record":Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;
    new-instance v3, Lcom/sleepycat/je/rep/util/ldiff/Record;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->getKey()[B

    move-result-object v4

    .line 276
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->getData()[B

    move-result-object v5

    .line 277
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sleepycat/je/rep/util/ldiff/Record;-><init>([B[BLcom/sleepycat/je/utilint/VLSN;)V

    .line 275
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    nop

    .end local v2    # "record":Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;
    goto :goto_0

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "pe":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->getUnexpectedMessage()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DIFF_AREA_END:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v3, v4, :cond_0

    .line 283
    nop

    .line 287
    .end local v2    # "pe":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    return-object v1

    .line 281
    .restart local v2    # "pe":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    :cond_0
    throw v2

    .line 265
    .end local v1    # "records":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    .end local v2    # "pe":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    :cond_1
    new-instance v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;

    const-class v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DiffAreaStart;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/lang/Class;)V

    throw v1

    .line 260
    :cond_2
    new-instance v1, Lcom/sleepycat/je/rep/util/ldiff/LDiffRecordRequestException;

    move-object v2, v0

    check-cast v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol$Error;

    .line 261
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$Error;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/util/ldiff/LDiffRecordRequestException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getVLSN(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/log/LogManager;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 5
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "logManager"    # Lcom/sleepycat/je/log/LogManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 322
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v0

    .line 323
    .local v0, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 324
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentLsn()J

    move-result-wide v1

    .line 325
    .local v1, "lsn":J
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 327
    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/je/log/LogManager;->getLogEntryAllowInvisible(J)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v3

    .line 329
    .local v3, "entry":Lcom/sleepycat/je/log/WholeEntry;
    invoke-virtual {v3}, Lcom/sleepycat/je/log/WholeEntry;->getHeader()Lcom/sleepycat/je/log/LogEntryHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    .line 330
    .local v4, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    if-nez v4, :cond_0

    .line 331
    sget-object v4, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 334
    :cond_0
    return-object v4
.end method

.method private static printAdditional(Ljava/util/HashSet;Z)V
    .locals 5
    .param p1, "remote"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/sleepycat/je/rep/util/ldiff/Record;",
            ">;Z)V"
        }
    .end annotation

    .line 172
    .local p0, "diffRecords":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    if-eqz p1, :cond_0

    const-string v0, "Remote"

    goto :goto_0

    :cond_0
    const-string v0, "Local"

    .line 173
    .local v0, "side":Ljava/lang/String;
    :goto_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "************************************************"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " database has additional records, the additional range as following:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    if-eqz p1, :cond_1

    const-string/jumbo v1, "remote"

    goto :goto_1

    :cond_1
    const-string v1, "local"

    :goto_1
    move-object v0, v1

    .line 177
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/util/ldiff/Record;

    .line 178
    .local v3, "record":Lcom/sleepycat/je/rep/util/ldiff/Record;
    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->printRecord(Lcom/sleepycat/je/rep/util/ldiff/Record;Ljava/lang/String;Z)V

    .line 179
    .end local v3    # "record":Lcom/sleepycat/je/rep/util/ldiff/Record;
    goto :goto_2

    .line 180
    :cond_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method private static printDiffs(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/sleepycat/je/rep/util/ldiff/Record;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/sleepycat/je/rep/util/ldiff/Record;",
            ">;)V"
        }
    .end annotation

    .line 293
    .local p0, "localDiffs":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    .local p1, "remoteDiffs":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "************************************************"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Different records between local and remote database in a specific different area."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/util/ldiff/Record;

    .line 297
    .local v2, "record":Lcom/sleepycat/je/rep/util/ldiff/Record;
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    const-string/jumbo v4, "remote"

    invoke-static {v2, v4, v3}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->printRecord(Lcom/sleepycat/je/rep/util/ldiff/Record;Ljava/lang/String;Z)V

    .line 300
    .end local v2    # "record":Lcom/sleepycat/je/rep/util/ldiff/Record;
    :cond_0
    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/util/ldiff/Record;

    .line 303
    .restart local v2    # "record":Lcom/sleepycat/je/rep/util/ldiff/Record;
    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 304
    const-string v4, "local"

    invoke-static {v2, v4, v3}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->printRecord(Lcom/sleepycat/je/rep/util/ldiff/Record;Ljava/lang/String;Z)V

    .line 306
    .end local v2    # "record":Lcom/sleepycat/je/rep/util/ldiff/Record;
    :cond_2
    goto :goto_1

    .line 307
    :cond_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method private static printLocalAdditional(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;Z)V
    .locals 4
    .param p0, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p1, "region"    # Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;
    .param p2, "doPrint"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    nop

    .line 161
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getLocalBeginKey()[B

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getLocalBeginData()[B

    move-result-object v1

    .line 163
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->getLocalDiffSize()J

    move-result-wide v2

    .line 160
    invoke-static {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->getDiffArea(Lcom/sleepycat/je/Cursor;[B[BJ)Ljava/util/HashSet;

    move-result-object v0

    .line 164
    .local v0, "records":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    if-eqz p2, :cond_0

    .line 165
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->printAdditional(Ljava/util/HashSet;Z)V

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 168
    return-void
.end method

.method private static printRecord(Lcom/sleepycat/je/rep/util/ldiff/Record;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "record"    # Lcom/sleepycat/je/rep/util/ldiff/Record;
    .param p1, "side"    # Ljava/lang/String;
    .param p2, "different"    # Z

    .line 190
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Record with Key: ["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/ldiff/Record;->getKey()[B

    move-result-object v0

    .line 192
    .local v0, "keys":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 193
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(I)V

    .line 194
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 195
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 192
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/ldiff/Record;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 200
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", VLSN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/ldiff/Record;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 202
    :cond_2
    if-eqz p2, :cond_3

    .line 203
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " does not exist on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 205
    :cond_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 206
    return-void
.end method
