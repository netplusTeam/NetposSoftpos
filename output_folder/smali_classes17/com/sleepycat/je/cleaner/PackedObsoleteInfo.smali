.class public Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;
.super Lcom/sleepycat/bind/tuple/TupleOutput;
.source "PackedObsoleteInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public addObsoleteInfo(J)V
    .locals 2
    .param p1, "obsoleteLsn"    # J

    .line 53
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 54
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 55
    return-void
.end method

.method public copyObsoleteInfo(Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;)V
    .locals 3
    .param p1, "other"    # Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    .line 46
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->getBufferBytes()[B

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->getBufferOffset()I

    move-result v1

    .line 48
    invoke-virtual {p1}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->getBufferLength()I

    move-result v2

    .line 46
    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;->writeFast([BII)V

    .line 49
    return-void
.end method

.method public countObsoleteInfo(Lcom/sleepycat/je/cleaner/UtilizationTracker;)V
    .locals 9
    .param p1, "tracker"    # Lcom/sleepycat/je/cleaner/UtilizationTracker;

    .line 59
    new-instance v0, Lcom/sleepycat/bind/tuple/TupleInput;

    invoke-direct {v0, p0}, Lcom/sleepycat/bind/tuple/TupleInput;-><init>(Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 61
    .local v0, "in":Lcom/sleepycat/bind/tuple/TupleInput;
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v1

    .line 63
    .local v1, "fileNumber":J
    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v3

    .line 65
    .local v3, "fileOffset":J
    nop

    .line 66
    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v5

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType;->LOG_IN:Lcom/sleepycat/je/log/LogEntryType;

    const/4 v8, 0x0

    .line 65
    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/sleepycat/je/cleaner/UtilizationTracker;->countObsoleteNode(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 68
    .end local v1    # "fileNumber":J
    .end local v3    # "fileOffset":J
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public getMemorySize()I
    .locals 1

    .line 42
    invoke-static {p0}, Lcom/sleepycat/je/dbi/MemoryBudget;->tupleOutputSize(Lcom/sleepycat/bind/tuple/TupleOutput;)I

    move-result v0

    return v0
.end method
