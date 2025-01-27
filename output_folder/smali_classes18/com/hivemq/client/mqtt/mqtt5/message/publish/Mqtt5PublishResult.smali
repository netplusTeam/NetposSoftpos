.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;
.super Ljava/lang/Object;
.source "Mqtt5PublishResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult$Mqtt5Qos2CompleteResult;,
        Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult$Mqtt5Qos2Result;,
        Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult$Mqtt5Qos1Result;
    }
.end annotation


# virtual methods
.method public abstract getError()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublish()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
.end method
