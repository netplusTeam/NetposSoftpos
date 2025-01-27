.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;
.super Ljava/lang/Object;
.source "Mqtt5ClientInterceptors.java"


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilder;
    .locals 1

    .line 44
    new-instance v0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilder;
.end method

.method public abstract getIncomingQos1Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;
.end method

.method public abstract getIncomingQos2Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;
.end method

.method public abstract getOutgoingQos1Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;
.end method

.method public abstract getOutgoingQos2Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;
.end method
