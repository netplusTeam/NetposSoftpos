.class Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;
.super Ljava/util/TimerTask;
.source "Elections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Elections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebroadcastTask"
.end annotation


# instance fields
.field private acquireFailCount:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final periodMs:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Elections;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Elections;I)V
    .locals 0
    .param p2, "periodMs"    # I

    .line 931
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 927
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 928
    const/4 p1, 0x0

    iput p1, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->acquireFailCount:I

    .line 932
    iput p2, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->periodMs:I

    .line 933
    return-void
.end method


# virtual methods
.method public getPeriod()I
    .locals 1

    .line 936
    iget v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->periodMs:I

    return v0
.end method

.method public run()V
    .locals 9

    .line 950
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_2

    .line 951
    iget v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->acquireFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->acquireFailCount:I

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v0}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v1}, Lcom/sleepycat/je/rep/elections/Elections;->access$1200(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$400(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to acquire lock after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->acquireFailCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " retries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 958
    :cond_1
    return-void

    .line 960
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->acquireFailCount:I

    .line 961
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v0}, Lcom/sleepycat/je/rep/elections/Elections;->access$1000(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MasterStatus;->isGroupMaster()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    .line 1003
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1004
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 962
    :cond_3
    return-void

    .line 971
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v0}, Lcom/sleepycat/je/rep/elections/Elections;->access$1000(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v0

    .line 972
    .local v0, "feederManager":Lcom/sleepycat/je/rep/impl/node/FeederManager;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeReplicas()Ljava/util/Set;

    move-result-object v1

    .line 973
    .local v1, "active":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$1000(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 975
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 977
    .local v2, "learners":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v3}, Lcom/sleepycat/je/rep/elections/Elections;->access$600(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllLearnerMembers()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 978
    .local v4, "rn":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 979
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 981
    .end local v4    # "rn":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_5
    goto :goto_0

    .line 983
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_8

    .line 1003
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1004
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 984
    :cond_7
    return-void

    .line 987
    :cond_8
    :try_start_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v3}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v4}, Lcom/sleepycat/je/rep/elections/Elections;->access$1200(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v5}, Lcom/sleepycat/je/rep/elections/Elections;->access$400(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Formatter;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "informing learners:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 989
    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " active: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 991
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 987
    invoke-static {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 993
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v3}, Lcom/sleepycat/je/rep/elections/Elections;->access$800(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask$1;

    invoke-direct {v4, p0, v2}, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask$1;-><init>(Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;Ljava/util/Set;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1003
    .end local v0    # "feederManager":Lcom/sleepycat/je/rep/impl/node/FeederManager;
    .end local v1    # "active":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "learners":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1004
    goto :goto_1

    .line 1003
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v1}, Lcom/sleepycat/je/rep/elections/Elections;->access$300(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$1200(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v3}, Lcom/sleepycat/je/rep/elections/Elections;->access$400(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/logging/Formatter;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1001
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1000
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1003
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1004
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1007
    :cond_9
    return-void

    .line 1003
    :goto_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1004
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_a
    throw v0
.end method
