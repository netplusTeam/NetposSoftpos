.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
.super Ljava/lang/Object;
.source "MqttSubscription.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;


# instance fields
.field private final noLocal:Z

.field private final qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field private final retainAsPublished:Z

.field private final retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

.field private final topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZLcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;Z)V
    .locals 0
    .param p1, "topicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .param p2, "qos"    # Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .param p3, "noLocal"    # Z
    .param p4, "retainHandling"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;
    .param p5, "retainAsPublished"    # Z

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 47
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 48
    iput-boolean p3, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->noLocal:Z

    .line 49
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    .line 50
    iput-boolean p5, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainAsPublished:Z

    .line 51
    return-void
.end method

.method public static decodeNoLocal(B)Z
    .locals 1
    .param p0, "subscriptionOptions"    # B

    .line 135
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static decodeQos(B)Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 1
    .param p0, "subscriptionOptions"    # B

    .line 131
    and-int/lit8 v0, p0, 0x3

    invoke-static {v0}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->fromCode(I)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v0

    return-object v0
.end method

.method public static decodeRetainAsPublished(B)Z
    .locals 1
    .param p0, "subscriptionOptions"    # B

    .line 143
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static decodeRetainHandling(B)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;
    .locals 1
    .param p0, "subscriptionOptions"    # B

    .line 139
    and-int/lit8 v0, p0, 0x30

    shr-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    move-result-object v0

    return-object v0
.end method

.method private toAttributeString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "topicFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noLocal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->noLocal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retainHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retainAsPublished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainAsPublished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encodeSubscriptionOptions()B
    .locals 2

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "subscriptionOptions":B
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->getCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 120
    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainAsPublished:Z

    if-eqz v1, :cond_0

    .line 121
    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 123
    :cond_0
    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->noLocal:Z

    if-eqz v1, :cond_1

    .line 124
    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->getCode()I

    move-result v1

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 127
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 96
    return v0

    .line 98
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 99
    return v2

    .line 101
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    .line 103
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->noLocal:Z

    iget-boolean v4, v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->noLocal:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainAsPublished:Z

    iget-boolean v4, v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainAsPublished:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;
    .locals 1

    .line 80
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->extend()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-object v0
.end method

.method public getRetainHandling()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    return-object v0
.end method

.method public getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    return-object v0
.end method

.method public bridge synthetic getTopicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->hashCode()I

    move-result v0

    .line 110
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v2}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 111
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->noLocal:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 112
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    invoke-virtual {v2}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 113
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainAsPublished:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 114
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isNoLocal()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->noLocal:Z

    return v0
.end method

.method public isRetainAsPublished()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainAsPublished:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttSubscription{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
