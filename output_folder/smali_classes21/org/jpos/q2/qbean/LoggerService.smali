.class public Lorg/jpos/q2/qbean/LoggerService;
.super Lorg/jpos/q2/QBeanSupport;
.source "LoggerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field logger:Lorg/jpos/util/Logger;

.field queueName:Ljava/lang/String;

.field sp:Lorg/jpos/space/Space;

.field timeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 35
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lorg/jpos/q2/qbean/LoggerService;->timeout:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 47
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/LoggerService;->running()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lorg/jpos/q2/qbean/LoggerService;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/qbean/LoggerService;->queueName:Ljava/lang/String;

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/util/LogEvent;

    .line 49
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/LoggerService;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->setSource(Lorg/jpos/util/LogSource;)V

    .line 51
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 53
    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    :cond_0
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 58
    invoke-super {p0, p1}, Lorg/jpos/q2/QBeanSupport;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 59
    const-string v0, "queue"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/LoggerService;->queueName:Ljava/lang/String;

    .line 60
    if-eqz v0, :cond_0

    .line 62
    const-string v0, "space"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/LoggerService;->sp:Lorg/jpos/space/Space;

    .line 63
    iget-wide v0, p0, Lorg/jpos/q2/qbean/LoggerService;->timeout:J

    const-string v2, "timeout"

    invoke-interface {p1, v2, v0, v1}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/q2/qbean/LoggerService;->timeout:J

    .line 64
    return-void

    .line 61
    :cond_0
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    const-string v1, "\'queue\' property not configured"

    invoke-direct {v0, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected startService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/LoggerService;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0}, Lorg/jpos/q2/qbean/LoggerService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method

.method protected stopService()V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/LoggerService;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 43
    return-void
.end method
