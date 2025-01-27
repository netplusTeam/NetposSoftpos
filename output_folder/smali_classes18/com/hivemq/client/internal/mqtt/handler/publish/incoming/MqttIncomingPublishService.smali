.class Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;
.super Ljava/lang/Object;
.source "MqttIncomingPublishService.java"


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ClientScope;
.end annotation


# static fields
.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

.field private static final QOS_0_DROP_OLDEST:Z = true


# instance fields
.field private blockingFlowCount:I

.field final incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

.field private final incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

.field private nextQoS1Or2PublishId:J

.field private final qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;",
            ">.Iterator;"
        }
    .end annotation
.end field

.field private final qos0Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;",
            ">;"
        }
    .end annotation
.end field

.field private final qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;",
            ">.Iterator;"
        }
    .end annotation
.end field

.field private final qos1Or2Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;",
            ">;"
        }
    .end annotation
.end field

.field private referencedFlowCount:I

.field private runIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    .line 37
    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;)V
    .locals 2
    .param p1, "incomingQosHandler"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;
    .param p2, "incomingPublishFlows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    .line 44
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->iterator()Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    .line 45
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    .line 46
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->iterator()Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    .line 48
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->nextQoS1Or2PublishId:J

    .line 58
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    .line 59
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    .line 60
    return-void
.end method

.method private emit(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V
    .locals 7
    .param p1, "publishWithFlows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 145
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    .local v0, "h":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;>;"
    :goto_0
    if-eqz v0, :cond_6

    .line 146
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    .line 148
    .local v1, "flow":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 150
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->dereference()I

    move-result v2

    if-nez v2, :cond_5

    .line 151
    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    goto :goto_3

    .line 154
    :cond_0
    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->runIndex:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->requested(J)J

    move-result-wide v2

    .line 155
    .local v2, "requested":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 156
    iget-object v4, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v4

    check-cast v4, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 157
    .local v4, "publish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    iget-boolean v5, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->manualAcknowledgement:Z

    if-eqz v5, :cond_2

    .line 159
    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v5

    sget-object v6, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v5, v6, :cond_1

    .line 160
    new-instance v5, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable$Qos0;

    invoke-direct {v5}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable$Qos0;-><init>()V

    .local v5, "confirmable":Lcom/hivemq/client/internal/checkpoint/Confirmable;
    goto :goto_1

    .line 162
    .end local v5    # "confirmable":Lcom/hivemq/client/internal/checkpoint/Confirmable;
    :cond_1
    new-instance v5, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable;

    invoke-direct {v5, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    .line 164
    .restart local v5    # "confirmable":Lcom/hivemq/client/internal/checkpoint/Confirmable;
    :goto_1
    invoke-virtual {v4, v5}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->withConfirmable(Lcom/hivemq/client/internal/checkpoint/Confirmable;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v4

    .line 166
    .end local v5    # "confirmable":Lcom/hivemq/client/internal/checkpoint/Confirmable;
    :cond_2
    invoke-virtual {v1, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->onNext(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V

    .line 167
    invoke-virtual {p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 168
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->dereference()I

    move-result v5

    if-nez v5, :cond_4

    .line 169
    iget v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    .line 170
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->checkDone()V

    goto :goto_2

    .line 172
    .end local v4    # "publish":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    :cond_3
    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    .line 173
    iget v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->blockingFlowCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->blockingFlowCount:I

    .line 174
    iget v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    if-ne v4, v5, :cond_5

    .line 175
    goto :goto_4

    .line 172
    :cond_4
    :goto_2
    nop

    .line 145
    .end local v1    # "flow":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;
    .end local v2    # "requested":J
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    goto :goto_0

    .line 180
    .end local v0    # "h":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method private onPublish(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V
    .locals 3
    .param p1, "publishWithFlows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 102
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->findMatching(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    .line 103
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    const-string v2, "No publish flow registered for {}."

    invoke-interface {v0, v2, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->drain()V

    .line 107
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    .local v0, "h":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->reference()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 109
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    .line 107
    :cond_1
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    goto :goto_0

    .line 112
    .end local v0    # "h":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;>;"
    :cond_2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->emit(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    .line 113
    return-void
.end method


# virtual methods
.method drain()V
    .locals 4

    .line 117
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->runIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->runIndex:I

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->blockingFlowCount:I

    .line 120
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->reset()V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 123
    .local v0, "publishWithFlows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->emit(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    .line 124
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->getIterated()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->areAcknowledged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->remove()V

    .line 126
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    invoke-virtual {v2, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->ack(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    goto :goto_1

    .line 127
    :cond_0
    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->blockingFlowCount:I

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    if-ne v2, v3, :cond_1

    .line 128
    return-void

    .line 130
    .end local v0    # "publishWithFlows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    :cond_1
    :goto_1
    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->reset()V

    .line 132
    :goto_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 134
    .restart local v0    # "publishWithFlows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->emit(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    .line 135
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->getIterated()I

    move-result v2

    if-ne v2, v1, :cond_3

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->remove()V

    goto :goto_3

    .line 137
    :cond_3
    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->blockingFlowCount:I

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    if-ne v2, v3, :cond_4

    .line 138
    return-void

    .line 140
    .end local v0    # "publishWithFlows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    :cond_4
    :goto_3
    goto :goto_2

    .line 141
    :cond_5
    return-void
.end method

.method onPublishQos0(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;I)V
    .locals 3
    .param p1, "publishWithFlows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    .param p2, "receiveMaximum"    # I

    .line 64
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size()I

    move-result v0

    if-lt v0, p2, :cond_1

    .line 65
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "QoS 0 publish message dropped."

    invoke-interface {v0, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->reset()V

    .line 68
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 69
    .local v0, "flows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0It:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->remove()V

    .line 70
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    .local v1, "h":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->dereference()I

    move-result v2

    if-nez v2, :cond_0

    .line 72
    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->referencedFlowCount:I

    .line 70
    :cond_0
    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    goto :goto_0

    .line 79
    .end local v0    # "flows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    .end local v1    # "h":Lcom/hivemq/client/internal/util/collections/HandleList$Handle;, "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;>;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->onPublish(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    .line 80
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos0Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->offer(Ljava/lang/Object;)V

    .line 83
    :cond_2
    return-void
.end method

.method onPublishQos1Or2(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;I)Z
    .locals 4
    .param p1, "publishWithFlows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    .param p2, "receiveMaximum"    # I

    .line 87
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 88
    const/4 v0, 0x0

    return v0

    .line 90
    :cond_0
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->nextQoS1Or2PublishId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->nextQoS1Or2PublishId:J

    iput-wide v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->id:J

    .line 91
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->onPublish(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    .line 92
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->areAcknowledged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->ack(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->qos1Or2Queue:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->offer(Ljava/lang/Object;)V

    .line 97
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
