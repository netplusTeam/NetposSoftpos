.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase;
.super Ljava/lang/Object;
.source "Mqtt5ClientInterceptorsBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract incomingQos1Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;)Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract incomingQos2Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;)Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract outgoingQos1Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;)Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract outgoingQos2Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;)Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;",
            ")TB;"
        }
    .end annotation
.end method
