.class public Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;
.super Lcom/sleepycat/je/rep/utilint/NamedChannel;
.source "NamedChannelWithTimeout.java"


# instance fields
.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private lastCheckMs:J

.field private final logger:Ljava/util/logging/Logger;

.field private volatile readActivity:Z

.field private volatile timeoutMs:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;Lcom/sleepycat/je/rep/net/DataChannel;I)V
    .locals 2
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "logger"    # Ljava/util/logging/Logger;
    .param p3, "channelTimeoutTask"    # Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;
    .param p4, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p5, "timeoutMs"    # I

    .line 71
    invoke-direct {p0, p4}, Lcom/sleepycat/je/rep/utilint/NamedChannel;-><init>(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->lastCheckMs:J

    .line 72
    iput p5, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->timeoutMs:I

    .line 73
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 74
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->logger:Ljava/util/logging/Logger;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->readActivity:Z

    .line 76
    if-lez p5, :cond_0

    .line 78
    invoke-virtual {p3, p0}, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;->register(Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;)V

    .line 80
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/net/DataChannel;I)V
    .locals 6
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p2, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p3, "timeoutMs"    # I

    .line 59
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    .line 61
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getChannelTimeoutTask()Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;

    move-result-object v3

    .line 59
    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;Lcom/sleepycat/je/rep/net/DataChannel;I)V

    .line 64
    return-void
.end method

.method private resetActivityCounter(J)V
    .locals 1
    .param p1, "timeMs"    # J

    .line 118
    iput-wide p1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->lastCheckMs:J

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->readActivity:Z

    .line 120
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->readActivity:Z

    .line 115
    return-void
.end method

.method public isActive(J)Z
    .locals 9
    .param p1, "timeMs"    # J

    .line 134
    const-string v0, ". Local socket port: "

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 136
    return v2

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->isConnected()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 141
    return v3

    .line 144
    :cond_1
    iget-boolean v1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->readActivity:Z

    if-eqz v1, :cond_2

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->resetActivityCounter(J)V

    .line 146
    return v3

    .line 149
    :cond_2
    iget v1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->timeoutMs:I

    if-eqz v1, :cond_5

    iget-wide v4, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->lastCheckMs:J

    sub-long v4, p1, v4

    iget v1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->timeoutMs:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    goto/16 :goto_1

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inactive channel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 158
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " forced close. Timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->timeoutMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-static {v1, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 162
    .local v3, "startTime":J
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->closeForcefully()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Error;
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while closing inactive channel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 174
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 176
    invoke-interface {v6}, Lcom/sleepycat/je/rep/net/DataChannel;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v6

    .line 177
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getLocalPort()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ". Error: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v2, v5, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 180
    throw v1

    .line 163
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to close inactive channel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 166
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 168
    invoke-interface {v7}, Lcom/sleepycat/je/rep/net/DataChannel;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v7

    .line 169
    invoke-virtual {v7}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->getLocalPort()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ". Exception: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v5, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 181
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    .line 184
    .local v0, "timeElapsed":J
    const-wide/16 v5, 0x1388

    cmp-long v5, v0, v5

    if-lez v5, :cond_4

    .line 185
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time to close inactive channel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 187
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 185
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 189
    :cond_4
    return v2

    .line 150
    .end local v0    # "timeElapsed":J
    .end local v3    # "startTime":J
    :cond_5
    :goto_1
    return v3
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/rep/net/DataChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 104
    .local v0, "bytes":I
    if-lez v0, :cond_0

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->readActivity:Z

    .line 107
    :cond_0
    return v0
.end method

.method public setTimeoutMs(I)V
    .locals 1
    .param p1, "timeoutMs"    # I

    .line 88
    iput p1, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->timeoutMs:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->readActivity:Z

    .line 91
    return-void
.end method
