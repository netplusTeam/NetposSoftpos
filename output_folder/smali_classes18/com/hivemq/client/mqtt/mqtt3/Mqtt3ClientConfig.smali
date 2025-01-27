.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;
.super Ljava/lang/Object;
.source "Mqtt3ClientConfig.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientConfig;


# virtual methods
.method public abstract getConnectionConfig()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConnectionConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSimpleAuth()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWillPublish()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;"
        }
    .end annotation
.end method
