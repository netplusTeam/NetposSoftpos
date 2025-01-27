.class public abstract Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
.super Ljava/lang/Object;
.source "ReplicationNetworkConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CHANNEL_FACTORY_CLASS:Ljava/lang/String; = "je.rep.channelFactoryClass"

.field public static final CHANNEL_FACTORY_PARAMS:Ljava/lang/String; = "je.rep.channelFactoryParams"

.field public static final CHANNEL_LOG_NAME:Ljava/lang/String; = "je.rep.channelLogName"

.field public static final CHANNEL_TYPE:Ljava/lang/String; = "je.rep.channelType"

.field private static repNetAllProperties:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static repNetLocalProperties:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final props:Ljava/util/Properties;

.field protected final validateParams:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 193
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->repNetLocalProperties:Ljava/util/Set;

    .line 194
    const-string v1, "je.rep.channelType"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->repNetLocalProperties:Ljava/util/Set;

    const-string v1, "je.rep.channelLogName"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->repNetLocalProperties:Ljava/util/Set;

    const-string v1, "je.rep.channelFactoryClass"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->repNetLocalProperties:Ljava/util/Set;

    const-string v1, "je.rep.channelFactoryParams"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->repNetLocalProperties:Ljava/util/Set;

    .line 200
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->repNetLocalProperties:Ljava/util/Set;

    .line 216
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_TYPE:Lcom/sleepycat/je/config/ConfigParam;

    .line 217
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->validateParams:Z

    .line 289
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->props:Ljava/util/Properties;

    .line 290
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "properties"    # Ljava/util/Properties;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->validateParams:Z

    .line 299
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->props:Ljava/util/Properties;

    .line 300
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->applyRepNetProperties(Ljava/util/Properties;)V

    .line 301
    return-void
.end method

.method public static applyRepNetProperties(Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 6
    .param p0, "sourceProps"    # Ljava/util/Properties;
    .param p1, "updateProps"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 538
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->getRepNetPropertySet()Ljava/util/Set;

    move-result-object v0

    .line 539
    .local v0, "repNetProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 540
    .local v2, "propPair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 541
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 542
    goto :goto_0

    .line 544
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 545
    .local v4, "value":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {p1, v3, v4, v5}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->setConfigParam(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 547
    .end local v2    # "propPair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 548
    :cond_1
    return-void
.end method

.method public static create(Ljava/io/File;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 1
    .param p0, "propFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 240
    invoke-static {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->readProperties(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->create(Ljava/util/Properties;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Properties;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 4
    .param p0, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_TYPE:Lcom/sleepycat/je/config/ConfigParam;

    .line 260
    invoke-static {p0, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "channelType":Ljava/lang/String;
    const-string v1, "basic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    new-instance v1, Lcom/sleepycat/je/rep/ReplicationBasicConfig;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/ReplicationBasicConfig;-><init>(Ljava/util/Properties;)V

    return-object v1

    .line 265
    :cond_0
    const-string/jumbo v1, "ssl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    new-instance v1, Lcom/sleepycat/je/rep/ReplicationSSLConfig;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;-><init>(Ljava/util/Properties;)V

    return-object v1

    .line 268
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown channel type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 1

    .line 280
    new-instance v0, Lcom/sleepycat/je/rep/ReplicationBasicConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/ReplicationBasicConfig;-><init>()V

    return-object v0
.end method

.method static getRepNetLocalPropertySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 468
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->repNetLocalProperties:Ljava/util/Set;

    return-object v0
.end method

.method public static getRepNetPropertySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 478
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->repNetLocalProperties:Ljava/util/Set;

    monitor-enter v0

    .line 479
    :try_start_0
    sget-object v1, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->repNetAllProperties:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 480
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 481
    .local v1, "props":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->repNetLocalProperties:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 482
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationBasicConfig;->getRepBasicPropertySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 483
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getRepSSLPropertySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 485
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->repNetAllProperties:Ljava/util/Set;

    .line 487
    .end local v1    # "props":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    sget-object v1, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->repNetAllProperties:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 488
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static readProperties(Ljava/io/File;)Ljava/util/Properties;
    .locals 3
    .param p0, "propFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 606
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 612
    .local v0, "props":Ljava/util/Properties;
    invoke-static {v0, p0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->populateNetProps(Ljava/util/Properties;Ljava/io/File;)Ljava/util/Properties;

    .line 613
    return-object v0

    .line 607
    .end local v0    # "props":Ljava/util/Properties;
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The properties file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static registerParams()V
    .locals 0

    .line 499
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->getRepNetPropertySet()Ljava/util/Set;

    .line 500
    return-void
.end method

.method private static setConfigParam(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "validateParams"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 578
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/je/dbi/DbConfigManager;->setConfigParam(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 585
    return-void
.end method


# virtual methods
.method applyRepNetProperties(Ljava/util/Properties;)V
    .locals 6
    .param p1, "sourceProps"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 513
    invoke-virtual {p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 514
    .local v1, "propPair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 515
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->isValidConfigParam(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 516
    goto :goto_0

    .line 518
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 519
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->props:Ljava/util/Properties;

    const/4 v5, 0x1

    invoke-static {v4, v2, v3, v5}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->setConfigParam(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 521
    .end local v1    # "propPair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 522
    :cond_1
    return-void
.end method

.method public clone()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 2

    .line 453
    nop

    .line 454
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .local v0, "copy":Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    return-object v0

    .line 456
    .end local v0    # "copy":Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    :catch_0
    move-exception v0

    .line 457
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

    .line 61
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->clone()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    return-object v0
.end method

.method public getChannelFactoryClass()Ljava/lang/String;
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_FACTORY_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelFactoryParams()Ljava/lang/String;
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_FACTORY_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getChannelType()Ljava/lang/String;
.end method

.method public getLogName()Ljava/lang/String;
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_LOG_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProps()Ljava/util/Properties;
    .locals 3

    .line 555
    new-instance v0, Ljava/util/Properties;

    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->props:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 556
    .local v0, "returnProps":Ljava/util/Properties;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->getChannelType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "je.rep.channelType"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 557
    return-object v0
.end method

.method protected isValidConfigParam(Ljava/lang/String;)Z
    .locals 1
    .param p1, "paramName"    # Ljava/lang/String;

    .line 594
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->repNetLocalProperties:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setChannelFactoryClass(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "factoryClass"    # Ljava/lang/String;

    .line 371
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->setChannelFactoryClassVoid(Ljava/lang/String;)V

    .line 372
    return-object p0
.end method

.method public setChannelFactoryClassVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "factoryClass"    # Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_FACTORY_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 383
    return-void
.end method

.method public setChannelFactoryParams(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "factoryParams"    # Ljava/lang/String;

    .line 410
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->setChannelFactoryParamsVoid(Ljava/lang/String;)V

    .line 411
    return-object p0
.end method

.method public setChannelFactoryParamsVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "factoryParams"    # Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_FACTORY_PARAMS:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 422
    return-void
.end method

.method public setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 2
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 441
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->isValidConfigParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->props:Ljava/util/Properties;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->setConfigParam(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 444
    :cond_0
    return-object p0
.end method

.method public setLogName(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 0
    .param p1, "logName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->setLogNameVoid(Ljava/lang/String;)V

    .line 332
    return-object p0
.end method

.method public setLogNameVoid(Ljava/lang/String;)V
    .locals 3
    .param p1, "logName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->CHANNEL_LOG_NAME:Lcom/sleepycat/je/config/ConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 344
    return-void
.end method
