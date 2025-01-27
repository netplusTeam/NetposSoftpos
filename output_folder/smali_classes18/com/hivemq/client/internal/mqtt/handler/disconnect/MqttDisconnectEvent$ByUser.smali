.class Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;
.super Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;
.source "MqttDisconnectEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByUser"
.end annotation


# instance fields
.field private final flow:Lcom/hivemq/client/internal/rx/CompletableFlow;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V
    .locals 2
    .param p1, "disconnect"    # Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    .param p2, "flow"    # Lcom/hivemq/client/internal/rx/CompletableFlow;

    .line 82
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    const-string v1, "Client sent DISCONNECT"

    invoke-direct {v0, p1, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;Ljava/lang/String;)V

    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->USER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-direct {p0, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;-><init>(Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    .line 83
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;->flow:Lcom/hivemq/client/internal/rx/CompletableFlow;

    .line 84
    return-void
.end method


# virtual methods
.method public getFlow()Lcom/hivemq/client/internal/rx/CompletableFlow;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;->flow:Lcom/hivemq/client/internal/rx/CompletableFlow;

    return-object v0
.end method
