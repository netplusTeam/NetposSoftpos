.class public Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;
.super Ljava/lang/Object;
.source "Mqtt3ClientReconnectorView.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientReconnector;


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)V
    .locals 0
    .param p1, "delegate"    # Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 44
    return-void
.end method


# virtual methods
.method public connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;
    .locals 2
    .param p1, "connect"    # Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;

    .line 124
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 125
    return-object p0
.end method

.method public bridge synthetic connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientReconnector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method

.method public connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Nested<",
            "Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Nested;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    move-result-object v1

    new-instance v2, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic connectWith()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder$Nested;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->connectWith()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 95
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 96
    return-object p0
.end method

.method public bridge synthetic delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientReconnector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method

.method public getAttempts()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getAttempts()I

    move-result v0

    return v0
.end method

.method public getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->of(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConnect()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 101
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfig;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public isReconnect()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isReconnect()Z

    move-result v0

    return v0
.end method

.method public isRepublishIfSessionExpired()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isRepublishIfSessionExpired()Z

    move-result v0

    return v0
.end method

.method public isResubscribeIfSessionExpired()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isResubscribeIfSessionExpired()Z

    move-result v0

    return v0
.end method

.method public reconnect(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;
    .locals 1
    .param p1, "reconnect"    # Z

    .line 48
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->reconnect(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 49
    return-object p0
.end method

.method public bridge synthetic reconnect(Z)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->reconnect(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reconnect(Z)Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientReconnector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->reconnect(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method

.method public reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;"
        }
    .end annotation

    .line 57
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "callback":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 58
    return-object p0
.end method

.method public bridge synthetic reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientReconnector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method

.method public republishIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;
    .locals 1
    .param p1, "republish"    # Z

    .line 79
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->republishIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 80
    return-object p0
.end method

.method public bridge synthetic republishIfSessionExpired(Z)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->republishIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic republishIfSessionExpired(Z)Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientReconnector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->republishIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method

.method public resubscribeIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;
    .locals 1
    .param p1, "resubscribe"    # Z

    .line 68
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->resubscribeIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 69
    return-object p0
.end method

.method public bridge synthetic resubscribeIfSessionExpired(Z)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->resubscribeIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resubscribeIfSessionExpired(Z)Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientReconnector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->resubscribeIfSessionExpired(Z)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method

.method public transportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<",
            "Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v1

    new-instance v2, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;
    .locals 1
    .param p1, "transportConfig"    # Lcom/hivemq/client/mqtt/MqttClientTransportConfig;

    .line 108
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 109
    return-object p0
.end method

.method public bridge synthetic transportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder$Nested;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->transportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientReconnector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method
