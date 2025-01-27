.class public Lcom/sleepycat/je/EnvironmentMutableConfig;
.super Ljava/lang/Object;
.source "EnvironmentMutableConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cacheMode:Lcom/sleepycat/je/CacheMode;

.field private cacheSize:J

.field private transient exceptionListener:Lcom/sleepycat/je/ExceptionListener;

.field private transient loadPropertyFile:Z

.field private offHeapCacheSize:J

.field props:Ljava/util/Properties;

.field private txnNoSync:Z

.field private txnWriteNoSync:Z

.field transient validateParams:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnNoSync:Z

    .line 94
    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnWriteNoSync:Z

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->loadPropertyFile:Z

    .line 123
    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->validateParams:Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->exceptionListener:Lcom/sleepycat/je/ExceptionListener;

    .line 133
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    .line 134
    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .locals 2
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnNoSync:Z

    .line 94
    iput-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnWriteNoSync:Z

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->loadPropertyFile:Z

    .line 123
    iput-boolean v1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->validateParams:Z

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->exceptionListener:Lcom/sleepycat/je/ExceptionListener;

    .line 142
    nop

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->validateProperties(Ljava/util/Properties;ZLjava/lang/String;)V

    .line 146
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    .line 147
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 148
    return-void
.end method

.method private clearImmutableProps()V
    .locals 4

    .line 719
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 720
    .local v0, "propNames":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 721
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 722
    .local v1, "paramName":Ljava/lang/String;
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 723
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/config/ConfigParam;

    .line 724
    .local v2, "param":Lcom/sleepycat/je/config/ConfigParam;
    if-eqz v2, :cond_1

    .line 725
    invoke-virtual {v2}, Lcom/sleepycat/je/config/ConfigParam;->isMutable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 726
    iget-object v3, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v3, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .end local v1    # "paramName":Ljava/lang/String;
    .end local v2    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_0
    goto :goto_0

    .line 724
    .restart local v1    # "paramName":Ljava/lang/String;
    .restart local v2    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 729
    .end local v1    # "paramName":Ljava/lang/String;
    .end local v2    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_2
    return-void
.end method


# virtual methods
.method checkImmutablePropsForEquality(Ljava/util/Properties;)V
    .locals 8
    .param p1, "handleConfigProps"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 613
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 614
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 615
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 616
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 617
    .local v1, "paramName":Ljava/lang/String;
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 618
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/config/ConfigParam;

    .line 619
    .local v2, "param":Lcom/sleepycat/je/config/ConfigParam;
    if-eqz v2, :cond_3

    .line 620
    invoke-virtual {v2}, Lcom/sleepycat/je/config/ConfigParam;->isMutable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/sleepycat/je/config/ConfigParam;->isForReplication()Z

    move-result v3

    if-nez v3, :cond_2

    .line 621
    iget-object v3, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "paramVal":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 623
    .local v4, "useParamVal":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 624
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    :goto_1
    goto :goto_2

    .line 626
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in the config parameter which is incompatible with the value of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in the underlying environment"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 636
    .end local v1    # "paramName":Ljava/lang/String;
    .end local v2    # "param":Lcom/sleepycat/je/config/ConfigParam;
    .end local v3    # "paramVal":Ljava/lang/String;
    .end local v4    # "useParamVal":Ljava/lang/String;
    :cond_2
    :goto_2
    goto :goto_0

    .line 619
    .restart local v1    # "paramName":Ljava/lang/String;
    .restart local v2    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 637
    .end local v1    # "paramName":Ljava/lang/String;
    .end local v2    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_4
    return-void
.end method

.method protected clone()Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 2

    .line 649
    nop

    .line 650
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 651
    .local v0, "copy":Lcom/sleepycat/je/EnvironmentMutableConfig;
    iget-object v1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    iput-object v1, v0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    return-object v0

    .line 653
    .end local v0    # "copy":Lcom/sleepycat/je/EnvironmentMutableConfig;
    :catch_0
    move-exception v0

    .line 654
    .local v0, "willNeverOccur":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->clone()Lcom/sleepycat/je/EnvironmentMutableConfig;

    move-result-object v0

    return-object v0
.end method

.method cloneMutableConfig()Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 1

    .line 663
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->clone()Lcom/sleepycat/je/EnvironmentMutableConfig;

    move-result-object v0

    .line 665
    .local v0, "copy":Lcom/sleepycat/je/EnvironmentMutableConfig;
    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->clearImmutableProps()V

    .line 666
    return-object v0
.end method

