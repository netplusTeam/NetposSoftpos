.class public Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
.super Ljava/lang/Object;
.source "MqttClientConnectionConfig.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig;
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig$RestrictionsForServer;
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig$RestrictionsForClient;
.implements Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConnectionConfig;
.implements Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConnectionConfig$RestrictionsForClient;


# static fields
.field private static final FLAG_CLEAN_START:I = 0x100

.field private static final FLAG_CLEAN_STOP:I = 0x200

.field private static final FLAG_HAS_SIMPLE_AUTH:I = 0x1

.field private static final FLAG_HAS_WILL_PUBLISH:I = 0x2

.field private static final FLAG_PROBLEM_INFORMATION_REQUESTED:I = 0x4

.field private static final FLAG_RESPONSE_INFORMATION_REQUESTED:I = 0x8

.field private static final FLAG_RETAIN_AVAILABLE:I = 0x10

.field private static final FLAG_SHARED_SUBSCRIPTION_AVAILABLE:I = 0x40

.field private static final FLAG_SUBSCRIPTION_IDENTIFIERS_AVAILABLE:I = 0x80

.field private static final FLAG_WILDCARD_SUBSCRIPTION_AVAILABLE:I = 0x20


# instance fields
.field private final channel:Lio/netty/channel/Channel;

.field private final enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

.field private final flags:I

.field private final keepAlive:S

.field private final maximumPacketSize:I

.field private final maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field private final receiveMaximum:S

.field private final sendMaximum:S

.field private final sendMaximumPacketSize:I

.field private final sendTopicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

.field private volatile sessionExpiryInterval:I

.field private final topicAliasMaximum:S

