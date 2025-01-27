.class public abstract Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;
.super Ljava/lang/Object;
.source "FlowWithEventLoop.java"


# static fields
.field private static final STATE_CANCELLED:I = 0x3

.field private static final STATE_DONE:I = 0x2

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_NOT_DONE:I = 0x1


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final doneState:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final eventLoop:Lio/netty/channel/EventLoop;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 2
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->doneState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 41
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->acquireEventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->eventLoop:Lio/netty/channel/EventLoop;

    .line 42
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->doneState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->onCancel()V

    .line 63
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    .line 65
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->cancel()V

    .line 69
    return-void
.end method

.method public getEventLoop()Lio/netty/channel/EventLoop;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->eventLoop:Lio/netty/channel/EventLoop;

    return-object v0
.end method

.method public init()Z
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->doneState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    return v2

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    .line 49
    return v1
.end method

.method public isCancelled()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->doneState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisposed()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->doneState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 79
    .local v0, "doneState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method protected onCancel()V
    .locals 0

    .line 71
    return-void
.end method

.method protected setDone()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->doneState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    .line 55
    return v1

    .line 57
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
