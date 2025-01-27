.class public Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;
.source "MqttClientInterceptorsBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder<",
        "Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;)V
    .locals 0
    .param p1, "interceptors"    # Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    .line 83
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;)V

    .line 84
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->build()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic incomingQos1Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;)Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase;
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->incomingQos1Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;)Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic incomingQos2Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;)Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase;
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->incomingQos2Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;)Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic outgoingQos1Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;)Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase;
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->outgoingQos1Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;)Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic outgoingQos2Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;)Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase;
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->outgoingQos2Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;)Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Default;
    .locals 0

    .line 88
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Default;

    move-result-object v0

    return-object v0
.end method
