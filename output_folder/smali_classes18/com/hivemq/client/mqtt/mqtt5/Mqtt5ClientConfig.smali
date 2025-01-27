.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;
.super Ljava/lang/Object;
.source "Mqtt5ClientConfig.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientConfig;


# virtual methods
.method public abstract getAdvancedConfig()Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfig;
.end method

.method public abstract getConnectionConfig()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnhancedAuthMechanism()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSimpleAuth()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWillPublish()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublish;",
            ">;"
        }
    .end annotation
.end method
