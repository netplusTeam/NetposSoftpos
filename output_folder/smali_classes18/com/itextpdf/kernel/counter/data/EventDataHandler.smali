.class public abstract Lcom/itextpdf/kernel/counter/data/EventDataHandler;
.super Ljava/lang/Object;
.source "EventDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/itextpdf/kernel/counter/data/EventData<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/itextpdf/kernel/counter/data/IEventDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itextpdf/kernel/counter/data/IEventDataCache<",
            "TT;TV;>;"
        }
    .end annotation
.end field

.field private final factory:Lcom/itextpdf/kernel/counter/data/IEventDataFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itextpdf/kernel/counter/data/IEventDataFactory<",
            "TT;TV;>;"
        }
    .end annotation
.end field

.field private final lastProcessedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final processLock:Ljava/lang/Object;

.field private volatile waitTime:Lcom/itextpdf/kernel/counter/data/WaitTime;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/counter/data/IEventDataCache;Lcom/itextpdf/kernel/counter/data/IEventDataFactory;JJ)V
    .locals 1
    .param p3, "initialWaitTimeMillis"    # J
    .param p5, "maxWaitTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/counter/data/IEventDataCache<",
            "TT;TV;>;",
            "Lcom/itextpdf/kernel/counter/data/IEventDataFactory<",
            "TT;TV;>;JJ)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    .local p1, "cache":Lcom/itextpdf/kernel/counter/data/IEventDataCache;, "Lcom/itextpdf/kernel/counter/data/IEventDataCache<TT;TV;>;"
    .local p2, "factory":Lcom/itextpdf/kernel/counter/data/IEventDataFactory;, "Lcom/itextpdf/kernel/counter/data/IEventDataFactory<TT;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->processLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->lastProcessedTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 83
    iput-object p1, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->cache:Lcom/itextpdf/kernel/counter/data/IEventDataCache;

    .line 84
    iput-object p2, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->factory:Lcom/itextpdf/kernel/counter/data/IEventDataFactory;

    .line 85
    new-instance v0, Lcom/itextpdf/kernel/counter/data/WaitTime;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/itextpdf/kernel/counter/data/WaitTime;-><init>(JJ)V

    iput-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->waitTime:Lcom/itextpdf/kernel/counter/data/WaitTime;

    .line 86
    return-void
.end method

