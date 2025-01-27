.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;
.super Ljava/lang/Object;
.source "Mqtt5Unsubscribe.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Start;
    .locals 1

    .line 45
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Complete;
.end method

.method public abstract getTopicFilters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;",
            ">;"
        }
    .end annotation
.end method

.method public getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 1

    .line 60
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->UNSUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    return-object v0
.end method

.method public abstract getUserProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
.end method
