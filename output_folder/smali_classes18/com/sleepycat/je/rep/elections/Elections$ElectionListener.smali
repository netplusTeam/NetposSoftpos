.class Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;
.super Ljava/lang/Object;
.source "Elections.java"

# interfaces
.implements Lcom/sleepycat/je/rep/elections/Learner$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Elections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElectionListener"
.end annotation


# instance fields
.field private electionLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;->electionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 610
    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;->electionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 611
    return-void
.end method


# virtual methods
.method public getElectionLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;->electionLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public declared-synchronized notify(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V
    .locals 1
    .param p1, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .param p2, "value"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;

    monitor-enter p0

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;->electionLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    .end local p0    # "this":Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 635
    .end local p1    # "proposal":Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .end local p2    # "value":Lcom/sleepycat/je/rep/elections/Protocol$Value;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 2

    monitor-enter p0

    .line 617
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;->electionLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    monitor-exit p0

    return-object v0

    .line 616
    .end local p0    # "this":Lcom/sleepycat/je/rep/elections/Elections$ElectionListener;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
