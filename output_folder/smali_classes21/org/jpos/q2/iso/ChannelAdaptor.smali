.class public Lorg/jpos/q2/iso/ChannelAdaptor;
.super Lorg/jpos/q2/QBeanSupport;
.source "ChannelAdaptor.java"

# interfaces
.implements Lorg/jpos/q2/iso/ChannelAdaptorMBean;
.implements Lorg/jpos/iso/Channel;
.implements Lorg/jpos/util/Loggeable;
.implements Lorg/jpos/core/handlers/exception/ExceptionHandlerConfigAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;,
        Lorg/jpos/q2/iso/ChannelAdaptor$Sender;
    }
.end annotation


# instance fields
.field private channel:Lorg/jpos/iso/ISOChannel;

.field connects:I

.field delay:J

.field private final disconnectLock:Ljava/lang/Object;

.field ignoreISOExceptions:Z

.field in:Ljava/lang/String;

.field keepAlive:Z

.field lastTxn:J

.field out:Ljava/lang/String;

.field ready:Ljava/lang/String;

.field private receiver:Ljava/lang/Thread;

.field reconnect:Ljava/lang/String;

.field rx:I

.field private sender:Ljava/lang/Thread;

.field protected sp:Lorg/jpos/space/Space;

.field timeout:J

.field tx:I

.field waitForWorkersOnStop:Z

.field writeOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->keepAlive:Z

    .line 55
    iput-boolean v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->ignoreISOExceptions:Z

    .line 56
    iput-boolean v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->writeOnly:Z

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->lastTxn:J

    .line 59
    iput-wide v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->timeout:J

    .line 63
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->disconnectLock:Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->resetCounters()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/jpos/q2/iso/ChannelAdaptor;)Lorg/jpos/iso/ISOChannel;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/iso/ChannelAdaptor;

    .line 46
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->channel:Lorg/jpos/iso/ISOChannel;

    return-object v0
.end method

.method private join(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 114
    if-eqz p1, :cond_0

    .line 115
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 117
    return-void
.end method

.method private waitForReceiverToExit()V
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->receiver:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->join(Ljava/lang/Thread;)V

    .line 110
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->ready:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method private waitForSenderToExit()V
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sender:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->join(Ljava/lang/Thread;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected addFilters(Lorg/jpos/iso/FilteredChannel;Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)V
    .locals 7
    .param p1, "channel"    # Lorg/jpos/iso/FilteredChannel;
    .param p2, "e"    # Lorg/jdom2/Element;
    .param p3, "fact"    # Lorg/jpos/q2/QFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 224
    const-string v0, "filter"

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 225
    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/jdom2/Element;

    .line 226
    .local v2, "f":Lorg/jdom2/Element;
    invoke-static {v2}, Lorg/jpos/q2/QFactory;->isEnabled(Lorg/jdom2/Element;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    const-string v3, "class"

    invoke-static {v2, v3}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "clazz":Ljava/lang/String;
    invoke-virtual {p3, v3}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/ISOFilter;

    .line 229
    .local v4, "filter":Lorg/jpos/iso/ISOFilter;
    invoke-virtual {p3, v4, v2}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 230
    invoke-virtual {p3, v4, v2}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 231
    const-string v5, "direction"

    invoke-static {v2, v5}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, "direction":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 233
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addFilter(Lorg/jpos/iso/ISOFilter;)V

    goto :goto_1

    .line 234
    :cond_1
    const-string v6, "incoming"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addIncomingFilter(Lorg/jpos/iso/ISOFilter;)V

    goto :goto_1

    .line 236
    :cond_2
    const-string v6, "outgoing"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 237
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addOutgoingFilter(Lorg/jpos/iso/ISOFilter;)V

    goto :goto_1

    .line 238
    :cond_3
    const-string v6, "both"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 239
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addIncomingFilter(Lorg/jpos/iso/ISOFilter;)V

    .line 240
    invoke-interface {p1, v4}, Lorg/jpos/iso/FilteredChannel;->addOutgoingFilter(Lorg/jpos/iso/ISOFilter;)V

    .line 242
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "f":Lorg/jdom2/Element;
    .end local v3    # "clazz":Ljava/lang/String;
    .end local v4    # "filter":Lorg/jpos/iso/ISOFilter;
    .end local v5    # "direction":Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_0

    .line 243
    :cond_5
    return-void
.end method

.method protected append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 476
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 478
    return-void
.end method

.method protected checkConnection()V
    .locals 3

    .line 373
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->running()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->reconnect:Ljava/lang/String;

    .line 374
    invoke-interface {v0, v1}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    goto :goto_0

    .line 378
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->running()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v0}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 379
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->ready:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 381
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v0}, Lorg/jpos/iso/ISOChannel;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    goto :goto_2

    .line 382
    :catch_0
    move-exception v0

    .line 385
    :goto_2
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v0}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    iget-wide v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->delay:J

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    goto :goto_1

    .line 388
    :cond_1
    iget v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->connects:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->connects:I

    goto :goto_1

    .line 390
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->running()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->ready:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 391
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->ready:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    :cond_3
    return-void
