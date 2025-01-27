.class public Lcom/sleepycat/je/log/CheckpointFileReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "CheckpointFileReader.java"


# instance fields
.field private isCheckpointEnd:Z

.field private isCheckpointStart:Z

.field private isDbTree:Z


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJJJ)V
    .locals 11
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "forward"    # Z
    .param p4, "startLsn"    # J
    .param p6, "finishLsn"    # J
    .param p8, "endOfFileLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 41
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v7, p8

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    .line 43
    return-void
.end method


# virtual methods
.method public isCheckpointEnd()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/sleepycat/je/log/CheckpointFileReader;->isCheckpointEnd:Z

    return v0
.end method

.method public isCheckpointStart()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/sleepycat/je/log/CheckpointFileReader;->isCheckpointStart:Z

    return v0
.end method

.method public isDbTree()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/sleepycat/je/log/CheckpointFileReader;->isDbTree:Z

    return v0
.end method

.method protected isTargetEntry()Z
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/sleepycat/je/log/CheckpointFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    .line 51
    .local v0, "logEntryTypeNumber":B
    const/4 v1, 0x0

    .line 52
    .local v1, "isTarget":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sleepycat/je/log/CheckpointFileReader;->isDbTree:Z

    .line 53
    iput-boolean v2, p0, Lcom/sleepycat/je/log/CheckpointFileReader;->isCheckpointEnd:Z

    .line 54
    iput-boolean v2, p0, Lcom/sleepycat/je/log/CheckpointFileReader;->isCheckpointStart:Z

    .line 55
    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_CKPT_END:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 56
    const/4 v1, 0x1

    .line 57
    iput-boolean v3, p0, Lcom/sleepycat/je/log/CheckpointFileReader;->isCheckpointEnd:Z

    goto :goto_0

    .line 58
    :cond_0
    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_CKPT_START:Lcom/sleepycat/je/log/LogEntryType;

    .line 59
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const/4 v1, 0x1

    .line 61
    iput-boolean v3, p0, Lcom/sleepycat/je/log/CheckpointFileReader;->isCheckpointStart:Z

    goto :goto_0

    .line 62
    :cond_1
    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_DBTREE:Lcom/sleepycat/je/log/LogEntryType;

    .line 63
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    const/4 v1, 0x1

    .line 65
    iput-boolean v3, p0, Lcom/sleepycat/je/log/CheckpointFileReader;->isDbTree:Z

    .line 67
    :cond_2
    :goto_0
    return v1
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 76
    const/4 v0, 0x1

    return v0
.end method
