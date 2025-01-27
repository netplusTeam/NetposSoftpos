.class public Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;
.super Ljava/lang/Exception;
.source "Replica.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/Replica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HardRecoveryElectionException"
.end annotation


# instance fields
.field final lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

.field final masterNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field final matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 0
    .param p1, "masterNameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "lastTxnEnd"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "matchpointVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 1691
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 1693
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;->masterNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1694
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    .line 1695
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 1696
    return-void
.end method


# virtual methods
.method public getMaster()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 1702
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;->masterNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 1707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Need election preceding hard recovery to verify master:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;->masterNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " last txn end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " matchpoint VLSN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
