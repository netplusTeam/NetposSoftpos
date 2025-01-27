.class public Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;
.super Ljava/lang/Object;
.source "MqttDisconnectEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;
    }
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "source"    # Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->cause:Ljava/lang/Throwable;

    .line 47
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    .line 48
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method getDisconnect()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->cause:Ljava/lang/Throwable;

    instance-of v1, v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;->getMqttMessage()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;

    move-result-object v0

    .line 70
    .local v0, "mqttMessage":Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;
    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    if-eqz v1, :cond_0

    .line 71
    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    return-object v1

    .line 74
    .end local v0    # "mqttMessage":Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->source:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    return-object v0
.end method
