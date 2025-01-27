.class public Lcom/sleepycat/je/rep/ReplicatedEnvironment;
.super Lcom/sleepycat/je/Environment;
.source "ReplicatedEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    }
.end annotation


# instance fields
.field private handleRepConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private volatile repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;)V
    .locals 6
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "repConfig"    # Lcom/sleepycat/je/rep/ReplicationConfig;
    .param p3, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;,
            Lcom/sleepycat/je/rep/ReplicaConsistencyException;,
            Lcom/sleepycat/je/rep/InsufficientLogException;,
            Lcom/sleepycat/je/rep/RollbackException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 538
    sget-object v5, Lcom/sleepycat/je/rep/QuorumPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/rep/QuorumPolicy;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;-><init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;)V

    .line 540
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;)V
    .locals 8
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "repConfig"    # Lcom/sleepycat/je/rep/ReplicationConfig;
    .param p3, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p4, "consistencyPolicy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .param p5, "initialElectionPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;,
            Lcom/sleepycat/je/rep/InsufficientLogException;,
            Lcom/sleepycat/je/rep/ReplicaConsistencyException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 464
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;-><init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;ZLcom/sleepycat/je/rep/impl/RepImpl;)V

    .line 471
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;ZLcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 2
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "repConfig"    # Lcom/sleepycat/je/rep/ReplicationConfig;
    .param p3, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p4, "consistencyPolicy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .param p5, "initialElectionPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .param p6, "joinGroup"    # Z
    .param p7, "envImplParam"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;,
            Lcom/sleepycat/je/rep/ReplicaConsistencyException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 605
    invoke-direct {p0, p1, p3, p2, p7}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 607
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 608
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 614
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->initializeChannelFactory()V

    .line 616
    if-eqz p6, :cond_0

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct {p0, v0, p4, p5}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->joinGroup(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/RollbackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Lcom/sleepycat/je/rep/RollbackException;
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->clearEnvImpl(Lcom/sleepycat/je/Environment;)V

    .line 636
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 638
    invoke-virtual {p0, p1, p3, p2}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->makeEnvironmentImpl(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/RepImpl;

    iput-object v1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 645
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->initializeChannelFactory()V

    .line 647
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct {p0, v1, p4, p5}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->joinGroup(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;)V

    .line 651
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->setHardRecoveryInfo(Lcom/sleepycat/je/rep/RollbackException;)V

    .line 655
    .end local v0    # "e":Lcom/sleepycat/je/rep/RollbackException;
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->fullyInitialized()V

    .line 661
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    .line 663
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMonitorEventManager()Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->notifyJoinGroup()V

    goto :goto_1

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 673
    :cond_1
    :goto_1
    return-void

    .line 668
    :cond_2
    nop

    .line 669
    const-string v0, "An earlier handle creation had resulted in the nodejoining the group"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private checkOpen()Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1

    .line 1053
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->checkOpen(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1059
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getNonNullRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    return-object v0
.end method

.method private dontJoinGroup()Z
    .locals 3

    .line 578
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getRepConfig()Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->DONT_JOIN_REP_GROUP:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 579
    invoke-virtual {v2}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/ReplicationConfig;->getConfigParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private joinGroup(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;)V
    .locals 2
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "consistencyPolicy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .param p3, "initialElectionPolicy"    # Lcom/sleepycat/je/rep/QuorumPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 551
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->dontJoinGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    return-void

    .line 555
    :cond_0
    const/4 v0, 0x0

    .line 557
    .local v0, "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    nop

    .line 558
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/sleepycat/je/rep/impl/RepImpl;->joinGroup(Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;)Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 560
    if-nez v0, :cond_1

    .line 571
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->abnormalClose()V

    .line 574
    :cond_1
    return-void

    .line 560
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    .line 571
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->abnormalClose()V

    :cond_2
    throw v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 840
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 852
    :try_start_1
    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    nop

    .line 854
    monitor-exit p0

    return-void

    .line 839
    .end local p0    # "this":Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 852
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 845
    :catch_0
    move-exception v1

    .line 847
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v3, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem closing handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 841
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 843
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem closing handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/DatabaseException;->addErrorMessage(Ljava/lang/String;)V

    .line 844
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 852
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :goto_0
    :try_start_3
    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 839
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getGroup()Lcom/sleepycat/je/rep/ReplicationGroup;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 798
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->checkOpen()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 801
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    :try_start_0
    new-instance v1, Lcom/sleepycat/je/rep/ReplicationGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/ReplicationGroup;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 802
    :catch_0
    move-exception v1

    .line 803
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->invalidate(Ljava/lang/Error;)V

    .line 804
    throw v1
.end method

.method getMaybeNullRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNonNullRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 3

    .line 1027
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->repEnvironmentImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1029
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    if-eqz v0, :cond_0

    .line 1033
    return-object v0

    .line 1030
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Environment is closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRepConfig()Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 978
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->checkOpen()Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 980
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->handleRepConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

    return-object v0
.end method

.method public getRepMutableConfig()Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 947
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->checkOpen()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 950
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    nop

    .line 951
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->cloneRepMutableConfig()Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    move-result-object v1

    .line 952
    .local v1, "config":Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->fillInEnvironmentGeneratedProps(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    return-object v1

    .line 954
    .end local v1    # "config":Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    :catch_0
    move-exception v1

    .line 955
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->invalidate(Ljava/lang/Error;)V

    .line 956
    throw v1
.end method

.method public getRepStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1000
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->checkOpen()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 1002
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    if-nez p1, :cond_0

    .line 1003
    sget-object p1, Lcom/sleepycat/je/StatsConfig;->DEFAULT:Lcom/sleepycat/je/StatsConfig;

    .line 1006
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;

    move-result-object v1

    return-object v1
.end method

.method public getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 765
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->checkOpen()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 768
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 769
    :catch_0
    move-exception v1

    .line 770
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->invalidate(Ljava/lang/Error;)V

    .line 771
    throw v1
.end method

.method public getStateChangeListener()Lcom/sleepycat/je/rep/StateChangeListener;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 905
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->checkOpen()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 908
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getChangeListener()Lcom/sleepycat/je/rep/StateChangeListener;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 909
    :catch_0
    move-exception v1

    .line 910
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->invalidate(Ljava/lang/Error;)V

    .line 911
    throw v1
.end method

.method public printStartupInfo(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 1070
    invoke-super {p0, p1}, Lcom/sleepycat/je/Environment;->printStartupInfo(Ljava/io/PrintStream;)V

    .line 1072
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getNonNullRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStartupTracker()Lcom/sleepycat/je/dbi/StartupTracker;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_JOIN_GROUP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/dbi/StartupTracker;->displayStats(Ljava/io/PrintStream;Lcom/sleepycat/je/dbi/StartupTracker$Phase;)V

    .line 1074
    return-void
.end method

.method public registerAppStateMonitor(Lcom/sleepycat/je/rep/AppStateMonitor;)V
    .locals 2
    .param p1, "appStateMonitor"    # Lcom/sleepycat/je/rep/AppStateMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1253
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->checkOpen()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 1255
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->registerAppStateMonitor(Lcom/sleepycat/je/rep/AppStateMonitor;)V

    .line 1256
    return-void
.end method

.method public setRepMutableConfig(Lcom/sleepycat/je/rep/ReplicationMutableConfig;)V
    .locals 2
    .param p1, "mutableConfig"    # Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 925
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->checkOpen()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 927
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    const-string v1, "mutableConfig"

    invoke-static {p1, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->setRepMutableConfig(Lcom/sleepycat/je/rep/ReplicationMutableConfig;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    nop

    .line 935
    return-void

    .line 931
    :catch_0
    move-exception v1

    .line 932
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->invalidate(Ljava/lang/Error;)V

    .line 933
    throw v1
.end method

.method public setStateChangeListener(Lcom/sleepycat/je/rep/StateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sleepycat/je/rep/StateChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 877
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->checkOpen()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 880
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->setChangeListener(Lcom/sleepycat/je/rep/StateChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    nop

    .line 885
    return-void

    .line 881
    :catch_0
    move-exception v1

    .line 882
    .local v1, "E":Ljava/lang/Error;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->invalidate(Ljava/lang/Error;)V

    .line 883
    throw v1
.end method

.method protected setupRepConfig(Ljava/io/File;Lcom/sleepycat/je/dbi/RepConfigProxy;Lcom/sleepycat/je/EnvironmentConfig;)Lcom/sleepycat/je/dbi/RepConfigProxy;
    .locals 8
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "repConfigProxy"    # Lcom/sleepycat/je/dbi/RepConfigProxy;
    .param p3, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;

    .line 694
    move-object v0, p2

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 695
    .local v0, "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/rep/ReplicationConfig;->DEFAULT:Lcom/sleepycat/je/rep/ReplicationConfig;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 697
    .local v1, "baseConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->clone()Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object v2

    .line 699
    .local v2, "useConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    invoke-virtual {p3}, Lcom/sleepycat/je/EnvironmentConfig;->getReadOnly()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 716
    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->ARBITER_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 717
    invoke-virtual {v3}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v3

    .line 716
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/ReplicationConfig;->getConfigParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 717
    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 718
    .local v3, "arbUse":Z
    sget-object v5, Lcom/sleepycat/je/rep/impl/RepParams;->SUBSCRIBER_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 719
    invoke-virtual {v5}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v5

    .line 718
    invoke-virtual {v2, v5}, Lcom/sleepycat/je/rep/ReplicationConfig;->getConfigParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 719
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 720
    .local v5, "subUse":Z
    sget-object v6, Lcom/sleepycat/je/rep/impl/RepParams;->NETWORKBACKUP_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 721
    invoke-virtual {v6}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v6

    .line 720
    invoke-virtual {v2, v6}, Lcom/sleepycat/je/rep/ReplicationConfig;->getConfigParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 721
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 723
    .local v4, "networkBackupUse":Z
    if-nez v3, :cond_2

    if-nez v5, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    .line 724
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "A replicated environment may not be opened read-only"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 728
    .end local v3    # "arbUse":Z
    .end local v4    # "networkBackupUse":Z
    .end local v5    # "subUse":Z
    :cond_2
    :goto_1
    nop

    .line 729
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/ReplicationConfig;->getProps()Ljava/util/Properties;

    move-result-object v3

    const/4 v4, 0x1

    .line 728
    invoke-static {p1, v3, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->applyFileConfig(Ljava/io/File;Ljava/util/Properties;Z)V

    .line 731
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/ReplicationConfig;->propagateRepNetProps()V

    .line 732
    iput-object v2, p0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->handleRepConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 733
    return-object v2
.end method

.method public declared-synchronized shutdownGroup(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "replicaShutdownTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 1219
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->checkOpen()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 1226
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    invoke-static {}, Lcom/sleepycat/je/dbi/DbEnvPool;->getInstance()Lcom/sleepycat/je/dbi/DbEnvPool;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1227
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1228
    nop

    .line 1229
    :try_start_2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1228
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->shutdownGroupSetup(J)V

    .line 1230
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->close()V

    .line 1231
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1232
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1233
    monitor-exit p0

    return-void

    .line 1231
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local p1    # "replicaShutdownTimeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1232
    .restart local v0    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .restart local p1    # "replicaShutdownTimeout":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_1
    move-exception v2

    :goto_0
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local p0    # "this":Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    :catchall_2
    move-exception v2

    goto :goto_0

    .line 1218
    .end local v0    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local p1    # "replicaShutdownTimeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public transferMaster(Ljava/util/Set;ILjava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 1
    .param p2, "timeout"    # I
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1325
    .local p1, "replicas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->transferMaster(Ljava/util/Set;ILjava/util/concurrent/TimeUnit;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transferMaster(Ljava/util/Set;ILjava/util/concurrent/TimeUnit;Z)Ljava/lang/String;
    .locals 3
    .param p2, "timeout"    # I
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1341
    .local p1, "replicas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->checkOpen()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 1343
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    if-eqz p3, :cond_0

    if-lez p2, :cond_0

    .line 1347
    int-to-long v1, p2

    .line 1348
    invoke-virtual {p3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 1347
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/sleepycat/je/rep/impl/RepImpl;->transferMaster(Ljava/util/Set;JZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1344
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid timeout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
