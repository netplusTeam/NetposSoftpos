.class public Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;
.super Ljava/lang/Object;
.source "Replay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/Replay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxnInfo"
.end annotation


# instance fields
.field final masterTxnEndTime:J

.field final txnVLSN:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 0
    .param p1, "txnVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "masterTxnEndTime"    # J

    .line 1649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1650
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;->txnVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1651
    iput-wide p2, p0, Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;->masterTxnEndTime:J

    .line 1652
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/rep/impl/node/Replay$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/sleepycat/je/rep/impl/node/Replay$1;

    .line 1645
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;-><init>(Lcom/sleepycat/je/utilint/VLSN;J)V

    return-void
.end method


# virtual methods
.method public getMasterTxnEndTime()J
    .locals 2

    .line 1659
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;->masterTxnEndTime:J

    return-wide v0
.end method

.method public getTxnVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 1655
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;->txnVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VLSN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;->txnVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " masterTxnEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/Replay$TxnInfo;->masterTxnEndTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