.field private final transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;IZZJZZLcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;IIIZZIIILcom/hivemq/client/mqtt/datatypes/MqttQos;ZZZZLio/netty/channel/Channel;)V
    .locals 15
    .param p1, "transportConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .param p2, "keepAlive"    # I
    .param p3, "cleanStart"    # Z
    .param p4, "cleanStop"    # Z
    .param p5, "sessionExpiryInterval"    # J
    .param p7, "hasSimpleAuth"    # Z
    .param p8, "hasWillPublish"    # Z
    .param p9, "enhancedAuthMechanism"    # Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;
    .param p10, "receiveMaximum"    # I
    .param p11, "maximumPacketSize"    # I
    .param p12, "topicAliasMaximum"    # I
    .param p13, "problemInformationRequested"    # Z
    .param p14, "responseInformationRequested"    # Z
    .param p15, "sendMaximum"    # I
    .param p16, "sendMaximumPacketSize"    # I
    .param p17, "sendTopicAliasMaximum"    # I
    .param p18, "maximumQos"    # Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .param p19, "retainAvailable"    # Z
    .param p20, "wildcardSubscriptionAvailable"    # Z
    .param p21, "sharedSubscriptionAvailable"    # Z
    .param p22, "subscriptionIdentifiersAvailable"    # Z
    .param p23, "channel"    # Lio/netty/channel/Channel;

    .line 87
    move-object v0, p0

    move/from16 v1, p17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 90
    move/from16 v3, p2

    int-to-short v4, v3

    iput-short v4, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->keepAlive:S

    .line 91
    move-wide/from16 v4, p5

    long-to-int v6, v4

    iput v6, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sessionExpiryInterval:I

    .line 92
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    .line 93
    move/from16 v7, p10

    int-to-short v8, v7

    iput-short v8, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->receiveMaximum:S

    .line 94
    move/from16 v8, p11

    iput v8, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->maximumPacketSize:I

    .line 95
    move/from16 v9, p12

    int-to-short v10, v9

    iput-short v10, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->topicAliasMaximum:S

    .line 96
    move/from16 v10, p15

    int-to-short v11, v10

    iput-short v11, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendMaximum:S

    .line 97
    move/from16 v11, p16

    iput v11, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendMaximumPacketSize:I

    .line 98
    if-nez v1, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    new-instance v12, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;

    invoke-direct {v12, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;-><init>(I)V

    :goto_0
    iput-object v12, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendTopicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    .line 100
    move-object/from16 v12, p18

    iput-object v12, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 101
    move-object/from16 v13, p23

    iput-object v13, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->channel:Lio/netty/channel/Channel;

    .line 103
    const/4 v14, 0x0

    .line 104
    .local v14, "flags":I
    if-eqz p7, :cond_1

    .line 105
    or-int/lit8 v14, v14, 0x1

    .line 107
    :cond_1
    if-eqz p8, :cond_2

    .line 108
    or-int/lit8 v14, v14, 0x2

    .line 110
    :cond_2
    if-eqz p13, :cond_3

    .line 111
    or-int/lit8 v14, v14, 0x4

    .line 113
    :cond_3
    if-eqz p14, :cond_4

    .line 114
    or-int/lit8 v14, v14, 0x8

    .line 116
    :cond_4
    if-eqz p19, :cond_5

    .line 117
    or-int/lit8 v14, v14, 0x10

    .line 119
    :cond_5
    if-eqz p20, :cond_6

    .line 120
    or-int/lit8 v14, v14, 0x20

    .line 122
    :cond_6
    if-eqz p21, :cond_7

    .line 123
    or-int/lit8 v14, v14, 0x40

    .line 125
    :cond_7
    if-eqz p22, :cond_8

    .line 126
    or-int/lit16 v14, v14, 0x80

    .line 128
    :cond_8
    if-eqz p3, :cond_9

    .line 129
    or-int/lit16 v14, v14, 0x100

    .line 131
    :cond_9
    if-eqz p4, :cond_a

    .line 132
    or-int/lit16 v14, v14, 0x200

    .line 134
    :cond_a
    iput v14, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    .line 135
    return-void
.end method


# virtual methods
.method public areSubscriptionIdentifiersAvailable()Z
    .locals 1

    .line 259
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChannel()Lio/netty/channel/Channel;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->channel:Lio/netty/channel/Channel;

    return-object v0
.end method

.method public getEnhancedAuthMechanism()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()I
    .locals 2

    .line 144
    iget-short v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->keepAlive:S

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaximumPacketSize()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->maximumPacketSize:I

    return v0
.end method

.method public getMaximumQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-object v0
.end method

.method public getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->enhancedAuthMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    return-object v0
.end method

.method public getReceiveMaximum()I
    .locals 2

    .line 195
    iget-short v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->receiveMaximum:S

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getRestrictionsForClient()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .locals 0

    .line 190
    return-object p0
.end method

.method public bridge synthetic getRestrictionsForClient()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConnectionConfig$RestrictionsForClient;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getRestrictionsForClient()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRestrictionsForClient()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig$RestrictionsForClient;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getRestrictionsForClient()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getRestrictionsForServer()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .locals 0

    .line 185
    return-object p0
.end method

.method public bridge synthetic getRestrictionsForServer()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConnectionConfig$RestrictionsForServer;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getRestrictionsForServer()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSendMaximum()I
    .locals 2

    .line 220
    iget-short v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendMaximum:S

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getSendMaximumPacketSize()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendMaximumPacketSize:I

    return v0
.end method

.method public getSendTopicAliasMapping()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendTopicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    return-object v0
.end method

.method public getSendTopicAliasMaximum()I
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendTopicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;->getTopicAliasMaximum()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSessionExpiryInterval()J
    .locals 4

    .line 157
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sessionExpiryInterval:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getTopicAliasMaximum()I
    .locals 2

    .line 205
    iget-short v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->topicAliasMaximum:S

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    return-object v0
.end method

.method public bridge synthetic getTransportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfig;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public hasSimpleAuth()Z
    .locals 2

    .line 166
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasWillPublish()Z
    .locals 1

    .line 171
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCleanStart()Z
    .locals 1

    .line 148
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCleanStop()Z
    .locals 1

    .line 152
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProblemInformationRequested()Z
    .locals 1

    .line 210
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResponseInformationRequested()Z
    .locals 1

    .line 215
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRetainAvailable()Z
    .locals 1

    .line 244
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSharedSubscriptionAvailable()Z
    .locals 1

    .line 254
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWildcardSubscriptionAvailable()Z
    .locals 1

    .line 249
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSessionExpiryInterval(J)V
    .locals 1
    .param p1, "sessionExpiryInterval"    # J

    .line 161
    long-to-int v0, p1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sessionExpiryInterval:I

    .line 162
    return-void
.end method
