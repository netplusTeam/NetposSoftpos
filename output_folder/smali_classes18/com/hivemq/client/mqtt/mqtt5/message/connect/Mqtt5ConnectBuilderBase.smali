.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
.super Ljava/lang/Object;
.source "Mqtt5ConnectBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cleanStart(Z)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation
.end method

.method public abstract enhancedAuth(Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract keepAlive(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation
.end method

.method public abstract noKeepAlive()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract noSessionExpiry()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract restrictions(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract restrictions()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method

.method public abstract sessionExpiryInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation
.end method

.method public abstract simpleAuth()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method

.method public abstract simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method

.method public abstract userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract willPublish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract willPublish()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method
