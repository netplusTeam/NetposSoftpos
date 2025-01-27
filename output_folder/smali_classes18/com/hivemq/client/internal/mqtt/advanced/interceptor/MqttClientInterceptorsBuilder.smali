.class public abstract Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;
.super Ljava/lang/Object;
.source "MqttClientInterceptorsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private incomingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;

.field private incomingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;

.field private outgoingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;

.field private outgoingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;)V
    .locals 1
    .param p1, "interceptors"    # Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    .line 41
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->getIncomingQos1Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->incomingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;

    .line 44
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->getOutgoingQos1Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->outgoingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;

    .line 45
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->getIncomingQos2Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->incomingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;

    .line 46
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->getOutgoingQos2Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->outgoingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;
    .locals 5

    .line 73
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->incomingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->outgoingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->incomingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->outgoingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;-><init>(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;)V

    return-object v0
.end method

.method public incomingQos1Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;)Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;
    .locals 1
    .param p1, "incomingQos1Interceptor"    # Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;",
            ")TB;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder<TB;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->incomingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;

    .line 54
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->self()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public incomingQos2Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;)Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;
    .locals 1
    .param p1, "incomingQos2Interceptor"    # Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;",
            ")TB;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder<TB;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->incomingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->self()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public outgoingQos1Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;)Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;
    .locals 1
    .param p1, "outgoingQos1Interceptor"    # Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;",
            ")TB;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder<TB;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->outgoingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;

    .line 59
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->self()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public outgoingQos2Interceptor(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;)Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;
    .locals 1
    .param p1, "outgoingQos2Interceptor"    # Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;",
            ")TB;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;, "Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder<TB;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->outgoingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;

    .line 69
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;->self()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method
