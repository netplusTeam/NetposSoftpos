.class Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;
.super Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;
.source "SubscriptionOutputThread.java"


# instance fields
.field private final authenticator:Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

.field private final parentThread:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

.field private final stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/concurrent/BlockingQueue;Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;Lcom/sleepycat/je/rep/subscription/SubscriptionStat;)V
    .locals 0
    .param p1, "parentThread"    # Lcom/sleepycat/je/rep/subscription/SubscriptionThread;
    .param p2, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p4, "protocol"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p5, "replicaFeederChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p6, "authenticator"    # Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;
    .param p7, "stats"    # Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/subscription/SubscriptionThread;",
            "Lcom/sleepycat/je/rep/impl/RepImpl;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sleepycat/je/rep/stream/Protocol;",
            "Lcom/sleepycat/je/rep/net/DataChannel;",
            "Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;",
            "Lcom/sleepycat/je/rep/subscription/SubscriptionStat;",
            ")V"
        }
    .end annotation

    .line 44
    .local p3, "outputQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Long;>;"
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sleepycat/je/rep/impl/node/ReplicaOutputThreadBase;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/concurrent/BlockingQueue;Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 45
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->parentThread:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    .line 46
    iput-object p6, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->authenticator:Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

    .line 47
    iput-object p7, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    .line 48
    return-void
.end method


# virtual methods
.method public writeHeartbeat(Ljava/lang/Long;)V
    .locals 4
    .param p1, "txnId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    .line 84
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->getHighVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V

    .line 86
    .local v0, "response":Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->replicaFeederChannel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 87
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->getNumMsgResponded()Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 88
    return-void
.end method

.method public writeReauthentication()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/ReplicationSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->authenticator:Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;->hasNewToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->authenticator:Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

    .line 66
    invoke-interface {v2}, Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;->getToken()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;[B)V

    .line 68
    .local v0, "response":Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionOutputThread;->replicaFeederChannel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 70
    .end local v0    # "response":Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;
    :cond_0
    return-void
.end method
