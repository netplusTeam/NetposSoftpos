.class public Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;
.super Ljava/lang/Object;
.source "Mqtt3ClientConfigView.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 0
    .param p1, "delegate"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 52
    return-void
.end method

.method private getRawSimpleAuth()Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getConnectDefaults()Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v0

    .line 86
    .local v0, "simpleAuth":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->of(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;)Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getRawWillPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getConnectDefaults()Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    .line 96
    .local v0, "willPublish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->of(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public getAutomaticReconnect()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAutomaticReconnect()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getClientIdentifier()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getClientIdentifier()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getConnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionConfig()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConnectionConfig;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawConnectionConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectedListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getDisconnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorConfig()Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getExecutorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleAuth()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->getRawSimpleAuth()Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/hivemq/client/mqtt/MqttClientState;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    return-object v0
.end method

.method public getTransportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfig;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->delegate:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public getWillPublish()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;->getRawWillPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
