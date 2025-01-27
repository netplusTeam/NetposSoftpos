.class Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;
.super Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
.source "Mqtt3AsyncClientView.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient$Mqtt3SubscribeAndCallbackBuilder$Start$Complete;
.implements Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient$Mqtt3SubscribeAndCallbackBuilder$Call$Ex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Mqtt3SubscribeViewAndCallbackBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<",
        "Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient$Mqtt3SubscribeAndCallbackBuilder$Start$Complete;",
        "Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient$Mqtt3SubscribeAndCallbackBuilder$Call$Ex;"
    }
.end annotation


# instance fields
.field private callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/Executor;

.field private manualAcknowledgement:Z

.field final synthetic this$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;
    .param p2, "x1"    # Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$1;

    .line 276
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addSubscription(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .locals 0

    .line 276
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscription(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addSubscription()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilder$Nested;
    .locals 1

    .line 276
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscription()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .locals 0

    .line 276
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .locals 0

    .line 276
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addSubscriptions([Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .locals 0

    .line 276
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscriptions([Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;

    return-object p1
.end method

.method public callback(Ljava/util/function/Consumer;)Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;"
        }
    .end annotation

    .line 291
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;>;"
    const-string v0, "Callback"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->callback:Ljava/util/function/Consumer;

    .line 292
    return-object p0
.end method

.method public bridge synthetic callback(Ljava/util/function/Consumer;)Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient$Mqtt3SubscribeAndCallbackBuilder$Call$Ex;
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->callback(Ljava/util/function/Consumer;)Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;

    move-result-object p1

    return-object p1
.end method

.method public executor(Ljava/util/concurrent/Executor;)Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 297
    const-string v0, "Executor"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->executor:Ljava/util/concurrent/Executor;

    .line 298
    return-object p0
.end method

.method public bridge synthetic executor(Ljava/util/concurrent/Executor;)Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient$Mqtt3SubscribeAndCallbackBuilder$Call$Ex;
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->executor(Ljava/util/concurrent/Executor;)Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;

    move-result-object p1

    return-object p1
.end method

.method public manualAcknowledgement(Z)Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;
    .locals 0
    .param p1, "manualAcknowledgement"    # Z

    .line 305
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->manualAcknowledgement:Z

    .line 306
    return-object p0
.end method

.method public bridge synthetic manualAcknowledgement(Z)Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient$Mqtt3SubscribeAndCallbackBuilder$Call$Ex;
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->manualAcknowledgement(Z)Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;
    .locals 0

    .line 276
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method protected bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->self()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;
    .locals 0

    .line 286
    return-object p0
.end method

.method public send()Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;

    move-result-object v0

    .line 312
    .local v0, "subscribe":Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->callback:Ljava/util/function/Consumer;

    if-nez v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->executor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "Executor must not be given if callback is null."

    invoke-static {v1, v3}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 314
    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->manualAcknowledgement:Z

    xor-int/2addr v1, v2

    const-string v2, "Manual acknowledgement must not be true if callback is null."

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->executor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_2

    .line 318
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->manualAcknowledgement:Z

    invoke-virtual {v2, v0, v1, v3}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;Ljava/util/function/Consumer;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    .line 320
    :cond_2
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;

    iget-boolean v4, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$Mqtt3SubscribeViewAndCallbackBuilder;->manualAcknowledgement:Z

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic topicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 276
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->topicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;
    .locals 0

    .line 276
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;
    .locals 0

    .line 276
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;

    return-object p1
.end method
