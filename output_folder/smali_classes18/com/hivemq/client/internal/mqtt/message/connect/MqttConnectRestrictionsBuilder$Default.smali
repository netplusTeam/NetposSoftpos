.class public Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
.source "MqttConnectRestrictionsBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;)V
    .locals 0
    .param p1, "restrictions"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 106
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;)V

    .line 107
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maximumPacketSize(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->maximumPacketSize(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic receiveMaximum(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->receiveMaximum(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic requestProblemInformation(Z)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestProblemInformation(Z)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic requestResponseInformation(Z)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestResponseInformation(Z)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Default;
    .locals 0

    .line 111
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sendMaximum(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximum(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sendMaximumPacketSize(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximumPacketSize(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sendTopicAliasMaximum(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendTopicAliasMaximum(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic topicAliasMaximum(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->topicAliasMaximum(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method