.method private tryProcess(Lcom/itextpdf/kernel/counter/data/EventData;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    .local p1, "data":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->process(Lcom/itextpdf/kernel/counter/data/EventData;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "any":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->onProcessException(Ljava/lang/Exception;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public clear()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->cache:Lcom/itextpdf/kernel/counter/data/IEventDataCache;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->cache:Lcom/itextpdf/kernel/counter/data/IEventDataCache;

    invoke-interface {v1}, Lcom/itextpdf/kernel/counter/data/IEventDataCache;->clear()Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "all":Ljava/util/List;, "Ljava/util/List<TV;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->lastProcessedTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 94
    invoke-virtual {p0}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->resetWaitTime()V

    .line 95
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 92
    .end local v1    # "all":Ljava/util/List;, "Ljava/util/List<TV;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getWaitTime()Lcom/itextpdf/kernel/counter/data/WaitTime;
    .locals 1

    .line 190
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->waitTime:Lcom/itextpdf/kernel/counter/data/WaitTime;

    return-object v0
.end method

.method public increaseWaitTime()V
    .locals 11

    .line 180
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->waitTime:Lcom/itextpdf/kernel/counter/data/WaitTime;

    .line 181
    .local v0, "local":Lcom/itextpdf/kernel/counter/data/WaitTime;
    new-instance v8, Lcom/itextpdf/kernel/counter/data/WaitTime;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/counter/data/WaitTime;->getInitial()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/counter/data/WaitTime;->getMaximum()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/itextpdf/kernel/counter/data/WaitTime;->getTime()J

    move-result-wide v6

    const-wide/16 v9, 0x2

    mul-long/2addr v6, v9

    invoke-virtual {v0}, Lcom/itextpdf/kernel/counter/data/WaitTime;->getMaximum()J

    move-result-wide v9

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/itextpdf/kernel/counter/data/WaitTime;-><init>(JJJ)V

    iput-object v8, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->waitTime:Lcom/itextpdf/kernel/counter/data/WaitTime;

    .line 182
    return-void
.end method

.method protected onFailure(Lcom/itextpdf/kernel/counter/data/EventData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    .local p1, "data":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->increaseWaitTime()V

    .line 199
    return-void
.end method

.method protected onProcessException(Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 208
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onSuccess(Lcom/itextpdf/kernel/counter/data/EventData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 194
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    .local p1, "data":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->resetWaitTime()V

    .line 195
    return-void
.end method

.method protected abstract process(Lcom/itextpdf/kernel/counter/data/EventData;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation
.end method

.method public register(Lcom/itextpdf/kernel/counter/event/IEvent;Lcom/itextpdf/kernel/counter/event/IMetaInfo;)V
    .locals 3
    .param p1, "event"    # Lcom/itextpdf/kernel/counter/event/IEvent;
    .param p2, "metaInfo"    # Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 101
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->factory:Lcom/itextpdf/kernel/counter/data/IEventDataFactory;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->factory:Lcom/itextpdf/kernel/counter/data/IEventDataFactory;

    invoke-interface {v1, p1, p2}, Lcom/itextpdf/kernel/counter/data/IEventDataFactory;->create(Lcom/itextpdf/kernel/counter/event/IEvent;Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/counter/data/EventData;

    move-result-object v1

    .line 103
    .local v1, "data":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    if-eqz v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->cache:Lcom/itextpdf/kernel/counter/data/IEventDataCache;

    monitor-enter v0

    .line 106
    :try_start_1
    iget-object v2, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->cache:Lcom/itextpdf/kernel/counter/data/IEventDataCache;

    invoke-interface {v2, v1}, Lcom/itextpdf/kernel/counter/data/IEventDataCache;->put(Lcom/itextpdf/kernel/counter/data/EventData;)V

    .line 107
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-virtual {p0}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->tryProcessNextAsync()V

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 103
    .end local v1    # "data":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public resetWaitTime()V
    .locals 6

    .line 175
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->waitTime:Lcom/itextpdf/kernel/counter/data/WaitTime;

    .line 176
    .local v0, "local":Lcom/itextpdf/kernel/counter/data/WaitTime;
    new-instance v1, Lcom/itextpdf/kernel/counter/data/WaitTime;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/counter/data/WaitTime;->getInitial()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/counter/data/WaitTime;->getMaximum()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/counter/data/WaitTime;-><init>(JJ)V

    iput-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->waitTime:Lcom/itextpdf/kernel/counter/data/WaitTime;

    .line 177
    return-void
.end method

.method public setNoWaitTime()V
    .locals 9

    .line 185
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->waitTime:Lcom/itextpdf/kernel/counter/data/WaitTime;

    .line 186
    .local v0, "local":Lcom/itextpdf/kernel/counter/data/WaitTime;
    new-instance v8, Lcom/itextpdf/kernel/counter/data/WaitTime;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/counter/data/WaitTime;->getInitial()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/counter/data/WaitTime;->getMaximum()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/itextpdf/kernel/counter/data/WaitTime;-><init>(JJJ)V

    iput-object v8, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->waitTime:Lcom/itextpdf/kernel/counter/data/WaitTime;

    .line 187
    return-void
.end method

.method public tryProcessNext()V
    .locals 6

    .line 113
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    invoke-static {}, Lcom/itextpdf/io/util/SystemUtil;->getRelativeTimeMillis()J

    move-result-wide v0

    .line 114
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->lastProcessedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->waitTime:Lcom/itextpdf/kernel/counter/data/WaitTime;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/counter/data/WaitTime;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->lastProcessedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/itextpdf/io/util/SystemUtil;->getRelativeTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 117
    iget-object v2, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->cache:Lcom/itextpdf/kernel/counter/data/IEventDataCache;

    monitor-enter v2

    .line 118
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->cache:Lcom/itextpdf/kernel/counter/data/IEventDataCache;

    invoke-interface {v3}, Lcom/itextpdf/kernel/counter/data/IEventDataCache;->retrieveNext()Lcom/itextpdf/kernel/counter/data/EventData;

    move-result-object v3

    .line 119
    .local v3, "data":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 120
    if-eqz v3, :cond_1

    .line 122
    iget-object v2, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->processLock:Ljava/lang/Object;

    monitor-enter v2

    .line 123
    :try_start_1
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->tryProcess(Lcom/itextpdf/kernel/counter/data/EventData;)Z

    move-result v4

    .line 124
    .local v4, "successful":Z
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    if-eqz v4, :cond_0

    .line 126
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->onSuccess(Lcom/itextpdf/kernel/counter/data/EventData;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->cache:Lcom/itextpdf/kernel/counter/data/IEventDataCache;

    monitor-enter v5

    .line 129
    :try_start_2
    iget-object v2, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->cache:Lcom/itextpdf/kernel/counter/data/IEventDataCache;

    invoke-interface {v2, v3}, Lcom/itextpdf/kernel/counter/data/IEventDataCache;->put(Lcom/itextpdf/kernel/counter/data/EventData;)V

    .line 130
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->onFailure(Lcom/itextpdf/kernel/counter/data/EventData;)V

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 124
    .end local v4    # "successful":Z
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 119
    .end local v3    # "data":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 135
    :cond_1
    :goto_0
    return-void
.end method

.method public tryProcessNextAsync()V
    .locals 1

    .line 138
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->tryProcessNextAsync(Ljava/lang/Boolean;)V

    .line 139
    return-void
.end method

.method public tryProcessNextAsync(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "daemon"    # Ljava/lang/Boolean;

    .line 142
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    invoke-static {}, Lcom/itextpdf/io/util/SystemUtil;->getRelativeTimeMillis()J

    move-result-wide v0

    .line 143
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->lastProcessedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->waitTime:Lcom/itextpdf/kernel/counter/data/WaitTime;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/counter/data/WaitTime;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 144
    new-instance v2, Lcom/itextpdf/kernel/counter/data/EventDataHandler$1;

    invoke-direct {v2, p0}, Lcom/itextpdf/kernel/counter/data/EventDataHandler$1;-><init>(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V

    .line 150
    .local v2, "thread":Ljava/lang/Thread;
    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 153
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 155
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method public tryProcessRest()V
    .locals 4

    .line 161
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->clear()Ljava/util/List;

    move-result-object v0

    .line 162
    .local v0, "unprocessedEvents":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->processLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/counter/data/EventData;

    .line 166
    .local v3, "data":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->process(Lcom/itextpdf/kernel/counter/data/EventData;)Z

    .line 167
    nop

    .end local v3    # "data":Lcom/itextpdf/kernel/counter/data/EventData;, "TV;"
    goto :goto_0

    .line 168
    :cond_0
    monitor-exit v1

    .line 170
    goto :goto_1

    .line 168
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "unprocessedEvents":Ljava/util/List;, "Ljava/util/List<TV;>;"
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    .restart local v0    # "unprocessedEvents":Ljava/util/List;, "Ljava/util/List<TV;>;"
    :catch_0
    move-exception v1

    .line 172
    :cond_1
    :goto_1
    return-void
.end method
