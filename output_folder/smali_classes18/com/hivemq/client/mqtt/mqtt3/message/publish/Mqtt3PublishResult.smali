.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;
.super Ljava/lang/Object;
.source "Mqtt3PublishResult.java"


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

.method public abstract getPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;
.end method
