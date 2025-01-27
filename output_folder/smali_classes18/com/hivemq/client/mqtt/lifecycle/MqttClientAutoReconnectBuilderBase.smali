.class public interface abstract Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase;
.super Ljava/lang/Object;
.source "MqttClientAutoReconnectBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract initialDelay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract maxDelay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation
.end method
