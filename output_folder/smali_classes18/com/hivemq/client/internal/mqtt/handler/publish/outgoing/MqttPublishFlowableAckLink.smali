.class public Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink;
.super Lio/reactivex/Flowable;
.source "MqttPublishFlowableAckLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;,
        Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Flowable<",
        "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
        ">;"
    }
.end annotation


# instance fields
.field private final ackFlow:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;

.field private final source:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Flowable;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;)V
    .locals 0
    .param p2, "ackFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;",
            ")V"
        }
    .end annotation

    .line 41
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink;->source:Lio/reactivex/Flowable;

    .line 44
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink;->ackFlow:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;

    .line 45
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink;->source:Lio/reactivex/Flowable;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink;->ackFlow:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;

    invoke-direct {v1, p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 50
    return-void
.end method
