.class public Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;
.super Ljava/lang/Object;
.source "MqttIncomingPublishFlows.java"


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ClientScope;
.end annotation


# instance fields
.field private final globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/hivemq/client/internal/util/collections/HandleList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    .line 53
    invoke-static {}, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->values()[Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/hivemq/client/internal/util/collections/HandleList;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    .line 54
    return-void
.end method

.method private static add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/HandleList;)V
    .locals 2
    .param p0, "publishWithFlows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;",
            "Lcom/hivemq/client/internal/util/collections/HandleList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "globalFlows":Lcom/hivemq/client/internal/util/collections/HandleList;, "Lcom/hivemq/client/internal/util/collections/HandleList<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;>;"
    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/HandleList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    .local v0, "h":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    invoke-virtual {p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;)Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    .line 138
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    goto :goto_0

    .line 142
    .end local v0    # "h":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method cancel(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V
    .locals 1
    .param p1, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    .line 95
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    invoke-interface {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;->cancel(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V

    .line 96
    return-void
.end method

.method cancelGlobal(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V
    .locals 5
    .param p1, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;

    .line 109
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->getFilter()Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->ordinal()I

    move-result v0

    .line 110
    .local v0, "filter":I
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    aget-object v1, v1, v0

    .line 111
    .local v1, "globalFlowsForFilter":Lcom/hivemq/client/internal/util/collections/HandleList;, "Lcom/hivemq/client/internal/util/collections/HandleList<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;>;"
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->getHandle()Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    move-result-object v2

    .line 112
    .local v2, "handle":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/util/collections/HandleList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 114
    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/HandleList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 118
    :cond_0
    return-void
.end method

.method public clear(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 145
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    invoke-interface {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;->clear(Ljava/lang/Throwable;)V

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 147
    aget-object v1, v1, v0

    .line 148
    .local v1, "globalFlow":Lcom/hivemq/client/internal/util/collections/HandleList;, "Lcom/hivemq/client/internal/util/collections/HandleList<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;>;"
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/HandleList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    .local v2, "h":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;>;"
    :goto_1
    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v2}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;

    invoke-virtual {v3, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->onError(Ljava/lang/Throwable;)V

    .line 149
    invoke-virtual {v2}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    goto :goto_1

    .line 153
    .end local v2    # "h":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;>;"
    :cond_0
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 146
    .end local v1    # "globalFlow":Lcom/hivemq/client/internal/util/collections/HandleList;, "Lcom/hivemq/client/internal/util/collections/HandleList<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method findMatching(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V
    .locals 2
    .param p1, "publishWithFlows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 121
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    invoke-interface {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;->findMatching(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    .line 122
    iget-boolean v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->subscriptionFound:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    sget-object v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->SUBSCRIBED:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/HandleList;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    sget-object v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->UNSOLICITED:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/HandleList;)V

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    sget-object v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->ALL:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/HandleList;)V

    .line 128
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    sget-object v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->REMAINING:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/HandleList;)V

    .line 131
    :cond_1
    return-void
.end method

.method public getSubscriptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;",
            ">;>;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;->getSubscriptions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public subAck(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/util/collections/ImmutableList;)V
    .locals 8
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .param p2, "subscriptionIdentifier"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            "I",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p3, "reasonCodes":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;>;"
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 74
    .local v0, "subscriptions":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;>;"
    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v1

    invoke-interface {p3}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 75
    .local v1, "countNotMatching":Z
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 76
    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    invoke-interface {v0, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v6

    if-nez v1, :cond_2

    .line 77
    invoke-interface {p3, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    invoke-virtual {v7}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->isError()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move v7, v3

    goto :goto_3

    :cond_2
    :goto_2
    move v7, v4

    .line 76
    :goto_3
    invoke-interface {v5, v6, p2, v7}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;->suback(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V
    .locals 4
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .param p2, "subscriptionIdentifier"    # I
    .param p3, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    .line 61
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 63
    .local v0, "subscriptions":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    invoke-interface {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    invoke-interface {v2, v3, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;->subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;ILcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public subscribeGlobal(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V
    .locals 3
    .param p1, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;

    .line 99
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->getFilter()Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->ordinal()I

    move-result v0

    .line 100
    .local v0, "filter":I
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    aget-object v1, v1, v0

    .line 101
    .local v1, "globalFlowsForFilter":Lcom/hivemq/client/internal/util/collections/HandleList;, "Lcom/hivemq/client/internal/util/collections/HandleList<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;>;"
    if-nez v1, :cond_0

    .line 102
    new-instance v2, Lcom/hivemq/client/internal/util/collections/HandleList;

    invoke-direct {v2}, Lcom/hivemq/client/internal/util/collections/HandleList;-><init>()V

    move-object v1, v2

    .line 103
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->globalFlows:[Lcom/hivemq/client/internal/util/collections/HandleList;

    aput-object v1, v2, v0

    .line 105
    :cond_0
    invoke-virtual {v1, p1}, Lcom/hivemq/client/internal/util/collections/HandleList;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->setHandle(Lcom/hivemq/client/internal/util/collections/HandleList$Handle;)V

    .line 106
    return-void
.end method

.method public unsubscribe(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;Lcom/hivemq/client/internal/util/collections/ImmutableList;)V
    .locals 5
    .param p1, "unsubscribe"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p2, "reasonCodes":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;>;"
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->getTopicFilters()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 86
    .local v0, "topicFilters":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;>;"
    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/mqtt3/Mqtt3UnsubAckView;->REASON_CODES_ALL_SUCCESS:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 87
    .local v1, "allSuccess":Z
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 88
    if-nez v1, :cond_1

    invoke-interface {p2, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    invoke-virtual {v3}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->isError()Z

    move-result v3

    if-nez v3, :cond_2

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribedFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;

    invoke-interface {v0, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-interface {v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;->unsubscribe(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)V

    .line 87
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 92
    .end local v2    # "i":I
    :cond_3
    return-void
.end method
