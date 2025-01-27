.class public final Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer_Factory;
.super Ljava/lang/Object;
.source "MqttWebSocketInitializer_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mqttWebSocketCodecProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p1, "mqttWebSocketCodecProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer_Factory;->mqttWebSocketCodecProvider:Ljavax/inject/Provider;

    .line 20
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer_Factory;"
        }
    .end annotation

    .line 29
    .local p0, "mqttWebSocketCodecProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer_Factory;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;)Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;
    .locals 1
    .param p0, "mqttWebSocketCodec"    # Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;

    .line 33
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;-><init>(Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer_Factory;->mqttWebSocketCodecProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer_Factory;->newInstance(Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;)Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer_Factory;->get()Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;

    move-result-object v0

    return-object v0
.end method
