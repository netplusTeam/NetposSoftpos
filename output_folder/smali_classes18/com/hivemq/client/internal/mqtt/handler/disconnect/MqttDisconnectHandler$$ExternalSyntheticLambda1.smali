.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

.field public final synthetic f$1:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

.field public final synthetic f$2:Lcom/hivemq/client/internal/rx/CompletableFlow;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda1;->f$0:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda1;->f$1:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda1;->f$2:Lcom/hivemq/client/internal/rx/CompletableFlow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda1;->f$0:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda1;->f$1:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda1;->f$2:Lcom/hivemq/client/internal/rx/CompletableFlow;

    invoke-virtual {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->lambda$disconnect$0$com-hivemq-client-internal-mqtt-handler-disconnect-MqttDisconnectHandler(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V

    return-void
.end method
