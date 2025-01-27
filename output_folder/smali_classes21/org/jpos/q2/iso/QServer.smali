.class public Lorg/jpos/q2/iso/QServer;
.super Lorg/jpos/q2/QBeanSupport;
.source "QServer.java"

# interfaces
.implements Lorg/jpos/q2/iso/QServerMBean;
.implements Lorg/jpos/space/SpaceListener;
.implements Lorg/jpos/iso/ISORequestListener;


# instance fields
.field private channel:Lorg/jpos/iso/ISOChannel;

.field private channelString:Ljava/lang/String;

.field private inQueue:Ljava/lang/String;

.field private maxSessions:I

.field private minSessions:I

.field msgn:Ljava/util/concurrent/atomic/AtomicInteger;

.field private outQueue:Ljava/lang/String;

.field private packagerString:Ljava/lang/String;

.field private port:I

.field private sendMethod:Ljava/lang/String;

.field private server:Lorg/jpos/iso/ISOServer;

.field private socketFactoryString:Ljava/lang/String;

.field protected sp:Lorg/jpos/space/LocalSpace;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/q2/iso/QServer;->port:I

    .line 59
    const/16 v0, 0x64

    iput v0, p0, Lorg/jpos/q2/iso/QServer;->maxSessions:I

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lorg/jpos/q2/iso/QServer;->minSessions:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/iso/QServer;->channel:Lorg/jpos/iso/ISOChannel;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jpos/q2/iso/QServer;->msgn:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    return-void
.end method

.method private addISOServerConnectionListeners()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v0

    .line 316
    .local v0, "factory":Lorg/jpos/q2/QFactory;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getPersist()Lorg/jdom2/Element;

    move-result-object v1

    const-string v2, "connection-listener"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 318
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 319
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    .line 321
    .local v2, "l":Lorg/jdom2/Element;
    nop

    .line 322
    const-string v3, "class"

    invoke-static {v2, v3}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOServerEventListener;

    .line 323
    .local v3, "listener":Lorg/jpos/iso/ISOServerEventListener;
    invoke-virtual {v0, v3, v2}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 324
    invoke-virtual {v0, v3, v2}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 325
    iget-object v4, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    invoke-virtual {v4, v3}, Lorg/jpos/iso/ISOServer;->addServerEventListener(Lorg/jpos/iso/ISOServerEventListener;)V

    .line 326
    .end local v2    # "l":Lorg/jdom2/Element;
    .end local v3    # "listener":Lorg/jpos/iso/ISOServerEventListener;
    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method private addListeners()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v0

    .line 298
    .local v0, "factory":Lorg/jpos/q2/QFactory;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getPersist()Lorg/jdom2/Element;

    move-result-object v1

    const-string v2, "request-listener"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 300
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 301
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    .line 303
    .local v2, "l":Lorg/jdom2/Element;
    nop

    .line 304
    const-string v3, "class"

    invoke-static {v2, v3}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISORequestListener;

    .line 305
    .local v3, "listener":Lorg/jpos/iso/ISORequestListener;
    invoke-virtual {v0, v3, v2}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 306
    invoke-virtual {v0, v3, v2}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 307
    iget-object v4, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    invoke-virtual {v4, v3}, Lorg/jpos/iso/ISOServer;->addISORequestListener(Lorg/jpos/iso/ISORequestListener;)V

    .line 308
    .end local v2    # "l":Lorg/jdom2/Element;
    .end local v3    # "listener":Lorg/jpos/iso/ISORequestListener;
    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method private addServerSocketFactory()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v0

    .line 280
    .local v0, "factory":Lorg/jpos/q2/QFactory;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getPersist()Lorg/jdom2/Element;

    move-result-object v1

    .line 282
    .local v1, "persist":Lorg/jdom2/Element;
    const-string v2, "server-socket-factory"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v2

    .line 284
    .local v2, "serverSocketFactoryElement":Lorg/jdom2/Element;
    if-eqz v2, :cond_0

    .line 285
    nop

    .line 286
    const-string v3, "class"

    invoke-static {v2, v3}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {v0, v3}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOServerSocketFactory;

    .line 287
    .local v3, "serverSocketFactory":Lorg/jpos/iso/ISOServerSocketFactory;
    invoke-virtual {v0, v3, v2}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 288
    invoke-virtual {v0, v3, v2}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 289
    iget-object v4, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    invoke-virtual {v4, v3}, Lorg/jpos/iso/ISOServer;->setSocketFactory(Lorg/jpos/iso/ISOServerSocketFactory;)V

    .line 292
    .end local v3    # "serverSocketFactory":Lorg/jpos/iso/ISOServerSocketFactory;
    :cond_0
    return-void
