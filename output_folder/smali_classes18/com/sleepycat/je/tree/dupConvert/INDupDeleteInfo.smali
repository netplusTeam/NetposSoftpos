.class public Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;
.super Ljava/lang/Object;
.source "INDupDeleteInfo.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# instance fields
.field private final dbId:Lcom/sleepycat/je/dbi/DatabaseId;

.field private deletedDupKey:[B

.field private deletedMainKey:[B

.field private deletedNodeId:J

.field private dupRootDeletion:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v0}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 43
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 114
    const-string v0, "<INDupDeleteEntry node=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->deletedNodeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->deletedMainKey:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->deletedDupKey:[B

    invoke-static {v0, v1}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 119
    const-string v0, "</INDupDeleteEntry>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    return-void
.end method

.method public getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    return-object v0
.end method

.method public getDeletedDupKey()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->deletedDupKey:[B

    return-object v0
.end method

.method public getDeletedMainKey()[B
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->deletedMainKey:[B

    return-object v0
.end method

.method public getDeletedNodeId()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->deletedNodeId:J

    return-wide v0
.end method

.method public getLogSize()I
    .locals 1

    .line 80
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 126
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isDupRootDeletion()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->dupRootDeletion:Z

    return v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 6
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 94
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ge p2, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 95
    .local v3, "unpacked":Z
    :goto_0
    invoke-static {p1, v3}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->deletedNodeId:J

    .line 96
    nop

    .line 97
    invoke-static {p1, v3}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->deletedMainKey:[B

    .line 98
    invoke-static {p1, v3}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->deletedDupKey:[B

    .line 99
    iget-object v4, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v4, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 107
    if-lt p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;->dupRootDeletion:Z

    .line 108
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 87
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
