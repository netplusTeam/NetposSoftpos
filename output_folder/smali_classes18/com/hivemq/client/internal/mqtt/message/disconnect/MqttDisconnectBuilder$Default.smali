.class public Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
.source "MqttDisconnectBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V
    .locals 0
    .param p1, "disconnect"    # Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    .line 111
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V

    .line 112
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic noSessionExpiry()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->noSessionExpiry()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object v0
.end method

.method public bridge synthetic reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic reasonString(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;
    .locals 0

    .line 116
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serverReference(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->serverReference(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverReference(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->serverReference(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sessionExpiryInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 106
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->sessionExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method
