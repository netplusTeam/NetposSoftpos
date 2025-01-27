.class public Lcom/sleepycat/je/rep/elections/ElectionAgentThread;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "ElectionAgentThread.java"


# instance fields
.field protected final channelQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sleepycat/je/rep/net/DataChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected final formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

.field protected final logger:Ljava/util/logging/Logger;

.field protected final protocol:Lcom/sleepycat/je/rep/elections/Protocol;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/elections/Protocol;Ljava/lang/String;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "protocol"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p3, "threadName"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1, p3}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    .line 69
    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFormatterNeeded(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->logger:Ljava/util/logging/Logger;

    .line 75
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/elections/Protocol;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    .line 76
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/elections/Protocol;Ljava/lang/String;)V
    .locals 2
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p2, "protocol"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p3, "threadName"    # Ljava/lang/String;

    .line 55
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    .line 56
    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 58
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFormatterNeeded(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->logger:Ljava/util/logging/Logger;

    .line 62
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/elections/Protocol;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    .line 63
    return-void
.end method


# virtual methods
.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 100
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->channelQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/RepUtils;->CHANNEL_EOF_MARKER:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->shutdownDone(Ljava/util/logging/Logger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/elections/ElectionAgentThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 94
    return-void
.end method
