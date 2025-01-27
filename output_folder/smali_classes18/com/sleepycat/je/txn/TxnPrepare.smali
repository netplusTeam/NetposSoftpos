.class public Lcom/sleepycat/je/txn/TxnPrepare;
.super Lcom/sleepycat/je/txn/TxnEnd;
.source "TxnPrepare.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# instance fields
.field private xid:Ljavax/transaction/xa/Xid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/sleepycat/je/txn/TxnEnd;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(JLjavax/transaction/xa/Xid;)V
    .locals 8
    .param p1, "id"    # J
    .param p3, "xid"    # Ljavax/transaction/xa/Xid;

    .line 33
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/txn/TxnEnd;-><init>(JJIJ)V

    .line 36
    iput-object p3, p0, Lcom/sleepycat/je/txn/TxnPrepare;->xid:Ljavax/transaction/xa/Xid;

    .line 37
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 82
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/txn/TxnPrepare;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v0, " id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/txn/TxnPrepare;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnPrepare;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnPrepare;->xid:Ljavax/transaction/xa/Xid;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/txn/TxnPrepare;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    return-void
.end method

.method public getLogSize()I
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/sleepycat/je/txn/TxnPrepare;->id:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnPrepare;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 61
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getTimestampLogSize(Lcom/sleepycat/je/utilint/Timestamp;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnPrepare;->xid:Ljavax/transaction/xa/Xid;

    .line 62
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getXidSize(Ljavax/transaction/xa/Xid;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method protected getTagName()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "TxnPrepare"

    return-object v0
.end method

.method public getXid()Ljavax/transaction/xa/Xid;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnPrepare;->xid:Ljavax/transaction/xa/Xid;

    return-object v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 74
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    .local v0, "unpacked":Z
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/txn/TxnPrepare;->id:J

    .line 76
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readTimestamp(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/txn/TxnPrepare;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 77
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readXid(Ljava/nio/ByteBuffer;)Ljavax/transaction/xa/Xid;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/txn/TxnPrepare;->xid:Ljavax/transaction/xa/Xid;

    .line 78
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 67
    iget-wide v0, p0, Lcom/sleepycat/je/txn/TxnPrepare;->id:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 68
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnPrepare;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeTimestamp(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/utilint/Timestamp;)V

    .line 69
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnPrepare;->xid:Ljavax/transaction/xa/Xid;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeXid(Ljava/nio/ByteBuffer;Ljavax/transaction/xa/Xid;)V

    .line 70
    return-void
.end method
