.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;
.super Ljava/lang/Object;
.source "Mqtt5ConnectRestrictions.java"


# static fields
.field public static final DEFAULT_MAXIMUM_PACKET_SIZE:I = 0x10000004

.field public static final DEFAULT_RECEIVE_MAXIMUM:I = 0xffff

.field public static final DEFAULT_REQUEST_PROBLEM_INFORMATION:Z = true

.field public static final DEFAULT_REQUEST_RESPONSE_INFORMATION:Z = false

.field public static final DEFAULT_SEND_MAXIMUM:I = 0xffff

.field public static final DEFAULT_SEND_MAXIMUM_PACKET_SIZE:I = 0x10000004

.field public static final DEFAULT_SEND_TOPIC_ALIAS_MAXIMUM:I = 0x10

.field public static final DEFAULT_TOPIC_ALIAS_MAXIMUM:I


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilder;
    .locals 1

    .line 91
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilder;
.end method

.method public abstract getMaximumPacketSize()I
.end method

.method public abstract getReceiveMaximum()I
.end method

.method public abstract getSendMaximum()I
.end method

.method public abstract getSendMaximumPacketSize()I
.end method

.method public abstract getSendTopicAliasMaximum()I
.end method

.method public abstract getTopicAliasMaximum()I
.end method

.method public abstract isRequestProblemInformation()Z
.end method

.method public abstract isRequestResponseInformation()Z
.end method
