.class public final Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;
.super Ljava/lang/Object;
.source "MqttDecoder_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;",
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

.field private final connectProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;"
        }
    .end annotation
.end field

.field private final decodersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p1, "decodersProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;>;"
    .local p2, "clientConfigProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/MqttClientConfig;>;"
    .local p3, "connectProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;->decodersProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;->clientConfigProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;->connectProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;"
        }
    .end annotation

    .line 38
    .local p0, "decodersProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;>;"
    .local p1, "clientConfigProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/MqttClientConfig;>;"
    .local p2, "connectProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;
    .locals 1
    .param p0, "decoders"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 43
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;-><init>(Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;->decodersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;->clientConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;->connectProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;->newInstance(Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder_Factory;->get()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;

    move-result-object v0

    return-object v0
.end method
