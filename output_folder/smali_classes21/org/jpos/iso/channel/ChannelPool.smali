.class public Lorg/jpos/iso/channel/ChannelPool;
.super Ljava/lang/Object;
.source "ChannelPool.java"

# interfaces
.implements Lorg/jpos/iso/ISOChannel;
.implements Lorg/jpos/util/LogSource;
.implements Lorg/jpos/core/Configurable;
.implements Ljava/lang/Cloneable;


# instance fields
.field cfg:Lorg/jpos/core/Configuration;

.field current:Lorg/jpos/iso/ISOChannel;

.field protected logger:Lorg/jpos/util/Logger;

.field name:Ljava/lang/String;

.field pool:Ljava/util/List;

.field protected realm:Ljava/lang/String;

.field usable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/ChannelPool;->usable:Z

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->name:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->cfg:Lorg/jpos/core/Configuration;

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->pool:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public addChannel(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->pool:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public addChannel(Lorg/jpos/iso/ISOChannel;)V
    .locals 1
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;

    .line 149
    iget-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->pool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 176
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public declared-synchronized connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 55
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->current:Lorg/jpos/iso/ISOChannel;

    .line 56
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "connect"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 57
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pool-size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/iso/channel/ChannelPool;->pool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jpos/iso/channel/ChannelPool;->pool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v2, :cond_1

    .line 60
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pool-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lorg/jpos/iso/channel/ChannelPool;->pool:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOChannel;

    .line 62
    .local v2, "c":Lorg/jpos/iso/ISOChannel;
    invoke-interface {v2}, Lorg/jpos/iso/ISOChannel;->connect()V

    .line 63
    invoke-interface {v2}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    iput-object v2, p0, Lorg/jpos/iso/channel/ChannelPool;->current:Lorg/jpos/iso/ISOChannel;

    .line 65
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jpos/iso/channel/ChannelPool;->usable:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    goto :goto_2

    .line 70
    .end local v2    # "c":Lorg/jpos/iso/ISOChannel;
    .end local p0    # "this":Lorg/jpos/iso/channel/ChannelPool;
    :cond_0
    goto :goto_1

    .line 68
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 58
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_1
    :goto_2
    iget-object v1, p0, Lorg/jpos/iso/channel/ChannelPool;->current:Lorg/jpos/iso/ISOChannel;

    if-nez v1, :cond_2

    .line 73
    const-string v1, "connect failed"

    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 74
    :cond_2
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 75
    iget-object v1, p0, Lorg/jpos/iso/channel/ChannelPool;->current:Lorg/jpos/iso/ISOChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 78
    monitor-exit p0

    return-void

    .line 76
    :cond_3
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unable to connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 80
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->current:Lorg/jpos/iso/ISOChannel;

    .line 81
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "disconnect"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 82
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    iget-object v1, p0, Lorg/jpos/iso/channel/ChannelPool;->pool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .local v2, "aPool":Ljava/lang/Object;
    :try_start_1
    move-object v3, v2

    check-cast v3, Lorg/jpos/iso/ISOChannel;

    .line 85
    .local v3, "c":Lorg/jpos/iso/ISOChannel;
    invoke-interface {v3}, Lorg/jpos/iso/ISOChannel;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v3    # "c":Lorg/jpos/iso/ISOChannel;
    goto :goto_1

    .line 86
    .end local p0    # "this":Lorg/jpos/iso/channel/ChannelPool;
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 89
    .end local v2    # "aPool":Ljava/lang/Object;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 90
    :cond_0
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 79
    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrent()Lorg/jpos/iso/ISOChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->current:Lorg/jpos/iso/ISOChannel;

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lorg/jpos/iso/channel/ChannelPool;->connect()V

    goto :goto_0

    .line 168
    .end local p0    # "this":Lorg/jpos/iso/channel/ChannelPool;
    :cond_0
    iget-boolean v0, p0, Lorg/jpos/iso/channel/ChannelPool;->usable:Z

    if-nez v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lorg/jpos/iso/channel/ChannelPool;->reconnect()V

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->current:Lorg/jpos/iso/ISOChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackager()Lorg/jpos/iso/ISOPackager;
    .locals 1

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/iso/channel/ChannelPool;->getCurrent()Lorg/jpos/iso/ISOChannel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 97
    .end local p0    # "this":Lorg/jpos/iso/channel/ChannelPool;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    monitor-exit p0

    return v1
.end method

.method public receive()Lorg/jpos/iso/ISOMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lorg/jpos/iso/channel/ChannelPool;->getCurrent()Lorg/jpos/iso/ISOChannel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jpos/iso/ISOChannel;->receive()Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized reconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/iso/channel/ChannelPool;->disconnect()V

    .line 94
    invoke-virtual {p0}, Lorg/jpos/iso/channel/ChannelPool;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 92
    .end local p0    # "this":Lorg/jpos/iso/channel/ChannelPool;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeChannel(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->pool:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public removeChannel(Lorg/jpos/iso/ISOChannel;)V
    .locals 1
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;

    .line 157
    iget-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->pool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public send(Lorg/jpos/iso/ISOMsg;)V
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lorg/jpos/iso/channel/ChannelPool;->getCurrent()Lorg/jpos/iso/ISOChannel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jpos/iso/ISOChannel;->send(Lorg/jpos/iso/ISOMsg;)V

    .line 108
    return-void
.end method

.method public send([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lorg/jpos/iso/channel/ChannelPool;->getCurrent()Lorg/jpos/iso/ISOChannel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jpos/iso/ISOChannel;->send([B)V

    .line 111
    return-void
.end method

.method public declared-synchronized setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 4
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_0
    iput-object p1, p0, Lorg/jpos/iso/channel/ChannelPool;->cfg:Lorg/jpos/core/Configuration;

    .line 139
    const-string v0, "channel"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "channelName":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .local v3, "aChannelName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/jpos/iso/channel/ChannelPool;->addChannel(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    nop

    .line 140
    .end local v3    # "aChannelName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local p0    # "this":Lorg/jpos/iso/channel/ChannelPool;
    .restart local v3    # "aChannelName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    :try_start_2
    new-instance v2, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v2, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .end local v1    # "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    .end local v3    # "aChannelName":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .line 137
    .end local v0    # "channelName":[Ljava/lang/String;
    .end local p1    # "cfg":Lorg/jpos/core/Configuration;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lorg/jpos/iso/channel/ChannelPool;->logger:Lorg/jpos/util/Logger;

    .line 127
    iput-object p2, p0, Lorg/jpos/iso/channel/ChannelPool;->realm:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lorg/jpos/iso/channel/ChannelPool;->name:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public setPackager(Lorg/jpos/iso/ISOPackager;)V
    .locals 0
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 53
    return-void
.end method

.method public setUsable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 113
    iput-boolean p1, p0, Lorg/jpos/iso/channel/ChannelPool;->usable:Z

    .line 114
    return-void
.end method

.method public size()I
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/jpos/iso/channel/ChannelPool;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
