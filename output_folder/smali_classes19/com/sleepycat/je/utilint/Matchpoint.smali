.class public Lcom/sleepycat/je/utilint/Matchpoint;
.super Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;
.source "Matchpoint.java"


# static fields
.field private static final LAST_FORMAT_CHANGE:I = 0x8


# instance fields
.field private repMasterNodeId:I

.field private time:Lcom/sleepycat/je/utilint/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "repMasterNodeId"    # I

    .line 57
    invoke-direct {p0}, Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;-><init>()V

    .line 58
    iput p1, p0, Lcom/sleepycat/je/utilint/Matchpoint;->repMasterNodeId:I

    .line 59
    new-instance v0, Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/Timestamp;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/Matchpoint;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 60
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 104
    const-string v0, "<Matchpoint"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/Matchpoint;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string v0, "\" master=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/utilint/Matchpoint;->repMasterNodeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    return-void
.end method

.method public getEmbeddedLoggables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/log/VersionedWriteLoggable;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastFormatChange()I
    .locals 1

    .line 74
    const/16 v0, 0x8

    return v0
.end method

.method public getLogSize(IZ)I
    .locals 2
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 84
    iget-object v0, p0, Lcom/sleepycat/je/utilint/Matchpoint;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getTimestampLogSize(Lcom/sleepycat/je/utilint/Timestamp;)I

    move-result v0

    iget v1, p0, Lcom/sleepycat/je/utilint/Matchpoint;->repMasterNodeId:I

    .line 85
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    return v0
.end method

.method public getMasterNodeId()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/sleepycat/je/utilint/Matchpoint;->repMasterNodeId:I

    return v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 112
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 117
    instance-of v0, p1, Lcom/sleepycat/je/utilint/Matchpoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    return v1

    .line 121
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/utilint/Matchpoint;

    .line 122
    .local v0, "otherMatchpoint":Lcom/sleepycat/je/utilint/Matchpoint;
    iget-object v2, v0, Lcom/sleepycat/je/utilint/Matchpoint;->time:Lcom/sleepycat/je/utilint/Timestamp;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/Matchpoint;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/Timestamp;->equals(Lcom/sleepycat/je/utilint/Timestamp;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/sleepycat/je/utilint/Matchpoint;->repMasterNodeId:I

    iget v3, p0, Lcom/sleepycat/je/utilint/Matchpoint;->repMasterNodeId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 98
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readTimestamp(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/utilint/Matchpoint;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 99
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/utilint/Matchpoint;->repMasterNodeId:I

    .line 100
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;IZ)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 92
    iget-object v0, p0, Lcom/sleepycat/je/utilint/Matchpoint;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeTimestamp(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/utilint/Timestamp;)V

    .line 93
    iget v0, p0, Lcom/sleepycat/je/utilint/Matchpoint;->repMasterNodeId:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 94
    return-void
.end method
