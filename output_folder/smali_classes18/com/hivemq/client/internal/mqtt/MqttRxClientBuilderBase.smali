.class public abstract Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
.super Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
.source "MqttRxClientBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$Choose;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<",
        "TB;>;>",
        "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private autoReconnect:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

.field private connectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private disconnectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

.field private identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

.field private transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 52
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;-><init>()V

    .line 44
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->REQUEST_CLIENT_IDENTIFIER_FROM_SERVER:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    .line 46
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 47
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    .line 52
    return-void
.end method

.method protected constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<",
            "*>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    .local p1, "clientBuilder":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<*>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;)V

    .line 44
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->REQUEST_CLIENT_IDENTIFIER_FROM_SERVER:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    .line 46
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 47
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    .line 56
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    .line 57
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 58
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    .line 59
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->autoReconnect:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->autoReconnect:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    .line 60
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->connectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->connectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 61
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->disconnectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->disconnectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 62
    return-void
.end method

.method private buildConnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;",
            ">;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->connectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    if-nez v0, :cond_0

    .line 187
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private buildDisconnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;",
            ">;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->disconnectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->autoReconnect:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    if-nez v0, :cond_0

    .line 195
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->of(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->autoReconnect:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    if-nez v1, :cond_2

    .line 200
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    .line 202
    :cond_2
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder()Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->autoReconnect:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->disconnectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 203
    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->addAll(Ljava/util/Collection;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 202
    return-object v0
.end method


# virtual methods
.method public addConnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .param p1, "connectedListener"    # Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;",
            ")TB;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    const-string v0, "Connected listener"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->connectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder()Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->connectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->connectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 165
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public addDisconnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .param p1, "disconnectedListener"    # Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;",
            ")TB;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    const-string v0, "Disconnected listener"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->disconnectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    if-nez v0, :cond_0

    .line 171
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder()Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->disconnectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->disconnectedListenersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 174
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public automaticReconnect(Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 2
    .param p1, "autoReconnect"    # Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;",
            ")TB;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    const-class v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    .line 151
    const-string v1, "Automatic reconnect"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplementedOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->autoReconnect:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    .line 152
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public automaticReconnect()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->autoReconnect:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public automaticReconnectWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    sget-object v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->autoReconnect:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    .line 146
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method protected buildClientConfig(Lcom/hivemq/client/mqtt/MqttVersion;Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;)Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .locals 10
    .param p1, "mqttVersion"    # Lcom/hivemq/client/mqtt/MqttVersion;
    .param p2, "advancedConfig"    # Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;
    .param p3, "connectDefaults"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    .line 212
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    new-instance v9, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->buildTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v3

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    .line 213
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->buildConnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v7

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->buildDisconnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v8

    move-object v0, v9

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;-><init>(Lcom/hivemq/client/mqtt/MqttVersion;Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/util/collections/ImmutableList;)V

    .line 212
    return-object v9
.end method

.method buildTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .locals 1

    .line 179
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    if-nez v0, :cond_0

    .line 180
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->buildTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    return-object v0
.end method

.method public executorConfig()Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public executorConfig(Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 2
    .param p1, "executorConfig"    # Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;",
            ")TB;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    const-class v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    .line 136
    const-string v1, "Executor config"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    .line 137
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public identifier(Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .param p1, "identifier"    # Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;",
            ")TB;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->clientIdentifier(Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    .line 73
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public identifier(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->identifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    .line 68
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1

    .line 41
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method protected abstract self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public bridge synthetic serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 0

    .line 41
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")TB;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 79
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    return-object v0
.end method

.method public bridge synthetic serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 0

    .line 41
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 0

    .line 41
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 85
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    return-object v0
.end method

.method public serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")TB;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 91
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    return-object v0
.end method

.method public bridge synthetic serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 0

    .line 41
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 97
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    return-object v0
.end method

.method public bridge synthetic sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 0

    .line 41
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .param p1, "sslConfig"    # Lcom/hivemq/client/mqtt/MqttClientSslConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttClientSslConfig;",
            ")TB;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    return-object v0
.end method

.method public bridge synthetic sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1

    .line 41
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 103
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    return-object v0
.end method

.method public transportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 2
    .param p1, "transportConfig"    # Lcom/hivemq/client/mqtt/MqttClientTransportConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttClientTransportConfig;",
            ")TB;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    const-class v0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 125
    const-string v1, "Transport config"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 126
    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->set(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V

    .line 127
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->self()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 0

    .line 41
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .param p1, "webSocketConfig"    # Lcom/hivemq/client/mqtt/MqttWebSocketConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttWebSocketConfig;",
            ")TB;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 120
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    return-object v0
.end method

.method public bridge synthetic webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1

    .line 41
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;, "Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase<TB;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 114
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    return-object v0
.end method
