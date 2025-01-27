.class public final Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;
.super Ljava/lang/Object;
.source "Mqtt3ClientMessageDecoders_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;",
        ">;"
    }
.end annotation


# instance fields
.field private final connAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pingRespDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pubAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pubCompDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pubRecDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pubRelDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final publishDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final subAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final unsubAckDecoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "connAckDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;>;"
    .local p2, "publishDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;>;"
    .local p3, "pubAckDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;>;"
    .local p4, "pubRecDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;>;"
    .local p5, "pubRelDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;>;"
    .local p6, "pubCompDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;>;"
    .local p7, "subAckDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;>;"
    .local p8, "unsubAckDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;>;"
    .local p9, "pingRespDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->connAckDecoderProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->publishDecoderProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->pubAckDecoderProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->pubRecDecoderProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->pubRelDecoderProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->pubCompDecoderProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p7, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->subAckDecoderProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p8, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->unsubAckDecoderProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p9, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->pingRespDecoderProvider:Ljavax/inject/Provider;

    .line 53
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;"
        }
    .end annotation

    .line 70
    .local p0, "connAckDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;>;"
    .local p1, "publishDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;>;"
    .local p2, "pubAckDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;>;"
    .local p3, "pubRecDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;>;"
    .local p4, "pubRelDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;>;"
    .local p5, "pubCompDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;>;"
    .local p6, "subAckDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;>;"
    .local p7, "unsubAckDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;>;"
    .local p8, "pingRespDecoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;>;"
    new-instance v10, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static newInstance(Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;)Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;
    .locals 11
    .param p0, "connAckDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;
    .param p1, "publishDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;
    .param p2, "pubAckDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;
    .param p3, "pubRecDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;
    .param p4, "pubRelDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;
    .param p5, "pubCompDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;
    .param p6, "subAckDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;
    .param p7, "unsubAckDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;
    .param p8, "pingRespDecoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;

    .line 78
    new-instance v10, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;-><init>(Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;
    .locals 10

    .line 57
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->connAckDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->publishDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->pubAckDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->pubRecDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->pubRelDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->pubCompDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->subAckDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->unsubAckDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->pingRespDecoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;

    invoke-static/range {v1 .. v9}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->newInstance(Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;)Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders_Factory;->get()Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;

    move-result-object v0

    return-object v0
.end method
