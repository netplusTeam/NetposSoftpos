.class public Lcom/sleepycat/je/recovery/CheckpointEnd;
.super Ljava/lang/Object;
.source "CheckpointEnd.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# static fields
.field private static final CLEANED_FILES_MASK:B = 0x2t

.field private static final ROOT_LSN_MASK:B = 0x1t


# instance fields
.field private checkpointStartLsn:J

.field private cleanedFilesToDelete:Z

.field private endTime:Lcom/sleepycat/je/utilint/Timestamp;

.field private firstActiveLsn:J

.field private id:J

.field private invoker:Ljava/lang/String;

.field private lastLocalDbId:J

.field private lastLocalExtinctionId:J

.field private lastLocalNodeId:J

.field private lastLocalTxnId:J

.field private lastReplicatedDbId:J

.field private lastReplicatedExtinctionId:J

.field private lastReplicatedNodeId:J

.field private lastReplicatedTxnId:J

.field private rootLsn:J

.field private rootLsnExists:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->checkpointStartLsn:J

    .line 110
    iput-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsn:J

    .line 111
    iput-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->firstActiveLsn:J

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJJJJJJJJJJZ)V
    .locals 15
    .param p1, "invoker"    # Ljava/lang/String;
    .param p2, "checkpointStartLsn"    # J
    .param p4, "rootLsn"    # J
    .param p6, "firstActiveLsn"    # J
    .param p8, "lastLocalNodeId"    # J
    .param p10, "lastReplicatedNodeId"    # J
    .param p12, "lastLocalDbId"    # J
    .param p14, "lastReplicatedDbId"    # J
    .param p16, "lastLocalTxnId"    # J
    .param p18, "lastReplicatedTxnId"    # J
    .param p20, "lastLocalExtinctionId"    # J
    .param p22, "lastReplicatedExtinctionId"    # J
    .param p24, "id"    # J
    .param p26, "cleanedFilesToDelete"    # Z

    .line 74
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez v1, :cond_0

    .line 76
    const-string v8, ""

    iput-object v8, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->invoker:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_0
    iput-object v1, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->invoker:Ljava/lang/String;

    .line 81
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 82
    .local v8, "cal":Ljava/util/Calendar;
    new-instance v9, Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Lcom/sleepycat/je/utilint/Timestamp;-><init>(J)V

    iput-object v9, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->endTime:Lcom/sleepycat/je/utilint/Timestamp;

    .line 83
    iput-wide v2, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->checkpointStartLsn:J

    .line 84
    iput-wide v4, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsn:J

    .line 85
    const-wide/16 v9, -0x1

    cmp-long v11, v4, v9

    if-nez v11, :cond_1

    .line 86
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsnExists:Z

    goto :goto_1

    .line 88
    :cond_1
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsnExists:Z

    .line 90
    :goto_1
    cmp-long v9, v6, v9

    if-nez v9, :cond_2

    .line 91
    iput-wide v2, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->firstActiveLsn:J

    goto :goto_2

    .line 93
    :cond_2
    iput-wide v6, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->firstActiveLsn:J

    .line 95
    :goto_2
    move-wide/from16 v9, p8

    iput-wide v9, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalNodeId:J

    .line 96
    move-wide/from16 v11, p10

    iput-wide v11, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedNodeId:J

    .line 97
    move-wide/from16 v13, p12

    iput-wide v13, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalDbId:J

    .line 98
    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedDbId:J

    .line 99
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalTxnId:J

    .line 100
    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedTxnId:J

    .line 101
    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalExtinctionId:J

    .line 102
    move-wide/from16 v1, p22

    iput-wide v1, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedExtinctionId:J

    .line 103
    move-wide/from16 v1, p24

    iput-wide v1, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->id:J

    .line 104
    move/from16 v3, p26

    iput-boolean v3, v0, Lcom/sleepycat/je/recovery/CheckpointEnd;->cleanedFilesToDelete:Z

    .line 105
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 253
    const-string v0, "<CkptEnd invoker=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->invoker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->endTime:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    const-string v0, "\" lastLocalNodeId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalNodeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    const-string v0, "\" lastReplicatedNodeId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedNodeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 257
    const-string v0, "\" lastLocalDbId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalDbId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 258
    const-string v0, "\" lastReplicatedDbId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedDbId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    const-string v0, "\" lastLocalTxnId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalTxnId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    const-string v0, "\" lastReplicatedTxnId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedTxnId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    const-string v0, "\" lastLocalExtinctionId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalExtinctionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 262
    const-string v0, "\" lastReplicatedExtinctionId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedExtinctionId:J

    .line 263
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 264
    const-string v0, "\" id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    const-string v0, "\" rootExists=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsnExists:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 266
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v0, "<ckptStart>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->checkpointStartLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v0, "</ckptStart>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsnExists:Z

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "<root>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v0, "</root>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_0
    const-string v0, "<firstActive>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->firstActiveLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v0, "</firstActive>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v0, "</CkptEnd>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    return-void