.end method

.method private grabSpace(Lorg/jdom2/Element;)Lorg/jpos/space/LocalSpace;
    .locals 5
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 332
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 333
    .local v0, "uri":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v1

    .line 334
    .local v1, "sp":Lorg/jpos/space/Space;
    instance-of v2, v1, Lorg/jpos/space/LocalSpace;

    if-eqz v2, :cond_1

    .line 335
    move-object v2, v1

    check-cast v2, Lorg/jpos/space/LocalSpace;

    return-object v2

    .line 337
    :cond_1
    new-instance v2, Lorg/jpos/core/ConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid space "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initIn()V
    .locals 3

    .line 128
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 129
    .local v0, "persist":Lorg/jdom2/Element;
    const-string v1, "in"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/QServer;->inQueue:Ljava/lang/String;

    .line 130
    if-eqz v1, :cond_0

    .line 136
    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->sp:Lorg/jpos/space/LocalSpace;

    invoke-interface {v2, v1, p0}, Lorg/jpos/space/LocalSpace;->addListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;)V

    .line 138
    :cond_0
    return-void
.end method

.method private initOut()V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 141
    .local v0, "persist":Lorg/jdom2/Element;
    const-string v1, "out"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/QServer;->outQueue:Ljava/lang/String;

    .line 142
    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    invoke-virtual {v1, p0}, Lorg/jpos/iso/ISOServer;->addISORequestListener(Lorg/jpos/iso/ISORequestListener;)V

    .line 153
    :cond_0
    return-void
.end method

