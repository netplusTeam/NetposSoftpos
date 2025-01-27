.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;
.super Ljava/lang/Object;
.source "Mqtt3Subscription.java"


# static fields
.field public static final DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-void
.end method

.method public static builder()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilder;
    .locals 1

    .line 46
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilder;
.end method

.method public abstract getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
.end method

.method public abstract getTopicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
.end method
