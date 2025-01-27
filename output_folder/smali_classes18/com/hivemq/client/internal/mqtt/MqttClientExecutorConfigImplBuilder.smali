.class public abstract Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;
.super Ljava/lang/Object;
.source "MqttClientExecutorConfigImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private applicationScheduler:Lio/reactivex/Scheduler;

.field private nettyExecutor:Ljava/util/concurrent/Executor;

.field private nettyThreads:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->nettyThreads:I

    .line 35
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->DEFAULT_APPLICATION_SCHEDULER:Lio/reactivex/Scheduler;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->applicationScheduler:Lio/reactivex/Scheduler;

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;)V
    .locals 1
    .param p1, "executorConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    .line 39
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->nettyThreads:I

    .line 35
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->DEFAULT_APPLICATION_SCHEDULER:Lio/reactivex/Scheduler;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->applicationScheduler:Lio/reactivex/Scheduler;

    .line 40
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getRawNettyExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->nettyExecutor:Ljava/util/concurrent/Executor;

    .line 41
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getRawNettyThreads()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->nettyThreads:I

    .line 42
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getApplicationScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->applicationScheduler:Lio/reactivex/Scheduler;

    .line 43
    return-void
.end method


# virtual methods
.method public applicationScheduler(Lio/reactivex/Scheduler;)Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;
    .locals 1
    .param p1, "applicationScheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Scheduler;",
            ")TB;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder<TB;>;"
    const-string v0, "Application scheduler"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->applicationScheduler:Lio/reactivex/Scheduler;

    .line 63
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;
    .locals 4

    .line 67
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->nettyExecutor:Ljava/util/concurrent/Executor;

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->nettyThreads:I

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->applicationScheduler:Lio/reactivex/Scheduler;

    invoke-direct {v0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;-><init>(Ljava/util/concurrent/Executor;ILio/reactivex/Scheduler;)V

    return-object v0
.end method

.method public nettyExecutor(Ljava/util/concurrent/Executor;)Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;
    .locals 1
    .param p1, "nettyExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TB;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder<TB;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->nettyExecutor:Ljava/util/concurrent/Executor;

    .line 49
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public nettyThreads(I)Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;
    .locals 3
    .param p1, "nettyThreads"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder<TB;>;"
    if-lez p1, :cond_0

    .line 57
    iput p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->nettyThreads:I

    .line 58
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of Netty threads must be greater than 0. Found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method
