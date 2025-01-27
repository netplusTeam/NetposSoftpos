.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient;
.super Ljava/lang/Object;
.source "Mqtt5AsyncClient.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5Client;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder;
    }
.end annotation


# virtual methods
.method public abstract connect()Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract connectWith()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Send;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Send<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract disconnect()Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract disconnectWith()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder$Send;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder$Send<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract publishWith()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Ljava/util/function/Consumer;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract reauth()Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;Z)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribeWith()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder$Start;
.end method

.method public toAsync()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient;
    .locals 0

    .line 374
    return-object p0
.end method

.method public abstract unsubscribe(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract unsubscribeWith()Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Send$Start;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Send$Start<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
            ">;>;"
        }
    .end annotation
.end method
