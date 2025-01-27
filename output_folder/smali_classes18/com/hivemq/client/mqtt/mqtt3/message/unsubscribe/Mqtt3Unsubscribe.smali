.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;
.super Ljava/lang/Object;
.source "Mqtt3Unsubscribe.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3Message;


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$Start;
    .locals 1

    .line 45
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$Complete;
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

.method public getType()Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;
    .locals 1

    .line 55
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->UNSUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    return-object v0
.end method
