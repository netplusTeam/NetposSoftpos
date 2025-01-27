.class public Lorg/jpos/q2/iso/OneShotChannelAdaptor;
.super Lorg/jpos/q2/QBeanSupport;
.source "OneShotChannelAdaptor.java"

# interfaces
.implements Lorg/jpos/q2/iso/OneShotChannelAdaptorMBean;
.implements Lorg/jpos/iso/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;
    }
.end annotation


# instance fields
.field delay:J

.field in:Ljava/lang/String;

.field maxConnectAttempts:I

.field maxConnections:I

.field out:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lorg/jpos/q2/iso/OneShotChannelAdaptor;)Lorg/jpos/core/Configuration;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    .line 53
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->cfg:Lorg/jpos/core/Configuration;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jpos/q2/iso/OneShotChannelAdaptor;)Lorg/jpos/util/Log;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/q2/iso/OneShotChannelAdaptor;

    .line 53
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->log:Lorg/jpos/util/Log;

    return-object v0
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

    .line 68
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


# virtual methods
.method public destroyService()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .line 291
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "host"

    invoke-virtual {p0, v0, v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getProperty(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInQueue()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->in:Ljava/lang/String;

    return-object v0
.end method

.method public getOutQueue()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->out:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 3

    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "port":I
    :try_start_0
    const-string v1, "channel"

    .line 304
    invoke-virtual {p0, v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "port"

    invoke-virtual {p0, v1, v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getProperty(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 308
    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 309
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method

.method public getSocketFactory()Ljava/lang/String;
    .locals 2

    .line 316
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "socketFactory"

    invoke-virtual {p0, v0, v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getProperty(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initAdaptor()V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 73
    .local v0, "persist":Lorg/jdom2/Element;
    const-string v1, "space"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->grabSpace(Lorg/jdom2/Element;)Lorg/jpos/space/Space;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->sp:Lorg/jpos/space/Space;

    .line 74
    const-string v1, "in"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->in:Ljava/lang/String;

    .line 75
    const-string v1, "out"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->out:Ljava/lang/String;

    .line 76
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->delay:J

    .line 78
    const-string v1, "max-connections"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->maxConnections:I

    .line 80
    const-string v2, "max-connect-attempts"

    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    const/16 v2, 0xf

    :goto_1
    iput v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->maxConnectAttempts:I

    .line 82
    return-void
.end method

.method public receive()Lorg/jpos/iso/ISOMsg;
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->out:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    return-object v0
.end method

.method public receive(J)Lorg/jpos/iso/ISOMsg;
    .locals 2
    .param p1, "timeout"    # J

    .line 139
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->out:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    return-object v0
.end method

.method public send(Lorg/jpos/iso/ISOMsg;)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 116
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->in:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public send(Lorg/jpos/iso/ISOMsg;J)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "timeout"    # J

    .line 124
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->in:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 125
    return-void
.end method

.method public declared-synchronized setHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    monitor-enter p0

    .line 286
    :try_start_0
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "host"

    invoke-virtual {p0, v0, v1, p1}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->setProperty(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 285
    .end local p0    # "this":Lorg/jpos/q2/iso/OneShotChannelAdaptor;
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

    .line 262
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->in:Ljava/lang/String;

    .line 263
    .local v0, "old":Ljava/lang/String;
    iput-object p1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->in:Ljava/lang/String;

    .line 264
    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->sp:Lorg/jpos/space/Space;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v0, v2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    .end local p0    # "this":Lorg/jpos/q2/iso/OneShotChannelAdaptor;
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v1

    const-string v2, "in"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 268
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 261
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

    .line 276
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->out:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    const-string v1, "out"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 275
    .end local p0    # "this":Lorg/jpos/q2/iso/OneShotChannelAdaptor;
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

    .line 295
    :try_start_0
    const-string v0, "channel"

    .line 296
    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "port"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-virtual {p0, v0, v1, v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->setProperty(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    .line 294
    .end local p0    # "this":Lorg/jpos/q2/iso/OneShotChannelAdaptor;
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

    .line 312
    :try_start_0
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getProperties(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "socketFactory"

    invoke-virtual {p0, v0, v1, p1}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->setProperty(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 311
    .end local p0    # "this":Lorg/jpos/q2/iso/OneShotChannelAdaptor;
    .end local p1    # "sFac":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startService()V
    .locals 3

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->initAdaptor()V

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->maxConnections:I

    if-ge v0, v1, :cond_0

    .line 87
    new-instance v1, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;

    invoke-direct {v1, p0, v0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;-><init>(Lorg/jpos/q2/iso/OneShotChannelAdaptor;I)V

    .line 88
    .local v1, "w":Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;
    invoke-virtual {v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;->initChannel()V

    .line 89
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 86
    .end local v1    # "w":Lorg/jpos/q2/iso/OneShotChannelAdaptor$Worker;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    const-string v2, "error starting service"

    invoke-virtual {v1, v2, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public stopService()V
    .locals 4

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->maxConnections:I

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->in:Ljava/lang/String;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2, v3}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/OneShotChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    const-string v2, "error stopping service"

    invoke-virtual {v1, v2, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
