.class public Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;
.super Ljava/lang/Object;
.source "MqttClientReconnector.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;


# instance fields
.field private afterOnDisconnected:Z

.field private final attempts:I

.field private connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

.field private delayNanos:J

.field private final eventLoop:Lio/netty/channel/EventLoop;

.field private future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private reconnect:Z

.field private republishIfSessionExpired:Z

.field private resubscribeIfSessionExpired:Z

.field private transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;


# direct methods
.method public constructor <init>(Lio/netty/channel/EventLoop;ILcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V
    .locals 3
    .param p1, "eventLoop"    # Lio/netty/channel/EventLoop;
    .param p2, "attempts"    # I
    .param p3, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p4, "transportConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->reconnect:Z

    .line 45
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->resubscribeIfSessionExpired:Z

    .line 46
    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->republishIfSessionExpired:Z

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->delayNanos:J

    .line 59
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->eventLoop:Lio/netty/channel/EventLoop;

    .line 60
    iput p2, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->attempts:I

    .line 61
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 62
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 63
    return-void
.end method

.method private checkInEventLoop()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->eventLoop:Lio/netty/channel/EventLoop;

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    const-string v1, "MqttClientReconnector must be called from the eventLoop."

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 189
    return-void
.end method

.method private checkInOnDisconnected(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 193
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->afterOnDisconnected:Z

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must only be called in onDisconnected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public afterOnDisconnected()V
    .locals 1

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->afterOnDisconnected:Z

    .line 185
    return-void
.end method

.method public connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;
    .locals 1
    .param p1, "connect"    # Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;

    .line 166
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 167
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 168
    return-object p0
.end method

.method public bridge synthetic connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<",
            "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 174
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic connectWith()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Nested;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;
    .locals 2
    .param p1, "delay"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 131
    const-string v0, "delay"

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInOnDisconnected(Ljava/lang/String;)V

    .line 132
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->delayNanos:J

    .line 134
    return-object p0
.end method

.method public bridge synthetic delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public getAttempts()I
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 68
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->attempts:I

    return v0
.end method

.method public getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .locals 1

    .line 179
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 180
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    return-object v0
.end method

.method public bridge synthetic getConnect()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 139
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 140
    const-string v0, "Time unit"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->delayNanos:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFuture()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 100
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->future:Ljava/util/concurrent/CompletableFuture;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .locals 1

    .line 160
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 161
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    return-object v0
.end method

.method public bridge synthetic getTransportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfig;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public isReconnect()Z
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 95
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->reconnect:Z

    return v0
.end method

.method public isRepublishIfSessionExpired()Z
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 126
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->republishIfSessionExpired:Z

    return v0
.end method

.method public isResubscribeIfSessionExpired()Z
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 113
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->resubscribeIfSessionExpired:Z

    return v0
.end method

.method public reconnect(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;
    .locals 0
    .param p1, "reconnect"    # Z

    .line 73
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 74
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->reconnect:Z

    .line 75
    return-object p0
.end method

.method public bridge synthetic reconnect(Z)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->reconnect(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reconnect(Z)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->reconnect(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;"
        }
    .end annotation

    .line 82
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "callback":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    const-string/jumbo v0, "reconnectWhen"

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInOnDisconnected(Ljava/lang/String;)V

    .line 83
    const-string v0, "Future"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->reconnect:Z

    .line 85
    if-eqz p2, :cond_0

    .line 86
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->eventLoop:Lio/netty/channel/EventLoop;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->future:Ljava/util/concurrent/CompletableFuture;

    if-nez v1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/concurrent/CompletableFuture;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    aput-object p1, v2, v0

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->future:Ljava/util/concurrent/CompletableFuture;

    .line 89
    return-object p0
.end method

.method public bridge synthetic reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public republishIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;
    .locals 1
    .param p1, "republish"    # Z

    .line 118
    const-string/jumbo v0, "republishIfSessionExpired"

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInOnDisconnected(Ljava/lang/String;)V

    .line 119
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->republishIfSessionExpired:Z

    .line 120
    return-object p0
.end method

.method public bridge synthetic republishIfSessionExpired(Z)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->republishIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic republishIfSessionExpired(Z)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->republishIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public resubscribeIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;
    .locals 1
    .param p1, "resubscribe"    # Z

    .line 105
    const-string/jumbo v0, "resubscribeIfSessionExpired"

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInOnDisconnected(Ljava/lang/String;)V

    .line 106
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->resubscribeIfSessionExpired:Z

    .line 107
    return-object p0
.end method

.method public bridge synthetic resubscribeIfSessionExpired(Z)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->resubscribeIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resubscribeIfSessionExpired(Z)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->resubscribeIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public transportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<",
            "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 155
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;
    .locals 2
    .param p1, "transportConfig"    # Lcom/hivemq/client/mqtt/MqttClientTransportConfig;

    .line 146
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    .line 147
    const-class v0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 148
    const-string v1, "Transport config"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 149
    return-object p0
.end method

.method public bridge synthetic transportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder$Nested;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->transportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method
