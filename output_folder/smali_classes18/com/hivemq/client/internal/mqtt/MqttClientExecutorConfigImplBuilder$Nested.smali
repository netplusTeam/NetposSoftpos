.class public Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;
.source "MqttClientExecutorConfigImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilder$Nested;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nested"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilder$Nested<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "executorConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;",
            "TP;>;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested<TP;>;"
    .local p2, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;TP;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;)V

    .line 95
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 96
    return-void
.end method


# virtual methods
.method public bridge synthetic applicationScheduler(Lio/reactivex/Scheduler;)Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;
    .locals 0

    .line 85
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->applicationScheduler(Lio/reactivex/Scheduler;)Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;

    return-object p1
.end method

.method public applyExecutorConfig()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nettyExecutor(Ljava/util/concurrent/Executor;)Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;
    .locals 0

    .line 85
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->nettyExecutor(Ljava/util/concurrent/Executor;)Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic nettyThreads(I)Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;
    .locals 0

    .line 85
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;->nettyThreads(I)Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder;
    .locals 1

    .line 85
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method
