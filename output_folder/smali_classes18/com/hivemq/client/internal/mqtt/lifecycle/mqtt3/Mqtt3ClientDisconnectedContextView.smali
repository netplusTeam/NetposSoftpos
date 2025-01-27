.class public Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;
.super Ljava/lang/Object;
.source "Mqtt3ClientDisconnectedContextView.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientDisconnectedContext;


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

.field private final reconnector:Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

.field private final source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;)V
    .locals 0
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;
    .param p2, "source"    # Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "reconnector"    # Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    .line 55
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    .line 56
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->cause:Ljava/lang/Throwable;

    .line 57
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->reconnector:Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    .line 58
    return-void
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;
    .locals 4
    .param p0, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p1, "source"    # Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "reconnector"    # Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    .line 39
    new-instance v0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    .line 40
    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    new-instance v3, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    invoke-direct {v3, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)V

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getClientConfig()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->clientConfig:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    return-object v0
.end method

.method public bridge synthetic getClientConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->getClientConfig()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClientConfig()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->getClientConfig()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3ClientConfigView;

    move-result-object v0

    return-object v0
.end method

.method public getReconnector()Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->reconnector:Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    return-object v0
.end method

.method public bridge synthetic getReconnector()Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->getReconnector()Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReconnector()Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientReconnector;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->getReconnector()Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientDisconnectedContextView;->source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    return-object v0
.end method
