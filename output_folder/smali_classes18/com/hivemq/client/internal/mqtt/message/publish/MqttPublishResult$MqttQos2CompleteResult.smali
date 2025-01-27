.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;
.super Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;
.source "MqttPublishResult.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult$Mqtt5Qos2CompleteResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MqttQos2CompleteResult"
.end annotation


# instance fields
.field private final pubComp:Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

.field private final pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V
    .locals 1
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .param p2, "pubRec"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;
    .param p3, "pubRel"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    .param p4, "pubComp"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    .line 230
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    .line 231
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->pubComp:Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    .line 232
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 269
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 256
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 257
    return v0

    .line 259
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 262
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;

    .line 264
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->pubComp:Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->pubComp:Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 260
    .end local v1    # "that":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;
    :cond_3
    :goto_1
    return v2
.end method

.method public getPubComp()Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->pubComp:Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    return-object v0
.end method

.method public bridge synthetic getPubComp()Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubComp;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->getPubComp()Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    move-result-object v0

    return-object v0
.end method

.method public getPubRel()Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    return-object v0
.end method

.method public bridge synthetic getPubRel()Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRel;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->getPubRel()Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 274
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->hashCode()I

    move-result v0

    .line 275
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 276
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->pubComp:Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 277
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method toAttributeString()Ljava/lang/String;
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pubRel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pubComp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->pubComp:Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttQos2CompleteResult{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;->toAttributeString()Ljava/lang/String;

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
