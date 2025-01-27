.class public Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;
.super Ljava/lang/Object;
.source "MqttClientInterceptors.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;


# instance fields
.field private final incomingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;

.field private final incomingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;

.field private final outgoingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;

.field private final outgoingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;


# direct methods
.method constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;)V
    .locals 0
    .param p1, "incomingQos1Interceptor"    # Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;
    .param p2, "outgoingQos1Interceptor"    # Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;
    .param p3, "incomingQos2Interceptor"    # Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;
    .param p4, "outgoingQos2Interceptor"    # Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->incomingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;

    .line 46
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->outgoingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;

    .line 47
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->incomingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;

    .line 48
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->outgoingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 78
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 79
    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 82
    return v2

    .line 84
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    .line 86
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->incomingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->incomingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->outgoingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->outgoingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;

    .line 87
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->incomingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->incomingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;

    .line 88
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->outgoingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->outgoingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;

    .line 89
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 86
    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Default;
    .locals 1

    .line 73
    new-instance v0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilder;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->extend()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingQos1Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->incomingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;

    return-object v0
.end method

.method public getIncomingQos2Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->incomingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;

    return-object v0
.end method

.method public getOutgoingQos1Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->outgoingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;

    return-object v0
.end method

.method public getOutgoingQos2Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->outgoingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->incomingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 95
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->outgoingQos1Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5OutgoingQos1Interceptor;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 96
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->incomingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 97
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->outgoingQos2Interceptor:Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5OutgoingQos2Interceptor;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 98
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
