.class public Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;
.super Ljava/lang/Object;
.source "MqttSubscribedPublishFlowTree.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlows;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;,
        Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;,
        Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    }
.end annotation


# instance fields
.field private rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compact()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V
    .locals 3
    .param p1, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    .line 86
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;->getTopicFilters()Lcom/hivemq/client/internal/util/collections/HandleList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/HandleList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    .local v0, "h":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    move-result-object v1

    .line 88
    .local v1, "topicIterator":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 89
    .local v2, "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :goto_1
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->cancel(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v2

    goto :goto_1

    .line 86
    .end local v1    # "topicIterator":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    .end local v2    # "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    goto :goto_0

    .line 93
    .end local v0    # "h":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;>;"
    :cond_1
    return-void
.end method

.method public clear(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 106
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 107
    .local v0, "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :goto_0
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->clear(Ljava/lang/Throwable;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 111
    return-void
.end method

.method public findMatching(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V
    .locals 2
    .param p1, "publishWithFlows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 97
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    move-result-object v0

    .line 98
    .local v0, "topicIterator":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 99
    .local v1, "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :goto_0
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findMatching(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public getSubscriptions()Ljava/util/Map;
    .locals 5
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

    .line 116
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 117
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;>;>;"
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 119
    .local v1, "nodes":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;>;"
    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 120
    :goto_0
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;

    .line 122
    .local v2, "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;
    iget-object v3, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;->node:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    iget-object v4, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;->parentTopicLevels:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    invoke-virtual {v3, v4, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->getSubscriptions(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Ljava/util/Map;Ljava/util/Queue;)V

    .line 123
    .end local v2    # "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;
    goto :goto_0

    .line 125
    .end local v1    # "nodes":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;>;"
    :cond_0
    return-object v0
.end method

.method public suback(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)V
    .locals 2
    .param p1, "topicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .param p2, "subscriptionIdentifier"    # I
    .param p3, "error"    # Z

    .line 66
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    move-result-object v0

    .line 67
    .local v0, "topicIterator":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 68
    .local v1, "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :goto_0
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->suback(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v1

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->compact()V

    .line 72
    return-void
.end method

.method public subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;ILcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V
    .locals 5
    .param p1, "subscription"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
    .param p2, "subscriptionIdentifier"    # I
    .param p3, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    .line 51
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;ILcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V

    .line 52
    .local v0, "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    move-result-object v1

    .line 53
    .local v1, "topicIterator":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 54
    .local v2, "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    if-nez v2, :cond_0

    .line 55
    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    move-object v2, v3

    iput-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 57
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v2, v1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->subscribe(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v2

    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public unsubscribe(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)V
    .locals 2
    .param p1, "topicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 76
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    move-result-object v0

    .line 77
    .local v0, "topicIterator":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->rootNode:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 78
    .local v1, "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :goto_0
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->unsubscribe(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v1

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;->compact()V

    .line 82
    return-void
.end method
