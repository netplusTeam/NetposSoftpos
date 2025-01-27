.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckRestrictions;
.super Ljava/lang/Object;
.source "Mqtt5ConnAckRestrictions.java"


# static fields
.field public static final DEFAULT_MAXIMUM_PACKET_SIZE_NO_LIMIT:I = 0x10000004

.field public static final DEFAULT_MAXIMUM_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field public static final DEFAULT_RECEIVE_MAXIMUM:I = 0xffff

.field public static final DEFAULT_RETAIN_AVAILABLE:Z = true

.field public static final DEFAULT_SHARED_SUBSCRIPTION_AVAILABLE:Z = true

.field public static final DEFAULT_SUBSCRIPTION_IDENTIFIERS_AVAILABLE:Z = true

.field public static final DEFAULT_TOPIC_ALIAS_MAXIMUM:I = 0x0

.field public static final DEFAULT_WILDCARD_SUBSCRIPTION_AVAILABLE:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckRestrictions;->DEFAULT_MAXIMUM_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-void
.end method


# virtual methods
.method public abstract areSubscriptionIdentifiersAvailable()Z
.end method

.method public abstract getMaximumPacketSize()I
.end method

.method public abstract getMaximumQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
.end method

.method public abstract getReceiveMaximum()I
.end method

.method public abstract getTopicAliasMaximum()I
.end method

.method public abstract isRetainAvailable()Z
.end method

.method public abstract isSharedSubscriptionAvailable()Z
.end method

.method public abstract isWildcardSubscriptionAvailable()Z
.end method
