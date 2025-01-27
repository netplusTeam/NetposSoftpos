.class public final Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;
.super Ljava/lang/Object;
.source "MqttCodecModule_ProvideMessageEncodersFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;",
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

.field private final mqtt3ClientMessageEncodersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;",
            ">;"
        }
    .end annotation
.end field

.field private final mqtt5ClientMessageEncodersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;",
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
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "clientConfigProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/MqttClientConfig;>;"
    .local p2, "mqtt5ClientMessageEncodersProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;>;"
    .local p3, "mqtt3ClientMessageEncodersProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;->clientConfigProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;->mqtt5ClientMessageEncodersProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;->mqtt3ClientMessageEncodersProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;"
        }
    .end annotation

    .line 47
    .local p0, "clientConfigProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/MqttClientConfig;>;"
    .local p1, "mqtt5ClientMessageEncodersProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;>;"
    .local p2, "mqtt3ClientMessageEncodersProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideMessageEncoders(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;
    .locals 2
    .param p0, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;"
        }
    .end annotation

    .line 53
    .local p1, "mqtt5ClientMessageEncoders":Ldagger/Lazy;, "Ldagger/Lazy<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;>;"
    .local p2, "mqtt3ClientMessageEncoders":Ldagger/Lazy;, "Ldagger/Lazy<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;>;"
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule;->provideMessageEncoders(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;->clientConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;->mqtt5ClientMessageEncodersProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;->mqtt3ClientMessageEncodersProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;->provideMessageEncoders(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule_ProvideMessageEncodersFactory;->get()Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

    move-result-object v0

    return-object v0
.end method
