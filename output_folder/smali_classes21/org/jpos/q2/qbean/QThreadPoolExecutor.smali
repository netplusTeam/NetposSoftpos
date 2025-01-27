.class public Lorg/jpos/q2/qbean/QThreadPoolExecutor;
.super Lorg/jpos/q2/QBeanSupport;
.source "QThreadPoolExecutor.java"

# interfaces
.implements Lorg/jpos/q2/qbean/QThreadPoolExecutorMBean;


# static fields
.field public static final DEFAULT_TERMINATION_TIMER:I = 0xf

.field public static final THREAD_POOL_EXECUTOR__QBEAN_PREFIX:Ljava/lang/String; = "thread.pool.executor."

.field public static final XML_CONFIG_ATTR__EXEC_SRV_COREPOOLSIZE:Ljava/lang/String; = "corePoolSize"

.field public static final XML_CONFIG_ATTR__EXEC_SRV_TERMINATION_TIMER:Ljava/lang/String; = "terminationTimer"

.field public static final XML_CONFIG_ATTR__EXEC_SRV_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private execSrvType:Ljava/lang/String;

.field private initialCorePoolSize:I

.field private terminationTimer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 56
    const/16 v0, 0xf

    iput v0, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->terminationTimer:I

    return-void
.end method

.method public static getThreadPoolExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "res":Ljava/util/concurrent/ThreadPoolExecutor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread.pool.executor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 209
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_0

    .line 210
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 215
    return-object v0

    .line 212
    :cond_0
    new-instance v2, Lorg/jpos/util/NameRegistrar$NotFoundException;

    invoke-direct {v2, p0}, Lorg/jpos/util/NameRegistrar$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getThreadPoolExecutor(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 229
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 231
    .local v0, "res":Ljava/util/concurrent/ThreadPoolExecutor;, "TT;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread.pool.executor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 234
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 240
    return-object v0

    .line 237
    :cond_0
    new-instance v2, Lorg/jpos/util/NameRegistrar$NotFoundException;

    invoke-direct {v2, p0}, Lorg/jpos/util/NameRegistrar$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getActiveCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getThreadPoolExecutor(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 269
    .local v0, "executorService":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    return v1
.end method

.method protected getAttribute(Lorg/jdom2/Element;Ljava/lang/String;ZLjava/lang/String;)Lorg/jdom2/Attribute;
    .locals 5
    .param p1, "elt"    # Lorg/jdom2/Element;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "mandatory"    # Z
    .param p4, "errDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 183
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->getAttribute(Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v0

    .line 185
    .local v0, "attr":Lorg/jdom2/Attribute;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    return-object v0

    .line 186
    :cond_1
    :goto_0
    if-nez p3, :cond_2

    .line 191
    const/4 v1, 0x0

    return-object v1

    .line 187
    :cond_2
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    const-string v3, "\'%s\' attribute has not been found or is empty %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCompletedTaskCount()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getThreadPoolExecutor(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 280
    .local v0, "executorService":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v1

    return-wide v1
.end method

.method public getCorePoolSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getThreadPoolExecutor(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 291
    .local v0, "executorService":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    return v1
.end method

.method public getExecSrvType()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->execSrvType:Ljava/lang/String;

    return-object v0
.end method

.method public getInitialCorePoolSize()I
    .locals 1

    .line 383
    iget v0, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->initialCorePoolSize:I

    return v0
.end method

.method public getKeepAliveTimeMS()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getThreadPoolExecutor(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 302
    .local v0, "executorService":Ljava/util/concurrent/ThreadPoolExecutor;
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getLargestPoolSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getThreadPoolExecutor(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 313
    .local v0, "executorService":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getLargestPoolSize()I

    move-result v1

    return v1
.end method

.method public getMaximumPoolSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getThreadPoolExecutor(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 324
    .local v0, "executorService":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v1

    return v1
.end method

.method public getPoolSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getThreadPoolExecutor(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 335
    .local v0, "executorService":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v1

    return v1
.end method

.method protected getRegistrationName()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread.pool.executor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaskCount()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getThreadPoolExecutor(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 346
    .local v0, "executorService":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v1

    return-wide v1
.end method

.method public getTerminationTimer()I
    .locals 1

    .line 258
    iget v0, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->terminationTimer:I

    return v0
.end method

.method protected initService()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 69
    .local v0, "rootElt":Lorg/jdom2/Element;
    const-string v1, "type"

    const/4 v2, 0x1

    const-string v3, "(thread pool executor type among {fixed|cached|scheduled|single})"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getAttribute(Lorg/jdom2/Element;Ljava/lang/String;ZLjava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v1

    .line 72
    .local v1, "execSrvTypeAttr":Lorg/jdom2/Attribute;
    invoke-virtual {v1}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->execSrvType:Ljava/lang/String;

    .line 74
    const-string v4, "fixed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "(number of threads in the pool)"

    const-string v6, "corePoolSize"

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {p0, v0, v6, v2, v5}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getAttribute(Lorg/jdom2/Element;Ljava/lang/String;ZLjava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v2

    .line 78
    .local v2, "corePoolSizeAttr":Lorg/jdom2/Attribute;
    invoke-virtual {v2}, Lorg/jdom2/Attribute;->getIntValue()I

    move-result v3

    iput v3, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->initialCorePoolSize:I

    .line 80
    .end local v2    # "corePoolSizeAttr":Lorg/jdom2/Attribute;
    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->execSrvType:Ljava/lang/String;

    const-string v7, "cached"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {p0, v0, v6, v4, v5}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getAttribute(Lorg/jdom2/Element;Ljava/lang/String;ZLjava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v2

    .line 84
    .restart local v2    # "corePoolSizeAttr":Lorg/jdom2/Attribute;
    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {v2}, Lorg/jdom2/Attribute;->getIntValue()I

    move-result v3

    iput v3, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->initialCorePoolSize:I

    .line 88
    .end local v2    # "corePoolSizeAttr":Lorg/jdom2/Attribute;
    :cond_1
    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->execSrvType:Ljava/lang/String;

    const-string v7, "scheduled"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    invoke-virtual {p0, v0, v6, v2, v5}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getAttribute(Lorg/jdom2/Element;Ljava/lang/String;ZLjava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v2

    .line 92
    .restart local v2    # "corePoolSizeAttr":Lorg/jdom2/Attribute;
    invoke-virtual {v2}, Lorg/jdom2/Attribute;->getIntValue()I

    move-result v3

    iput v3, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->initialCorePoolSize:I

    .line 94
    .end local v2    # "corePoolSizeAttr":Lorg/jdom2/Attribute;
    nop

    .line 99
    :goto_0
    const-string v2, "terminationTimer"

    const-string v3, "(termination timer in seconds)"

    invoke-virtual {p0, v0, v2, v4, v3}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getAttribute(Lorg/jdom2/Element;Ljava/lang/String;ZLjava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v2

    .line 102
    .local v2, "terminationTimerAttr":Lorg/jdom2/Attribute;
    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {v2}, Lorg/jdom2/Attribute;->getIntValue()I

    move-result v3

    iput v3, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->terminationTimer:I

    .line 106
    :cond_3
    return-void

    .line 95
    .end local v2    # "terminationTimerAttr":Lorg/jdom2/Attribute;
    :cond_4
    new-instance v2, Lorg/jpos/core/ConfigurationException;

    const-string v3, "Invalid thread pool executor type \'%s\' (valid types={fixed|cached|scheduled} )"

    invoke-direct {v2, v3}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isShutdown()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getThreadPoolExecutor(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 357
    .local v0, "executorService":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    return v1
.end method

.method public isTerminated()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getThreadPoolExecutor(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 368
    .local v0, "executorService":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v1

    return v1
.end method

.method public isTerminating()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getThreadPoolExecutor(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 379
    .local v0, "executorService":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v1

    return v1
.end method

.method protected setExecSrvType(Ljava/lang/String;)V
    .locals 0
    .param p1, "execSrvType"    # Ljava/lang/String;

    .line 387
    iput-object p1, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->execSrvType:Ljava/lang/String;

    .line 388
    return-void
.end method

.method protected setInitialCorePoolSize(I)V
    .locals 0
    .param p1, "initialCorePoolSize"    # I

    .line 391
    iput p1, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->initialCorePoolSize:I

    .line 392
    return-void
.end method

.method protected setTerminationTimer(I)V
    .locals 0
    .param p1, "terminationTimer"    # I

    .line 395
    iput p1, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->terminationTimer:I

    .line 396
    return-void
.end method

.method protected startService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    .line 113
    .local v0, "execSrv":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    const-string v1, "fixed"

    iget-object v2, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->execSrvType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget v1, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->initialCorePoolSize:I

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 115
    :cond_0
    const-string v1, "cached"

    iget-object v2, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->execSrvType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v0, v1

    .line 117
    iget v1, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->initialCorePoolSize:I

    if-eqz v1, :cond_2

    .line 118
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 119
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    goto :goto_0

    .line 121
    :cond_1
    const-string v1, "scheduled"

    iget-object v2, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->execSrvType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget v1, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->initialCorePoolSize:I

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    move-object v0, v1

    .line 125
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getRegistrationName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    nop

    .line 141
    return-void

    .line 128
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Unable to start service : thread pool executor instance is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "execSrv":Ljava/util/concurrent/ExecutorService;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .restart local v0    # "execSrv":Ljava/util/concurrent/ExecutorService;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_4

    .line 134
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    goto :goto_1

    .line 135
    :catch_1
    move-exception v2

    .line 136
    .local v2, "ee":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 139
    .end local v2    # "ee":Ljava/lang/Exception;
    :cond_4
    :goto_1
    throw v1
.end method

.method protected stopService()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getThreadPoolExecutor(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 148
    .local v0, "execSrv":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 151
    iget v3, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->terminationTimer:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 154
    .local v3, "awaitTermination":Z
    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getRegistrationName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 162
    .end local v3    # "awaitTermination":Z
    nop

    .line 168
    return-void

    .line 157
    .restart local v3    # "awaitTermination":Z
    :cond_0
    new-instance v4, Ljava/lang/Exception;

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->terminationTimer:I

    .line 160
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    .line 158
    const-string v2, "Unable to shutdown thread pool executor : executor termination delay (%d seconds) has expired"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 163
    .end local v3    # "awaitTermination":Z
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 166
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QThreadPoolExecutor;->getRegistrationName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 164
    const-string v1, "Unable to stop thread pool executor : no executor \'%s\' found registered under name \'%s\'"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method
