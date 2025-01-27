.class Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
.super Ljava/lang/Object;
.source "MqttSubscribedPublishFlowTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopicTreeNode"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/Index$Spec<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entries:Lcom/hivemq/client/internal/util/collections/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lcom/hivemq/client/internal/util/collections/Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/Index<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

.field private singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

.field private topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 157
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree;

    .line 159
    new-instance v0, Lcom/hivemq/client/internal/util/collections/Index$Spec;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/util/collections/Index$Spec;-><init>(Ljava/util/function/Function;I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V
    .locals 0
    .param p1, "parent"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .param p2, "topicLevel"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 171
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    .line 172
    return-void
.end method

.method private static add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/NodeList;)V
    .locals 2
    .param p0, "flows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;",
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;)V"
        }
    .end annotation

    .line 368
    .local p1, "entries":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;>;"
    if-eqz p1, :cond_1

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->subscriptionFound:Z

    .line 370
    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    .local v0, "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    :goto_0
    if-eqz v0, :cond_1

    .line 371
    iget-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    invoke-virtual {p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;)Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    .line 370
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    goto :goto_0

    .line 376
    .end local v0    # "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    :cond_1
    return-void
.end method

.method private static cancel(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V
    .locals 2
    .param p1, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;",
            ")V"
        }
    .end annotation

    .line 320
    .local p0, "entries":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;>;"
    if-eqz p0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    .local v0, "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    :goto_0
    if-eqz v0, :cond_1

    .line 322
    iget-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    if-ne v1, p1, :cond_0

    .line 323
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    .line 324
    iput-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->handle:Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    .line 325
    goto :goto_1

    .line 321
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    goto :goto_0

    .line 329
    .end local v0    # "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    :cond_1
    :goto_1
    return-void
.end method

