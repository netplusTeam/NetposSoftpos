.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig$RestrictionsForClient;
.super Ljava/lang/Object;
.source "Mqtt5ClientConnectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RestrictionsForClient"
.end annotation


# virtual methods
.method public abstract areSubscriptionIdentifiersAvailable()Z
.end method

.method public abstract getMaximumQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
.end method

.method public abstract getSendMaximum()I
.end method

.method public abstract getSendMaximumPacketSize()I
.end method

.method public abstract getSendTopicAliasMaximum()I
.end method

.method public abstract isRetainAvailable()Z
.end method

.method public abstract isSharedSubscriptionAvailable()Z
.end method

.method public abstract isWildcardSubscriptionAvailable()Z
.end method
