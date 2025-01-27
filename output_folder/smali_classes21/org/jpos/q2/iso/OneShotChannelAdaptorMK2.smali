.class public Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;
.super Lorg/jpos/q2/QBeanSupport;
.source "OneShotChannelAdaptorMK2.java"

# interfaces
.implements Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2MBean;
.implements Lorg/jpos/iso/Channel;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;,
        Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;
    }
.end annotation


# instance fields
.field channelElement:Lorg/jdom2/Element;

.field checkInterval:J

.field checkTimer:Ljava/util/concurrent/ScheduledExecutorService;

.field cnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field delay:J

.field handbackFields:[I

.field in:Ljava/lang/String;

.field maxConnections:I

.field out:Ljava/lang/String;

.field ready:Ljava/lang/String;

.field sp:Lorg/jpos/space/Space;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jpos/space/Space<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 81
    return-void
.end method

.method static synthetic access$100(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;)V
    .locals 0
    .param p0, "x0"    # Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    .line 62
    invoke-direct {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->flushInput()V

    return-void
.end method

.method static synthetic access$200(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;)V
    .locals 0
    .param p0, "x0"    # Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    .line 62
    invoke-direct {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->takeOnline()V

    return-void
.end method

.method static synthetic access$300(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;)V
    .locals 0
    .param p0, "x0"    # Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    .line 62
    invoke-direct {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->takeOffline()V

    return-void
.end method

.method static synthetic access$400(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)Lorg/jpos/iso/ISOChannel;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;
    .param p1, "x1"    # Lorg/jdom2/Element;
    .param p2, "x2"    # Lorg/jpos/q2/QFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->newChannel(Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)Lorg/jpos/iso/ISOChannel;

    move-result-object v0

    return-object v0
.end method

.method private addFilters(Lorg/jpos/iso/FilteredChannel;Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)V
    .locals 7
    .param p1, "channel"    # Lorg/jpos/iso/FilteredChannel;
    .param p2, "e"    # Lorg/jdom2/Element;
    .param p3, "fact"    # Lorg/jpos/q2/QFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 369
    const-string v0, "filter"

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 371
    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/jdom2/Element;

    .line 372
    .local v2, "f":Lorg/jdom2/Element;
    const-string v3, "class"

    invoke-static {v2, v3}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "clazz":Ljava/lang/String;
    invoke-virtual {p3, v3}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/ISOFilter;

    .line 374
    .local v4, "filter":Lorg/jpos/iso/ISOFilter;
    invoke-virtual {p3, v4, v2}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 375
    invoke-virtual {p3, v4, v2}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 376
    const-string v5, "direction"

    invoke-static {v2, v5}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 377
    .local v5, "direction":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 379
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addFilter(Lorg/jpos/iso/ISOFilter;)V

    goto :goto_1

    .line 381
    :cond_0
    const-string v6, "incoming"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 383
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addIncomingFilter(Lorg/jpos/iso/ISOFilter;)V

    goto :goto_1

    .line 385
    :cond_1
    const-string v6, "outgoing"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 387
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addOutgoingFilter(Lorg/jpos/iso/ISOFilter;)V

    goto :goto_1

    .line 389
    :cond_2
    const-string v6, "both"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 391
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addIncomingFilter(Lorg/jpos/iso/ISOFilter;)V

    .line 392
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addOutgoingFilter(Lorg/jpos/iso/ISOFilter;)V

    .line 394
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "f":Lorg/jdom2/Element;
    .end local v3    # "clazz":Ljava/lang/String;
    .end local v4    # "filter":Lorg/jpos/iso/ISOFilter;
    .end local v5    # "direction":Ljava/lang/String;
    :cond_3
    :goto_1
    goto :goto_0

    .line 395
    :cond_4
    return-void
.end method

.method private flushInput()V
    .locals 2

    .line 290
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->in:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method private grabSpace(Lorg/jdom2/Element;)Lorg/jpos/space/Space;
    .locals 1
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Element;",
            ")",
            "Lorg/jpos/space/Space<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v0

    return-object v0
.end method

.method private newChannel(Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)Lorg/jpos/iso/ISOChannel;
    .locals 9
    .param p1, "e"    # Lorg/jdom2/Element;
    .param p2, "f"    # Lorg/jpos/q2/QFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 326
    const-string v0, "class"

    invoke-static {p1, v0}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "channelName":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 332
    const-string v1, "packager"

    invoke-static {p1, v1}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "packagerName":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOChannel;

    .line 336
    .local v2, "channel":Lorg/jpos/iso/ISOChannel;
    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {p2, v1}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOPackager;

    .line 339
    .local v3, "packager":Lorg/jpos/iso/ISOPackager;
    invoke-interface {v2, v3}, Lorg/jpos/iso/ISOChannel;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 340
    invoke-virtual {p2, v3, p1}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 342
    .end local v3    # "packager":Lorg/jpos/iso/ISOPackager;
    :cond_0
    const-string v3, "header"

    invoke-static {p1, v3}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "setHeader"

    invoke-static {v2, v4, v3}, Lorg/jpos/q2/QFactory;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    invoke-virtual {p2, v2, p1}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 344
    invoke-virtual {p2, v2, p1}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 346
    instance-of v3, v2, Lorg/jpos/iso/FilteredChannel;

    if-eqz v3, :cond_1

    .line 348
    move-object v3, v2

    check-cast v3, Lorg/jpos/iso/FilteredChannel;

    invoke-direct {p0, v3, p1, p2}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->addFilters(Lorg/jpos/iso/FilteredChannel;Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)V

    .line 351
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getSocketFactory()Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "socketFactoryString":Ljava/lang/String;
    if-eqz v3, :cond_3

    instance-of v4, v2, Lorg/jpos/iso/FactoryChannel;

    if-eqz v4, :cond_3

    .line 354
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/ISOClientSocketFactory;

    .line 355
    .local v4, "sFac":Lorg/jpos/iso/ISOClientSocketFactory;
    if-eqz v4, :cond_2

    instance-of v5, v4, Lorg/jpos/util/LogSource;

    if-eqz v5, :cond_2

    .line 357
    move-object v5, v4

    check-cast v5, Lorg/jpos/util/LogSource;

    iget-object v6, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->log:Lorg/jpos/util/Log;

    invoke-virtual {v6}, Lorg/jpos/util/Log;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".socket-factory"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/jpos/util/LogSource;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 359
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v5

    invoke-virtual {v5, v4, p1}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 360
    move-object v5, v2

    check-cast v5, Lorg/jpos/iso/FactoryChannel;

    invoke-interface {v5, v4}, Lorg/jpos/iso/FactoryChannel;->setSocketFactory(Lorg/jpos/iso/ISOClientSocketFactory;)V

    .line 363
    .end local v4    # "sFac":Lorg/jpos/iso/ISOClientSocketFactory;
    :cond_3
    return-object v2

    .line 329
    .end local v1    # "packagerName":Ljava/lang/String;
    .end local v2    # "channel":Lorg/jpos/iso/ISOChannel;
    .end local v3    # "socketFactoryString":Ljava/lang/String;
    :cond_4
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    const-string v2, "class attribute missing from channel element."

    invoke-direct {v1, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private takeOffline()V
    .locals 2

    .line 295
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->ready:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method private takeOnline()V
    .locals 3

    .line 300
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->ready:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/jpos/space/Space;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    return-void
.end method


# virtual methods
.method public destroyService()V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .line 429
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "host"

    invoke-virtual {p0, v0, v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getProperty(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInQueue()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->in:Ljava/lang/String;

    return-object v0
.end method

.method public getOutQueue()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->out:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 3

    .line 440
    const/4 v0, 0x0

    .line 443
    .local v0, "port":I
    :try_start_0
    const-string v1, "channel"

    .line 444
    invoke-virtual {p0, v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "port"

    invoke-virtual {p0, v1, v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getProperty(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 450
    goto :goto_0

    .line 447
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 451
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method

.method public getSocketFactory()Ljava/lang/String;
    .locals 2

    .line 464
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "socketFactory"

    invoke-virtual {p0, v0, v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getProperty(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 93
    .local v0, "persist":Lorg/jdom2/Element;
    const-string v1, "channel"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->channelElement:Lorg/jdom2/Element;

    .line 94
    if-eqz v1, :cond_3

    .line 98
    const-string v1, "space"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->grabSpace(Lorg/jdom2/Element;)Lorg/jpos/space/Space;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    .line 99
    const-string v1, "in"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->in:Ljava/lang/String;

    .line 100
    const-string v1, "out"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->out:Ljava/lang/String;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->ready:Ljava/lang/String;

    .line 103
    const-string v1, "max-connections"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->maxConnections:I

    .line 105
    iget-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->cfg:Lorg/jpos/core/Configuration;

    const-string v3, "handback-field"

    invoke-interface {v2, v3}, Lorg/jpos/core/Configuration;->getInts(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->handbackFields:[I

    .line 107
    const-string v2, "delay"

    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x9c4

    :goto_1
    iput-wide v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->delay:J

    .line 110
    const-string v2, "check-interval"

    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    goto :goto_2

    :cond_2
    const-wide/32 v2, 0xea60

    :goto_2
    iput-wide v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->checkInterval:J

    .line 113
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    return-void

    .line 96
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    const-string v2, "channel element missing"

    invoke-direct {v1, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isConnected()Z
    .locals 2

    .line 175
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->ready:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public receive()Lorg/jpos/iso/ISOMsg;
    .locals 2

    .line 315
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->out:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    return-object v0
.end method

.method public receive(J)Lorg/jpos/iso/ISOMsg;
    .locals 2
    .param p1, "timeout"    # J

    .line 320
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->out:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 182
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->running()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->in:Ljava/lang/String;

    iget-wide v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->delay:J

    invoke-interface {v0, v1, v2, v3}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jpos/iso/ISOMsg;

    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    goto :goto_0

    .line 193
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 194
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 195
    .local v2, "i":I
    const/16 v3, 0x270f

    if-le v2, v3, :cond_1

    .line 197
    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 198
    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    move v2, v3

    .line 200
    :cond_1
    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;

    invoke-direct {v4, p0, v1, v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;-><init>(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;Lorg/jpos/iso/ISOMsg;I)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 203
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    goto :goto_0

    .line 208
    :cond_3
    return-void
.end method

.method public send(Lorg/jpos/iso/ISOMsg;)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 305
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->in:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public send(Lorg/jpos/iso/ISOMsg;J)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "timeout"    # J

    .line 310
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->in:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 311
    return-void
.end method

.method public declared-synchronized setHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    monitor-enter p0

    .line 434
    :try_start_0
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "host"

    invoke-virtual {p0, v0, v1, p1}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->setProperty(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    .line 433
    .end local p0    # "this":Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;
    .end local p1    # "host":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setInQueue(Ljava/lang/String;)V
    .locals 3
    .param p1, "in"    # Ljava/lang/String;

    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->in:Ljava/lang/String;

    .line 405
    .local v0, "old":Ljava/lang/String;
    iput-object p1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->in:Ljava/lang/String;

    .line 406
    if-eqz v0, :cond_0

    .line 408
    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v0, v2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    .end local p0    # "this":Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getPersist()Lorg/jdom2/Element;

    move-result-object v1

    const-string v2, "in"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 412
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    .line 403
    .end local v0    # "old":Ljava/lang/String;
    .end local p1    # "in":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setOutQueue(Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/lang/String;

    monitor-enter p0

    .line 422
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->out:Ljava/lang/String;

    .line 423
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    const-string v1, "out"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 424
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 421
    .end local p0    # "this":Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;
    .end local p1    # "out":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPort(I)V
    .locals 3
    .param p1, "port"    # I

    monitor-enter p0

    .line 456
    :try_start_0
    const-string v0, "channel"

    .line 457
    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "port"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-virtual {p0, v0, v1, v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->setProperty(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    .line 455
    .end local p0    # "this":Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;
    .end local p1    # "port":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSocketFactory(Ljava/lang/String;)V
    .locals 2
    .param p1, "sFac"    # Ljava/lang/String;

    monitor-enter p0

    .line 469
    :try_start_0
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "socketFactory"

    invoke-virtual {p0, v0, v1, p1}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->setProperty(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 468
    .end local p0    # "this":Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;
    .end local p1    # "sFac":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startService()V
    .locals 9

    .line 118
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->setRealm(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 120
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->maxConnections:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v3, 0x1

    const-wide/16 v5, 0xa

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 125
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 127
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->checkTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 128
    new-instance v2, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;-><init>(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$1;)V

    iget-wide v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->checkInterval:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 129
    return-void
.end method

.method public stopService()V
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->checkTimer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->checkTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 139
    :cond_0
    invoke-direct {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->takeOffline()V

    .line 140
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->in:Ljava/lang/String;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 142
    :goto_0
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    goto :goto_1

    .line 153
    :cond_1
    const/4 v0, 0x0

    .line 154
    .local v0, "c":I
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->running()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    const-wide/16 v1, 0x1f4

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    goto :goto_2

    .line 160
    :catch_1
    move-exception v1

    .line 163
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 164
    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 166
    :cond_3
    return-void
.end method
