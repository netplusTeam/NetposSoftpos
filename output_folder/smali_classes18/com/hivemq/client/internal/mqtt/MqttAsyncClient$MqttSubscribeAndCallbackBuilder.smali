.class Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;
.super Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
.source "MqttAsyncClient.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder$Start$Complete;
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder$Call$Ex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MqttSubscribeAndCallbackBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<",
        "Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder$Start$Complete;",
        "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder$Call$Ex;"
    }
.end annotation


# instance fields
.field private callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/Executor;

.field private manualAcknowledgement:Z

.field final synthetic this$0:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;
    .param p2, "x1"    # Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$1;

    .line 313
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addSubscription(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 313
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscription(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic addSubscription()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilder$Nested;
    .locals 1

    .line 313
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscription()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 313
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 313
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic addSubscriptions([Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 313
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscriptions([Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public callback(Ljava/util/function/Consumer;)Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;"
        }
    .end annotation

    .line 327
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    const-string v0, "Callback"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->callback:Ljava/util/function/Consumer;

    .line 328
    return-object p0
.end method

.method public bridge synthetic callback(Ljava/util/function/Consumer;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder$Call$Ex;
    .locals 0

    .line 313
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->callback(Ljava/util/function/Consumer;)Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;

    move-result-object p1

    return-object p1
.end method

.method public executor(Ljava/util/concurrent/Executor;)Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 333
    const-string v0, "Executor"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->executor:Ljava/util/concurrent/Executor;

    .line 334
    return-object p0
.end method

.method public bridge synthetic executor(Ljava/util/concurrent/Executor;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder$Call$Ex;
    .locals 0

    .line 313
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->executor(Ljava/util/concurrent/Executor;)Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;

    move-result-object p1

    return-object p1
.end method

.method public manualAcknowledgement(Z)Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;
    .locals 0
    .param p1, "manualAcknowledgement"    # Z

    .line 339
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->manualAcknowledgement:Z

    .line 340
    return-object p0
.end method

.method public bridge synthetic manualAcknowledgement(Z)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient$Mqtt5SubscribeAndCallbackBuilder$Call$Ex;
    .locals 0

    .line 313
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->manualAcknowledgement(Z)Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic noLocal(Z)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 313
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->noLocal(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 313
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retainAsPublished(Z)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 313
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->retainAsPublished(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 313
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method protected self()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;
    .locals 0

    .line 322
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;

    move-result-object v0

    return-object v0
.end method

.method public send()Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    .line 346
    .local v0, "subscribe":Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->callback:Ljava/util/function/Consumer;

    if-nez v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->executor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "Executor must not be given if callback is null."

    invoke-static {v1, v3}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 348
    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->manualAcknowledgement:Z

    xor-int/2addr v1, v2

    const-string v2, "Manual acknowledgement must not be true if callback is null."

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    .line 351
    :cond_1
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->executor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_2

    .line 352
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->manualAcknowledgement:Z

    invoke-virtual {v2, v0, v1, v3}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    .line 354
    :cond_2
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;

    iget-boolean v4, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$MqttSubscribeAndCallbackBuilder;->manualAcknowledgement:Z

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic topicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 313
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->topicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 313
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 313
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 313
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 313
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method
