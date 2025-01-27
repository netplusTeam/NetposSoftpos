.class Lcom/sleepycat/je/rep/impl/RepImpl$InternalReplicatedEnvironment;
.super Lcom/sleepycat/je/rep/ReplicatedEnvironment;
.source "RepImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalReplicatedEnvironment"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 8
    .param p1, "environmentHome"    # Ljava/io/File;
    .param p2, "cloneRepConfig"    # Lcom/sleepycat/je/rep/ReplicationConfig;
    .param p3, "cloneConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p4, "envImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 2221
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;-><init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;ZLcom/sleepycat/je/rep/impl/RepImpl;)V

    .line 2224
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 2233
    :try_start_0
    const-string v0, "close() not permitted on an internal environment handle"

    .line 2234
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2232
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/RepImpl$InternalReplicatedEnvironment;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isInternalHandle()Z
    .locals 1

    .line 2228
    const/4 v0, 0x1

    return v0
.end method
