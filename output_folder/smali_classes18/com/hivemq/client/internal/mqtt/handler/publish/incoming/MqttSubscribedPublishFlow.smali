.class public Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;
.source "MqttSubscribedPublishFlow.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;",
        "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;",
        ">;"
    }
.end annotation


# instance fields
.field private final topicFilters:Lcom/hivemq/client/internal/util/collections/HandleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/HandleList<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Z)V
    .locals 1
    .param p2, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p3, "incomingQosHandler"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;
    .param p4, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;",
            "Z)V"
        }
    .end annotation

    .line 43
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;-><init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Z)V

    .line 44
    new-instance v0, Lcom/hivemq/client/internal/util/collections/HandleList;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/HandleList;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;->topicFilters:Lcom/hivemq/client/internal/util/collections/HandleList;

    .line 45
    return-void
.end method


# virtual methods
.method getTopicFilters()Lcom/hivemq/client/internal/util/collections/HandleList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/HandleList<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;->topicFilters:Lcom/hivemq/client/internal/util/collections/HandleList;

    return-object v0
.end method

.method public bridge synthetic onComplete()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->onComplete()V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->onNext(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V

    return-void
.end method

.method public onSuccess(Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;)V
    .locals 1
    .param p1, "subAck"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    .line 49
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;->subscriber:Lorg/reactivestreams/Subscriber;

    instance-of v0, v0, Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;->subscriber:Lorg/reactivestreams/Subscriber;

    check-cast v0, Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;

    invoke-interface {v0, p1}, Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;->onSingle(Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;->onSuccess(Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;)V

    return-void
.end method

.method public bridge synthetic request(J)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->request(J)V

    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->run()V

    return-void
.end method

.method runCancel()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    iget-object v0, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    invoke-virtual {v0, p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->cancel(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V

    .line 58
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->runCancel()V

    .line 59
    return-void
.end method
