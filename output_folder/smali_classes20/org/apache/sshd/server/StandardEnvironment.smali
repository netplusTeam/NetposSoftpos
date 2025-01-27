.class public Lorg/apache/sshd/server/StandardEnvironment;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "StandardEnvironment.java"

# interfaces
.implements Lorg/apache/sshd/server/Environment;


# instance fields
.field private final env:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/sshd/server/Signal;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/server/SignalListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ptyModes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lorg/apache/sshd/server/Signal;->SIGNALS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/sshd/server/StandardEnvironment;->listeners:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/server/StandardEnvironment;->env:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->MODES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/sshd/server/StandardEnvironment;->ptyModes:Ljava/util/Map;

    .line 44
    return-void
.end method


# virtual methods
.method public addSignalListener(Lorg/apache/sshd/server/SignalListener;Ljava/util/Collection;)V
    .locals 3
    .param p1, "listener"    # Lorg/apache/sshd/server/SignalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/SignalListener;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/server/Signal;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p2, "signals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/server/Signal;>;"
    invoke-static {p1}, Lorg/apache/sshd/server/SignalListener;->validateListener(Lorg/apache/sshd/server/SignalListener;)Lorg/apache/sshd/server/SignalListener;

    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No signals"

    invoke-static {p2, v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 56
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/server/Signal;

    .line 57
    .local v1, "s":Lorg/apache/sshd/server/Signal;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/server/StandardEnvironment;->getSignalListeners(Lorg/apache/sshd/server/Signal;Z)Ljava/util/Collection;

    move-result-object v2

    .line 58
    .local v2, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/server/SignalListener;>;"
    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v1    # "s":Lorg/apache/sshd/server/Signal;
    .end local v2    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/server/SignalListener;>;"
    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public getEnv()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/sshd/server/StandardEnvironment;->env:Ljava/util/Map;

    return-object v0
.end method

.method public getPtyModes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/sshd/server/StandardEnvironment;->ptyModes:Ljava/util/Map;

    return-object v0
.end method

.method protected getSignalListeners(Lorg/apache/sshd/server/Signal;Z)Ljava/util/Collection;
    .locals 3
    .param p1, "signal"    # Lorg/apache/sshd/server/Signal;
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/Signal;",
            "Z)",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/server/SignalListener;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/apache/sshd/server/StandardEnvironment;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 136
    .local v0, "ls":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/server/SignalListener;>;"
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 137
    iget-object v1, p0, Lorg/apache/sshd/server/StandardEnvironment;->listeners:Ljava/util/Map;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/server/StandardEnvironment;->listeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    move-object v0, v2

    .line 139
    if-nez v0, :cond_0

    .line 140
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    move-object v0, v2

    .line 141
    iget-object v2, p0, Lorg/apache/sshd/server/StandardEnvironment;->listeners:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 146
    :cond_1
    :goto_0
    return-object v0
.end method

.method public removeSignalListener(Lorg/apache/sshd/server/SignalListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/apache/sshd/server/SignalListener;

    .line 74
    if-nez p1, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    invoke-static {p1}, Lorg/apache/sshd/server/SignalListener;->validateListener(Lorg/apache/sshd/server/SignalListener;)Lorg/apache/sshd/server/SignalListener;

    .line 79
    sget-object v0, Lorg/apache/sshd/server/Signal;->SIGNALS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/server/Signal;

    .line 80
    .local v1, "s":Lorg/apache/sshd/server/Signal;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/server/StandardEnvironment;->getSignalListeners(Lorg/apache/sshd/server/Signal;Z)Ljava/util/Collection;

    move-result-object v2

    .line 81
    .local v2, "ls":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/server/SignalListener;>;"
    if-eqz v2, :cond_1

    .line 82
    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 84
    .end local v1    # "s":Lorg/apache/sshd/server/Signal;
    .end local v2    # "ls":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/server/SignalListener;>;"
    :cond_1
    goto :goto_0

    .line 85
    :cond_2
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lorg/apache/sshd/server/StandardEnvironment;->getEnv()Ljava/util/Map;

    move-result-object v0

    .line 122
    .local v0, "environ":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Empty environment variable name"

    invoke-static {p1, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public signal(Lorg/apache/sshd/common/channel/Channel;Lorg/apache/sshd/server/Signal;)V
    .locals 13
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "signal"    # Lorg/apache/sshd/server/Signal;

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/apache/sshd/server/StandardEnvironment;->getSignalListeners(Lorg/apache/sshd/server/Signal;Z)Ljava/util/Collection;

    move-result-object v1

    .line 89
    .local v1, "ls":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/server/SignalListener;>;"
    iget-object v2, p0, Lorg/apache/sshd/server/StandardEnvironment;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lorg/apache/sshd/server/StandardEnvironment;->log:Lorg/slf4j/Logger;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, v0

    aput-object p2, v6, v4

    aput-object v1, v6, v3

    const-string v7, "signal({})[{}] - listeners={}"

    invoke-interface {v2, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_0
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    return-void

    .line 97
    :cond_1
    iget-object v2, p0, Lorg/apache/sshd/server/StandardEnvironment;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    .line 98
    .local v2, "traceEnabled":Z
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sshd/server/SignalListener;

    .line 100
    .local v7, "l":Lorg/apache/sshd/server/SignalListener;
    :try_start_0
    invoke-interface {v7, p1, p2}, Lorg/apache/sshd/server/SignalListener;->signal(Lorg/apache/sshd/common/channel/Channel;Lorg/apache/sshd/server/Signal;)V

    .line 102
    if-eqz v2, :cond_2

    .line 103
    iget-object v8, p0, Lorg/apache/sshd/server/StandardEnvironment;->log:Lorg/slf4j/Logger;

    const-string v9, "signal({}) Signal {} to {}"

    new-array v10, v5, [Ljava/lang/Object;

    aput-object p1, v10, v0

    aput-object p2, v10, v4

    aput-object v7, v10, v3

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_2
    goto :goto_1

    .line 105
    :catch_0
    move-exception v8

    .line 106
    .local v8, "e":Ljava/lang/RuntimeException;
    iget-object v9, p0, Lorg/apache/sshd/server/StandardEnvironment;->log:Lorg/slf4j/Logger;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v0

    .line 107
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    aput-object p2, v10, v3

    aput-object v7, v10, v5

    const/4 v11, 0x4

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 106
    const-string v11, "signal({}) Failed ({}) to signal {} to listener={}: {}"

    invoke-interface {v9, v11, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .end local v7    # "l":Lorg/apache/sshd/server/SignalListener;
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 110
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "env="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/server/StandardEnvironment;->getEnv()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/server/StandardEnvironment;->getPtyModes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
