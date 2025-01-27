.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

.field public final synthetic f$1:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda0;->f$1:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda0;->f$1:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->lambda$onDisconnectEvent$7$com-hivemq-client-internal-mqtt-handler-auth-MqttConnectAuthHandler(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    return-void
.end method
