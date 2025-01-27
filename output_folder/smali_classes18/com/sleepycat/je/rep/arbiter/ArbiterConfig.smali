.class public Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
.super Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
.source "ArbiterConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private arbiterHome:Ljava/lang/String;

.field private loggingHandler:Ljava/util/logging/Handler;

.field private repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;-><init>()V

    .line 42
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;

    .line 50
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;-><init>(Ljava/util/Properties;)V

    .line 51
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 2

    .line 465
    invoke-super {p0}, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->clone()Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;

    .line 466
    .local v0, "retval":Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->clone()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 467
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->arbiterHome:Ljava/lang/String;

    iput-object v1, v0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->arbiterHome:Ljava/lang/String;

    .line 468
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->clone()Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->clone()Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;

    move-result-object v0

    return-object v0
.end method

.method public getArbiterHome()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->arbiterHome:Ljava/lang/String;

    return-object v0
.end method

.method getArbiterMutableConfig()Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
    .locals 1

    .line 459
    invoke-super {p0}, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->copy()Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;

    move-result-object v0

    return-object v0
.end method

.method public getChannelTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 286
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-static {v0, v1, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnableGroupAcks()Z
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ENABLE_GROUP_ACKS:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    return v0
.end method

.method public getFeederTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 342
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->FEEDER_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-static {v0, v1, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeartbeatInterval()I
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->HEARTBEAT_INTERVAL:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    return v0
.end method

.method public getLoggingHandler()Ljava/util/logging/Handler;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->loggingHandler:Ljava/util/logging/Handler;

    return-object v0
.end method

.method public getMessageQueueSize()I
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_MESSAGE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    return v0
.end method

.method public getNodeHostPort()Ljava/lang/String;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreHeartbeatTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 314
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->PRE_HEARTBEAT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-static {v0, v1, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReceiveBufferSize()I
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_RECEIVE_BUFFER_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    return v0
.end method

.method public getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    return-object v0
.end method

.method public getStreamOpenTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 394
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPSTREAM_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-static {v0, v1, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnknownStateTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 188
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ENV_UNKNOWN_STATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-static {v0, v1, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setArbiterHome(Ljava/lang/String;)V
    .locals 0
    .param p1, "arbiterHome"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->arbiterHome:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setChannelTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    iget-boolean v5, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->validateParams:Z

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->setDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;JLjava/util/concurrent/TimeUnit;Z)V

    .line 276
    return-object p0
.end method

.method public setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 9
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "forReplication":Z
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 433
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/config/ConfigParam;

    .line 434
    .local v1, "param":Lcom/sleepycat/je/config/ConfigParam;
    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {v1}, Lcom/sleepycat/je/config/ConfigParam;->isForReplication()Z

    move-result v0

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->validateParams:Z

    const/4 v8, 0x1

    move-object v3, p1

    move-object v4, p2

    move v7, v0

    invoke-static/range {v2 .. v8}, Lcom/sleepycat/je/dbi/DbConfigManager;->setConfigParam(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 444
    return-object p0
.end method

.method public bridge synthetic setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;

    move-result-object p1

    return-object p1
.end method

.method public setEnableGroupAcks(Z)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 3
    .param p1, "val"    # Z

    .line 236
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ENABLE_GROUP_ACKS:Lcom/sleepycat/je/config/BooleanConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setBooleanVal(Ljava/util/Properties;Lcom/sleepycat/je/config/BooleanConfigParam;ZZ)V

    .line 238
    return-object p0
.end method

.method public setFeederTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->FEEDER_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    iget-boolean v5, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->validateParams:Z

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->setDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;JLjava/util/concurrent/TimeUnit;Z)V

    .line 332
    return-object p0
.end method

.method public setGroupName(Ljava/lang/String;)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 111
    return-object p0
.end method

.method public setHeartbeatInterval(I)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 3
    .param p1, "millis"    # I

    .line 199
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->HEARTBEAT_INTERVAL:Lcom/sleepycat/je/config/IntConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;IZ)V

    .line 201
    return-object p0
.end method

.method public setLoggingHandler(Ljava/util/logging/Handler;)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 0
    .param p1, "handler"    # Ljava/util/logging/Handler;

    .line 474
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->loggingHandler:Ljava/util/logging/Handler;

    .line 475
    return-object p0
.end method

.method public setMessageQueueSize(I)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 3
    .param p1, "val"    # I

    .line 222
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_MESSAGE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;IZ)V

    .line 225
    return-object p0
.end method

.method public setNodeHostPort(Ljava/lang/String;)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 3
    .param p1, "hostPort"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 137
    return-object p0
.end method

.method public setNodeName(Ljava/lang/String;)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_NAME:Lcom/sleepycat/je/config/ConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 86
    return-object p0
.end method

.method public setPreHeartbeatTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->PRE_HEARTBEAT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    iget-boolean v5, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->validateParams:Z

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->setDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;JLjava/util/concurrent/TimeUnit;Z)V

    .line 304
    return-object p0
.end method

.method public setReceiveBufferSize(I)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 3
    .param p1, "val"    # I

    .line 354
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_RECEIVE_BUFFER_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;IZ)V

    .line 357
    return-object p0
.end method

.method public setRepNetConfig(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 0
    .param p1, "netConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 420
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->setRepNetConfigVoid(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)V

    .line 421
    return-object p0
.end method

.method public setRepNetConfigVoid(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)V
    .locals 2
    .param p1, "netConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 452
    if-eqz p1, :cond_0

    .line 455
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 456
    return-void

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "netConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStreamOpenTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPSTREAM_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    iget-boolean v5, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->validateParams:Z

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->setDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;JLjava/util/concurrent/TimeUnit;Z)V

    .line 384
    return-object p0
.end method

.method public setUnknownStateTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .locals 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ENV_UNKNOWN_STATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    iget-boolean v5, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->validateParams:Z

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->setDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;JLjava/util/concurrent/TimeUnit;Z)V

    .line 175
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arbiterHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->arbiterHome:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nrepNetConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 493
    invoke-super {p0}, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    return-object v0
.end method
