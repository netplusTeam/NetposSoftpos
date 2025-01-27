.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;
.super Ljava/lang/Object;
.source "Mqtt5OutgoingQos2Interceptor.java"


# virtual methods
.method public abstract onPubComp(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRel;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubComp;)V
.end method

.method public abstract onPubRec(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelBuilder;)V
.end method

.method public abstract onPubRecError(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;)V
.end method
