.class public abstract Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule;
.super Ljava/lang/Object;
.source "MqttCodecModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideMessageDecoders(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;
    .locals 2
    .param p0, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ConnectionScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;"
        }
    .end annotation

    .line 45
    .local p1, "mqtt5ClientMessageDecoders":Ldagger/Lazy;, "Ldagger/Lazy<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;>;"
    .local p2, "mqtt3ClientMessageDecoders":Ldagger/Lazy;, "Ldagger/Lazy<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;>;"
    sget-object v0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule$1;->$SwitchMap$com$hivemq$client$mqtt$MqttVersion:[I

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/MqttVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 49
    :pswitch_0
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;

    return-object v0

    .line 47
    :pswitch_1
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static provideMessageEncoders(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;
    .locals 2
    .param p0, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ConnectionScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

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

    .line 62
    .local p1, "mqtt5ClientMessageEncoders":Ldagger/Lazy;, "Ldagger/Lazy<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ClientMessageEncoders;>;"
    .local p2, "mqtt3ClientMessageEncoders":Ldagger/Lazy;, "Ldagger/Lazy<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;>;"
    sget-object v0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule$1;->$SwitchMap$com$hivemq$client$mqtt$MqttVersion:[I

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/MqttVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 66
    :pswitch_0
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

    return-object v0

    .line 64
    :pswitch_1
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
