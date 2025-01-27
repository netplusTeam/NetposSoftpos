.class public Lcom/sleepycat/je/recovery/CheckpointStart;
.super Ljava/lang/Object;
.source "CheckpointStart.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# instance fields
.field private id:J

.field private invoker:Ljava/lang/String;

.field private startTime:Lcom/sleepycat/je/utilint/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "invoker"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 41
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/Timestamp;-><init>(J)V

    iput-object v1, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->startTime:Lcom/sleepycat/je/utilint/Timestamp;

    .line 42
    iput-wide p1, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->id:J

    .line 43
    if-nez p3, :cond_0

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->invoker:Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_0
    iput-object p3, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->invoker:Ljava/lang/String;

    .line 48
    :goto_0
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 90
    const-string v0, "<CkptStart invoker=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->invoker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->startTime:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    const-string v0, "\" id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    return-void
.end method

.method public getLogSize()I
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->startTime:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getTimestampLogSize(Lcom/sleepycat/je/utilint/Timestamp;)I

    move-result v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->id:J

    .line 63
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->invoker:Ljava/lang/String;

    .line 64
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getStringLogSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    return v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 100
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 80
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 81
    .local v0, "unpacked":Z
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readTimestamp(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->startTime:Lcom/sleepycat/je/utilint/Timestamp;

    .line 82
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->id:J

    .line 83
    invoke-static {p1, v0, p2}, Lcom/sleepycat/je/log/LogUtils;->readString(Ljava/nio/ByteBuffer;ZI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->invoker:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 71
    iget-object v0, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->startTime:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeTimestamp(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/utilint/Timestamp;)V

    .line 72
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->id:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 73
    iget-object v0, p0, Lcom/sleepycat/je/recovery/CheckpointStart;->invoker:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 74
    return-void
.end method
