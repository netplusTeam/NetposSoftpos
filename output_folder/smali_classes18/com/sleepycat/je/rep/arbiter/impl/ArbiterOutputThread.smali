.class public Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;
.super Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;
.source "ArbiterOutputThread.java"


# instance fields
.field private final vlsnTracker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/concurrent/BlockingQueue;Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;)V
    .locals 0
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p3, "protocol"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p4, "replicaFeederChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p5, "vlsnTracker"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/impl/RepImpl;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sleepycat/je/rep/stream/Protocol;",
            "Lcom/sleepycat/je/rep/net/DataChannel;",
            "Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;",
            ")V"
        }
    .end annotation

    .line 38
    .local p2, "outputQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/concurrent/BlockingQueue;Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 39
    iput-object p5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->vlsnTracker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    .line 40
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

    .line 43
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->vlsnTracker:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->get()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 44
    .local v0, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v2, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v2, v3, v4, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterOutputThread;->replicaFeederChannel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 48
    return-void
.end method

.method public writeReauthentication()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    return-void
.end method
