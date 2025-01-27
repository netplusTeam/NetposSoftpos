.class Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
.super Lcom/hivemq/client/internal/util/collections/NodeList$Node;
.source "MqttSubscribedPublishFlowTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopicTreeEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/util/collections/NodeList$Node<",
        "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
        ">;"
    }
.end annotation


# instance fields
.field acknowledged:Z

.field flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

.field handle:Lcom/hivemq/client/internal/util/collections/HandleList$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;",
            ">;"
        }
    .end annotation
.end field

.field final subscriptionIdentifier:I

.field final subscriptionOptions:B

.field final topicFilterPrefix:[B


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;ILcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V
    .locals 2
    .param p1, "subscription"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
    .param p2, "subscriptionIdentifier"    # I
    .param p3, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    .line 146
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;-><init>()V

    .line 148
    iput p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionIdentifier:I

    .line 149
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->encodeSubscriptionOptions()B

    move-result v0

    iput-byte v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionOptions:B

    .line 150
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v0

    .line 151
    .local v0, "topicFilter":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getPrefix()[B

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->topicFilterPrefix:[B

    .line 152
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    .line 153
    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;->getTopicFilters()Lcom/hivemq/client/internal/util/collections/HandleList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/HandleList;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->handle:Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    .line 154
    return-void
.end method
