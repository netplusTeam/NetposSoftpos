.class public Lcom/sleepycat/je/log/entry/ErasedLogEntry;
.super Ljava/lang/Object;
.source "ErasedLogEntry.java"

# interfaces
.implements Lcom/sleepycat/je/log/entry/LogEntry;


# instance fields
.field private allZeros:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/log/entry/ErasedLogEntry;
    .locals 2

    .line 74
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/entry/ErasedLogEntry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic clone()Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/ErasedLogEntry;->clone()Lcom/sleepycat/je/log/entry/ErasedLogEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/ErasedLogEntry;->clone()Lcom/sleepycat/je/log/entry/ErasedLogEntry;

    move-result-object v0

    return-object v0
.end method

.method public dumpEntry(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 114
    const-string v0, "<Erased allZeros=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/log/entry/ErasedLogEntry;->allZeros:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    return-object p1
.end method

.method public dumpRep(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 155
    return-void
.end method

.method public getDbId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogType()Lcom/sleepycat/je/log/LogEntryType;
    .locals 1

    .line 86
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_ERASED:Lcom/sleepycat/je/log/LogEntryType;

    return-object v0
.end method

.method public getMainItem()Ljava/lang/Object;
    .locals 1

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 46
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 145
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isAllZeros()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/sleepycat/je/log/entry/ErasedLogEntry;->allZeros:Z

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 56
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/entry/LogEntry;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/entry/LogEntry;

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public postLogWork(Lcom/sleepycat/je/log/LogEntryHeader;JLcom/sleepycat/je/utilint/VLSN;)V
    .locals 1
    .param p1, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p2, "justLoggedLsn"    # J
    .param p4, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 68
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p3, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 94
    const/16 v0, 0x64

    new-array v0, v0, [B

    .line 95
    .local v0, "buf":[B
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v1

    .line 96
    .local v1, "remaining":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sleepycat/je/log/entry/ErasedLogEntry;->allZeros:Z

    .line 98
    :goto_0
    if-lez v1, :cond_2

    .line 100
    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 101
    .local v2, "size":I
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 102
    sub-int/2addr v1, v2

    .line 104
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 105
    aget-byte v5, v0, v4

    if-eqz v5, :cond_0

    .line 106
    iput-boolean v3, p0, Lcom/sleepycat/je/log/entry/ErasedLogEntry;->allZeros:Z

    .line 104
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 109
    .end local v2    # "size":I
    .end local v4    # "i":I
    :cond_1
    goto :goto_0

    .line 110
    :cond_2
    return-void
.end method

.method public setLogType(Lcom/sleepycat/je/log/LogEntryType;)V
    .locals 0
    .param p1, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;

    .line 82
    return-void
.end method

.method public writeEntry(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 51
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
