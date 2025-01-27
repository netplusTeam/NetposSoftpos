.class Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "Elections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Elections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElectionThread"
.end annotation


# instance fields
.field maxRetriesException:Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;

.field private final quorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;

.field private final retryPredicate:Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;

.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Elections;

.field winningProposal:Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/elections/Elections;Lcom/sleepycat/je/rep/QuorumPolicy;Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p2, "quorumPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .param p3, "retryPredicate"    # Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;
    .param p4, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p5, "envName"    # Ljava/lang/String;

    .line 758
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 759
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ElectionThread_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 760
    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->quorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;

    .line 761
    iput-object p3, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->retryPredicate:Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;

    .line 762
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/elections/Elections;Lcom/sleepycat/je/rep/QuorumPolicy;Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Lcom/sleepycat/je/rep/elections/Elections$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/elections/Elections;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .param p3, "x2"    # Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;
    .param p4, "x3"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Lcom/sleepycat/je/rep/elections/Elections$1;

    .line 743
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;-><init>(Lcom/sleepycat/je/rep/elections/Elections;Lcom/sleepycat/je/rep/QuorumPolicy;Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v0}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method getStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->winningProposal:Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;->proposerStats:Lcom/sleepycat/je/utilint/StatGroup;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->maxRetriesException:Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;

    iget-object v0, v0, Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;->proposerStats:Lcom/sleepycat/je/utilint/StatGroup;

    :goto_0
    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 2

    .line 827
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 828
    invoke-static {v0}, Lcom/sleepycat/je/rep/elections/Elections;->access$1100(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;->getElectionLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 830
    .local v0, "electionLatch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v1}, Lcom/sleepycat/je/rep/elections/Elections;->access$700(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Protocol;->getReadTimeout()I

    move-result v1

    return v1
.end method

.method public run()V
    .locals 10

    .line 772
    const-string v0, "Election thread exited. Group master: "

    const v1, 0x7fffffff

    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v4}, Lcom/sleepycat/je/rep/elections/Elections;->access$400(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Formatter;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Started election thread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 774
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 775
    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$500(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/elections/Proposer;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->quorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->retryPredicate:Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/rep/elections/Proposer;->issueProposal(Lcom/sleepycat/je/rep/QuorumPolicy;Lcom/sleepycat/je/rep/elections/Proposer$RetryPredicate;)Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->winningProposal:Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;

    .line 786
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$600(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllLearnerSockets()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->winningProposal:Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 788
    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$700(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v5

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 789
    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$800(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 790
    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v7

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 791
    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$900(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v8

    const/4 v9, 0x0

    .line 786
    invoke-static/range {v3 .. v9}, Lcom/sleepycat/je/rep/elections/Learner;->informLearners(Ljava/util/Set;Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;Lcom/sleepycat/je/rep/elections/Protocol;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->cleanup()V

    .line 807
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 808
    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v4}, Lcom/sleepycat/je/rep/elections/Elections;->access$400(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Formatter;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 810
    invoke-static {v6}, Lcom/sleepycat/je/rep/elections/Elections;->access$1000(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 806
    :catchall_0
    move-exception v2

    goto/16 :goto_4

    .line 803
    :catch_0
    move-exception v2

    .line 804
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->saveShutdownException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->cleanup()V

    .line 807
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 808
    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v4}, Lcom/sleepycat/je/rep/elections/Elections;->access$400(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Formatter;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 810
    invoke-static {v6}, Lcom/sleepycat/je/rep/elections/Elections;->access$1000(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v6

    if-eqz v6, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 811
    invoke-static {v1}, Lcom/sleepycat/je/rep/elections/Elections;->access$1000(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    goto :goto_1

    :cond_0
    nop

    .line 812
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    invoke-static {v2, v3, v4, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 813
    goto :goto_2

    .line 799
    :catch_1
    move-exception v2

    .line 800
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v3}, Lcom/sleepycat/je/rep/elections/Elections;->access$800(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 801
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v3}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v5}, Lcom/sleepycat/je/rep/elections/Elections;->access$400(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Formatter;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "Election thread interrupted"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 806
    .end local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->cleanup()V

    .line 807
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 808
    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v4}, Lcom/sleepycat/je/rep/elections/Elections;->access$400(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Formatter;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 810
    invoke-static {v6}, Lcom/sleepycat/je/rep/elections/Elections;->access$1000(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 814
    :goto_2
    return-void

    .line 793
    :catch_2
    move-exception v2

    .line 794
    .local v2, "mre":Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;
    :try_start_3
    iput-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->maxRetriesException:Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;

    .line 795
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v3}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v5}, Lcom/sleepycat/je/rep/elections/Elections;->access$400(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Formatter;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exiting election after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->retryPredicate:Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;

    .line 797
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/elections/Elections$RetryPredicate;->retries()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " retries"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 795
    invoke-static {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 806
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->cleanup()V

    .line 807
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 808
    invoke-static {v3}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v5}, Lcom/sleepycat/je/rep/elections/Elections;->access$400(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Formatter;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 810
    invoke-static {v7}, Lcom/sleepycat/je/rep/elections/Elections;->access$1000(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 811
    invoke-static {v1}, Lcom/sleepycat/je/rep/elections/Elections;->access$1000(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    goto :goto_3

    :cond_1
    nop

    .line 812
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    invoke-static {v3, v4, v5, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 798
    return-void

    .line 806
    .end local v2    # "mre":Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;
    :goto_4
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->cleanup()V

    .line 807
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 808
    invoke-static {v3}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v5}, Lcom/sleepycat/je/rep/elections/Elections;->access$400(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Formatter;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 810
    invoke-static {v7}, Lcom/sleepycat/je/rep/elections/Elections;->access$1000(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 811
    invoke-static {v1}, Lcom/sleepycat/je/rep/elections/Elections;->access$1000(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    goto :goto_5

    :cond_2
    nop

    .line 812
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    invoke-static {v3, v4, v5, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    throw v2
.end method

.method public shutdown()V
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v0}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->shutdownDone(Ljava/util/logging/Logger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v0}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/elections/Elections$ElectionThread;->shutdownThread(Ljava/util/logging/Logger;)V

    .line 822
    return-void
.end method
