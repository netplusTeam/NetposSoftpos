.class public Lorg/jpos/util/SpaceLogListener;
.super Ljava/lang/Object;
.source "SpaceLogListener.java"

# interfaces
.implements Lorg/jpos/util/LogListener;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field buffer:Lorg/jpos/space/Space;

.field cfg:Lorg/jpos/core/Configuration;

.field frozen:Z

.field queueName:Ljava/lang/String;

.field sp:Lorg/jpos/space/Space;

.field timeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lorg/jpos/util/SpaceLogListener;->timeout:J

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/util/SpaceLogListener;->frozen:Z

    .line 40
    return-void
.end method

.method private getSpace()Lorg/jpos/space/Space;
    .locals 3

    .line 71
    iget-object v0, p0, Lorg/jpos/util/SpaceLogListener;->sp:Lorg/jpos/space/Space;

    if-nez v0, :cond_2

    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/SpaceLogListener;->cfg:Lorg/jpos/core/Configuration;

    const-string v1, "space"

    invoke-interface {v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/SpaceLogListener;->sp:Lorg/jpos/space/Space;

    .line 74
    iget-object v0, p0, Lorg/jpos/util/SpaceLogListener;->buffer:Lorg/jpos/space/Space;

    if-eqz v0, :cond_1

    .line 75
    :goto_0
    iget-object v0, p0, Lorg/jpos/util/SpaceLogListener;->buffer:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/util/SpaceLogListener;->queueName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/jpos/util/SpaceLogListener;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/util/SpaceLogListener;->queueName:Ljava/lang/String;

    iget-object v2, p0, Lorg/jpos/util/SpaceLogListener;->buffer:Lorg/jpos/space/Space;

    invoke-interface {v2, v1}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/SpaceLogListener;->buffer:Lorg/jpos/space/Space;
    :try_end_0
    .catch Lorg/jpos/space/SpaceError; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_1
    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/jpos/space/SpaceError;
    new-instance v1, Lorg/jpos/space/TSpace;

    invoke-direct {v1}, Lorg/jpos/space/TSpace;-><init>()V

    iput-object v1, p0, Lorg/jpos/util/SpaceLogListener;->buffer:Lorg/jpos/space/Space;

    return-object v1

    .line 83
    .end local v0    # "e":Lorg/jpos/space/SpaceError;
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/jpos/util/SpaceLogListener;->sp:Lorg/jpos/space/Space;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 5
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    monitor-enter p0

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lorg/jpos/util/SpaceLogListener;->frozen:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jpos/util/FrozenLogEvent;

    invoke-direct {v0, p1}, Lorg/jpos/util/FrozenLogEvent;-><init>(Lorg/jpos/util/LogEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .end local p0    # "this":Lorg/jpos/util/SpaceLogListener;
    :cond_0
    move-object v0, p1

    .line 46
    .local v0, "e":Lorg/jpos/util/LogEvent;
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lorg/jpos/util/SpaceLogListener;->getSpace()Lorg/jpos/space/Space;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/util/SpaceLogListener;->queueName:Ljava/lang/String;

    iget-wide v3, p0, Lorg/jpos/util/SpaceLogListener;->timeout:J

    invoke-interface {v1, v2, v0, v3, v4}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to log to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/util/SpaceLogListener;->queueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    monitor-exit p0

    return-object p1

    .line 43
    .end local v0    # "e":Lorg/jpos/util/LogEvent;
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local p1    # "ev":Lorg/jpos/util/LogEvent;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lorg/jpos/util/SpaceLogListener;->cfg:Lorg/jpos/core/Configuration;

    .line 61
    const-string v0, "queue"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/SpaceLogListener;->queueName:Ljava/lang/String;

    .line 62
    if-eqz v0, :cond_0

    .line 65
    iget-wide v0, p0, Lorg/jpos/util/SpaceLogListener;->timeout:J

    const-string v2, "timeout"

    invoke-interface {p1, v2, v0, v1}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/util/SpaceLogListener;->timeout:J

    .line 66
    const/4 v0, 0x1

    const-string v1, "frozen"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/util/SpaceLogListener;->frozen:Z

    .line 67
    return-void

    .line 63
    :cond_0
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    const-string v1, "\'queue\' property not configured"

    invoke-direct {v0, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
