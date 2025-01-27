.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;
.super Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
.source "MqttPublishResult.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult$Mqtt5Qos2Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MqttQos2Result"
.end annotation


# instance fields
.field private final pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V
    .locals 0
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .param p2, "error"    # Ljava/lang/Throwable;
    .param p3, "pubRec"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V

    .line 155
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    .line 156
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 188
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 175
    if-ne p0, p1, :cond_0

    .line 176
    const/4 v0, 0x1

    return v0

    .line 178
    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;

    .line 183
    .local v0, "that":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 179
    .end local v0    # "that":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPubRec()Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    return-object v0
.end method

.method public bridge synthetic getPubRec()Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->getPubRec()Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPublish()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 193
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->hashCode()I

    move-result v0

    .line 194
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 195
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method toAttributeString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pubRec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttQos2Result{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->toAttributeString()Ljava/lang/String;

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
