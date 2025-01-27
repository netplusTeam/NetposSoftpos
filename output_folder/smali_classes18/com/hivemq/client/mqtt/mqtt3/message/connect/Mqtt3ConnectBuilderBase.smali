.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;
.super Ljava/lang/Object;
.source "Mqtt3ConnectBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cleanSession(Z)Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation
.end method

.method public abstract keepAlive(I)Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation
.end method

.method public abstract noKeepAlive()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract simpleAuth()Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method

.method public abstract simpleAuth(Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;)Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract willPublish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract willPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3WillPublishBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3WillPublishBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method
