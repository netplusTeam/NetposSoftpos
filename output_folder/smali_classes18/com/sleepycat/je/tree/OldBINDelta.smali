.class public Lcom/sleepycat/je/tree/OldBINDelta;
.super Ljava/lang/Object;
.source "OldBINDelta.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dbId:Lcom/sleepycat/je/dbi/DatabaseId;

.field private final deltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sleepycat/je/tree/DeltaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lastFullLsn:J

.field private prevDeltaLsn:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v0}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->lastFullLsn:J

    .line 51
    iput-wide v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->prevDeltaLsn:J

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->deltas:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 2
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v0}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->lastFullLsn:J

    .line 61
    iput-wide v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->prevDeltaLsn:J

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->deltas:Ljava/util/ArrayList;

    .line 63
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 176
    iget-object v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 177
    const-string v0, "<lastFullLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-wide v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->lastFullLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v0, "</lastFullLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v0, "<prevDeltaLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-wide v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->prevDeltaLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v0, "</prevDeltaLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v0, "<deltas size=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/tree/OldBINDelta;->deltas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/tree/OldBINDelta;->deltas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/sleepycat/je/tree/OldBINDelta;->deltas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/DeltaInfo;

    .line 186
    .local v1, "info":Lcom/sleepycat/je/tree/DeltaInfo;
    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/tree/DeltaInfo;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 184
    .end local v1    # "info":Lcom/sleepycat/je/tree/DeltaInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getDbId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    return-object v0
.end method

.method public getLastFullLsn()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->lastFullLsn:J

    return-wide v0
.end method

.method public getLogSize()I
    .locals 1

    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMemorySize()J
    .locals 6

    .line 207
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->BINDELTA_OVERHEAD:I

    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAYLIST_OVERHEAD:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/je/tree/OldBINDelta;->deltas:Ljava/util/ArrayList;

    .line 209
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->objectArraySize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 210
    .local v0, "size":J
    iget-object v2, p0, Lcom/sleepycat/je/tree/OldBINDelta;->deltas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/DeltaInfo;

    .line 211
    .local v3, "info":Lcom/sleepycat/je/tree/DeltaInfo;
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/DeltaInfo;->getMemorySize()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 212
    .end local v3    # "info":Lcom/sleepycat/je/tree/DeltaInfo;
    goto :goto_0

    .line 213
    :cond_0
    return-wide v0
.end method

.method public getPrevDeltaLsn()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->prevDeltaLsn:J

    return-wide v0
.end method

.method public getSearchKey()[B
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->deltas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->deltas:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/DeltaInfo;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/DeltaInfo;->getKey()[B

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 191
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 5
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 158
    iget-object v0, p0, Lcom/sleepycat/je/tree/OldBINDelta;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 159
    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ge p2, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-static {p1, v3}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/tree/OldBINDelta;->lastFullLsn:J

    .line 160
    const/16 v3, 0x8

    if-lt p2, v3, :cond_1

    .line 161
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/tree/OldBINDelta;->prevDeltaLsn:J

    .line 163
    :cond_1
    if-ge p2, v1, :cond_2

    move v0, v2

    :cond_2
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    .line 165
    .local v0, "numDeltas":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 166
    new-instance v2, Lcom/sleepycat/je/tree/DeltaInfo;

    invoke-direct {v2}, Lcom/sleepycat/je/tree/DeltaInfo;-><init>()V

    .line 167
    .local v2, "info":Lcom/sleepycat/je/tree/DeltaInfo;
    invoke-virtual {v2, p1, p2}, Lcom/sleepycat/je/tree/DeltaInfo;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 168
    iget-object v3, p0, Lcom/sleepycat/je/tree/OldBINDelta;->deltas:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v2    # "info":Lcom/sleepycat/je/tree/DeltaInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/tree/OldBINDelta;->deltas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 173
    return-void
.end method

.method public reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/BIN;
    .locals 4
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 96
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 98
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    nop

    .line 99
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/tree/OldBINDelta;->lastFullLsn:J

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/log/LogManager;->getEntryHandleNotFound(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/BIN;

    .line 101
    .local v1, "fullBIN":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {p0, p1, v1}, Lcom/sleepycat/je/tree/OldBINDelta;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;)V

    .line 103
    return-object v1
.end method

.method public reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;)V
    .locals 19
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "fullBIN"    # Lcom/sleepycat/je/tree/BIN;

    .line 111
    move-object/from16 v1, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p1

    invoke-virtual {v15, v14}, Lcom/sleepycat/je/tree/BIN;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 112
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v15, v0}, Lcom/sleepycat/je/tree/BIN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 119
    :try_start_0
    iget-wide v2, v1, Lcom/sleepycat/je/tree/OldBINDelta;->lastFullLsn:J

    invoke-virtual {v15, v2, v3}, Lcom/sleepycat/je/tree/BIN;->setLastFullLsn(J)V

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, v1, Lcom/sleepycat/je/tree/OldBINDelta;->deltas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 123
    iget-object v2, v1, Lcom/sleepycat/je/tree/OldBINDelta;->deltas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/DeltaInfo;

    move-object/from16 v16, v2

    .line 124
    .local v16, "info":Lcom/sleepycat/je/tree/DeltaInfo;
    nop

    .line 125
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/DeltaInfo;->getKey()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/DeltaInfo;->getLsn()J

    move-result-wide v5

    .line 126
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/tree/DeltaInfo;->getState()B

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 124
    move-object/from16 v2, p2

    move/from16 v14, v17

    move-object v1, v15

    move/from16 v15, v18

    :try_start_1
    invoke-virtual/range {v2 .. v15}, Lcom/sleepycat/je/tree/BIN;->applyDelta([B[BJBIJJLcom/sleepycat/je/tree/Node;IZ)V

    .line 122
    .end local v16    # "info":Lcom/sleepycat/je/tree/DeltaInfo;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v14, p1

    move-object v15, v1

    move-object/from16 v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v15

    .line 137
    .end local v0    # "i":I
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/tree/BIN;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 140
    nop

    .line 141
    return-void

    .line 139
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v15

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    throw v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
