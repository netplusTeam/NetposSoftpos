.class public abstract Lcom/sleepycat/je/txn/TxnEnd;
.super Ljava/lang/Object;
.source "TxnEnd.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# instance fields
.field dtvlsn:J

.field id:J

.field lastLsn:J

.field repMasterNodeId:I

.field time:Lcom/sleepycat/je/utilint/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/txn/TxnEnd;->lastLsn:J

    .line 55
    return-void
.end method

.method constructor <init>(JJIJ)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "lastLsn"    # J
    .param p5, "repMasterNodeId"    # I
    .param p6, "dtvlsn"    # J

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/sleepycat/je/txn/TxnEnd;->id:J

    .line 44
    new-instance v0, Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/Timestamp;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/txn/TxnEnd;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 45
    iput-wide p3, p0, Lcom/sleepycat/je/txn/TxnEnd;->lastLsn:J

    .line 46
    iput p5, p0, Lcom/sleepycat/je/txn/TxnEnd;->repMasterNodeId:I

    .line 47
    iput-wide p6, p0, Lcom/sleepycat/je/txn/TxnEnd;->dtvlsn:J

    .line 48
    return-void
.end method


# virtual methods
.method public getDTVLSN()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/sleepycat/je/txn/TxnEnd;->dtvlsn:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/sleepycat/je/txn/TxnEnd;->id:J

    return-wide v0
.end method

.method getLastLsn()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/sleepycat/je/txn/TxnEnd;->lastLsn:J

    return-wide v0
.end method

.method public getMasterNodeId()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/sleepycat/je/txn/TxnEnd;->repMasterNodeId:I

    return v0
.end method

.method protected abstract getTagName()Ljava/lang/String;
.end method

.method public getTime()Lcom/sleepycat/je/utilint/Timestamp;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnEnd;->time:Lcom/sleepycat/je/utilint/Timestamp;

    return-object v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/sleepycat/je/txn/TxnEnd;->id:J

    return-wide v0
.end method

.method public hasLoggedEntries()Z
    .locals 4

    .line 97
    iget-wide v0, p0, Lcom/sleepycat/je/txn/TxnEnd;->lastLsn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDTVLSN(J)V
    .locals 0
    .param p1, "dtvlsn"    # J

    .line 86
    iput-wide p1, p0, Lcom/sleepycat/je/txn/TxnEnd;->dtvlsn:J

    .line 87
    return-void
.end method
