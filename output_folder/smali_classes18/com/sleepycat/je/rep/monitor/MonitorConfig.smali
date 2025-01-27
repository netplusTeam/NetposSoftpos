.class public Lcom/sleepycat/je/rep/monitor/MonitorConfig;
.super Ljava/lang/Object;
.source "MonitorConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/sleepycat/je/rep/monitor/MonitorConfig;


# instance fields
.field private numRetries:I

.field private props:Ljava/util/Properties;

.field private repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

.field private retryInterval:J

.field private socketConnectTimeout:I

.field private final validateParams:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->DEFAULT:Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->validateParams:Z

    .line 72
    const/4 v0, 0x5

    iput v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->numRetries:I

    .line 73
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->retryInterval:J

    .line 74
    const/16 v0, 0x2710

    iput v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->socketConnectTimeout:I

    .line 84
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->props:Ljava/util/Properties;

    .line 85
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 86
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/rep/ReplicationConfig;)V
    .locals 3
    .param p1, "repConfig"    # Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->validateParams:Z

    .line 72
    const/4 v0, 0x5

    iput v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->numRetries:I

    .line 73
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->retryInterval:J

    .line 74
    const/16 v0, 0x2710

    iput v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->socketConnectTimeout:I

    .line 90
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->props:Ljava/util/Properties;

    .line 91
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->clone()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 92
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->setNodeName(Ljava/lang/String;)Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    .line 93
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->setGroupName(Ljava/lang/String;)Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    .line 94
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeHostPort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->setNodeHostPort(Ljava/lang/String;)Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    .line 95
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->getHelperHosts()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->setHelperHosts(Ljava/lang/String;)Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    .line 97
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->isMonitor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The configured node type was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/NodeType;->MONITOR:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validate(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/Number;
    .param p2, "param"    # Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 391
    return-void

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be a positive number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/rep/monitor/MonitorConfig;
    .locals 2

    .line 399
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    .line 401
    .local v0, "copy":Lcom/sleepycat/je/rep/monitor/MonitorConfig;
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->props:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    iput-object v1, v0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->props:Ljava/util/Properties;

    .line 402
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->clone()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    return-object v0

    .line 404
    .end local v0    # "copy":Lcom/sleepycat/je/rep/monitor/MonitorConfig;
    :catch_0
    move-exception v0

    .line 405
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

    .line 56
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->clone()Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    move-result-object v0

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHelperHosts()Ljava/lang/String;
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->HELPER_HOSTS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHelperSockets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getHelperHosts()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getSockets(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNodeHostPort()Ljava/lang/String;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeHostname()Ljava/lang/String;
    .locals 3

    .line 270
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getNodeHostPort()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "hostAndPort":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 273
    .local v1, "colonToken":I
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 274
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 273
    :goto_0
    return-object v2
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodePort()I
    .locals 4

    .line 283
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getNodeHostPort()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "hostAndPort":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 286
    .local v1, "colonToken":I
    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->props:Ljava/util/Properties;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->DEFAULT_PORT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 288
    invoke-static {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    nop

    .line 290
    .local v2, "portString":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public getNodeSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 303
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getNodeHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getNodePort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getNumRetries()I
    .locals 1

    .line 330
    iget v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->numRetries:I

    return v0
.end method

.method public getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    return-object v0
.end method

.method public getRetryInterval()J
    .locals 2

    .line 355
    iget-wide v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->retryInterval:J

    return-wide v0
.end method

.method public getSocketConnectTimeout()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->socketConnectTimeout:I

    return v0
.end method

.method public setGroupName(Ljava/lang/String;)Lcom/sleepycat/je/rep/monitor/MonitorConfig;
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->setGroupNameVoid(Ljava/lang/String;)V

    .line 116
    return-object p0
.end method

.method public setGroupNameVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    .line 127
    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 128
    return-void
.end method

.method public setHelperHosts(Ljava/lang/String;)Lcom/sleepycat/je/rep/monitor/MonitorConfig;
    .locals 0
    .param p1, "helperHosts"    # Ljava/lang/String;

    .line 224
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->setHelperHostsVoid(Ljava/lang/String;)V

    .line 225
    return-object p0
.end method

.method public setHelperHostsVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "helperHosts"    # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->HELPER_HOSTS:Lcom/sleepycat/je/config/ConfigParam;

    .line 234
    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 235
    return-void
.end method

.method public setNodeHostPort(Ljava/lang/String;)Lcom/sleepycat/je/rep/monitor/MonitorConfig;
    .locals 0
    .param p1, "hostPort"    # Ljava/lang/String;

    .line 188
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->setNodeHostPortVoid(Ljava/lang/String;)V

    .line 189
    return-object p0
.end method

.method public setNodeHostPortVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "hostPort"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    .line 198
    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 199
    return-void
.end method

.method public setNodeName(Ljava/lang/String;)Lcom/sleepycat/je/rep/monitor/MonitorConfig;
    .locals 0
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->setNodeNameVoid(Ljava/lang/String;)V

    .line 153
    return-object p0
.end method

.method public setNodeNameVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_NAME:Lcom/sleepycat/je/config/ConfigParam;

    .line 164
    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 165
    return-void
.end method

.method public setNumRetries(I)Lcom/sleepycat/je/rep/monitor/MonitorConfig;
    .locals 0
    .param p1, "numRetries"    # I

    .line 312
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->setNumRetriesVoid(I)V

    .line 313
    return-object p0
.end method

.method public setNumRetriesVoid(I)V
    .locals 2
    .param p1, "numRetries"    # I

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "numRetries"

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->validate(Ljava/lang/Number;Ljava/lang/String;)V

    .line 322
    iput p1, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->numRetries:I

    .line 323
    return-void
.end method

.method public setRepNetConfig(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)Lcom/sleepycat/je/rep/monitor/MonitorConfig;
    .locals 0
    .param p1, "netConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 431
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->setRepNetConfigVoid(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)V

    .line 432
    return-object p0
.end method

.method public setRepNetConfigVoid(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)V
    .locals 2
    .param p1, "netConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 439
    if-eqz p1, :cond_0

    .line 442
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 443
    return-void

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "netConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRetryInterval(J)Lcom/sleepycat/je/rep/monitor/MonitorConfig;
    .locals 0
    .param p1, "retryInterval"    # J

    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->setRetryIntervalVoid(J)V

    .line 339
    return-object p0
.end method

.method public setRetryIntervalVoid(J)V
    .locals 2
    .param p1, "retryInterval"    # J

    .line 347
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "retryInterval"

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->validate(Ljava/lang/Number;Ljava/lang/String;)V

    .line 348
    iput-wide p1, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->retryInterval:J

    .line 349
    return-void
.end method

.method public setSocketConnectTimeout(I)Lcom/sleepycat/je/rep/monitor/MonitorConfig;
    .locals 0
    .param p1, "socketConnectTimeout"    # I

    .line 364
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->setSocketConnectTimeoutVoid(I)V

    .line 365
    return-object p0
.end method

.method public setSocketConnectTimeoutVoid(I)V
    .locals 2
    .param p1, "socketConnectTimeout"    # I

    .line 373
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "socketConnectTimeout"

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->validate(Ljava/lang/Number;Ljava/lang/String;)V

    .line 374
    iput p1, p0, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->socketConnectTimeout:I

    .line 375
    return-void
.end method
