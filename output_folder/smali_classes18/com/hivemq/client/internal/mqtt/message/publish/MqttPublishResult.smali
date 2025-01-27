.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
.super Ljava/lang/Object;
.source "MqttPublishResult.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2CompleteResult;,
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2IntermediateResult;,
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;,
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos1Result;
    }
.end annotation


# instance fields
.field private final error:Ljava/lang/Throwable;

.field private final publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .param p2, "error"    # Ljava/lang/Throwable;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 41
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    .line 42
    return-void
.end method


# virtual methods
.method public acknowledged()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 80
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 68
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 69
    return v0

    .line 71
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 72
    return v2

    .line 74
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 76
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
    invoke-virtual {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getError()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    return-object v0
.end method

.method public bridge synthetic getPublish()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    return-object v0
.end method

.method public getRawError()Ljava/lang/Throwable;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->hashCode()I

    move-result v0

    .line 86
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 87
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method toAttributeString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "publish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->error:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttPublishResult{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->toAttributeString()Ljava/lang/String;

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