.end method

.method getCheckpointStartLsn()J
    .locals 2

    .line 327
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->checkpointStartLsn:J

    return-wide v0
.end method

.method public getCleanedFilesToDelete()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->cleanedFilesToDelete:Z

    return v0
.end method

.method getFirstActiveLsn()J
    .locals 2

    .line 335
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->firstActiveLsn:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 371
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->id:J

    return-wide v0
.end method

.method public getInvoker()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->invoker:Ljava/lang/String;

    return-object v0
.end method

.method getLastLocalDbId()J
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalDbId:J

    return-wide v0
.end method

.method getLastLocalExtinctionId()J
    .locals 2

    .line 363
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalExtinctionId:J

    return-wide v0
.end method

.method getLastLocalNodeId()J
    .locals 2

    .line 339
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalNodeId:J

    return-wide v0
.end method

.method getLastLocalTxnId()J
    .locals 2

    .line 355
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalTxnId:J

    return-wide v0
.end method

.method getLastReplicatedDbId()J
    .locals 2

    .line 351
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedDbId:J

    return-wide v0
.end method

.method getLastReplicatedExtinctionId()J
    .locals 2

    .line 367
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedExtinctionId:J

    return-wide v0
.end method

.method getLastReplicatedNodeId()J
    .locals 2

    .line 343
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedNodeId:J

    return-wide v0
.end method

.method getLastReplicatedTxnId()J
    .locals 2

    .line 359
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedTxnId:J

    return-wide v0
.end method

