.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient;
.super Ljava/lang/Object;
.source "Mqtt3BlockingClient.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/Mqtt3Client;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient$Mqtt3Publishes;
    }
.end annotation


# virtual methods
.method public abstract connect()Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;
.end method

.method public abstract connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;
.end method

.method public abstract connectWith()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder$Send;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder$Send<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract disconnect()V
.end method

.method public abstract publish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)V
.end method

.method public abstract publishWith()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$SendVoid;
.end method

.method public abstract publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;)Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient$Mqtt3Publishes;
.end method

.method public abstract publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient$Mqtt3Publishes;
.end method

.method public abstract subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;
.end method

.method public abstract subscribeWith()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Send$Start;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Send$Start<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation
.end method

.method public toBlocking()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient;
    .locals 0

    .line 169
    return-object p0
.end method

.method public abstract unsubscribe(Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;)V
.end method

.method public abstract unsubscribeWith()Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$SendVoid$Start;
.end method
