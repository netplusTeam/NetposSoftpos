.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder$Call;
.super Ljava/lang/Object;
.source "Mqtt5AsyncClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Call"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder$Call$Ex;
    }
.end annotation


# virtual methods
.method public abstract callback(Ljava/util/function/Consumer;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder$Call$Ex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;)",
            "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder$Call$Ex;"
        }
    .end annotation
.end method

.method public abstract send()Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation
.end method
