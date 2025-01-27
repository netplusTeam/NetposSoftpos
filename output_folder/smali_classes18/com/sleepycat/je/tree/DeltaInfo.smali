.class public Lcom/sleepycat/je/tree/DeltaInfo;
.super Ljava/lang/Object;
.source "DeltaInfo.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# instance fields
.field private key:[B

.field private lsn:J

.field private state:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/tree/DeltaInfo;->lsn:J

    .line 45
    return-void
.end method

.method constructor <init>([BJB)V
    .locals 0
    .param p1, "key"    # [B
    .param p2, "lsn"    # J
    .param p4, "state"    # B

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sleepycat/je/tree/DeltaInfo;->key:[B

    .line 34
    iput-wide p2, p0, Lcom/sleepycat/je/tree/DeltaInfo;->lsn:J

    .line 35
    iput-byte p4, p0, Lcom/sleepycat/je/tree/DeltaInfo;->state:B

    .line 36
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 72
    iget-object v0, p0, Lcom/sleepycat/je/tree/DeltaInfo;->key:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-wide v0, p0, Lcom/sleepycat/je/tree/DeltaInfo;->lsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, "<state kd=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/sleepycat/je/tree/DeltaInfo;->state:B

    invoke-static {v1}, Lcom/sleepycat/je/tree/IN;->isStateKnownDeleted(B)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    const-string v0, "\" pd=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/sleepycat/je/tree/DeltaInfo;->state:B

    invoke-static {v1}, Lcom/sleepycat/je/tree/IN;->isStatePendingDeleted(B)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    return-void
.end method

.method getKey()[B
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sleepycat/je/tree/DeltaInfo;->key:[B

    return-object v0
.end method

.method public getLogSize()I
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/sleepycat/je/tree/DeltaInfo;->key:[B

    .line 50
    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v0

    iget-wide v1, p0, Lcom/sleepycat/je/tree/DeltaInfo;->lsn:J

    .line 51
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 49
    return v0
.end method

.method getLsn()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/sleepycat/je/tree/DeltaInfo;->lsn:J

    return-wide v0
.end method

.method getMemorySize()J
    .locals 2

    .line 114
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DELTAINFO_OVERHEAD:I

    iget-object v1, p0, Lcom/sleepycat/je/tree/DeltaInfo;->key:[B

    array-length v1, v1

    .line 115
    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 114
    return-wide v0
.end method

.method getState()B
    .locals 1

    .line 97
    iget-byte v0, p0, Lcom/sleepycat/je/tree/DeltaInfo;->state:B

    return v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 81
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method isKnownDeleted()Z
    .locals 1

    .line 101
    iget-byte v0, p0, Lcom/sleepycat/je/tree/DeltaInfo;->state:B

    invoke-static {v0}, Lcom/sleepycat/je/tree/IN;->isStateKnownDeleted(B)Z

    move-result v0

    return v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 64
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    .local v0, "unpacked":Z
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/tree/DeltaInfo;->key:[B

    .line 66
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/tree/DeltaInfo;->lsn:J

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/sleepycat/je/tree/DeltaInfo;->state:B

    .line 68
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 57
    iget-object v0, p0, Lcom/sleepycat/je/tree/DeltaInfo;->key:[B

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 58
    iget-wide v0, p0, Lcom/sleepycat/je/tree/DeltaInfo;->lsn:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 59
    iget-byte v0, p0, Lcom/sleepycat/je/tree/DeltaInfo;->state:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 60
    return-void
.end method
