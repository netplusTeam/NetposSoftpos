.class public Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;
.source "MqttClientExecutorConfigImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;)V
    .locals 0
    .param p1, "executorConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    .line 76
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;)V

    .line 77
    return-void
.end method


# virtual methods
.method public bridge synthetic applicationScheduler(Lio/reactivex/Scheduler;)Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->applicationScheduler(Lio/reactivex/Scheduler;)Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->build()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nettyExecutor(Ljava/util/concurrent/Executor;)Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->nettyExecutor(Ljava/util/concurrent/Executor;)Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic nettyThreads(I)Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->nettyThreads(I)Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Default;
    .locals 0

    .line 81
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method