.end method

.method public destroyService()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method protected disconnect()V
    .locals 4

    .line 395
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->disconnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_0
    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v2, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->ready:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 398
    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v1}, Lorg/jpos/iso/ISOChannel;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    goto :goto_0

    .line 402
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    const-string v3, "disconnect"

    invoke-virtual {v2, v3, v1}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getCountersAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public getConnectsCounter()I
    .locals 1

    .line 458
    iget v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->connects:I

    return v0
.end method

.method public getCountersAsString()Ljava/lang/String;
    .locals 5

    .line 438
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 439
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->tx:I

    const-string v2, "tx="

    invoke-virtual {p0, v0, v2, v1}, Lorg/jpos/q2/iso/ChannelAdaptor;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 440
    iget v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->rx:I

    const-string v2, ", rx="

    invoke-virtual {p0, v0, v2, v1}, Lorg/jpos/q2/iso/ChannelAdaptor;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 441
    iget v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->connects:I

    const-string v2, ", connects="

    invoke-virtual {p0, v0, v2, v1}, Lorg/jpos/q2/iso/ChannelAdaptor;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 442
    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    iget-wide v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->lastTxn:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 444
    iget-wide v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->lastTxn:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 445
    const-string v1, ", idle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->lastTxn:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 447
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .line 409
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "host"

    invoke-virtual {p0, v0, v1}, Lorg/jpos/q2/iso/ChannelAdaptor;->getProperty(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdleTimeInMillis()J
    .locals 4

    .line 464
    iget-wide v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->lastTxn:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->lastTxn:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getInQueue()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTxnTimestampInMillis()J
    .locals 2

    .line 461
    iget-wide v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->lastTxn:J

    return-wide v0
.end method

.method public getOutQueue()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->out:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 3

    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, "port":I
    :try_start_0
    const-string v1, "channel"

    .line 421
    invoke-virtual {p0, v1}, Lorg/jpos/q2/iso/ChannelAdaptor;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "port"

    invoke-virtual {p0, v1, v2}, Lorg/jpos/q2/iso/ChannelAdaptor;->getProperty(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 425
    goto :goto_0

    .line 423
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 426
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method

.method public getRXCounter()I
    .locals 1

    .line 455
    iget v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->rx:I

    return v0
.end method

.method public getReconnectDelay()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->delay:J

    return-wide v0
.end method

.method public getSocketFactory()Ljava/lang/String;
    .locals 2

    .line 467
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "socketFactory"

    invoke-virtual {p0, v0, v1}, Lorg/jpos/q2/iso/ChannelAdaptor;->getProperty(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTXCounter()I
    .locals 1

    .line 452
    iget v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->tx:I

    return v0
.end method

.method protected grabSpace(Lorg/jdom2/Element;)Lorg/jpos/space/Space;
    .locals 1
    .param p1, "e"    # Lorg/jdom2/Element;

    .line 473
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

.method protected initChannel()Lorg/jpos/iso/ISOChannel;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 249
    .local v0, "persist":Lorg/jdom2/Element;
    const-string v1, "channel"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    .line 250
    .local v1, "e":Lorg/jdom2/Element;
    if-eqz v1, :cond_2

    .line 253
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jpos/q2/iso/ChannelAdaptor;->newChannel(Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)Lorg/jpos/iso/ISOChannel;

    move-result-object v2

    .line 254
    .local v2, "c":Lorg/jpos/iso/ISOChannel;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getSocketFactory()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "socketFactoryString":Ljava/lang/String;
    if-eqz v3, :cond_1

    instance-of v4, v2, Lorg/jpos/iso/FactoryChannel;

    if-eqz v4, :cond_1

    .line 256
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/ISOClientSocketFactory;

    .line 257
    .local v4, "sFac":Lorg/jpos/iso/ISOClientSocketFactory;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lorg/jpos/util/LogSource;

    if-eqz v5, :cond_0

    .line 258
    move-object v5, v4

    check-cast v5, Lorg/jpos/util/LogSource;

    iget-object v6, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->log:Lorg/jpos/util/Log;

    invoke-virtual {v6}, Lorg/jpos/util/Log;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".socket-factory"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/jpos/util/LogSource;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 261
    move-object v5, v2

    check-cast v5, Lorg/jpos/iso/FactoryChannel;

    invoke-interface {v5, v4}, Lorg/jpos/iso/FactoryChannel;->setSocketFactory(Lorg/jpos/iso/ISOClientSocketFactory;)V

    .line 263
    .end local v4    # "sFac":Lorg/jpos/iso/ISOClientSocketFactory;
    :cond_1
    return-object v2

    .line 251
    .end local v2    # "c":Lorg/jpos/iso/ISOChannel;
    .end local v3    # "socketFactoryString":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/jpos/core/ConfigurationException;

    const-string v3, "channel element missing"

    invoke-direct {v2, v3}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public initService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->initSpaceAndQueues()V

    .line 72
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method protected initSpaceAndQueues()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 267
    .local v0, "persist":Lorg/jdom2/Element;
    const-string v1, "space"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jpos/q2/iso/ChannelAdaptor;->grabSpace(Lorg/jdom2/Element;)Lorg/jpos/space/Space;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    .line 268
    const-string v1, "in"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    .line 269
    const-string v1, "out"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->out:Ljava/lang/String;

    .line 270
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v1

    const-string v2, "write-only"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->writeOnly:Z

    .line 271
    iget-object v3, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->out:Ljava/lang/String;

    if-nez v3, :cond_0

    if-eqz v1, :cond_3

    .line 274
    :cond_0
    const-string v1, "reconnect-delay"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x2710

    :goto_0
    iput-wide v3, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->delay:J

    .line 276
    const-string v3, "keep-alive"

    invoke-virtual {v0, v3}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->keepAlive:Z

    .line 277
    const-string v3, "ignore-iso-exceptions"

    invoke-virtual {v0, v3}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->ignoreISOExceptions:Z

    .line 278
    const-string v3, "timeout"

    invoke-virtual {v0, v3}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "t":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    :goto_1
    iput-wide v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->timeout:J

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ready"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->ready:Ljava/lang/String;

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".reconnect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->reconnect:Ljava/lang/String;

    .line 282
    const-string v4, "wait-for-workers-on-stop"

    invoke-virtual {v0, v4}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->waitForWorkersOnStop:Z

    .line 283
    return-void

    .line 272
    .end local v1    # "s":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/String;
    :cond_3
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    const-string v2, "Misconfigured channel. Please verify in/out queues"

    invoke-direct {v1, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isConnected()Z
    .locals 2

    .line 184
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->ready:Ljava/lang/String;

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

.method public newChannel(Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)Lorg/jpos/iso/ISOChannel;
    .locals 5
    .param p1, "e"    # Lorg/jdom2/Element;
    .param p2, "f"    # Lorg/jpos/q2/QFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 194
    const-string v0, "class"

    invoke-static {p1, v0}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "channelName":Ljava/lang/String;
    const-string v1, "packager"

    invoke-static {p1, v1}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "packagerName":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOChannel;

    .line 199
    .local v2, "channel":Lorg/jpos/iso/ISOChannel;
    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p2, v1}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOPackager;

    .line 201
    .local v3, "packager":Lorg/jpos/iso/ISOPackager;
    invoke-interface {v2, v3}, Lorg/jpos/iso/ISOChannel;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 202
    invoke-virtual {p2, v3, p1}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 204
    .end local v3    # "packager":Lorg/jpos/iso/ISOPackager;
    :cond_0
    const-string v3, "header"

    invoke-static {p1, v3}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "setHeader"

    invoke-static {v2, v4, v3}, Lorg/jpos/q2/QFactory;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p2, v2, p1}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 206
    invoke-virtual {p2, v2, p1}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 208
    instance-of v3, v2, Lorg/jpos/iso/FilteredChannel;

    if-eqz v3, :cond_1

    .line 209
    move-object v3, v2

    check-cast v3, Lorg/jpos/iso/FilteredChannel;

    invoke-virtual {p0, v3, p1, p2}, Lorg/jpos/q2/iso/ChannelAdaptor;->addFilters(Lorg/jpos/iso/FilteredChannel;Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)V

    .line 212
    :cond_1
    instance-of v3, v2, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;

    if-eqz v3, :cond_2

    .line 213
    move-object v3, v2

    check-cast v3, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;

    invoke-virtual {p0, v3, p1, p2}, Lorg/jpos/q2/iso/ChannelAdaptor;->addExceptionHandlers(Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)V

    .line 216
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 217
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jpos/iso/ISOChannel;->setName(Ljava/lang/String;)V

    .line 218
    :cond_3
    return-object v2
.end method

.method public receive()Lorg/jpos/iso/ISOMsg;
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->out:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    return-object v0
.end method

.method public receive(J)Lorg/jpos/iso/ISOMsg;
    .locals 2
    .param p1, "timeout"    # J

    .line 178
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->out:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    return-object v0
.end method

.method public resetCounters()V
    .locals 2

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->connects:I

    iput v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->tx:I

    iput v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->rx:I

    .line 435
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->lastTxn:J

    .line 436
    return-void
.end method

.method public send(Lorg/jpos/iso/ISOMsg;)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 155
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public send(Lorg/jpos/iso/ISOMsg;J)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "timeout"    # J

    .line 163
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 164
    return-void
.end method

.method public declared-synchronized setHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    monitor-enter p0

    .line 405
    :try_start_0
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "host"

    invoke-virtual {p0, v0, v1, p1}, Lorg/jpos/q2/iso/ChannelAdaptor;->setProperty(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    .line 404
    .end local p0    # "this":Lorg/jpos/q2/iso/ChannelAdaptor;
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

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    .line 134
    .local v0, "old":Ljava/lang/String;
    iput-object p1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    .line 135
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .end local p0    # "this":Lorg/jpos/q2/iso/ChannelAdaptor;
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v1

    const-string v2, "in"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 139
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/jpos/q2/iso/ChannelAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 132
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

    .line 145
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->out:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    const-string v1, "out"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 144
    .end local p0    # "this":Lorg/jpos/q2/iso/ChannelAdaptor;
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

    .line 412
    :try_start_0
    const-string v0, "channel"

    .line 413
    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "port"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-virtual {p0, v0, v1, v2}, Lorg/jpos/q2/iso/ChannelAdaptor;->setProperty(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 411
    .end local p0    # "this":Lorg/jpos/q2/iso/ChannelAdaptor;
    .end local p1    # "port":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReconnectDelay(J)V
    .locals 2
    .param p1, "delay"    # J

    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    const-string v1, "reconnect-delay"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 125
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 126
    iput-wide p1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->delay:J

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 123
    .end local p0    # "this":Lorg/jpos/q2/iso/ChannelAdaptor;
    .end local p1    # "delay":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSocketFactory(Ljava/lang/String;)V
    .locals 2
    .param p1, "sFac"    # Ljava/lang/String;

    monitor-enter p0

    .line 429
    :try_start_0
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "socketFactory"

    invoke-virtual {p0, v0, v1, p1}, Lorg/jpos/q2/iso/ChannelAdaptor;->setProperty(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 428
    .end local p0    # "this":Lorg/jpos/q2/iso/ChannelAdaptor;
    .end local p1    # "sFac":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startService()V
    .locals 3

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->initChannel()Lorg/jpos/iso/ISOChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->channel:Lorg/jpos/iso/ISOChannel;

    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;

    invoke-direct {v1, p0}, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;-><init>(Lorg/jpos/q2/iso/ChannelAdaptor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sender:Ljava/lang/Thread;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    iget-boolean v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->writeOnly:Z

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;

    invoke-direct {v1, p0}, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;-><init>(Lorg/jpos/q2/iso/ChannelAdaptor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->receiver:Ljava/lang/Thread;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    const-string v2, "error starting service"

    invoke-virtual {v1, v2, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopService()V
    .locals 3

    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->channel:Lorg/jpos/iso/ISOChannel;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->disconnect()V

    .line 92
    :cond_0
    iget-boolean v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->waitForWorkersOnStop:Z

    if-eqz v0, :cond_1

    .line 93
    invoke-direct {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->waitForSenderToExit()V

    .line 94
    iget-boolean v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->writeOnly:Z

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->ready:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    invoke-direct {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->waitForReceiverToExit()V

    .line 99
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->sender:Ljava/lang/Thread;

    .line 100
    iput-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor;->receiver:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/ChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    const-string v2, "error disconnecting from remote host"

    invoke-virtual {v1, v2, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
