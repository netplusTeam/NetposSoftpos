.class public final Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;
.super Ljava/lang/Object;
.source "MqttConnectHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final connAckFlowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final connectProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;"
        }
    .end annotation
.end field

.field private final decoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/MqttSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/MqttSession;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "connectProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;>;"
    .local p2, "connAckFlowProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;>;"
    .local p3, "clientConfigProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/MqttClientConfig;>;"
    .local p4, "sessionProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/handler/MqttSession;>;"
    .local p5, "decoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;->connectProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;->connAckFlowProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;->clientConfigProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;->sessionProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;->decoderProvider:Ljavax/inject/Provider;

    .line 39
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/MqttSession;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;"
        }
    .end annotation

    .line 50
    .local p0, "connectProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;>;"
    .local p1, "connAckFlowProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;>;"
    .local p2, "clientConfigProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/MqttClientConfig;>;"
    .local p3, "sessionProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/handler/MqttSession;>;"
    .local p4, "decoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;>;"
    new-instance v6, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;)Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;
    .locals 7
    .param p0, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p1, "connAckFlow"    # Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
    .param p2, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p3, "session"    # Lcom/hivemq/client/internal/mqtt/handler/MqttSession;
    .param p4, "decoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;

    .line 55
    new-instance v6, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;->connectProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;->connAckFlowProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;->clientConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;->sessionProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;->decoderProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;->newInstance(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;)Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler_Factory;->get()Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;

    move-result-object v0

    return-object v0
.end method
