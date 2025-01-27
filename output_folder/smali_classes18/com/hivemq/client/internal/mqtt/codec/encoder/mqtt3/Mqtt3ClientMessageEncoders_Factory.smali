.class public final Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;
.super Ljava/lang/Object;
.source "Mqtt3ClientMessageEncoders_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final disconnectEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pingReqEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pubAckEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pubCompEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pubRecEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final pubRelEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final publishEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribeEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final unsubscribeEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "connectEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;>;"
    .local p2, "publishEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;>;"
    .local p3, "pubAckEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder;>;"
    .local p4, "pubRecEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder;>;"
    .local p5, "pubRelEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;>;"
    .local p6, "pubCompEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder;>;"
    .local p7, "subscribeEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder;>;"
    .local p8, "unsubscribeEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;>;"
    .local p9, "pingReqEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;>;"
    .local p10, "disconnectEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->connectEncoderProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->publishEncoderProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->pubAckEncoderProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->pubRecEncoderProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->pubRelEncoderProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->pubCompEncoderProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p7, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->subscribeEncoderProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p8, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->unsubscribeEncoderProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p9, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->pingReqEncoderProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p10, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->disconnectEncoderProvider:Ljavax/inject/Provider;

    .line 57
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;"
        }
    .end annotation

    .line 75
    .local p0, "connectEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;>;"
    .local p1, "publishEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;>;"
    .local p2, "pubAckEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder;>;"
    .local p3, "pubRecEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder;>;"
    .local p4, "pubRelEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;>;"
    .local p5, "pubCompEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder;>;"
    .local p6, "subscribeEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder;>;"
    .local p7, "unsubscribeEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;>;"
    .local p8, "pingReqEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;>;"
    .local p9, "disconnectEncoderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;>;"
    new-instance v11, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static newInstance(Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;)Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;
    .locals 12
    .param p0, "connectEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;
    .param p1, "publishEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;
    .param p2, "pubAckEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder;
    .param p3, "pubRecEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder;
    .param p4, "pubRelEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;
    .param p5, "pubCompEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder;
    .param p6, "subscribeEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder;
    .param p7, "unsubscribeEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;
    .param p8, "pingReqEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;
    .param p9, "disconnectEncoder"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;

    .line 84
    new-instance v11, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;-><init>(Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;)V

    return-object v11
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;
    .locals 11

    .line 61
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->connectEncoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->publishEncoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->pubAckEncoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->pubRecEncoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->pubRelEncoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->pubCompEncoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->subscribeEncoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->unsubscribeEncoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->pingReqEncoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->disconnectEncoderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;

    invoke-static/range {v1 .. v10}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->newInstance(Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;)Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders_Factory;->get()Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;

    move-result-object v0

    return-object v0
.end method
