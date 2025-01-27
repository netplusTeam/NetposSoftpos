.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;
.super Ljava/lang/Object;
.source "Mqtt5IncomingQos2Interceptor.java"


# virtual methods
.method public abstract onPubRel(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRel;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompBuilder;)V
.end method

.method public abstract onPublish(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecBuilder;)V
.end method
