.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Queue;

.field public final synthetic f$1:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Queue;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode$$ExternalSyntheticLambda2;->f$0:Ljava/util/Queue;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode$$ExternalSyntheticLambda2;->f$1:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode$$ExternalSyntheticLambda2;->f$0:Ljava/util/Queue;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode$$ExternalSyntheticLambda2;->f$1:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-static {v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->lambda$getSubscriptions$1(Ljava/util/Queue;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V

    return-void
.end method
