.class public Lcom/sleepycat/je/log/FileHeader;
.super Ljava/lang/Object;
.source "FileHeader.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# instance fields
.field private fileNum:J

.field private lastEntryInPrevFileOffset:J

.field private logVersion:I

.field private time:Lcom/sleepycat/je/utilint/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method constructor <init>(JJ)V
    .locals 4
    .param p1, "fileNum"    # J
    .param p3, "lastEntryInPrevFileOffset"    # J

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/sleepycat/je/log/FileHeader;->fileNum:J

    .line 43
    iput-wide p3, p0, Lcom/sleepycat/je/log/FileHeader;->lastEntryInPrevFileOffset:J

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 45
    .local v0, "now":Ljava/util/Calendar;
    new-instance v1, Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/Timestamp;-><init>(J)V

    iput-object v1, p0, Lcom/sleepycat/je/log/FileHeader;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 46
    const/16 v1, 0x11

    iput v1, p0, Lcom/sleepycat/je/log/FileHeader;->logVersion:I

    .line 47
    return-void
.end method

.method public static entrySize()I
    .locals 1

    .line 104
    const/16 v0, 0x18

    return v0
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 158
    const-string v0, "<FileHeader num=\"0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileHeader;->fileNum:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v0, "\" lastEntryInPrevFileOffset=\"0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileHeader;->lastEntryInPrevFileOffset:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v0, "\" logVersion=\"0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget v0, p0, Lcom/sleepycat/je/log/FileHeader;->logVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/log/FileHeader;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    return-void
.end method

.method getLastEntryInPrevFileOffset()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileHeader;->lastEntryInPrevFileOffset:J

    return-wide v0
.end method

.method public getLogSize()I
    .locals 1

    .line 116
    invoke-static {}, Lcom/sleepycat/je/log/FileHeader;->entrySize()I

    move-result v0

    return v0
.end method

.method public getLogVersion()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/sleepycat/je/log/FileHeader;->logVersion:I

    return v0
.end method

.method getTimestamp()Lcom/sleepycat/je/utilint/Timestamp;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sleepycat/je/log/FileHeader;->time:Lcom/sleepycat/je/utilint/Timestamp;

    return-object v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 172
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "unusableEntryVersion"    # I

    .line 140
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readTimestamp(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/FileHeader;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 141
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/FileHeader;->fileNum:J

    .line 142
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/FileHeader;->lastEntryInPrevFileOffset:J

    .line 143
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/log/FileHeader;->logVersion:I

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/log/FileHeader;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method validate(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;J)I
    .locals 5
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "expectedFileNum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 67
    iget v0, p0, Lcom/sleepycat/je/log/FileHeader;->logVersion:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    .line 74
    iget-wide v1, p0, Lcom/sleepycat/je/log/FileHeader;->fileNum:J

    cmp-long v1, v1, p3

    if-nez v1, :cond_0

    .line 82
    return v0

    .line 75
    :cond_0
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong filenum in header for file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/log/FileHeader;->fileNum:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    new-instance v0, Lcom/sleepycat/je/VersionMismatchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected log version 17 or earlier but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/log/FileHeader;->logVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/je/VersionMismatchException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    throw v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/log/FileHeader;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/Timestamp;->getTime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 127
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileHeader;->fileNum:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writeUnsignedInt(Ljava/nio/ByteBuffer;J)V

    .line 128
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileHeader;->lastEntryInPrevFileOffset:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 129
    iget v0, p0, Lcom/sleepycat/je/log/FileHeader;->logVersion:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 130
    return-void
.end method
