.class public Lorg/jpos/iso/channel/LoopbackChannel;
.super Lorg/jpos/iso/FilteredBase;
.source "LoopbackChannel.java"

# interfaces
.implements Lorg/jpos/util/LogSource;


# instance fields
.field private cnt:[I

.field logger:Lorg/jpos/util/Logger;

.field name:Ljava/lang/String;

.field queue:Lorg/jpos/util/BlockingQueue;

.field realm:Ljava/lang/String;

.field usable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/jpos/iso/FilteredBase;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/LoopbackChannel;->usable:Z

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jpos/iso/channel/LoopbackChannel;->cnt:[I

    .line 46
    new-instance v0, Lorg/jpos/util/BlockingQueue;

    invoke-direct {v0}, Lorg/jpos/util/BlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/channel/LoopbackChannel;->queue:Lorg/jpos/util/BlockingQueue;

    .line 47
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4

    .line 58
    iget-object v0, p0, Lorg/jpos/iso/channel/LoopbackChannel;->cnt:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 59
    iput-boolean v3, p0, Lorg/jpos/iso/channel/LoopbackChannel;->usable:Z

    .line 60
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->setChanged()V

    .line 61
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->notifyObservers()V

    .line 62
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/channel/LoopbackChannel;->usable:Z

    .line 69
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->setChanged()V

    .line 70
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->notifyObservers()V

    .line 71
    return-void
.end method

.method public getCounters()[I
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/jpos/iso/channel/LoopbackChannel;->cnt:[I

    return-object v0
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/jpos/iso/channel/LoopbackChannel;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/jpos/iso/channel/LoopbackChannel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackager()Lorg/jpos/iso/ISOPackager;
    .locals 1

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/jpos/iso/channel/LoopbackChannel;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lorg/jpos/iso/channel/LoopbackChannel;->usable:Z

    return v0
.end method

.method public receive()Lorg/jpos/iso/ISOMsg;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/channel/LoopbackChannel;->queue:Lorg/jpos/util/BlockingQueue;

    invoke-virtual {v0}, Lorg/jpos/util/BlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    .line 112
    .local v0, "m":Lorg/jpos/iso/ISOMsg;
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "loopback-receive"

    invoke-direct {v1, p0, v2, v0}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    invoke-virtual {p0, v0, v1}, Lorg/jpos/iso/channel/LoopbackChannel;->applyIncomingFilters(Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;

    move-result-object v2

    move-object v0, v2

    .line 114
    iget-object v2, p0, Lorg/jpos/iso/channel/LoopbackChannel;->cnt:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 115
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->notifyObservers()V

    .line 116
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jpos/util/BlockingQueue$Closed; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-object v0

    .line 120
    .end local v0    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Lorg/jpos/util/BlockingQueue$Closed;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/jpos/util/BlockingQueue$Closed;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    .end local v0    # "e":Lorg/jpos/util/BlockingQueue$Closed;
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "unconnected ISOChannel"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reconnect()V
    .locals 1

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/channel/LoopbackChannel;->usable:Z

    .line 75
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->setChanged()V

    .line 76
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->notifyObservers()V

    .line 77
    return-void
.end method

.method public resetCounters()V
    .locals 3

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lorg/jpos/iso/channel/LoopbackChannel;->cnt:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public send(Lorg/jpos/iso/ISOMsg;)V
    .locals 4
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "loopback-send"

    invoke-direct {v0, p0, v1, p1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/channel/LoopbackChannel;->applyOutgoingFilters(Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;

    move-result-object p1

    .line 89
    iget-object v1, p0, Lorg/jpos/iso/channel/LoopbackChannel;->queue:Lorg/jpos/util/BlockingQueue;

    invoke-virtual {v1, p1}, Lorg/jpos/util/BlockingQueue;->enqueue(Ljava/lang/Object;)V

    .line 90
    iget-object v1, p0, Lorg/jpos/iso/channel/LoopbackChannel;->cnt:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    add-int/2addr v3, v2

    aput v3, v1, v2

    .line 91
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->notifyObservers()V

    .line 92
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 93
    return-void

    .line 86
    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "unconnected ISOChannel"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send([B)V
    .locals 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "loopback-send"

    invoke-direct {v0, p0, v1, p1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    iget-object v1, p0, Lorg/jpos/iso/channel/LoopbackChannel;->queue:Lorg/jpos/util/BlockingQueue;

    invoke-virtual {v1, p1}, Lorg/jpos/util/BlockingQueue;->enqueue(Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lorg/jpos/iso/channel/LoopbackChannel;->cnt:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    add-int/2addr v3, v2

    aput v3, v1, v2

    .line 102
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->notifyObservers()V

    .line 103
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 104
    return-void

    .line 98
    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "unconnected ISOChannel"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lorg/jpos/iso/channel/LoopbackChannel;->logger:Lorg/jpos/util/Logger;

    .line 154
    iput-object p2, p0, Lorg/jpos/iso/channel/LoopbackChannel;->realm:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lorg/jpos/iso/channel/LoopbackChannel;->name:Ljava/lang/String;

    .line 137
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

    .line 138
    return-void
.end method

.method public setPackager(Lorg/jpos/iso/ISOPackager;)V
    .locals 0
    .param p1, "packager"    # Lorg/jpos/iso/ISOPackager;

    .line 55
    return-void
.end method

.method public setUsable(Z)V
    .locals 0
    .param p1, "usable"    # Z

    .line 126
    iput-boolean p1, p0, Lorg/jpos/iso/channel/LoopbackChannel;->usable:Z

    .line 127
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->setChanged()V

    .line 128
    invoke-virtual {p0}, Lorg/jpos/iso/channel/LoopbackChannel;->notifyObservers()V

    .line 129
    return-void
.end method