.method private initServer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 93
    iget v0, p0, Lorg/jpos/q2/iso/QServer;->port:I

    if-eqz v0, :cond_4

    .line 96
    invoke-direct {p0}, Lorg/jpos/q2/iso/QServer;->newChannel()V

    .line 97
    iget-object v0, p0, Lorg/jpos/q2/iso/QServer;->channel:Lorg/jpos/iso/ISOChannel;

    if-eqz v0, :cond_3

    .line 101
    instance-of v0, v0, Lorg/jpos/iso/ServerChannel;

    if-eqz v0, :cond_2

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "pool":Lorg/jpos/util/ThreadPool;
    new-instance v1, Lorg/jpos/util/ThreadPool;

    iget v2, p0, Lorg/jpos/q2/iso/QServer;->minSessions:I

    iget v3, p0, Lorg/jpos/q2/iso/QServer;->maxSessions:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-ThreadPool"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/jpos/util/ThreadPool;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 108
    iget-object v1, p0, Lorg/jpos/q2/iso/QServer;->log:Lorg/jpos/util/Log;

    invoke-virtual {v1}, Lorg/jpos/util/Log;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pool"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jpos/util/ThreadPool;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 110
    new-instance v1, Lorg/jpos/iso/ISOServer;

    iget v2, p0, Lorg/jpos/q2/iso/QServer;->port:I

    iget-object v3, p0, Lorg/jpos/q2/iso/QServer;->channel:Lorg/jpos/iso/ISOChannel;

    check-cast v3, Lorg/jpos/iso/ServerChannel;

    invoke-direct {v1, v2, v3, v0}, Lorg/jpos/iso/ISOServer;-><init>(ILorg/jpos/iso/ServerChannel;Lorg/jpos/util/ThreadPool;)V

    iput-object v1, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    .line 111
    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->log:Lorg/jpos/util/Log;

    invoke-virtual {v2}, Lorg/jpos/util/Log;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jpos/iso/ISOServer;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOServer;->setName(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lorg/jpos/q2/iso/QServer;->socketFactoryString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->socketFactoryString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOServerSocketFactory;

    .line 115
    .local v1, "sFac":Lorg/jpos/iso/ISOServerSocketFactory;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/jpos/util/LogSource;

    if-eqz v2, :cond_0

    .line 116
    move-object v2, v1

    check-cast v2, Lorg/jpos/util/LogSource;

    iget-object v3, p0, Lorg/jpos/q2/iso/QServer;->log:Lorg/jpos/util/Log;

    invoke-virtual {v3}, Lorg/jpos/util/Log;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".socket-factory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/jpos/util/LogSource;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    invoke-virtual {v2, v1}, Lorg/jpos/iso/ISOServer;->setSocketFactory(Lorg/jpos/iso/ISOServerSocketFactory;)V

    .line 120
    .end local v1    # "sFac":Lorg/jpos/iso/ISOServerSocketFactory;
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getPersist()Lorg/jdom2/Element;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 121
    invoke-direct {p0}, Lorg/jpos/q2/iso/QServer;->addServerSocketFactory()V

    .line 122
    invoke-direct {p0}, Lorg/jpos/q2/iso/QServer;->addListeners()V

    .line 123
    invoke-direct {p0}, Lorg/jpos/q2/iso/QServer;->addISOServerConnectionListeners()V

    .line 124
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 126
    return-void

    .line 102
    .end local v0    # "pool":Lorg/jpos/util/ThreadPool;
    :cond_2
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->channelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not implement ServerChannel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_3
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    const-string v1, "ISO Channel is null"

    invoke-direct {v0, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_4
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    const-string v1, "Port value not set"

    invoke-direct {v0, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initWhoToSendTo()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 168
    .local v0, "persist":Lorg/jdom2/Element;
    const-string v1, "send-request"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/QServer;->sendMethod:Ljava/lang/String;

    .line 169
    if-nez v1, :cond_0

    .line 170
    const-string v1, "LAST"

    iput-object v1, p0, Lorg/jpos/q2/iso/QServer;->sendMethod:Ljava/lang/String;

    .line 174
    :cond_0
    return-void
.end method

.method private newChannel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 81
    .local v0, "persist":Lorg/jdom2/Element;
    const-string v1, "channel"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    .line 82
    .local v1, "e":Lorg/jdom2/Element;
    if-eqz v1, :cond_0

    .line 86
    new-instance v2, Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-direct {v2}, Lorg/jpos/q2/iso/ChannelAdaptor;-><init>()V

    .line 87
    .local v2, "adaptor":Lorg/jpos/q2/iso/ChannelAdaptor;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/jpos/q2/iso/ChannelAdaptor;->newChannel(Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)Lorg/jpos/iso/ISOChannel;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/q2/iso/QServer;->channel:Lorg/jpos/iso/ISOChannel;

    .line 88
    return-void

    .line 83
    .end local v2    # "adaptor":Lorg/jpos/q2/iso/ChannelAdaptor;
    :cond_0
    new-instance v2, Lorg/jpos/core/ConfigurationException;

    const-string v3, "channel element missing"

    invoke-direct {v2, v3}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public destroyService()V
    .locals 2

    .line 185
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/jpos/q2/iso/QServer;->channelString:Ljava/lang/String;

    return-object v0
.end method

.method public getCountersAsString()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOServer;->getCountersAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountersAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "isoChannelName"    # Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOServer;->getCountersAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getISOChannelNames()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOServer;->getISOChannelNames()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getISOServer()Lorg/jpos/iso/ISOServer;
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    return-object v0
.end method

.method public getMaxSessions()I
    .locals 1

    .line 234
    iget v0, p0, Lorg/jpos/q2/iso/QServer;->maxSessions:I

    return v0
.end method

.method public getMinSessions()I
    .locals 1

    .line 246
    iget v0, p0, Lorg/jpos/q2/iso/QServer;->minSessions:I

    return v0
.end method

.method public getPackager()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/jpos/q2/iso/QServer;->packagerString:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 198
    iget v0, p0, Lorg/jpos/q2/iso/QServer;->port:I

    return v0
.end method

.method public getSocketFactory()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/jpos/q2/iso/QServer;->socketFactoryString:Ljava/lang/String;

    return-object v0
.end method

.method public initService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 76
    .local v0, "e":Lorg/jdom2/Element;
    const-string v1, "space"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jpos/q2/iso/QServer;->grabSpace(Lorg/jdom2/Element;)Lorg/jpos/space/LocalSpace;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/QServer;->sp:Lorg/jpos/space/LocalSpace;

    .line 77
    return-void
.end method

.method public notify(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lorg/jpos/q2/iso/QServer;->sp:Lorg/jpos/space/LocalSpace;

    invoke-interface {v0, p1}, Lorg/jpos/space/LocalSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 347
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jpos/iso/ISOMsg;

    if-eqz v1, :cond_a

    .line 348
    move-object v1, v0

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 349
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->sendMethod:Ljava/lang/String;

    const-string v3, "LAST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Client disconnected"

    const-string v4, "Server has no active connections"

    const-string v5, "notify"

    if-eqz v2, :cond_2

    .line 351
    :try_start_0
    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    invoke-virtual {v2}, Lorg/jpos/iso/ISOServer;->getLastConnectedISOChannel()Lorg/jpos/iso/ISOChannel;

    move-result-object v2

    .line 352
    .local v2, "c":Lorg/jpos/iso/ISOChannel;
    if-eqz v2, :cond_1

    .line 355
    invoke-interface {v2}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    invoke-interface {v2, v1}, Lorg/jpos/iso/ISOChannel;->send(Lorg/jpos/iso/ISOMsg;)V

    .end local v2    # "c":Lorg/jpos/iso/ISOChannel;
    goto :goto_0

    .line 356
    .restart local v2    # "c":Lorg/jpos/iso/ISOChannel;
    :cond_0
    new-instance v4, Lorg/jpos/iso/ISOException;

    invoke-direct {v4, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    throw v4

    .line 353
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v3, Lorg/jpos/iso/ISOException;

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v2    # "c":Lorg/jpos/iso/ISOChannel;
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 361
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto/16 :goto_4

    .line 364
    :cond_2
    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->sendMethod:Ljava/lang/String;

    const-string v6, "ALL"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, " "

    if-eqz v2, :cond_6

    .line 365
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getISOChannelNames()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "channelNames":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 367
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 368
    .local v6, "tok":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 370
    :try_start_1
    iget-object v7, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jpos/iso/ISOServer;->getISOChannel(Ljava/lang/String;)Lorg/jpos/iso/ISOChannel;

    move-result-object v7

    .line 371
    .local v7, "c":Lorg/jpos/iso/ISOChannel;
    if-eqz v7, :cond_4

    .line 374
    invoke-interface {v7}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 377
    invoke-interface {v7, v1}, Lorg/jpos/iso/ISOChannel;->send(Lorg/jpos/iso/ISOMsg;)V

    .end local v7    # "c":Lorg/jpos/iso/ISOChannel;
    goto :goto_2

    .line 375
    .restart local v7    # "c":Lorg/jpos/iso/ISOChannel;
    :cond_3
    new-instance v8, Lorg/jpos/iso/ISOException;

    invoke-direct {v8, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "channelNames":Ljava/lang/String;
    .end local v6    # "tok":Ljava/util/StringTokenizer;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    throw v8

    .line 372
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v2    # "channelNames":Ljava/lang/String;
    .restart local v6    # "tok":Ljava/util/StringTokenizer;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v8, Lorg/jpos/iso/ISOException;

    invoke-direct {v8, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "channelNames":Ljava/lang/String;
    .end local v6    # "tok":Ljava/util/StringTokenizer;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    throw v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 378
    .end local v7    # "c":Lorg/jpos/iso/ISOChannel;
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v2    # "channelNames":Ljava/lang/String;
    .restart local v6    # "tok":Ljava/util/StringTokenizer;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v7

    .line 379
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getLog()Lorg/jpos/util/Log;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 380
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 383
    .end local v2    # "channelNames":Ljava/lang/String;
    .end local v6    # "tok":Ljava/util/StringTokenizer;
    :cond_5
    goto :goto_4

    .line 384
    :cond_6
    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->sendMethod:Ljava/lang/String;

    const-string v7, "RR"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 385
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getISOChannelNames()Ljava/lang/String;

    move-result-object v2

    .line 386
    .restart local v2    # "channelNames":Ljava/lang/String;
    const/4 v7, 0x0

    .line 388
    .local v7, "i":I
    if-eqz v2, :cond_a

    .line 389
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 390
    .restart local v6    # "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    .line 391
    .local v8, "channelName":[Ljava/lang/String;
    :goto_3
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 392
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 393
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 396
    :cond_7
    :try_start_2
    iget-object v9, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    iget-object v10, p0, Lorg/jpos/q2/iso/QServer;->msgn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v10

    array-length v11, v8

    rem-int/2addr v10, v11

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Lorg/jpos/iso/ISOServer;->getISOChannel(Ljava/lang/String;)Lorg/jpos/iso/ISOChannel;

    move-result-object v9

    .line 397
    .local v9, "c":Lorg/jpos/iso/ISOChannel;
    if-eqz v9, :cond_9

    .line 400
    invoke-interface {v9}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 403
    invoke-interface {v9, v1}, Lorg/jpos/iso/ISOChannel;->send(Lorg/jpos/iso/ISOMsg;)V

    .line 406
    .end local v9    # "c":Lorg/jpos/iso/ISOChannel;
    goto :goto_4

    .line 401
    .restart local v9    # "c":Lorg/jpos/iso/ISOChannel;
    :cond_8
    new-instance v4, Lorg/jpos/iso/ISOException;

    invoke-direct {v4, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "channelNames":Ljava/lang/String;
    .end local v6    # "tok":Ljava/util/StringTokenizer;
    .end local v7    # "i":I
    .end local v8    # "channelName":[Ljava/lang/String;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    throw v4

    .line 398
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v2    # "channelNames":Ljava/lang/String;
    .restart local v6    # "tok":Ljava/util/StringTokenizer;
    .restart local v7    # "i":I
    .restart local v8    # "channelName":[Ljava/lang/String;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    new-instance v3, Lorg/jpos/iso/ISOException;

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "channelNames":Ljava/lang/String;
    .end local v6    # "tok":Ljava/util/StringTokenizer;
    .end local v7    # "i":I
    .end local v8    # "channelName":[Ljava/lang/String;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 404
    .end local v9    # "c":Lorg/jpos/iso/ISOChannel;
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v2    # "channelNames":Ljava/lang/String;
    .restart local v6    # "tok":Ljava/util/StringTokenizer;
    .restart local v7    # "i":I
    .restart local v8    # "channelName":[Ljava/lang/String;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :catch_2
    move-exception v3

    .line 405
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    invoke-virtual {v4, v5, v3}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "channelNames":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "tok":Ljava/util/StringTokenizer;
    .end local v7    # "i":I
    .end local v8    # "channelName":[Ljava/lang/String;
    :cond_a
    :goto_4
    return-void
.end method

.method public process(Lorg/jpos/iso/ISOSource;Lorg/jpos/iso/ISOMsg;)Z
    .locals 2
    .param p1, "source"    # Lorg/jpos/iso/ISOSource;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 418
    iget-object v0, p0, Lorg/jpos/q2/iso/QServer;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v1, p0, Lorg/jpos/q2/iso/QServer;->outQueue:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized setChannel(Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;

    monitor-enter p0

    .line 215
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/iso/QServer;->channelString:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getAttrs()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "channel"

    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->channelString:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lorg/jpos/q2/iso/QServer;->setAttr(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/QServer;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 214
    .end local p0    # "this":Lorg/jpos/q2/iso/QServer;
    .end local p1    # "channel":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxSessions(I)V
    .locals 3
    .param p1, "maxSessions"    # I

    monitor-enter p0

    .line 227
    :try_start_0
    iput p1, p0, Lorg/jpos/q2/iso/QServer;->maxSessions:I

    .line 228
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getAttrs()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "maxSessions"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/jpos/q2/iso/QServer;->setAttr(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/QServer;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 226
    .end local p0    # "this":Lorg/jpos/q2/iso/QServer;
    .end local p1    # "maxSessions":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinSessions(I)V
    .locals 3
    .param p1, "minSessions"    # I

    monitor-enter p0

    .line 239
    :try_start_0
    iput p1, p0, Lorg/jpos/q2/iso/QServer;->minSessions:I

    .line 240
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getAttrs()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "minSessions"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/jpos/q2/iso/QServer;->setAttr(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/QServer;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 238
    .end local p0    # "this":Lorg/jpos/q2/iso/QServer;
    .end local p1    # "minSessions":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPackager(Ljava/lang/String;)V
    .locals 3
    .param p1, "packager"    # Ljava/lang/String;

    monitor-enter p0

    .line 203
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/iso/QServer;->packagerString:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getAttrs()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "packager"

    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->packagerString:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lorg/jpos/q2/iso/QServer;->setAttr(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/QServer;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 202
    .end local p0    # "this":Lorg/jpos/q2/iso/QServer;
    .end local p1    # "packager":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPort(I)V
    .locals 3
    .param p1, "port"    # I

    monitor-enter p0

    .line 191
    :try_start_0
    iput p1, p0, Lorg/jpos/q2/iso/QServer;->port:I

    .line 192
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getAttrs()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "port"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/jpos/q2/iso/QServer;->setAttr(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/QServer;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 190
    .end local p0    # "this":Lorg/jpos/q2/iso/QServer;
    .end local p1    # "port":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSocketFactory(Ljava/lang/String;)V
    .locals 3
    .param p1, "sFactory"    # Ljava/lang/String;

    monitor-enter p0

    .line 251
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/iso/QServer;->socketFactoryString:Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getAttrs()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "socketFactory"

    iget-object v2, p0, Lorg/jpos/q2/iso/QServer;->socketFactoryString:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lorg/jpos/q2/iso/QServer;->setAttr(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/QServer;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 250
    .end local p0    # "this":Lorg/jpos/q2/iso/QServer;
    .end local p1    # "sFactory":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startService()V
    .locals 3

    .line 157
    :try_start_0
    invoke-direct {p0}, Lorg/jpos/q2/iso/QServer;->initServer()V

    .line 158
    invoke-direct {p0}, Lorg/jpos/q2/iso/QServer;->initIn()V

    .line 159
    invoke-direct {p0}, Lorg/jpos/q2/iso/QServer;->initOut()V

    .line 160
    invoke-direct {p0}, Lorg/jpos/q2/iso/QServer;->initWhoToSendTo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QServer;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    const-string v2, "error starting service"

    invoke-virtual {v1, v2, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopService()V
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/jpos/q2/iso/QServer;->server:Lorg/jpos/iso/ISOServer;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lorg/jpos/iso/ISOServer;->shutdown()V

    .line 180
    iget-object v0, p0, Lorg/jpos/q2/iso/QServer;->sp:Lorg/jpos/space/LocalSpace;

    iget-object v1, p0, Lorg/jpos/q2/iso/QServer;->inQueue:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lorg/jpos/space/LocalSpace;->removeListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;)V

    .line 182
    :cond_0
    return-void
.end method
