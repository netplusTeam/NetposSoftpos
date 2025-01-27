.class public interface abstract Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;
.super Ljava/lang/Object;
.source "MqttClientExecutorConfigBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract applicationScheduler(Lio/reactivex/Scheduler;)Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Scheduler;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract nettyExecutor(Ljava/util/concurrent/Executor;)Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract nettyThreads(I)Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation
.end method
