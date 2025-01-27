.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
.super Ljava/lang/Object;
.source "Mqtt5ClientBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientBuilderBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/MqttClientBuilderBase<",
        "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract advancedConfig(Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfig;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
.end method

.method public abstract advancedConfig()Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilder$Nested<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract build()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5Client;
.end method

.method public abstract buildAsync()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient;
.end method

.method public abstract buildBlocking()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;
.end method

.method public abstract buildRx()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5RxClient;
.end method

.method public abstract enhancedAuth(Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
.end method

.method public abstract simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
.end method

.method public abstract simpleAuth()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Nested<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract willPublish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
.end method

.method public abstract willPublish()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Nested<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;",
            ">;"
        }
    .end annotation
.end method
