.class public Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;
.super Ljava/lang/Exception;
.source "FeederReplicaSyncup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkRestoreException"
.end annotation


# instance fields
.field private final firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private final vlsn:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 0
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "firstVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "lastVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p4, "replicaNameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 483
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 485
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 486
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 487
    iput-object p4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 488
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Matchpoint vlsn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested by node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was outside the VLSN range: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;->replicaNameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getVlsn()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method
