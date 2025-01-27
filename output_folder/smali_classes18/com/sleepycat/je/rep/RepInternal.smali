.class public Lcom/sleepycat/je/rep/RepInternal;
.super Ljava/lang/Object;
.source "RepInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDetachedEnv(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    .locals 9
    .param p0, "envHome"    # Ljava/io/File;
    .param p1, "repConfig"    # Lcom/sleepycat/je/rep/ReplicationConfig;
    .param p2, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 91
    new-instance v8, Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    sget-object v5, Lcom/sleepycat/je/rep/QuorumPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/rep/QuorumPolicy;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;-><init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;ZLcom/sleepycat/je/rep/impl/RepImpl;)V

    return-object v8
.end method

.method public static createInternalEnvHandle(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    .locals 9
    .param p0, "envHome"    # Ljava/io/File;
    .param p1, "repConfig"    # Lcom/sleepycat/je/rep/ReplicationConfig;
    .param p2, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 108
    new-instance v8, Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;-><init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;ZLcom/sleepycat/je/rep/impl/RepImpl;)V

    return-object v8
.end method

.method public static disableParameterValidation(Lcom/sleepycat/je/rep/ReplicationMutableConfig;)V
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->setOverrideValidateParams(Z)V

    .line 121
    return-void
.end method

.method public static getAllowConvert(Lcom/sleepycat/je/rep/ReplicationConfig;)Z
    .locals 1
    .param p0, "repConfig"    # Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 137
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getAllowConvert()Z

    move-result v0

    return v0
.end method

.method public static getNodeId(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)I
    .locals 1
    .param p0, "rep"    # Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    .line 76
    invoke-static {p0}, Lcom/sleepycat/je/rep/RepInternal;->getNonNullRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNodeId()I

    move-result v0

    return v0
.end method

.method public static getNonNullRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1
    .param p0, "rep"    # Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    .line 61
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getNonNullRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getRepGroupImpl(Lcom/sleepycat/je/rep/ReplicationGroup;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 1
    .param p0, "group"    # Lcom/sleepycat/je/rep/ReplicationGroup;

    .line 65
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationGroup;->getRepGroupImpl()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1
    .param p0, "rep"    # Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    .line 45
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getMaybeNullRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    return-object v0
.end method

.method public static makeReplicatedEnvironmentStats(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    .locals 1
    .param p0, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 127
    new-instance v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/StatsConfig;)V

    return-object v0
.end method

.method public static makeReplicationConfig(Ljava/util/Properties;Z)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "validateParams"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/rep/ReplicationConfig;-><init>(Ljava/util/Properties;Z)V

    return-object v0
.end method

.method public static setAllowConvert(Lcom/sleepycat/je/rep/ReplicationConfig;Z)V
    .locals 0
    .param p0, "repConfig"    # Lcom/sleepycat/je/rep/ReplicationConfig;
    .param p1, "allowConvert"    # Z

    .line 133
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setAllowConvert(Z)V

    .line 134
    return-void
.end method
