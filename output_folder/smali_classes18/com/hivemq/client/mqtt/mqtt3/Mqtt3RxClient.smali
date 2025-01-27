.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;
.super Ljava/lang/Object;
.source "Mqtt3RxClient.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/Mqtt3Client;


# virtual methods
.method public abstract connect()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract connectWith()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder$Nested<",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract disconnect()Lio/reactivex/Completable;
.end method

.method public abstract publish(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;)",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;)Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;"
        }
    .end annotation
.end method

.method public abstract publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Z)",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribePublishes(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/rx/FlowableWithSingle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            ")",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribePublishes(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            "Z)",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribePublishesWith()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Publishes$Start;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Publishes$Start<",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract subscribeStream(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/rx/FlowableWithSingle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            ")",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract subscribeStreamWith()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Nested$Start;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Nested$Start<",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract subscribeWith()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Nested$Start;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Nested$Start<",
            "Lio/reactivex/Single<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;>;"
        }
    .end annotation
.end method

.method public toRx()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;
    .locals 0

    .line 331
    return-object p0
.end method

.method public abstract unsubscribe(Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;)Lio/reactivex/Completable;
.end method

.method public abstract unsubscribeWith()Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$Nested$Start;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$Nested$Start<",
            "Lio/reactivex/Completable;",
            ">;"
        }
    .end annotation
.end method
