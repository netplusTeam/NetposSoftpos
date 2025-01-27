.class public Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
.source "MqttConnectBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V
    .locals 0
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 145
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V

    .line 146
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cleanStart(Z)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->cleanStart(Z)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic enhancedAuth(Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->enhancedAuth(Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic keepAlive(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->keepAlive(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic noKeepAlive()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->noKeepAlive()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object v0
.end method

.method public bridge synthetic noSessionExpiry()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->noSessionExpiry()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object v0
.end method

.method public bridge synthetic restrictions(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->restrictions(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic restrictions()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilder$Nested;
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->restrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Default;
    .locals 0

    .line 150
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sessionExpiryInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 140
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->sessionExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic simpleAuth()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Nested;
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->simpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic willPublish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->willPublish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic willPublish()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Nested;
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->willPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillNested;

    move-result-object v0

    return-object v0
.end method
