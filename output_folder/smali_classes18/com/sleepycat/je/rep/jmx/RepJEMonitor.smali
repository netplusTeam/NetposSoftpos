.class public Lcom/sleepycat/je/rep/jmx/RepJEMonitor;
.super Lcom/sleepycat/je/jmx/JEMonitor;
.source "RepJEMonitor.java"


# static fields
.field public static final OP_DUMP_REPSTATS:Ljava/lang/String; = "getReplicationStats"

.field private static final OP_DUMP_REPSTATS_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_DUMP_STATE:Ljava/lang/String; = "dumpReplicationState"

.field private static final OP_DUMP_STATE_INFO:Ljavax/management/MBeanOperationInfo;

.field public static final OP_GET_REP_TIPS:Ljava/lang/String; = "getRepTips"


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 52
    new-instance v6, Ljavax/management/MBeanOperationInfo;

    sget-object v3, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->statParams:[Ljavax/management/MBeanParameterInfo;

    const-string v1, "getReplicationStats"

    const-string v2, "Dump environment\'s replicated stats."

    const-string v4, "java.lang.String"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v6, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->OP_DUMP_REPSTATS_INFO:Ljavax/management/MBeanOperationInfo;

    .line 58
    new-instance v0, Ljavax/management/MBeanOperationInfo;

    const/4 v1, 0x0

    new-array v10, v1, [Ljavax/management/MBeanParameterInfo;

    const-string v8, "dumpReplicationState"

    const-string v9, "Dump replicated environment state, including current position in replication stream and replication group database."

    const-string v11, "java.lang.String"

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->OP_DUMP_STATE_INFO:Ljavax/management/MBeanOperationInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/sleepycat/je/jmx/JEMonitor;-><init>()V

    .line 72
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/Environment;)V
    .locals 0
    .param p1, "env"    # Lcom/sleepycat/je/Environment;

    .line 67
    invoke-direct {p0, p1}, Lcom/sleepycat/je/jmx/JEMonitor;-><init>(Lcom/sleepycat/je/Environment;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected addOperations()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/sleepycat/je/jmx/JEMonitor;->addOperations()V

    .line 120
    iget-object v0, p0, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->operationList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->OP_DUMP_REPSTATS_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->operationList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->OP_DUMP_STATE_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method protected doRegisterMBean(Lcom/sleepycat/je/Environment;)V
    .locals 3
    .param p1, "useEnv"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->server:Ljavax/management/MBeanServer;

    new-instance v1, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;

    invoke-direct {v1, p1}, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;-><init>(Lcom/sleepycat/je/Environment;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->jeName:Ljavax/management/ObjectName;

    invoke-interface {v0, v1, v2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 115
    return-void
.end method

.method protected initClassFields()V
    .locals 1

    .line 76
    const-class v0, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;

    iput-object v0, p0, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->currentClass:Ljava/lang/Class;

    .line 77
    const-string v0, "RepJEMonitor"

    iput-object v0, p0, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->className:Ljava/lang/String;

    .line 78
    const-string v0, "Monitor an open replicated Berkeley DB, Java Edition environment."

    iput-object v0, p0, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->DESCRIPTION:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .param p3, "signature"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MBeanException;
        }
    .end annotation

    .line 88
    if-eqz p1, :cond_3

    .line 93
    :try_start_0
    const-string v0, "getReplicationStats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->env:Lcom/sleepycat/je/Environment;

    check-cast v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    .line 95
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->getStatsConfig([Ljava/lang/Object;)Lcom/sleepycat/je/StatsConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getRepStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0

    .line 96
    :cond_0
    const-string v0, "getRepTips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->env:Lcom/sleepycat/je/Environment;

    check-cast v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 98
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->getStatsConfig([Ljava/lang/Object;)Lcom/sleepycat/je/StatsConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getRepStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->getTips()Ljava/util/Map;

    move-result-object v0

    .line 97
    return-object v0

    .line 99
    :cond_1
    const-string v0, "dumpReplicationState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/sleepycat/je/rep/jmx/RepJEMonitor;->env:Lcom/sleepycat/je/Environment;

    check-cast v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    .line 101
    invoke-static {v0}, Lcom/sleepycat/je/rep/RepInternal;->getNonNullRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->dumpState()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return-object v0

    .line 105
    :cond_2
    nop

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/jmx/JEMonitor;->invoke(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Ljavax/management/MBeanException;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljavax/management/MBeanException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 89
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ActionName can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
