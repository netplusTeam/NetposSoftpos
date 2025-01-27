.class public Lcom/sleepycat/je/rep/stream/MasterChangeListener;
.super Ljava/lang/Object;
.source "MasterChangeListener.java"

# interfaces
.implements Lcom/sleepycat/je/rep/elections/Learner$Listener;


# instance fields
.field private currentValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

.field private final logger:Ljava/util/logging/Logger;

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;)V
    .locals 1
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 37
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->logger:Ljava/util/logging/Logger;

    .line 39
    return-void
.end method


# virtual methods
.method public notify(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V
    .locals 6
    .param p1, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .param p2, "value"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNFreezeLatch()Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/node/CommitFreezeLatch;->vlsnEvent(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)V

    .line 51
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, " Value: "

    if-eqz v0, :cond_0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Master change listener -- no value change.Proposal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 55
    return-void

    .line 58
    :cond_0
    :try_start_2
    move-object v0, p2

    check-cast v0, Lcom/sleepycat/je/rep/elections/MasterValue;

    .line 60
    .local v0, "masterValue":Lcom/sleepycat/je/rep/elections/MasterValue;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Master change listener notified. Proposal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Master changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 65
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/MasterValue;->getNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v1

    .line 68
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/MasterValue;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/MasterValue;->getPort()I

    move-result v3

    .line 70
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/MasterValue;->getNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    .line 68
    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/rep/stream/MasterStatus;->setGroupMaster(Ljava/lang/String;ILcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 73
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getElections()Lcom/sleepycat/je/rep/elections/Elections;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/rep/elections/Elections;->asyncInformMonitors(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .end local v0    # "masterValue":Lcom/sleepycat/je/rep/elections/MasterValue;
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 76
    nop

    .line 77
    return-void

    .line 75
    :catchall_0
    move-exception v0

    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    throw v0
.end method