.method public getLogSize()I
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->invoker:Ljava/lang/String;

    .line 127
    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getStringLogSize(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->endTime:Lcom/sleepycat/je/utilint/Timestamp;

    .line 128
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getTimestampLogSize(Lcom/sleepycat/je/utilint/Timestamp;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->checkpointStartLsn:J

    .line 129
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->firstActiveLsn:J

    .line 131
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalNodeId:J

    .line 132
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedNodeId:J

    .line 133
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalDbId:J

    .line 134
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedDbId:J

    .line 135
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalTxnId:J

    .line 136
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedTxnId:J

    .line 137
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalExtinctionId:J

    .line 138
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedExtinctionId:J

    .line 139
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->id:J

    .line 140
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    .local v0, "size":I
    iget-boolean v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsnExists:Z

    if-eqz v1, :cond_0

    .line 143
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsn:J

    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_0
    return v0
.end method

.method getRootLsn()J
    .locals 2

    .line 331
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsn:J

    return-wide v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 287
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 6
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-lt p2, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 192
    .local v2, "version6OrLater":Z
    :goto_0
    if-nez v2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-static {p1, v3, p2}, Lcom/sleepycat/je/log/LogUtils;->readString(Ljava/nio/ByteBuffer;ZI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->invoker:Ljava/lang/String;

    .line 194
    if-nez v2, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    invoke-static {p1, v3}, Lcom/sleepycat/je/log/LogUtils;->readTimestamp(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->endTime:Lcom/sleepycat/je/utilint/Timestamp;

    .line 195
    if-nez v2, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    invoke-static {p1, v3}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->checkpointStartLsn:J

    .line 196
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 197
    .local v3, "flags":B
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    move v4, v0

    :goto_4
    iput-boolean v4, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsnExists:Z

    .line 199
    if-eqz v4, :cond_6

    .line 200
    if-nez v2, :cond_5

    move v4, v1

    goto :goto_5

    :cond_5
    move v4, v0

    :goto_5
    invoke-static {p1, v4}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsn:J

    .line 203
    :cond_6
    const/4 v4, 0x7

    if-lt p2, v4, :cond_8

    .line 204
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_7

    move v4, v1

    goto :goto_6

    :cond_7
    move v4, v0

    :goto_6
    iput-boolean v4, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->cleanedFilesToDelete:Z

    goto :goto_7

    .line 206
    :cond_8
    iput-boolean v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->cleanedFilesToDelete:Z

    .line 209
    :goto_7
    if-nez v2, :cond_9

    move v4, v1

    goto :goto_8

    :cond_9
    move v4, v0

    :goto_8
    invoke-static {p1, v4}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->firstActiveLsn:J

    .line 211
    if-nez v2, :cond_a

    move v4, v1

    goto :goto_9

    :cond_a
    move v4, v0

    :goto_9
    invoke-static {p1, v4}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalNodeId:J

    .line 212
    if-eqz v2, :cond_b

    .line 213
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedNodeId:J

    .line 216
    :cond_b
    if-eqz v2, :cond_c

    .line 217
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalDbId:J

    .line 218
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedDbId:J

    goto :goto_a

    .line 220
    :cond_c
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalDbId:J

    .line 223
    :goto_a
    if-nez v2, :cond_d

    move v4, v1

    goto :goto_b

    :cond_d
    move v4, v0

    :goto_b
    invoke-static {p1, v4}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalTxnId:J

    .line 224
    if-eqz v2, :cond_e

    .line 225
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedTxnId:J

    .line 228
    :cond_e
    const/16 v4, 0x11

    if-lt p2, v4, :cond_f

    .line 229
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalExtinctionId:J

    .line 230
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedExtinctionId:J

    .line 233
    :cond_f
    if-nez v2, :cond_10

    move v0, v1

    :cond_10
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->id:J

    .line 235
    const/16 v0, 0x8

    if-lt p2, v0, :cond_11

    const/16 v0, 0xa

    if-gt p2, v0, :cond_11

    .line 237
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    .line 238
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    .line 239
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 240
    .local v0, "nAvgLNSizes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_11

    .line 241
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    .line 242
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    .line 243
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    .line 244
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 247
    .end local v0    # "nAvgLNSizes":I
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->endTime:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, " lastLocalNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalNodeId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, " lastReplicatedNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedNodeId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, " lastLocalDbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalDbId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 305
    const-string v1, " lastReplicatedDbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedDbId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, " lastLocalTxnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalTxnId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, " lastReplicatedTxnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedTxnId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, " lastLocalExtinctionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalExtinctionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    const-string v1, " lastReplicatedExtinctionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedExtinctionId:J

    .line 310
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, " rootExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsnExists:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, " ckptStartLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->checkpointStartLsn:J

    .line 314
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-boolean v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsnExists:Z

    if-eqz v1, :cond_0

    .line 316
    const-string v1, " root="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsn:J

    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_0
    const-string v1, " firstActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->firstActiveLsn:J

    .line 319
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 152
    iget-object v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->invoker:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->endTime:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeTimestamp(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/utilint/Timestamp;)V

    .line 154
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->checkpointStartLsn:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "flags":B
    iget-boolean v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsnExists:Z

    if-eqz v1, :cond_0

    .line 158
    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 161
    :cond_0
    iget-boolean v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->cleanedFilesToDelete:Z

    if-eqz v1, :cond_1

    .line 162
    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 165
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 167
    iget-boolean v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsnExists:Z

    if-eqz v1, :cond_2

    .line 168
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->rootLsn:J

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 170
    :cond_2
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->firstActiveLsn:J

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 172
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalNodeId:J

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 173
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedNodeId:J

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 175
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalDbId:J

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 176
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedDbId:J

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 178
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalTxnId:J

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 179
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedTxnId:J

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 181
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastLocalExtinctionId:J

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 182
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->lastReplicatedExtinctionId:J

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 184
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointEnd;->id:J

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 185
    return-void
.end method