.method copyHandlePropsTo(Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 674
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnNoSync:Z

    iput-boolean v0, p1, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnNoSync:Z

    .line 675
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnWriteNoSync:Z

    iput-boolean v0, p1, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnWriteNoSync:Z

    .line 676
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 677
    return-void
.end method

.method copyMutablePropsTo(Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 5
    .param p1, "toConfig"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 687
    iget-object v0, p1, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    .line 688
    .local v0, "toProps":Ljava/util/Properties;
    iget-object v1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 689
    .local v1, "propNames":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 690
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 691
    .local v2, "paramName":Ljava/lang/String;
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    .line 692
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/config/ConfigParam;

    .line 693
    .local v3, "param":Lcom/sleepycat/je/config/ConfigParam;
    if-eqz v3, :cond_1

    .line 694
    invoke-virtual {v3}, Lcom/sleepycat/je/config/ConfigParam;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 695
    iget-object v4, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, "newVal":Ljava/lang/String;
    invoke-virtual {v0, v2, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 698
    .end local v2    # "paramName":Ljava/lang/String;
    .end local v3    # "param":Lcom/sleepycat/je/config/ConfigParam;
    .end local v4    # "newVal":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 693
    .restart local v2    # "paramName":Ljava/lang/String;
    .restart local v3    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 699
    .end local v2    # "paramName":Ljava/lang/String;
    .end local v3    # "param":Lcom/sleepycat/je/config/ConfigParam;
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->exceptionListener:Lcom/sleepycat/je/ExceptionListener;

    iput-object v2, p1, Lcom/sleepycat/je/EnvironmentMutableConfig;->exceptionListener:Lcom/sleepycat/je/ExceptionListener;

    .line 700
    iget-object v2, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->cacheMode:Lcom/sleepycat/je/CacheMode;

    iput-object v2, p1, Lcom/sleepycat/je/EnvironmentMutableConfig;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 701
    return-void
.end method

.method fillInEnvironmentGeneratedProps(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 708
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getMaxMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->cacheSize:J

    .line 709
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMaxMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->offHeapCacheSize:J

    .line 710
    return-void
.end method

.method public getCacheMode()Lcom/sleepycat/je/CacheMode;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->cacheMode:Lcom/sleepycat/je/CacheMode;

    return-object v0
.end method

.method public getCachePercent()I
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_MEMORY_PERCENT:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    return v0
.end method

.method public getCacheSize()J
    .locals 2

    .line 331
    iget-wide v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->cacheSize:J

    return-wide v0
.end method

.method public getConfigParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "paramName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    invoke-static {v0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getConfigParam(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDurability()Lcom/sleepycat/je/Durability;
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->JE_DURABILITY:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/sleepycat/je/Durability;->parse(Ljava/lang/String;)Lcom/sleepycat/je/Durability;

    move-result-object v1

    return-object v1
.end method

.method public getExceptionListener()Lcom/sleepycat/je/ExceptionListener;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->exceptionListener:Lcom/sleepycat/je/ExceptionListener;

    return-object v0
.end method

.method getLoadPropertyFile()Z
    .locals 1

    .line 746
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->loadPropertyFile:Z

    return v0
.end method

.method public getMaxDisk()J
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_DISK:Lcom/sleepycat/je/config/LongConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLongVal(Ljava/util/Properties;Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumExplicitlySetParams()I
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    return v0
.end method

.method public getOffHeapCacheSize()J
    .locals 2

    .line 408
    iget-wide v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->offHeapCacheSize:J

    return-wide v0
.end method

.method getProps()Ljava/util/Properties;
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public getTxnNoSync()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnNoSync:Z

    return v0
.end method

.method public getTxnWriteNoSync()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnWriteNoSync:Z

    return v0
.end method

.method getValidateParams()Z
    .locals 1

    .line 600
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->validateParams:Z

    return v0
.end method

.method public isConfigParamSet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "paramName"    # Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCacheMode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 0
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 511
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setCacheModeVoid(Lcom/sleepycat/je/CacheMode;)V

    .line 512
    return-object p0
.end method

.method public setCacheModeVoid(Lcom/sleepycat/je/CacheMode;)V
    .locals 0
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 520
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 521
    return-void
.end method

.method public setCachePercent(I)Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 0
    .param p1, "percent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setCachePercentVoid(I)V

    .line 350
    return-object p0
.end method

.method public setCachePercentVoid(I)V
    .locals 3
    .param p1, "percent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_MEMORY_PERCENT:Lcom/sleepycat/je/config/IntConfigParam;

    iget-boolean v2, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->validateParams:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;IZ)V

    .line 362
    return-void
.end method

.method public setCacheSize(J)Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 0
    .param p1, "totalBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setCacheSizeVoid(J)V

    .line 304
    return-object p0
.end method

.method public setCacheSizeVoid(J)V
    .locals 4
    .param p1, "totalBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

    .line 315
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->validateParams:Z

    .line 314
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 316
    return-void
.end method

.method public setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 7
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    iget-boolean v4, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->validateParams:Z

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/je/dbi/DbConfigManager;->setConfigParam(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 563
    return-object p0
.end method

.method public setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 0
    .param p1, "durability"    # Lcom/sleepycat/je/Durability;

    .line 257
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setDurabilityVoid(Lcom/sleepycat/je/Durability;)V

    .line 258
    return-object p0
.end method

.method public setDurabilityVoid(Lcom/sleepycat/je/Durability;)V
    .locals 4
    .param p1, "durability"    # Lcom/sleepycat/je/Durability;

    .line 266
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnNoSync:Z

    iget-boolean v1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnWriteNoSync:Z

    .line 267
    const/4 v2, 0x0

    invoke-static {v2, v0, v1, p1}, Lcom/sleepycat/je/TransactionConfig;->checkMixedMode(ZZZLcom/sleepycat/je/Durability;)V

    .line 269
    if-nez p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->JE_DURABILITY:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->JE_DURABILITY:Lcom/sleepycat/je/config/ConfigParam;

    .line 273
    invoke-virtual {p1}, Lcom/sleepycat/je/Durability;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->validateParams:Z

    .line 272
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 276
    :goto_0
    return-void
.end method

.method public setExceptionListener(Lcom/sleepycat/je/ExceptionListener;)Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 0
    .param p1, "exceptionListener"    # Lcom/sleepycat/je/ExceptionListener;

    .line 475
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setExceptionListenerVoid(Lcom/sleepycat/je/ExceptionListener;)V

    .line 476
    return-object p0
.end method

.method public setExceptionListenerVoid(Lcom/sleepycat/je/ExceptionListener;)V
    .locals 0
    .param p1, "exceptionListener"    # Lcom/sleepycat/je/ExceptionListener;

    .line 484
    iput-object p1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->exceptionListener:Lcom/sleepycat/je/ExceptionListener;

    .line 485
    return-void
.end method

.method setLoadPropertyFile(Z)V
    .locals 0
    .param p1, "loadPropertyFile"    # Z

    .line 739
    iput-boolean p1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->loadPropertyFile:Z

    .line 740
    return-void
.end method

.method public setMaxDisk(J)Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 0
    .param p1, "totalBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setMaxDiskVoid(J)V

    .line 427
    return-object p0
.end method

.method public setMaxDiskVoid(J)V
    .locals 4
    .param p1, "totalBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_DISK:Lcom/sleepycat/je/config/LongConfigParam;

    .line 438
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->validateParams:Z

    .line 437
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 439
    return-void
.end method

.method public setOffHeapCacheSize(J)Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 0
    .param p1, "totalBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setOffHeapCacheSizeVoid(J)V

    .line 384
    return-object p0
.end method

.method public setOffHeapCacheSizeVoid(J)V
    .locals 4
    .param p1, "totalBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_OFF_HEAP_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

    .line 395
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->validateParams:Z

    .line 394
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->setVal(Ljava/util/Properties;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;Z)V

    .line 396
    return-void
.end method

.method public setTxnNoSync(Z)Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 0
    .param p1, "noSync"    # Z

    .line 169
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setTxnNoSyncVoid(Z)V

    .line 170
    return-object p0
.end method

.method public setTxnNoSyncVoid(Z)V
    .locals 3
    .param p1, "noSync"    # Z

    .line 178
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnWriteNoSync:Z

    .line 179
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, p1, v0, v1}, Lcom/sleepycat/je/TransactionConfig;->checkMixedMode(ZZZLcom/sleepycat/je/Durability;)V

    .line 180
    iput-boolean p1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnNoSync:Z

    .line 181
    return-void
.end method

.method public setTxnWriteNoSync(Z)Lcom/sleepycat/je/EnvironmentMutableConfig;
    .locals 0
    .param p1, "writeNoSync"    # Z

    .line 220
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setTxnWriteNoSyncVoid(Z)V

    .line 221
    return-object p0
.end method

.method public setTxnWriteNoSyncVoid(Z)V
    .locals 3
    .param p1, "writeNoSync"    # Z

    .line 229
    iget-boolean v0, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnNoSync:Z

    .line 230
    invoke-virtual {p0}, Lcom/sleepycat/je/EnvironmentMutableConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v0, p1, v1}, Lcom/sleepycat/je/TransactionConfig;->checkMixedMode(ZZZLcom/sleepycat/je/Durability;)V

    .line 231
    iput-boolean p1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnWriteNoSync:Z

    .line 232
    return-void
.end method

.method setValidateParams(Z)V
    .locals 0
    .param p1, "validateParams"    # Z

    .line 592
    iput-boolean p1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->validateParams:Z

    .line 593
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cacheSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->cacheSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offHeapCacheSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->offHeapCacheSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cacheMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " txnNoSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnNoSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " txnWriteNoSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->txnWriteNoSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exceptionListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->exceptionListener:Lcom/sleepycat/je/ExceptionListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " map="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/EnvironmentMutableConfig;->props:Ljava/util/Properties;

    .line 768
    invoke-virtual {v1}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    return-object v0
.end method
