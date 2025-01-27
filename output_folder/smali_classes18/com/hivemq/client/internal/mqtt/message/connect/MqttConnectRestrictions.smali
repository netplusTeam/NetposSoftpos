.class public Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;
.super Ljava/lang/Object;
.source "MqttConnectRestrictions.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;


# instance fields
.field private final maximumPacketSize:I

.field private final receiveMaximum:I

.field private final requestProblemInformation:Z

.field private final requestResponseInformation:Z

.field private final sendMaximum:I

.field private final sendMaximumPacketSize:I

.field private final sendTopicAliasMaximum:I

.field private final topicAliasMaximum:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 30
    new-instance v9, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    const v1, 0xffff

    const v2, 0xffff

    const v3, 0x10000004

    const v4, 0x10000004

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;-><init>(IIIIIIZZ)V

    sput-object v9, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    return-void
.end method

.method public constructor <init>(IIIIIIZZ)V
    .locals 0
    .param p1, "receiveMaximum"    # I
    .param p2, "sendMaximum"    # I
    .param p3, "maximumPacketSize"    # I
    .param p4, "sendMaximumPacketSize"    # I
    .param p5, "topicAliasMaximum"    # I
    .param p6, "sendTopicAliasMaximum"    # I
    .param p7, "requestProblemInformation"    # Z
    .param p8, "requestResponseInformation"    # Z

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->receiveMaximum:I

    .line 55
    iput p2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendMaximum:I

    .line 56
    iput p3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->maximumPacketSize:I

    .line 57
    iput p4, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendMaximumPacketSize:I

    .line 58
    iput p5, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->topicAliasMaximum:I

    .line 59
    iput p6, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendTopicAliasMaximum:I

    .line 60
    iput-boolean p7, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->requestProblemInformation:Z

    .line 61
    iput-boolean p8, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->requestResponseInformation:Z

    .line 62
    return-void
.end method

.method private toAttributeString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receiveMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->receiveMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maximumPacketSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->maximumPacketSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendMaximumPacketSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendMaximumPacketSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topicAliasMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->topicAliasMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendTopicAliasMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendTopicAliasMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestProblemInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->requestProblemInformation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestResponseInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->requestResponseInformation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 124
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 125
    return v0

    .line 127
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 128
    return v2

    .line 130
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 132
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;
    iget v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->receiveMaximum:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->receiveMaximum:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendMaximum:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendMaximum:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->maximumPacketSize:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->maximumPacketSize:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendMaximumPacketSize:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendMaximumPacketSize:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->topicAliasMaximum:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->topicAliasMaximum:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendTopicAliasMaximum:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendTopicAliasMaximum:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->requestProblemInformation:Z

    iget-boolean v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->requestProblemInformation:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->requestResponseInformation:Z

    iget-boolean v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->requestResponseInformation:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Default;
    .locals 1

    .line 106
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->extend()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumPacketSize()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->maximumPacketSize:I

    return v0
.end method

.method public getReceiveMaximum()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->receiveMaximum:I

    return v0
.end method

.method public getSendMaximum()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendMaximum:I

    return v0
.end method

.method public getSendMaximumPacketSize()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendMaximumPacketSize:I

    return v0
.end method

.method public getSendTopicAliasMaximum()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendTopicAliasMaximum:I

    return v0
.end method

.method public getTopicAliasMaximum()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->topicAliasMaximum:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 143
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->receiveMaximum:I

    .line 144
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendMaximum:I

    add-int/2addr v1, v2

    .line 145
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->maximumPacketSize:I

    add-int/2addr v0, v2

    .line 146
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendMaximumPacketSize:I

    add-int/2addr v1, v2

    .line 147
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->topicAliasMaximum:I

    add-int/2addr v0, v2

    .line 148
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->sendTopicAliasMaximum:I

    add-int/2addr v1, v2

    .line 149
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->requestProblemInformation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 150
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->requestResponseInformation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 151
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isRequestProblemInformation()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->requestProblemInformation:Z

    return v0
.end method

.method public isRequestResponseInformation()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->requestResponseInformation:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttConnectRestrictions{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->toAttributeString()Ljava/lang/String;

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
