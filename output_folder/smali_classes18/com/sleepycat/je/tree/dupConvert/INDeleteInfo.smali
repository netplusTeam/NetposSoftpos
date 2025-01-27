.class public Lcom/sleepycat/je/tree/dupConvert/INDeleteInfo;
.super Ljava/lang/Object;
.source "INDeleteInfo.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# instance fields
.field private final dbId:Lcom/sleepycat/je/dbi/DatabaseId;

.field private deletedIdKey:[B

.field private deletedNodeId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v0}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDeleteInfo;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 45
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 90
    const-string v0, "<INDeleteEntry node=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/tree/dupConvert/INDeleteInfo;->deletedNodeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDeleteInfo;->deletedIdKey:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDeleteInfo;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 94
    const-string v0, "</INDeleteEntry>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    return-void
.end method

.method public getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDeleteInfo;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    return-object v0
.end method

.method public getDeletedIdKey()[B
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDeleteInfo;->deletedIdKey:[B

    return-object v0
.end method

.method public getDeletedNodeId()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/sleepycat/je/tree/dupConvert/INDeleteInfo;->deletedNodeId:J

    return-wide v0
.end method

.method public getLogSize()I
    .locals 1

    .line 66
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 101
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
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
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/tree/dupConvert/INDeleteInfo;->deletedNodeId:J

    .line 82
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/INDeleteInfo;->deletedIdKey:[B

    .line 83
    iget-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/INDeleteInfo;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 84
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 73
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