.method private static clear(Lcom/hivemq/client/internal/util/collections/NodeList;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 400
    .local p0, "entries":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    .local v0, "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    :goto_0
    if-eqz v0, :cond_1

    .line 401
    iget-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->acknowledged:Z

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    invoke-virtual {v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;->onError(Ljava/lang/Throwable;)V

    .line 400
    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    goto :goto_0

    .line 405
    .end local v0    # "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    :cond_1
    return-void
.end method

.method private compact()V
    .locals 6

    .line 482
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-nez v1, :cond_4

    .line 483
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 484
    .local v4, "hasSingleLevel":Z
    :goto_0
    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-eqz v5, :cond_1

    move v2, v3

    .line 485
    .local v2, "hasNext":Z
    :cond_1
    if-nez v4, :cond_2

    if-nez v2, :cond_2

    .line 486
    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->removeNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V

    .line 487
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->compact()V

    goto :goto_1

    .line 488
    :cond_2
    if-eqz v4, :cond_3

    if-nez v2, :cond_3

    .line 489
    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->fuse(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V

    goto :goto_1

    .line 490
    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {v5}, Lcom/hivemq/client/internal/util/collections/Index;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 491
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/Index;->any()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->fuse(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V

    .line 494
    .end local v2    # "hasNext":Z
    .end local v4    # "hasSingleLevel":Z
    :cond_4
    :goto_1
    return-void
.end method

.method private static findNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 3
    .param p0, "node"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .param p1, "topicIterator"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    .line 468
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 469
    return-object v0

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    .line 472
    .local v1, "topicLevel":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    instance-of v2, v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    if-eqz v2, :cond_2

    .line 473
    move-object v2, v1

    check-cast v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    invoke-virtual {p1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->forwardIfMatch(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    return-object p0

    .line 476
    :cond_1
    return-object v0

    .line 478
    :cond_2
    return-object p0
.end method

.method private fuse(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V
    .locals 4
    .param p1, "child"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 497
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-eqz v0, :cond_5

    .line 498
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    if-eqz v0, :cond_4

    .line 499
    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-ne v1, p0, :cond_3

    .line 500
    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    if-eqz v1, :cond_2

    .line 501
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 502
    .local v2, "parent":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->concat(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    move-result-object v0

    .line 503
    .local v0, "fusedTopicLevel":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;
    iput-object v2, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 504
    iput-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    .line 505
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->isSingleLevelWildcard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    iput-object p1, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    goto :goto_0

    .line 508
    :cond_0
    iget-object v1, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-eqz v1, :cond_1

    .line 509
    invoke-virtual {v1, p1}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :goto_0
    return-void

    .line 508
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v3, "this must be in parent.next -> parent.next != null"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 500
    .end local v0    # "fusedTopicLevel":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;
    .end local v2    # "parent":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "child.topicLevel = null -> child = root node, root node has no parent"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 499
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "this must only be fused with its child"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 498
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "topicLevel = null -> this = root node, root node must not be fused"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 497
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "parent = null -> this = root node, root node must not be fused"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private getNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 8
    .param p1, "node"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .param p2, "topicIterator"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    .line 410
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    .line 411
    .local v0, "topicLevel":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    if-eqz v1, :cond_3

    .line 412
    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    .line 413
    .local v1, "topicLevels":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;
    invoke-virtual {p2, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->forwardWhileEqual(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;)I

    move-result v2

    .line 414
    .local v2, "branchIndex":I
    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->before(I)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v3

    .line 415
    .local v3, "topicLevelBefore":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    if-eq v3, v1, :cond_3

    .line 416
    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->after(I)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v4

    .line 417
    .local v4, "topicLevelAfter":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    new-instance v5, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-direct {v5, p0, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    .line 418
    .local v5, "nodeBefore":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 419
    iput-object v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    goto :goto_0

    .line 421
    :cond_0
    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-eqz v6, :cond_2

    .line 422
    invoke-virtual {v6, v5}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :goto_0
    iput-object v5, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 425
    iput-object v4, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    .line 426
    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 427
    iput-object p1, v5, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    goto :goto_1

    .line 429
    :cond_1
    new-instance v6, Lcom/hivemq/client/internal/util/collections/Index;

    sget-object v7, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    invoke-direct {v6, v7}, Lcom/hivemq/client/internal/util/collections/Index;-><init>(Lcom/hivemq/client/internal/util/collections/Index$Spec;)V

    iput-object v6, v5, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    .line 430
    invoke-virtual {v6, p1}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :goto_1
    return-object v5

    .line 421
    :cond_2
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "node must be in next -> next != null"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 435
    .end local v1    # "topicLevels":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;
    .end local v2    # "branchIndex":I
    .end local v3    # "topicLevelBefore":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .end local v4    # "topicLevelAfter":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .end local v5    # "nodeBefore":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :cond_3
    return-object p1
.end method

.method private static getSubscriptions(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;ZLjava/util/Map;)V
    .locals 16
    .param p1, "topicLevels"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .param p2, "multiLevelWildcard"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;",
            ">;>;)V"
        }
    .end annotation

    .line 558
    .local p0, "entries":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;>;>;"
    const/4 v0, 0x0

    .line 560
    .local v0, "exactFound":Z
    invoke-virtual/range {p0 .. p0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getLast()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    .local v1, "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    :goto_0
    if-eqz v1, :cond_6

    .line 561
    iget-boolean v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->acknowledged:Z

    if-eqz v2, :cond_5

    .line 562
    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->topicFilterPrefix:[B

    if-nez v2, :cond_1

    .line 563
    if-eqz v0, :cond_0

    .line 565
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v8, p3

    goto/16 :goto_1

    .line 567
    :cond_0
    const/4 v0, 0x1

    .line 569
    :cond_1
    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->topicFilterPrefix:[B

    .line 570
    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->toFilter([BLcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Z)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v2

    .line 571
    .local v2, "topicFilter":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    if-eqz v2, :cond_4

    .line 572
    iget-byte v5, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionOptions:B

    invoke-static {v5}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->decodeQos(B)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v11

    .line 573
    .local v11, "qos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    if-eqz v11, :cond_3

    .line 574
    iget-byte v5, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionOptions:B

    invoke-static {v5}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->decodeNoLocal(B)Z

    move-result v12

    .line 575
    .local v12, "noLocal":Z
    iget-byte v5, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionOptions:B

    .line 576
    invoke-static {v5}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->decodeRetainHandling(B)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    move-result-object v13

    .line 577
    .local v13, "retainHandling":Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;
    if-eqz v13, :cond_2

    .line 578
    iget-byte v5, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionOptions:B

    .line 579
    invoke-static {v5}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->decodeRetainAsPublished(B)Z

    move-result v14

    .line 580
    .local v14, "retainAsPublished":Z
    new-instance v15, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    move-object v5, v15

    move-object v6, v2

    move-object v7, v11

    move v8, v12

    move-object v9, v13

    move v10, v14

    invoke-direct/range {v5 .. v10}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZLcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;Z)V

    .line 582
    .local v5, "subscription":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
    iget v6, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionIdentifier:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode$$ExternalSyntheticLambda1;-><init>()V

    move-object/from16 v8, p3

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 577
    .end local v5    # "subscription":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
    .end local v14    # "retainAsPublished":Z
    :cond_2
    move-object/from16 v8, p3

    new-instance v5, Ljava/lang/AssertionError;

    const-string/jumbo v6, "reconstructed retain handling must be valid"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 573
    .end local v12    # "noLocal":Z
    .end local v13    # "retainHandling":Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;
    :cond_3
    move-object/from16 v8, p3

    new-instance v5, Ljava/lang/AssertionError;

    const-string/jumbo v6, "reconstructed qos must be valid"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 571
    .end local v11    # "qos":Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    :cond_4
    move-object/from16 v8, p3

    new-instance v5, Ljava/lang/AssertionError;

    const-string/jumbo v6, "reconstructed topic filter must be valid"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 561
    .end local v2    # "topicFilter":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    :cond_5
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v8, p3

    .line 560
    :goto_1
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->getPrev()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    goto/16 :goto_0

    :cond_6
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v8, p3

    .line 585
    .end local v1    # "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    return-void
.end method

.method static synthetic lambda$getSubscriptions$1(Ljava/util/Queue;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V
    .locals 1
    .param p0, "nodes"    # Ljava/util/Queue;
    .param p1, "topicLevels"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .param p2, "node"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 544
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;

    invoke-direct {v0, p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getSubscriptions$2(Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .param p0, "k"    # Ljava/lang/Integer;

    .line 582
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$0(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 1
    .param p0, "node"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 160
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    return-object v0
.end method

.method private removeNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V
    .locals 3
    .param p1, "node"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 514
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    if-eqz v0, :cond_3

    .line 515
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 516
    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    goto :goto_0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-eqz v0, :cond_2

    .line 519
    iget-object v2, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    invoke-virtual {v0, v2}, Lcom/hivemq/client/internal/util/collections/Index;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/Index;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 521
    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    .line 524
    :cond_1
    :goto_0
    return-void

    .line 518
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "node must be in next -> next != null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 514
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "topicLevel = null -> node = root node, root node has no parent"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static suback(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)Z
    .locals 4
    .param p1, "topicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .param p2, "subscriptionIdentifier"    # I
    .param p3, "error"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;",
            "IZ)Z"
        }
    .end annotation

    .line 241
    .local p0, "entries":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;>;"
    if-eqz p0, :cond_5

    .line 242
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getPrefix()[B

    move-result-object v0

    .line 243
    .local v0, "topicFilterPrefix":[B
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    .local v1, "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    :goto_0
    if-eqz v1, :cond_4

    .line 244
    iget v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->subscriptionIdentifier:I

    if-ne v2, p2, :cond_3

    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->topicFilterPrefix:[B

    .line 245
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 246
    if-nez p3, :cond_0

    .line 247
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->acknowledged:Z

    goto :goto_2

    .line 249
    :cond_0
    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    if-eqz v2, :cond_2

    .line 250
    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->handle:Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;->getTopicFilters()Lcom/hivemq/client/internal/util/collections/HandleList;

    move-result-object v2

    iget-object v3, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->handle:Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    invoke-virtual {v2, v3}, Lcom/hivemq/client/internal/util/collections/HandleList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    goto :goto_1

    .line 250
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "entry.flow != null -> entry.handle != null"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 253
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/hivemq/client/internal/util/collections/NodeList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 243
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    goto :goto_0

    .line 257
    .end local v1    # "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    :cond_4
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/NodeList;->isEmpty()Z

    move-result v1

    return v1

    .line 259
    .end local v0    # "topicFilterPrefix":[B
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private traverseNext(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 2
    .param p1, "topicIterator"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    .line 439
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->next()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v0

    .line 440
    .local v0, "nextLevel":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-static {v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->traverseNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v1

    return-object v1

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-eqz v1, :cond_1

    .line 444
    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/Index;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-static {v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->traverseNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v1

    return-object v1

    .line 446
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static traverseNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 3
    .param p0, "node"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .param p1, "topicIterator"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    .line 452
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 453
    return-object v0

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    .line 456
    .local v1, "topicLevel":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    instance-of v2, v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    if-eqz v2, :cond_2

    .line 457
    move-object v2, v1

    check-cast v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    invoke-virtual {p1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->forwardIfEqual(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    return-object p0

    .line 460
    :cond_1
    return-object v0

    .line 462
    :cond_2
    return-object p0
.end method

.method private static unsubscribe(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Z
    .locals 4
    .param p1, "topicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;",
            ")Z"
        }
    .end annotation

    .line 284
    .local p0, "entries":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;>;"
    if-eqz p0, :cond_4

    .line 285
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getPrefix()[B

    move-result-object v0

    .line 286
    .local v0, "topicFilterPrefix":[B
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    .local v1, "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    :goto_0
    if-eqz v1, :cond_3

    .line 287
    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->topicFilterPrefix:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->acknowledged:Z

    if-eqz v2, :cond_2

    .line 288
    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    if-eqz v2, :cond_1

    .line 289
    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->handle:Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;->getTopicFilters()Lcom/hivemq/client/internal/util/collections/HandleList;

    move-result-object v2

    iget-object v3, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->handle:Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    invoke-virtual {v2, v3}, Lcom/hivemq/client/internal/util/collections/HandleList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 291
    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;->getTopicFilters()Lcom/hivemq/client/internal/util/collections/HandleList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hivemq/client/internal/util/collections/HandleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;->onComplete()V

    goto :goto_1

    .line 289
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "entry.flow != null -> entry.handle != null"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 295
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lcom/hivemq/client/internal/util/collections/NodeList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 286
    :cond_2
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    goto :goto_0

    .line 298
    .end local v1    # "entry":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;
    :cond_3
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/NodeList;->isEmpty()Z

    move-result v1

    return v1

    .line 300
    .end local v0    # "topicFilterPrefix":[B
    :cond_4
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method cancel(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 1
    .param p1, "topicIterator"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    .param p2, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    .line 306
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->traverseNext(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v0

    return-object v0

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasMultiLevelWildcard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->cancel(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->cancel(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V

    .line 314
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method clear(Ljava/lang/Throwable;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 379
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/Index;->any()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    return-object v0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-eqz v0, :cond_1

    .line 383
    return-object v0

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 386
    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->clear(Lcom/hivemq/client/internal/util/collections/NodeList;Ljava/lang/Throwable;)V

    .line 387
    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-eqz v0, :cond_3

    .line 390
    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->clear(Lcom/hivemq/client/internal/util/collections/NodeList;Ljava/lang/Throwable;)V

    .line 391
    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-eqz v0, :cond_4

    .line 394
    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->removeNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;)V

    .line 396
    :cond_4
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->parent:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    return-object v0
.end method

.method findMatching(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 7
    .param p1, "topicIterator"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    .param p2, "flows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 334
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 335
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/NodeList;)V

    .line 336
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->next()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v0

    .line 337
    .local v0, "nextLevel":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/hivemq/client/internal/util/collections/Index;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 338
    .local v1, "nextNode":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :goto_0
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 339
    .local v2, "singleLevel":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    if-nez v1, :cond_1

    .line 340
    invoke-static {v2, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v3

    return-object v3

    .line 342
    :cond_1
    if-nez v2, :cond_2

    .line 343
    invoke-static {v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v3

    return-object v3

    .line 345
    :cond_2
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->fork()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;

    move-result-object v3

    .line 346
    .local v3, "fork":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    invoke-static {v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v4

    .line 347
    .local v4, "nextNodeNext":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    if-nez v4, :cond_3

    .line 348
    invoke-static {v2, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v5

    return-object v5

    .line 350
    :cond_3
    invoke-static {v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v5

    .line 351
    .local v5, "singleLevelNext":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    if-nez v5, :cond_4

    .line 352
    return-object v4

    .line 354
    :cond_4
    move-object v6, v5

    .line 355
    .local v6, "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :goto_1
    if-eqz v6, :cond_5

    .line 356
    invoke-virtual {v6, v3, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->findMatching(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v6

    goto :goto_1

    .line 358
    :cond_5
    return-object v4

    .line 360
    .end local v0    # "nextLevel":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .end local v1    # "nextNode":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .end local v2    # "singleLevel":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .end local v3    # "fork":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    .end local v4    # "nextNodeNext":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .end local v5    # "singleLevelNext":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .end local v6    # "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :cond_6
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/NodeList;)V

    .line 361
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;Lcom/hivemq/client/internal/util/collections/NodeList;)V

    .line 362
    return-object v1
.end method

.method getSubscriptions(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Ljava/util/Map;Ljava/util/Queue;)V
    .locals 3
    .param p1, "parentTopicLevels"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;",
            ">;>;",
            "Ljava/util/Queue<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;",
            ">;)V"
        }
    .end annotation

    .line 535
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;>;>;"
    .local p3, "nodes":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;>;"
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->concat(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    move-result-object v0

    goto :goto_1

    .line 535
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->topicLevel:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    .line 536
    :goto_1
    nop

    .line 537
    .local v0, "topicLevels":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-eqz v1, :cond_2

    .line 538
    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->getSubscriptions(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;ZLjava/util/Map;)V

    .line 540
    :cond_2
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-eqz v1, :cond_3

    .line 541
    const/4 v2, 0x1

    invoke-static {v1, v0, v2, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->getSubscriptions(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;ZLjava/util/Map;)V

    .line 543
    :cond_3
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-eqz v1, :cond_4

    .line 544
    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode$$ExternalSyntheticLambda2;

    invoke-direct {v2, p3, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode$$ExternalSyntheticLambda2;-><init>(Ljava/util/Queue;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/util/collections/Index;->forEach(Ljava/util/function/Consumer;)V

    .line 546
    :cond_4
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-eqz v1, :cond_5

    .line 547
    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;

    invoke-direct {v2, v1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$IteratorNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    invoke-interface {p3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_5
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method suback(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 2
    .param p1, "topicIterator"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    .param p2, "topicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .param p3, "subscriptionIdentifier"    # I
    .param p4, "error"    # Z

    .line 219
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->traverseNext(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasMultiLevelWildcard()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {v0, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->suback(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {v0, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->suback(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    .line 231
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->compact()V

    .line 232
    return-object v1
.end method

.method subscribe(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 4
    .param p1, "topicIterator"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    .param p2, "entry"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeEntry;

    .line 177
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->next()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v0

    .line 179
    .local v0, "nextLevel":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->trim()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->singleLevel:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    return-object v1

    .line 183
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->getNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v1

    return-object v1

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    if-nez v1, :cond_2

    .line 187
    new-instance v1, Lcom/hivemq/client/internal/util/collections/Index;

    sget-object v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    invoke-direct {v1, v2}, Lcom/hivemq/client/internal/util/collections/Index;-><init>(Lcom/hivemq/client/internal/util/collections/Index$Spec;)V

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    .line 188
    const/4 v1, 0x0

    .local v1, "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    goto :goto_0

    .line 190
    .end local v1    # "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :cond_2
    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/Index;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    .line 192
    .restart local v1    # "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :goto_0
    if-nez v1, :cond_3

    .line 193
    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->trim()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)V

    move-object v1, v2

    .line 194
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->next:Lcom/hivemq/client/internal/util/collections/Index;

    invoke-virtual {v2, v1}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-object v1

    .line 197
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->getNext(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v2

    return-object v2

    .line 199
    .end local v0    # "nextLevel":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .end local v1    # "node":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    :cond_4
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasMultiLevelWildcard()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 200
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-nez v0, :cond_5

    .line 201
    new-instance v0, Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/util/collections/NodeList;->add(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    goto :goto_1

    .line 205
    :cond_6
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    if-nez v0, :cond_7

    .line 206
    new-instance v0, Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    .line 208
    :cond_7
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/util/collections/NodeList;->add(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 210
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method unsubscribe(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;
    .locals 2
    .param p1, "topicIterator"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;
    .param p2, "topicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 265
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->traverseNext(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;

    move-result-object v0

    return-object v0

    .line 268
    :cond_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicIterator;->hasMultiLevelWildcard()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->unsubscribe(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->multiLevelEntries:Lcom/hivemq/client/internal/util/collections/NodeList;

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-static {v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->unsubscribe(Lcom/hivemq/client/internal/util/collections/NodeList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->entries:Lcom/hivemq/client/internal/util/collections/NodeList;

    .line 277
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlowTree$TopicTreeNode;->compact()V

    .line 278
    return-object v1
.end method
