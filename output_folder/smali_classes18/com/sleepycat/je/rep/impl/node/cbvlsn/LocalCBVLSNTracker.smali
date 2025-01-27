.class public Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;
.super Ljava/lang/Object;
.source "LocalCBVLSNTracker.java"


# instance fields
.field private allowUpdate:Z

.field private currentFile:J

.field private currentLocalCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final defunct:Z

.field private lastSyncableVLSN:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;)V
    .locals 3
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p2, "globalCBVLSN"    # Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->allowUpdate:Z

    .line 82
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/GlobalCBVLSN;->isDefunct()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->defunct:Z

    .line 84
    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    .line 88
    .local v0, "vlsnIndex":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastSync()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->currentLocalCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 89
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->lastSyncableVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 92
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->currentFile:J

    .line 94
    .end local v0    # "vlsnIndex":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    :cond_0
    return-void
.end method


# virtual methods
.method public getBroadcastCBVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->defunct:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->currentLocalCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    :goto_0
    return-object v0
.end method

.method public getLastSyncableVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->defunct:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->lastSyncableVLSN:Lcom/sleepycat/je/utilint/VLSN;

    :goto_0
    return-object v0
.end method

.method public registerMatchpoint(Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 1
    .param p1, "matchpoint"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 147
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->defunct:Z

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->currentLocalCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 151
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->lastSyncableVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 152
    return-void
.end method

.method public setAllowUpdate(Z)V
    .locals 0
    .param p1, "allowUpdate"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->allowUpdate:Z

    .line 99
    return-void
.end method

.method public track(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 5
    .param p1, "newVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "lsn"    # J

    .line 122
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->defunct:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->allowUpdate:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->lastSyncableVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-lez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->lastSyncableVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 129
    .local v0, "old":Lcom/sleepycat/je/utilint/VLSN;
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->lastSyncableVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 130
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->currentFile:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 131
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->currentFile:J

    .line 132
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->currentLocalCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 135
    .end local v0    # "old":Lcom/sleepycat/je/utilint/VLSN;
    :cond_1
    monitor-exit p0

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 123
    :cond_2
    :goto_0
    return-void
.end method
