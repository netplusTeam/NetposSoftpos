.class public Lorg/jpos/q2/iso/DirPollAdaptor;
.super Lorg/jpos/q2/QBeanSupport;
.source "DirPollAdaptor.java"

# interfaces
.implements Lorg/jpos/q2/iso/DirPollAdaptorMBean;


# instance fields
.field protected dirPoll:Lorg/jpos/util/DirPoll;

.field protected dirPollThread:Ljava/lang/Thread;

.field path:Ljava/lang/String;

.field pollInterval:J

.field poolSize:I

.field priorities:Ljava/lang/String;

.field processorClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPollThread:Ljava/lang/Thread;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->poolSize:I

    .line 48
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->pollInterval:J

    .line 49
    return-void
.end method


# virtual methods
.method protected createDirPoll()Lorg/jpos/util/DirPoll;
    .locals 1

    .line 76
    new-instance v0, Lorg/jpos/util/DirPoll;

    invoke-direct {v0}, Lorg/jpos/util/DirPoll;-><init>()V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "."

    :cond_0
    return-object v0
.end method

.method public getPollInterval()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->pollInterval:J

    return-wide v0
.end method

.method public getPoolSize()I
    .locals 1

    .line 120
    iget v0, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->poolSize:I

    return v0
.end method

.method public getPriorities()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->priorities:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessor()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->processorClass:Ljava/lang/String;

    return-object v0
.end method

.method protected initService()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DirPollAdaptor;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v0

    .line 53
    .local v0, "factory":Lorg/jpos/q2/QFactory;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DirPollAdaptor;->createDirPoll()Lorg/jpos/util/DirPoll;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPoll:Lorg/jpos/util/DirPoll;

    .line 54
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DirPollAdaptor;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/DirPoll;->setPath(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPoll:Lorg/jpos/util/DirPoll;

    new-instance v2, Lorg/jpos/util/ThreadPool;

    iget v3, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->poolSize:I

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lorg/jpos/util/ThreadPool;-><init>(II)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/DirPoll;->setThreadPool(Lorg/jpos/util/ThreadPool;)V

    .line 56
    iget-object v1, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPoll:Lorg/jpos/util/DirPoll;

    iget-wide v2, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->pollInterval:J

    invoke-virtual {v1, v2, v3}, Lorg/jpos/util/DirPoll;->setPollInterval(J)V

    .line 57
    iget-object v1, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->priorities:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 58
    iget-object v2, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPoll:Lorg/jpos/util/DirPoll;

    invoke-virtual {v2, v1}, Lorg/jpos/util/DirPoll;->setPriorities(Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v1, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPoll:Lorg/jpos/util/DirPoll;

    invoke-virtual {p0}, Lorg/jpos/q2/iso/DirPollAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jpos/util/Log;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jpos/q2/iso/DirPollAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/util/Log;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jpos/util/DirPoll;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DirPollAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/q2/QFactory;->getConfiguration(Lorg/jdom2/Element;)Lorg/jpos/core/Configuration;

    move-result-object v1

    .line 61
    .local v1, "cfg":Lorg/jpos/core/Configuration;
    iget-object v2, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPoll:Lorg/jpos/util/DirPoll;

    invoke-virtual {v2, v1}, Lorg/jpos/util/DirPoll;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 62
    iget-object v2, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPoll:Lorg/jpos/util/DirPoll;

    invoke-virtual {v2}, Lorg/jpos/util/DirPoll;->createDirs()V

    .line 63
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DirPollAdaptor;->getProcessor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    .local v2, "dpp":Ljava/lang/Object;
    instance-of v3, v2, Lorg/jpos/util/LogSource;

    if-eqz v3, :cond_1

    .line 65
    move-object v3, v2

    check-cast v3, Lorg/jpos/util/LogSource;

    .line 66
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DirPollAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jpos/util/Log;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jpos/q2/iso/DirPollAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jpos/util/Log;->getRealm()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-interface {v3, v4, v5}, Lorg/jpos/util/LogSource;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 69
    :cond_1
    instance-of v3, v2, Lorg/jpos/core/Configurable;

    if-eqz v3, :cond_2

    .line 70
    move-object v3, v2

    check-cast v3, Lorg/jpos/core/Configurable;

    invoke-interface {v3, v1}, Lorg/jpos/core/Configurable;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 72
    :cond_2
    iget-object v3, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPoll:Lorg/jpos/util/DirPoll;

    invoke-virtual {v3, v2}, Lorg/jpos/util/DirPoll;->setProcessor(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public declared-synchronized setPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 110
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->path:Ljava/lang/String;

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/DirPollAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 109
    .end local p0    # "this":Lorg/jpos/q2/iso/DirPollAdaptor;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPollInterval(J)V
    .locals 1
    .param p1, "pollInterval"    # J

    monitor-enter p0

    .line 128
    :try_start_0
    iput-wide p1, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->pollInterval:J

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/DirPollAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 127
    .end local p0    # "this":Lorg/jpos/q2/iso/DirPollAdaptor;
    .end local p1    # "pollInterval":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPoolSize(I)V
    .locals 1
    .param p1, "size"    # I

    monitor-enter p0

    .line 115
    :try_start_0
    iput p1, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->poolSize:I

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/DirPollAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 114
    .end local p0    # "this":Lorg/jpos/q2/iso/DirPollAdaptor;
    .end local p1    # "size":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPriorities(Ljava/lang/String;)V
    .locals 1
    .param p1, "priorities"    # Ljava/lang/String;

    monitor-enter p0

    .line 137
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->priorities:Ljava/lang/String;

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/DirPollAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 136
    .end local p0    # "this":Lorg/jpos/q2/iso/DirPollAdaptor;
    .end local p1    # "priorities":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProcessor(Ljava/lang/String;)V
    .locals 1
    .param p1, "processor"    # Ljava/lang/String;

    monitor-enter p0

    .line 146
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->processorClass:Ljava/lang/String;

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/DirPollAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 145
    .end local p0    # "this":Lorg/jpos/q2/iso/DirPollAdaptor;
    .end local p1    # "processor":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected startService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPoll:Lorg/jpos/util/DirPoll;

    if-eqz v0, :cond_0

    .line 83
    monitor-enter v0

    .line 84
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPoll:Lorg/jpos/util/DirPoll;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPollThread:Ljava/lang/Thread;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected stopService()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPoll:Lorg/jpos/util/DirPoll;

    invoke-virtual {v0}, Lorg/jpos/util/DirPoll;->destroy()V

    .line 91
    iget-object v0, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPoll:Lorg/jpos/util/DirPoll;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPollThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "shutdown-timeout"

    const-wide/32 v3, 0xea60

    invoke-interface {v1, v2, v3, v4}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .local v1, "shutdownTimeout":J
    :try_start_1
    iget-object v3, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPollThread:Ljava/lang/Thread;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    goto :goto_0

    .line 96
    :catch_0
    move-exception v3

    .line 99
    :goto_0
    :try_start_2
    iget-object v3, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPollThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/jpos/q2/iso/DirPollAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/q2/iso/DirPollAdaptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - dirPoll thread did not finish in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " milliseconds. Interrupting thread now."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 101
    iget-object v3, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPollThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 103
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jpos/q2/iso/DirPollAdaptor;->dirPollThread:Ljava/lang/Thread;

    .line 105
    .end local v1    # "shutdownTimeout":J
    :cond_1
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
