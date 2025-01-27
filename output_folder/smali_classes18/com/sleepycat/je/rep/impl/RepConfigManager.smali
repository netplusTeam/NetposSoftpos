.class public Lcom/sleepycat/je/rep/impl/RepConfigManager;
.super Lcom/sleepycat/je/dbi/DbConfigManager;
.source "RepConfigManager.java"


# instance fields
.field private final validateParams:Z


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;)V
    .locals 3
    .param p1, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p2, "repConfigProxy"    # Lcom/sleepycat/je/dbi/RepConfigProxy;

    .line 39
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;-><init>(Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 40
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/RepConfigManager;->checkEnvConfig(Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 41
    move-object v0, p2

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 42
    .local v0, "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepConfigManager;->props:Ljava/util/Properties;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getProps()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 43
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationConfig;->verify()V

    .line 44
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationConfig;->getValidateParams()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/je/rep/impl/RepConfigManager;->validateParams:Z

    .line 45
    return-void
.end method

.method private static checkEnvConfig(Lcom/sleepycat/je/EnvironmentConfig;)V
    .locals 3
    .param p0, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentConfig;->getTransactional()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_MEMORY_ONLY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 63
    invoke-virtual {v0}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/EnvironmentConfig;->getConfigParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "logMemOnly":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    return-void

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A replicated environment must not log to memory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    .end local v0    # "logMemOnly":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A replicated environment must be transactional"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public makeReplicationConfig()Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 7

    .line 83
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 86
    .local v0, "repProperties":Ljava/util/Properties;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepConfigManager;->props:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 87
    .local v1, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "name":Ljava/lang/String;
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 91
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/config/ConfigParam;

    .line 93
    .local v3, "param":Lcom/sleepycat/je/config/ConfigParam;
    if-nez v3, :cond_1

    .line 95
    invoke-static {v2}, Lcom/sleepycat/je/config/ConfigParam;->multiValueParamName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "mvParamName":Ljava/lang/String;
    sget-object v5, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/sleepycat/je/config/ConfigParam;

    .line 97
    if-eqz v3, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a valid BDBJE environment configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-static {v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    throw v5

    .line 104
    .end local v4    # "mvParamName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/sleepycat/je/config/ConfigParam;->isForReplication()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepConfigManager;->props:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_2
    goto :goto_0

    .line 109
    :cond_3
    iget-boolean v2, p0, Lcom/sleepycat/je/rep/impl/RepConfigManager;->validateParams:Z

    .line 110
    invoke-static {v0, v2}, Lcom/sleepycat/je/rep/RepInternal;->makeReplicationConfig(Ljava/util/Properties;Z)Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object v2

    .line 109
    return-object v2
.end method
