.class public Lcom/sleepycat/je/rep/arbiter/Arbiter;
.super Ljava/lang/Object;
.source "Arbiter.java"


# instance fields
.field private final ARB_CONFIG:Ljava/lang/String;

.field private final ARB_HOME:Ljava/lang/String;

.field private final ac:Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;

.field private ai:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

.field private final repEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;)V
    .locals 7
    .param p1, "arbiterConfig"    # Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;,
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "ArbiterConfig"

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->ARB_CONFIG:Ljava/lang/String;

    .line 61
    const-string v0, "ArbiterHome"

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->ARB_HOME:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->clone()Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->ac:Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;

    .line 88
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/arbiter/Arbiter;->verifyParameters(Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;)V

    .line 89
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->getArbiterHome()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "envHome":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->getProps()Ljava/util/Properties;

    move-result-object v2

    .line 97
    .local v2, "allProps":Ljava/util/Properties;
    new-instance v3, Lcom/sleepycat/je/EnvironmentConfig;

    .line 98
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/arbiter/Arbiter;->getEnvProps(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sleepycat/je/EnvironmentConfig;-><init>(Ljava/util/Properties;)V

    .line 99
    .local v3, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 100
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 101
    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RECOVERY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 102
    invoke-virtual {v4}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v4

    .line 101
    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 103
    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_SETUP_LOGGER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 104
    invoke-virtual {v4}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v4

    .line 103
    const-string/jumbo v6, "true"

    invoke-virtual {v3, v4, v6}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 105
    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_USE_WRITE_QUEUE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 106
    invoke-virtual {v4}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 107
    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_WRITE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 108
    invoke-virtual {v4}, Lcom/sleepycat/je/config/IntConfigParam;->getName()Ljava/lang/String;

    move-result-object v4

    .line 107
    const-string v5, "4096"

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 109
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->getLoggingHandler()Ljava/util/logging/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->getLoggingHandler()Ljava/util/logging/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/EnvironmentConfig;->setLoggingHandler(Ljava/util/logging/Handler;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 113
    :cond_0
    new-instance v4, Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 114
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/arbiter/Arbiter;->getRepEnvProps(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sleepycat/je/rep/ReplicationConfig;-><init>(Ljava/util/Properties;)V

    .line 115
    .local v4, "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    sget-object v5, Lcom/sleepycat/je/rep/impl/RepParams;->ARBITER_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v5}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 116
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sleepycat/je/rep/ReplicationConfig;->setRepNetConfig(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 118
    invoke-static {v1, v4, v3}, Lcom/sleepycat/je/rep/RepInternal;->createInternalEnvHandle(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->repEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    .line 122
    :try_start_0
    new-instance v5, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 123
    invoke-static {v0}, Lcom/sleepycat/je/rep/RepInternal;->getNonNullRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-direct {v5, v1, v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;-><init>(Ljava/io/File;Lcom/sleepycat/je/rep/impl/RepImpl;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->ai:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 124
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->runArbiter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    nop

    .line 129
    return-void

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/Arbiter;->shutdown()V

    .line 127
    throw v0

    .line 91
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v2    # "allProps":Ljava/util/Properties;
    .end local v3    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v4    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The specified environment directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copyMutablePropsTo(Ljava/util/Properties;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 4
    .param p1, "from"    # Ljava/util/Properties;
    .param p2, "toConfig"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 260
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 261
    .local v0, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    .local v1, "paramName":Ljava/lang/String;
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 264
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/config/ConfigParam;

    .line 266
    .local v2, "param":Lcom/sleepycat/je/config/ConfigParam;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sleepycat/je/config/ConfigParam;->isForReplication()Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    invoke-virtual {v2}, Lcom/sleepycat/je/config/ConfigParam;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 270
    .end local v1    # "paramName":Ljava/lang/String;
    .end local v2    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_0
    goto :goto_0

    .line 271
    :cond_1
    return-void
.end method

.method private copyMutablePropsTo(Ljava/util/Properties;Lcom/sleepycat/je/rep/ReplicationMutableConfig;)V
    .locals 4
    .param p1, "from"    # Ljava/util/Properties;
    .param p2, "toConfig"    # Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 244
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 245
    .local v0, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, "paramName":Ljava/lang/String;
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 248
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/config/ConfigParam;

    .line 250
    .local v2, "param":Lcom/sleepycat/je/config/ConfigParam;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sleepycat/je/config/ConfigParam;->isForReplication()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    invoke-virtual {v2}, Lcom/sleepycat/je/config/ConfigParam;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/sleepycat/je/rep/ReplicationMutableConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 254
    .end local v1    # "paramName":Ljava/lang/String;
    .end local v2    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_0
    goto :goto_0

    .line 255
    :cond_1
    return-void
.end method

.method private getEnvProps(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 5
    .param p1, "props"    # Ljava/util/Properties;

    .line 216
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 217
    .local v0, "envProps":Ljava/util/Properties;
    invoke-virtual {p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 218
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 220
    .local v2, "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    .local v3, "key":Ljava/lang/String;
    const-string v4, "je.rep."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v2    # "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 225
    :cond_1
    return-object v0
.end method

.method private getRepEnvProps(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 5
    .param p1, "props"    # Ljava/util/Properties;

    .line 229
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 230
    .local v0, "repEnvProps":Ljava/util/Properties;
    invoke-virtual {p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 231
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 233
    .local v2, "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    .local v3, "key":Ljava/lang/String;
    const-string v4, "je.rep."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v2    # "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 238
    :cond_1
    return-object v0
.end method

.method private verifyParameters(Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;)V
    .locals 2
    .param p1, "ac"    # Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 208
    const-string v0, "ArbiterConfig"

    invoke-static {p1, v0}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->getArbiterHome()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArbiterHome"

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "je.rep.groupName"

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->getNodeHostPort()Ljava/lang/String;

    move-result-object v0

    const-string v1, "je.rep.nodeHostPort"

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->getHelperHosts()Ljava/lang/String;

    move-result-object v0

    const-string v1, "je.rep.helperHosts"

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    return-void
.end method


# virtual methods
.method public getArbiterMutableConfig()Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->ac:Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/ArbiterConfig;->getArbiterMutableConfig()Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->ai:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getArbState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    return-object v0
.end method

.method public getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/rep/arbiter/ArbiterStats;
    .locals 3
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->ai:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    return-object v0

    .line 180
    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/sleepycat/je/StatsConfig;->DEFAULT:Lcom/sleepycat/je/StatsConfig;

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 183
    .local v0, "useConfig":Lcom/sleepycat/je/StatsConfig;
    :goto_0
    new-instance v1, Lcom/sleepycat/je/rep/arbiter/ArbiterStats;

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->ai:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/arbiter/ArbiterStats;-><init>(Lcom/sleepycat/je/utilint/StatGroup;)V

    return-object v1
.end method

.method public setArbiterMutableConfig(Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;)V
    .locals 4
    .param p1, "config"    # Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->repEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getRepMutableConfig()Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    move-result-object v0

    .line 149
    .local v0, "rmc":Lcom/sleepycat/je/rep/ReplicationMutableConfig;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->getProps()Ljava/util/Properties;

    move-result-object v1

    .line 150
    .local v1, "newProps":Ljava/util/Properties;
    invoke-direct {p0, v1, v0}, Lcom/sleepycat/je/rep/arbiter/Arbiter;->copyMutablePropsTo(Ljava/util/Properties;Lcom/sleepycat/je/rep/ReplicationMutableConfig;)V

    .line 151
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->repEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->setRepMutableConfig(Lcom/sleepycat/je/rep/ReplicationMutableConfig;)V

    .line 152
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->ai:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->refreshHelperHosts()V

    .line 154
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->repEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getMutableConfig()Lcom/sleepycat/je/EnvironmentMutableConfig;

    move-result-object v2

    .line 155
    .local v2, "emc":Lcom/sleepycat/je/EnvironmentMutableConfig;
    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/rep/arbiter/Arbiter;->copyMutablePropsTo(Ljava/util/Properties;Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 156
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->repEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->setMutableConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 157
    return-void
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->ai:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->shutdown()V

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->ai:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 201
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/Arbiter;->repEnv:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->close()V

    .line 204
    :cond_1
    return-void
.end method
