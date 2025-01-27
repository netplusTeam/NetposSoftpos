.class public Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
.super Ljava/lang/Object;
.source "ArbiterMutableConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field props:Ljava/util/Properties;

.field validateParams:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->validateParams:Z

    .line 36
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "properties"    # Ljava/util/Properties;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->validateParams:Z

    .line 40
    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    .line 41
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
    .locals 2

    .line 209
    nop

    .line 210
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;

    .line 211
    .local v0, "copy":Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    iput-object v1, v0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-object v0

    .line 213
    .end local v0    # "copy":Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "willNeverOccur":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->clone()Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;

    move-result-object v0

    return-object v0
.end method

.method protected copy()Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
    .locals 2

    .line 196
    new-instance v0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;-><init>(Ljava/util/Properties;)V

    return-object v0
.end method

.method public getConfigParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "paramName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    invoke-static {v0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getConfigParam(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsoleLoggingLevel()Ljava/lang/String;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->JE_CONSOLE_LEVEL:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileLoggingLevel()Ljava/lang/String;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->JE_FILE_LEVEL:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHelperHosts()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->HELPER_HOSTS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProps()Ljava/util/Properties;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method public isConfigParamSet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "paramName"    # Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
    .locals 9
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "forReplication":Z
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 165
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/config/ConfigParam;

    .line 166
    .local v1, "param":Lcom/sleepycat/je/config/ConfigParam;
    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1}, Lcom/sleepycat/je/config/ConfigParam;->isForReplication()Z

    move-result v0

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v3, p1

    move-object v4, p2

    move v7, v0

    invoke-static/range {v2 .. v8}, Lcom/sleepycat/je/dbi/DbConfigManager;->setConfigParam(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 177
    return-object p0
.end method

.method public setConsoleLoggingLevel(Ljava/lang/String;)Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .line 130
    invoke-static {p1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    .line 131
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->JE_CONSOLE_LEVEL:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 133
    return-object p0
.end method

.method public setFileLoggingLevel(Ljava/lang/String;)Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .line 94
    invoke-static {p1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->JE_FILE_LEVEL:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 97
    return-object p0
.end method

.method public setHelperHosts(Ljava/lang/String;)Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;
    .locals 3
    .param p1, "helperHosts"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->HELPER_HOSTS:Lcom/sleepycat/je/config/ConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 55
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
