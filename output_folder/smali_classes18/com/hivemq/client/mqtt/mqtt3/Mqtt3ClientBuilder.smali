.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;
.super Ljava/lang/Object;
.source "Mqtt3ClientBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientBuilderBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/MqttClientBuilderBase<",
        "Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract build()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3Client;
.end method

.method public abstract buildAsync()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient;
.end method

.method public abstract buildBlocking()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient;
.end method

.method public abstract buildRx()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;
.end method

.method public abstract simpleAuth(Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;)Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;
.end method

.method public abstract simpleAuth()Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilder$Nested<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract willPublish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;
.end method

.method public abstract willPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3WillPublishBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3WillPublishBuilder$Nested<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;",
            ">;"
        }
    .end annotation
.end method
