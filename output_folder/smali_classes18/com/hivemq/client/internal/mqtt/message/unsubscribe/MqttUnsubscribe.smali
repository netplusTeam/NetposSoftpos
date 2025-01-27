.class public Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;
.source "MqttUnsubscribe.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;


# instance fields
.field private final topicFilters:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0
    .param p2, "userProperties"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;",
            ")V"
        }
    .end annotation

    .line 41
    .local p1, "topicFilters":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;>;"
    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    .line 42
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->topicFilters:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 43
    return-void
.end method


# virtual methods
.method public createStateful(I)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;
    .locals 1
    .param p1, "packetIdentifier"    # I

    .line 56
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;

    invoke-direct {v0, p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;-><init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 72
    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 75
    return v2

    .line 77
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    .line 79
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    invoke-virtual {p0, v1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->topicFilters:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->topicFilters:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Default;
    .locals 1

    .line 52
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Complete;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->extend()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getTopicFilters()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->topicFilters:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getTopicFilters()Ljava/util/List;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->getTopicFilters()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->partialHashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->topicFilters:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected toAttributeString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "topicFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->topicFilters:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, v1}, Lcom/hivemq/client/internal/util/StringUtil;->prepend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttUnsubscribe{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->toAttributeString()Ljava/lang/String;

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
