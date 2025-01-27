.class public Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;
.super Ljava/lang/Object;
.source "MqttClientExecutorConfigImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

.field public static final DEFAULT_NETTY_THREADS:I


# instance fields
.field private final applicationScheduler:Lio/reactivex/Scheduler;

.field private final nettyExecutor:Ljava/util/concurrent/Executor;

.field private final nettyThreads:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->DEFAULT_APPLICATION_SCHEDULER:Lio/reactivex/Scheduler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;-><init>(Ljava/util/concurrent/Executor;ILio/reactivex/Scheduler;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;ILio/reactivex/Scheduler;)V
    .locals 0
    .param p1, "nettyExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "nettyThreads"    # I
    .param p3, "applicationScheduler"    # Lio/reactivex/Scheduler;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyExecutor:Ljava/util/concurrent/Executor;

    .line 48
    iput p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyThreads:I

    .line 49
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->applicationScheduler:Lio/reactivex/Scheduler;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 83
    return v0

    .line 85
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 86
    return v2

    .line 88
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    .line 90
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyThreads:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyThreads:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->applicationScheduler:Lio/reactivex/Scheduler;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->applicationScheduler:Lio/reactivex/Scheduler;

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 90
    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Default;
    .locals 1

    .line 77
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilder;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->extend()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->applicationScheduler:Lio/reactivex/Scheduler;

    return-object v0
.end method

.method public getNettyExecutor()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getNettyThreads()Ljava/util/OptionalInt;
    .locals 1

    .line 63
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyThreads:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRawNettyExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getRawNettyThreads()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyThreads:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 97
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->nettyThreads:I

    add-int/2addr v1, v2

    .line 98
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->applicationScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 99
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
