.class public Lorg/apache/sshd/client/session/ClientConnectionService;
.super Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;
.source "ClientConnectionService.java"

# interfaces
.implements Lorg/apache/sshd/client/session/ClientSessionHolder;


# instance fields
.field protected clientHeartbeat:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field protected final heartbeatInterval:J

.field protected final heartbeatReplyMaxWait:J

.field protected final heartbeatRequest:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$U4Y9DzpI2a50xWicHLCE2WCqFfg(Lorg/apache/sshd/client/session/ClientConnectionService;Lorg/apache/sshd/common/io/IoWriteFuture;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->futureDone(Lorg/apache/sshd/common/io/IoWriteFuture;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/client/session/AbstractClientSession;)V
    .locals 5
    .param p1, "s"    # Lorg/apache/sshd/client/session/AbstractClientSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/common/SshException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;-><init>(Lorg/apache/sshd/common/session/helpers/AbstractSession;)V

    .line 55
    const-string v0, "heartbeat-request"

    const-string v1, "keepalive@sshd.apache.org"

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/client/session/ClientConnectionService;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatRequest:Ljava/lang/String;

    .line 57
    const-string v0, "heartbeat-interval"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/sshd/client/session/ClientConnectionService;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatInterval:J

    .line 59
    const-string v0, "heartbeat-reply-wait"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/sshd/client/session/ClientConnectionService;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatReplyMaxWait:J

    .line 61
    return-void
.end method


# virtual methods
.method public getAgentForwardSupport()Lorg/apache/sshd/agent/common/AgentForwardSupport;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Server side operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getClientSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientConnectionService;->getSession()Lorg/apache/sshd/client/session/AbstractClientSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/client/session/AbstractClientSession;
    .locals 1

    .line 70
    invoke-super {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/session/AbstractClientSession;

    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientConnectionService;->getSession()Lorg/apache/sshd/client/session/AbstractClientSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientConnectionService;->getSession()Lorg/apache/sshd/client/session/AbstractClientSession;

    move-result-object v0

    return-object v0
.end method

.method public getX11ForwardSupport()Lorg/apache/sshd/server/x11/X11ForwardSupport;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Server side operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected sendHeartBeat()Z
    .locals 13

    .line 117
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->clientHeartbeat:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 118
    invoke-super {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->sendHeartBeat()Z

    move-result v0

    return v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientConnectionService;->getSession()Lorg/apache/sshd/client/session/AbstractClientSession;

    move-result-object v0

    .line 123
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_0
    iget-wide v1, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatReplyMaxWait:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    move v1, v9

    goto :goto_0

    :cond_1
    move v1, v10

    :goto_0
    move v11, v1

    .line 124
    .local v11, "withReply":Z
    const/16 v1, 0x50

    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatRequest:Ljava/lang/String;

    .line 125
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    .line 124
    invoke-interface {v0, v1, v2}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    move-object v12, v1

    .line 126
    .local v12, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatRequest:Ljava/lang/String;

    invoke-virtual {v12, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v12, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 129
    if-eqz v11, :cond_3

    .line 130
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatRequest:Ljava/lang/String;

    iget-wide v4, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatReplyMaxWait:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v0

    move-object v3, v12

    invoke-interface/range {v1 .. v6}, Lorg/apache/sshd/common/session/Session;->request(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;JLjava/util/concurrent/TimeUnit;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    .line 131
    .local v1, "reply":Lorg/apache/sshd/common/util/buffer/Buffer;
    if-eqz v1, :cond_2

    .line 132
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->log:Lorg/slf4j/Logger;

    const-string v3, "sendHeartBeat({}) received reply size={} for request={}"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v10

    .line 134
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatRequest:Ljava/lang/String;

    aput-object v5, v4, v8

    .line 133
    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .end local v1    # "reply":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_2
    goto :goto_1

    .line 138
    :cond_3
    invoke-interface {v0, v12}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v1

    .line 139
    .local v1, "future":Lorg/apache/sshd/common/io/IoWriteFuture;
    new-instance v2, Lorg/apache/sshd/client/session/ClientConnectionService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/sshd/client/session/ClientConnectionService$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/client/session/ClientConnectionService;)V

    invoke-interface {v1, v2}, Lorg/apache/sshd/common/io/IoWriteFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 141
    .end local v1    # "future":Lorg/apache/sshd/common/io/IoWriteFuture;
    :goto_1
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return v9

    .line 143
    .end local v11    # "withReply":Z
    .end local v12    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Throwable;
    :goto_2
    invoke-interface {v0, v1}, Lorg/apache/sshd/common/session/Session;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 145
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v10

    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatCount:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v4, v3, v8

    iget-object v4, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatRequest:Ljava/lang/String;

    aput-object v4, v3, v7

    const/4 v4, 0x4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 146
    const-string v4, "sendHeartBeat({}) failed ({}) to send heartbeat #{} request={}: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_4
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 150
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendHeartBeat("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") exception details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    :cond_5
    return v10
.end method

.method public start()V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientConnectionService;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    .line 76
    .local v0, "session":Lorg/apache/sshd/client/session/ClientSession;
    invoke-interface {v0}, Lorg/apache/sshd/client/session/ClientSession;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-super {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->start()V

    .line 80
    return-void

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not authenticated"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected declared-synchronized startHeartBeat()Ljava/util/concurrent/ScheduledFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_0
    iget-wide v0, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatRequest:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientConnectionService;->stopHeartBeat()V

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientConnectionService;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    .line 88
    .local v0, "session":Lorg/apache/sshd/client/session/ClientSession;
    invoke-interface {v0}, Lorg/apache/sshd/client/session/ClientSession;->getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;

    move-result-object v1

    .line 89
    .local v1, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface {v1}, Lorg/apache/sshd/common/FactoryManager;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 90
    .local v2, "service":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v3, Lorg/apache/sshd/client/session/ClientConnectionService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/apache/sshd/client/session/ClientConnectionService$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/client/session/ClientConnectionService;)V

    iget-wide v6, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatInterval:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v6

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->clientHeartbeat:Ljava/util/concurrent/ScheduledFuture;

    .line 92
    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->log:Lorg/slf4j/Logger;

    const-string v4, "startHeartbeat({}) - started at interval={} with request={}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    iget-wide v7, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatInterval:J

    .line 94
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->heartbeatRequest:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 93
    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .end local p0    # "this":Lorg/apache/sshd/client/session/ClientConnectionService;
    :cond_0
    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->clientHeartbeat:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 99
    .end local v0    # "session":Lorg/apache/sshd/client/session/ClientSession;
    .end local v1    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .end local v2    # "service":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_1
    :try_start_1
    invoke-super {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->startHeartBeat()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized stopHeartBeat()V
    .locals 3

    monitor-enter p0

    .line 106
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->stopHeartBeat()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->clientHeartbeat:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    .line 110
    iput-object v0, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->clientHeartbeat:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local p0    # "this":Lorg/apache/sshd/client/session/ClientConnectionService;
    :cond_0
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 109
    :catchall_1
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->clientHeartbeat:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_1

    .line 110
    iput-object v0, p0, Lorg/apache/sshd/client/session/ClientConnectionService;->clientHeartbeat:Ljava/util/concurrent/ScheduledFuture;

    .line 112
    :cond_1
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :goto_0
    monitor-exit p0

    throw v0
.end method
