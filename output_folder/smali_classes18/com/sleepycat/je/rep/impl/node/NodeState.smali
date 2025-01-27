.class public Lcom/sleepycat/je/rep/impl/node/NodeState;
.super Ljava/lang/Object;
.source "NodeState.java"


# instance fields
.field private final currentState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Ljava/util/logging/Logger;

.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private stateChangeEvent:Lcom/sleepycat/je/rep/StateChangeEvent;

.field private stateChangeListener:Lcom/sleepycat/je/rep/StateChangeListener;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 2
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->stateChangeListener:Lcom/sleepycat/je/rep/StateChangeListener;

    .line 38
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->stateChangeEvent:Lcom/sleepycat/je/rep/StateChangeEvent;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->DETACHED:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 49
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->logger:Ljava/util/logging/Logger;

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized changeAndNotify(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 7
    .param p1, "state"    # Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .param p2, "masterNameId"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    monitor-enter p0

    .line 69
    move-object v0, p1

    .line 70
    .local v0, "newState":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 71
    .local v1, "oldState":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    new-instance v2, Lcom/sleepycat/je/rep/StateChangeEvent;

    invoke-direct {v2, p1, p2}, Lcom/sleepycat/je/rep/StateChangeEvent;-><init>(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->stateChangeEvent:Lcom/sleepycat/je/rep/StateChangeEvent;

    .line 73
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "node:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state change from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->stateChangeListener:Lcom/sleepycat/je/rep/StateChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 79
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->stateChangeEvent:Lcom/sleepycat/je/rep/StateChangeEvent;

    invoke-interface {v2, v3}, Lcom/sleepycat/je/rep/StateChangeListener;->stateChange(Lcom/sleepycat/je/rep/StateChangeEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    goto :goto_0

    .line 80
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/NodeState;
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "State Change listener exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 83
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 84
    new-instance v3, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v5, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LISTENER_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v3, v4, v5, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v3

    .line 90
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 68
    .end local v0    # "newState":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .end local v1    # "oldState":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .end local p1    # "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .end local p2    # "masterNameId":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getChangeListener()Lcom/sleepycat/je/rep/StateChangeListener;
    .locals 1

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->stateChangeListener:Lcom/sleepycat/je/rep/StateChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 59
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/NodeState;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRepEnvState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->currentState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/NodeState;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStateChangeEvent()Lcom/sleepycat/je/rep/StateChangeEvent;
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->stateChangeEvent:Lcom/sleepycat/je/rep/StateChangeEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 98
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/NodeState;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setChangeListener(Lcom/sleepycat/je/rep/StateChangeListener;)V
    .locals 0
    .param p1, "stateChangeListener"    # Lcom/sleepycat/je/rep/StateChangeListener;

    monitor-enter p0

    .line 55
    :try_start_0
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/NodeState;->stateChangeListener:Lcom/sleepycat/je/rep/StateChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 54
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/NodeState;
    .end local p1    # "stateChangeListener":Lcom/sleepycat/je/rep/StateChangeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
