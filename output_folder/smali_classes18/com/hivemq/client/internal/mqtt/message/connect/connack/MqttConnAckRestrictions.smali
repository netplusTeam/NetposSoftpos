.class public Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;
.super Ljava/lang/Object;
.source "MqttConnAckRestrictions.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckRestrictions;


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;


# instance fields
.field private final maximumPacketSize:I

.field private final maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field private final receiveMaximum:I

.field private final retainAvailable:Z

.field private final sharedSubscriptionAvailable:Z

.field private final subscriptionIdentifiersAvailable:Z

.field private final topicAliasMaximum:I

.field private final wildcardSubscriptionAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 31
    new-instance v9, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    sget-object v4, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->DEFAULT_MAXIMUM_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    const v1, 0xffff

    const v2, 0x10000004

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;-><init>(IIILcom/hivemq/client/mqtt/datatypes/MqttQos;ZZZZ)V

    sput-object v9, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    return-void
.end method

.method public constructor <init>(IIILcom/hivemq/client/mqtt/datatypes/MqttQos;ZZZZ)V
    .locals 0
    .param p1, "receiveMaximum"    # I
    .param p2, "maximumPacketSize"    # I
    .param p3, "topicAliasMaximum"    # I
    .param p4, "maximumQos"    # Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .param p5, "retainAvailable"    # Z
    .param p6, "wildcardSubscriptionAvailable"    # Z
    .param p7, "sharedSubscriptionAvailable"    # Z
    .param p8, "subscriptionIdentifiersAvailable"    # Z

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->receiveMaximum:I

    .line 57
    iput p2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumPacketSize:I

    .line 58
    iput p3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->topicAliasMaximum:I

    .line 59
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 60
    iput-boolean p5, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->retainAvailable:Z

    .line 61
    iput-boolean p6, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->wildcardSubscriptionAvailable:Z

    .line 62
    iput-boolean p7, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->sharedSubscriptionAvailable:Z

    .line 63
    iput-boolean p8, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->subscriptionIdentifiersAvailable:Z

    .line 64
    return-void
.end method

.method private toAttributeString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receiveMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->receiveMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maximumPacketSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumPacketSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topicAliasMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->topicAliasMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maximumQos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retainAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->retainAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wildcardSubscriptionAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->wildcardSubscriptionAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sharedSubscriptionAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->sharedSubscriptionAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriptionIdentifiersAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->subscriptionIdentifiersAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public areSubscriptionIdentifiersAvailable()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->subscriptionIdentifiersAvailable:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 122
    return v0

    .line 124
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 125
    return v2

    .line 127
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    .line 129
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;
    iget v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->receiveMaximum:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->receiveMaximum:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumPacketSize:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumPacketSize:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->topicAliasMaximum:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->topicAliasMaximum:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->retainAvailable:Z

    iget-boolean v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->retainAvailable:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->wildcardSubscriptionAvailable:Z

    iget-boolean v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->wildcardSubscriptionAvailable:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->sharedSubscriptionAvailable:Z

    iget-boolean v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->sharedSubscriptionAvailable:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->subscriptionIdentifiersAvailable:Z

    iget-boolean v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->subscriptionIdentifiersAvailable:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getMaximumPacketSize()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumPacketSize:I

    return v0
.end method

.method public getMaximumQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-object v0
.end method

.method public getReceiveMaximum()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->receiveMaximum:I

    return v0
.end method

.method public getTopicAliasMaximum()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->topicAliasMaximum:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 139
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->receiveMaximum:I

    .line 140
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumPacketSize:I

    add-int/2addr v1, v2

    .line 141
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->topicAliasMaximum:I

    add-int/2addr v0, v2

    .line 142
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v2}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 143
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->retainAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 144
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->wildcardSubscriptionAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 145
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->sharedSubscriptionAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 146
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->subscriptionIdentifiersAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 147
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isRetainAvailable()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->retainAvailable:Z

    return v0
.end method

.method public isSharedSubscriptionAvailable()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->sharedSubscriptionAvailable:Z

    return v0
.end method

.method public isWildcardSubscriptionAvailable()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->wildcardSubscriptionAvailable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttConnAckRestrictions{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->toAttributeString()Ljava/lang/String;

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
