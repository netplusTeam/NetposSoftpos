.class public Lorg/jpos/util/BufferedLogListener;
.super Ljava/lang/Object;
.source "BufferedLogListener.java"

# interfaces
.implements Lorg/jpos/util/LogListener;
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/util/LogProducer;


# static fields
.field public static final DEFAULT_SIZE:I = 0x64


# instance fields
.field final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/util/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/util/LogListener;",
            ">;"
        }
    .end annotation
.end field

.field private logService:Ljava/util/concurrent/ScheduledExecutorService;

.field maxSize:I

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/BufferedLogListener;->listeners:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/BufferedLogListener;->events:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$addListener$0(Lorg/jpos/util/LogListener;Lorg/jpos/util/LogEvent;)V
    .locals 1
    .param p0, "listener"    # Lorg/jpos/util/LogListener;
    .param p1, "evt"    # Lorg/jpos/util/LogEvent;

    .line 61
    :try_start_0
    invoke-interface {p0, p1}, Lorg/jpos/util/LogListener;->log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 63
    :goto_1
    return-void
.end method

.method static synthetic lambda$notifyListeners$1(Lorg/jpos/util/LogListener;Lorg/jpos/util/LogEvent;)V
    .locals 1
    .param p0, "listener"    # Lorg/jpos/util/LogListener;
    .param p1, "evt"    # Lorg/jpos/util/LogEvent;

    .line 92
    :try_start_0
    invoke-interface {p0, p1}, Lorg/jpos/util/LogListener;->log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 94
    :goto_1
    return-void
.end method

.method private notifyListeners(Lorg/jpos/util/LogEvent;)V
    .locals 5
    .param p1, "evt"    # Lorg/jpos/util/LogEvent;

    .line 88
    iget-object v0, p0, Lorg/jpos/util/BufferedLogListener;->events:Ljava/util/List;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lorg/jpos/util/BufferedLogListener;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/util/LogListener;

    .line 90
    .local v2, "listener":Lorg/jpos/util/LogListener;
    iget-object v3, p0, Lorg/jpos/util/BufferedLogListener;->logService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lorg/jpos/util/BufferedLogListener$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1}, Lorg/jpos/util/BufferedLogListener$$ExternalSyntheticLambda0;-><init>(Lorg/jpos/util/LogListener;Lorg/jpos/util/LogEvent;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 95
    .end local v2    # "listener":Lorg/jpos/util/LogListener;
    goto :goto_0

    .line 96
    :cond_0
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addListener(Lorg/jpos/util/LogListener;)V
    .locals 5
    .param p1, "listener"    # Lorg/jpos/util/LogListener;

    .line 55
    iget-object v0, p0, Lorg/jpos/util/BufferedLogListener;->events:Ljava/util/List;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lorg/jpos/util/BufferedLogListener;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 57
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/util/BufferedLogListener;->logService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 58
    :cond_0
    iget-object v1, p0, Lorg/jpos/util/BufferedLogListener;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/util/LogEvent;

    .line 59
    .local v2, "evt":Lorg/jpos/util/LogEvent;
    iget-object v3, p0, Lorg/jpos/util/BufferedLogListener;->logService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lorg/jpos/util/BufferedLogListener$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1, v2}, Lorg/jpos/util/BufferedLogListener$$ExternalSyntheticLambda1;-><init>(Lorg/jpos/util/LogListener;Lorg/jpos/util/LogEvent;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 64
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lorg/jpos/util/BufferedLogListener;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    monitor-exit v0

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxSize()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/jpos/util/BufferedLogListener;->maxSize:I

    return v0
.end method

.method public log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 3
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    .line 38
    iget-object v0, p0, Lorg/jpos/util/BufferedLogListener;->events:Ljava/util/List;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lorg/jpos/util/BufferedLogListener;->events:Ljava/util/List;

    new-instance v2, Lorg/jpos/util/FrozenLogEvent;

    invoke-direct {v2, p1}, Lorg/jpos/util/FrozenLogEvent;-><init>(Lorg/jpos/util/LogEvent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :goto_0
    iget-object v1, p0, Lorg/jpos/util/BufferedLogListener;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/jpos/util/BufferedLogListener;->maxSize:I

    if-le v1, v2, :cond_0

    .line 41
    iget-object v1, p0, Lorg/jpos/util/BufferedLogListener;->events:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-direct {p0, p1}, Lorg/jpos/util/BufferedLogListener;->notifyListeners(Lorg/jpos/util/LogEvent;)V

    .line 44
    return-object p1

    .line 42
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeAllListeners()V
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/jpos/util/BufferedLogListener;->events:Ljava/util/List;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/jpos/util/BufferedLogListener;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 79
    iget-object v1, p0, Lorg/jpos/util/BufferedLogListener;->logService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeListener(Lorg/jpos/util/LogListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/jpos/util/LogListener;

    .line 69
    iget-object v0, p0, Lorg/jpos/util/BufferedLogListener;->events:Ljava/util/List;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lorg/jpos/util/BufferedLogListener;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lorg/jpos/util/BufferedLogListener;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lorg/jpos/util/BufferedLogListener;->logService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 73
    :cond_0
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 47
    const-string v0, "size"

    const/16 v1, 0x64

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/util/BufferedLogListener;->maxSize:I

    .line 48
    iget-object v0, p0, Lorg/jpos/util/BufferedLogListener;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 50
    :cond_0
    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/BufferedLogListener;->name:Ljava/lang/String;

    .line 51
    if-eqz v0, :cond_1

    .line 52
    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :cond_1
    return-void
.end method
