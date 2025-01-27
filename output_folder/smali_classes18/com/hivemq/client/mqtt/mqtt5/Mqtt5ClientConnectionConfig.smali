.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig;
.super Ljava/lang/Object;
.source "Mqtt5ClientConnectionConfig.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientConnectionConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig$RestrictionsForClient;,
        Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig$RestrictionsForServer;
    }
.end annotation


# virtual methods
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

.method public abstract getRestrictionsForClient()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig$RestrictionsForClient;
.end method

.method public abstract getRestrictionsForServer()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig$RestrictionsForServer;
.end method

.method public abstract getSessionExpiryInterval()J
.end method
