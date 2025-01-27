.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;
.super Ljava/lang/Object;
.source "Mqtt5BlockingClient.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5Client;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;
    }
.end annotation


# virtual methods
.method public abstract connect()Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;
.end method

.method public abstract connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;
.end method

.method public abstract connectWith()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Send;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Send<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;"
        }
    .end annotation
.end method

.method public abstract disconnect()V
.end method

.method public abstract disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)V
.end method

.method public abstract disconnectWith()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder$SendVoid;
.end method

.method public abstract publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;
.end method

.method public abstract publishWith()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;
.end method

.method public abstract publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;
.end method

.method public abstract reauth()V
.end method

.method public abstract subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;
.end method

.method public abstract subscribeWith()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Start;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Start<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation
.end method

.method public toBlocking()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;
    .locals 0

    .line 212
    return-object p0
.end method

.method public abstract unsubscribe(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;
.end method

.method public abstract unsubscribeWith()Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Send$Start;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Send$Start<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;",
            ">;"
        }
    .end annotation
.end method
