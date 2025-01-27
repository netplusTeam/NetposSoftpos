.class public Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;
.source "MqttGlobalIncomingPublishFlow.java"


# instance fields
.field private final filter:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

.field private handle:Lcom/hivemq/client/internal/util/collections/HandleList$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;Z)V
    .locals 0
    .param p2, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p3, "incomingQosHandler"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;
    .param p4, "filter"    # Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .param p5, "manualAcknowledgement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;",
            "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
            "Z)V"
        }
    .end annotation

    .line 42
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;-><init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Z)V

    .line 43
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->filter:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    .line 44
    return-void
.end method


# virtual methods
.method getFilter()Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->filter:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    return-object v0
.end method

.method getHandle()Lcom/hivemq/client/internal/util/collections/HandleList$Handle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->handle:Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    return-object v0
.end method

.method public bridge synthetic onComplete()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->onComplete()V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->onNext(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V

    return-void
.end method

.method public bridge synthetic request(J)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->request(J)V

    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->run()V

    return-void
.end method

.method runCancel()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    iget-object v0, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    invoke-virtual {v0, p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->cancelGlobal(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V

    .line 49
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->runCancel()V

    .line 50
    return-void
.end method

.method setHandle(Lcom/hivemq/client/internal/util/collections/HandleList$Handle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "handle":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->handle:Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    .line 58
    return-void
.end method
