.class public Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;
.super Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;
.source "ReplicaOutputThread.java"


# instance fields
.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 1
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 25
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    .line 26
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 27
    return-void
.end method


# virtual methods
.method public writeHeartbeat(Ljava/lang/Long;)V
    .locals 5
    .param p1, "txnId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReplica()Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->getTestDelayMs()I

    move-result v0

    if-lez v0, :cond_0

    .line 37
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCBVLSNTracker()Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->getBroadcastCBVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 42
    .local v0, "broadcastCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v2, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 43
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReplica()Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v4

    .line 44
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/Replica;->getTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThread;->replicaFeederChannel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 42
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 46
    return-void
.end method

.method public writeReauthentication()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    return-void
.end method
