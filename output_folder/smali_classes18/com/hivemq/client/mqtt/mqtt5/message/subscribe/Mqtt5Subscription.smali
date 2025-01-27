.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;
.super Ljava/lang/Object;
.source "Mqtt5Subscription.java"


# static fields
.field public static final DEFAULT_NO_LOCAL:Z = false

.field public static final DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field public static final DEFAULT_RETAIN_AS_PUBLISHED:Z = false

.field public static final DEFAULT_RETAIN_HANDLING:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 46
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->SEND:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;->DEFAULT_RETAIN_HANDLING:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    return-void
.end method

.method public static builder()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilder;
    .locals 1

    .line 58
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilder;
.end method

.method public abstract getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
.end method

.method public abstract getRetainHandling()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;
.end method

.method public abstract getTopicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
.end method

.method public abstract isNoLocal()Z
.end method

.method public abstract isRetainAsPublished()Z
.end method
