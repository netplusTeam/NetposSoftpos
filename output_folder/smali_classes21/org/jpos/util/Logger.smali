.class public Lorg/jpos/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lorg/jpos/util/LogProducer;
.implements Lorg/jpos/core/Configurable;


# static fields
.field public static final NRPREFIX:Ljava/lang/String; = "logger."


# instance fields
.field cfg:Lorg/jpos/core/Configuration;

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/util/LogListener;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/Logger;->listeners:Ljava/util/List;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lorg/jpos/util/Logger;->name:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static declared-synchronized getLogger(Ljava/lang/String;)Lorg/jpos/util/Logger;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    const-class v0, Lorg/jpos/util/Logger;

    monitor-enter v0

    .line 132
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logger."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/util/Logger;
    :try_end_0
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .local v1, "l":Lorg/jpos/util/Logger;
    goto :goto_0

    .line 131
    .end local v1    # "l":Lorg/jpos/util/Logger;
    .end local p0    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 133
    .restart local p0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    :try_start_1
    new-instance v2, Lorg/jpos/util/Logger;

    invoke-direct {v2}, Lorg/jpos/util/Logger;-><init>()V

    .line 135
    .local v2, "l":Lorg/jpos/util/Logger;
    invoke-virtual {v2, p0}, Lorg/jpos/util/Logger;->setName(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 137
    .end local v2    # "l":Lorg/jpos/util/Logger;
    .local v1, "l":Lorg/jpos/util/Logger;
    :goto_0
    monitor-exit v0

    return-object v1

    .line 131
    .end local v1    # "l":Lorg/jpos/util/Logger;
    .end local p0    # "name":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static log(Lorg/jpos/util/LogEvent;)V
    .locals 4
    .param p0, "evt"    # Lorg/jpos/util/LogEvent;

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "l":Lorg/jpos/util/Logger;
    invoke-virtual {p0}, Lorg/jpos/util/LogEvent;->getSource()Lorg/jpos/util/LogSource;

    move-result-object v1

    .line 91
    .local v1, "source":Lorg/jpos/util/LogSource;
    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v1}, Lorg/jpos/util/LogSource;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v0

    .line 93
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jpos/util/LogEvent;->isHonorSourceLogger()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    const-string v2, "Q2"

    invoke-static {v2}, Lorg/jpos/util/Logger;->getLogger(Ljava/lang/String;)Lorg/jpos/util/Logger;

    move-result-object v0

    .line 96
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/jpos/util/Logger;->hasListeners()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, v0, Lorg/jpos/util/Logger;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 98
    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p0, :cond_2

    .line 100
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/util/LogListener;

    invoke-interface {v3, p0}, Lorg/jpos/util/LogListener;->log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v3

    goto :goto_1

    .line 103
    :catchall_0
    move-exception v3

    .line 104
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 105
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 101
    :catch_0
    move-exception v3

    .line 108
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lorg/jpos/util/LogListener;)V
    .locals 1
    .param p1, "l"    # Lorg/jpos/util/LogListener;

    .line 75
    iget-object v0, p0, Lorg/jpos/util/Logger;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logger."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/util/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lorg/jpos/util/Logger;->removeAllListeners()V

    .line 124
    return-void
.end method

.method public getConfiguration()Lorg/jpos/core/Configuration;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/jpos/util/Logger;->cfg:Lorg/jpos/core/Configuration;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/jpos/util/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hasListeners()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/jpos/util/Logger;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public removeAllListeners()V
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/jpos/util/Logger;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, "l":Ljava/lang/Object;
    instance-of v2, v1, Lorg/jpos/util/Destroyable;

    if-eqz v2, :cond_0

    .line 83
    move-object v2, v1

    check-cast v2, Lorg/jpos/util/Destroyable;

    invoke-interface {v2}, Lorg/jpos/util/Destroyable;->destroy()V

    .line 85
    .end local v1    # "l":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lorg/jpos/util/Logger;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    return-void
.end method

.method public removeListener(Lorg/jpos/util/LogListener;)V
    .locals 1
    .param p1, "l"    # Lorg/jpos/util/LogListener;

    .line 78
    iget-object v0, p0, Lorg/jpos/util/Logger;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lorg/jpos/util/Logger;->cfg:Lorg/jpos/core/Configuration;

    .line 72
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lorg/jpos/util/Logger;->name:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logger."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    return-void
.end method
