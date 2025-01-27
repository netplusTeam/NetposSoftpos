.class Lcom/sleepycat/je/rep/elections/Elections$InformLearners;
.super Ljava/lang/Object;
.source "Elections.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Elections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InformLearners"
.end annotation


# instance fields
.field final learners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Elections;

.field final winningProposal:Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/Elections;Ljava/util/Set;Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;)V
    .locals 0
    .param p3, "winningProposal"    # Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;",
            ")V"
        }
    .end annotation

    .line 902
    .local p2, "learners":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Elections$InformLearners;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/Elections$InformLearners;->learners:Ljava/util/Set;

    .line 904
    iput-object p3, p0, Lcom/sleepycat/je/rep/elections/Elections$InformLearners;->winningProposal:Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;

    .line 905
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 909
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$InformLearners;->learners:Ljava/util/Set;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections$InformLearners;->winningProposal:Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$InformLearners;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 911
    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$700(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$InformLearners;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 912
    invoke-static {v3}, Lcom/sleepycat/je/rep/elections/Elections;->access$800(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections$InformLearners;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 913
    invoke-static {v4}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Elections$InformLearners;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    .line 914
    invoke-static {v5}, Lcom/sleepycat/je/rep/elections/Elections;->access$900(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/elections/ElectionsConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/sleepycat/je/rep/elections/ElectionsConfig;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    .line 909
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/je/rep/elections/Learner;->informLearners(Ljava/util/Set;Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;Lcom/sleepycat/je/rep/elections/Protocol;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V

    .line 916
    return-void
.end method
