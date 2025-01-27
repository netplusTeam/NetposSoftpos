.class Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
.super Lcom/hivemq/client/internal/util/collections/HandleList;
.source "MqttStatefulPublishWithFlows.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/util/collections/HandleList<",
        "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;",
        ">;"
    }
.end annotation


# instance fields
.field connectionIndex:J

.field id:J

.field private missingAcknowledgements:I

.field final publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

.field subscriptionFound:Z


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V
    .locals 0
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    .line 36
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/HandleList;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    .line 38
    return-void
.end method


# virtual methods
.method acknowledge(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;)V
    .locals 2
    .param p1, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    .line 54
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->missingAcknowledgements:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->missingAcknowledgements:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->acknowledge(Z)V

    .line 55
    return-void
.end method

.method public add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;)Lcom/hivemq/client/internal/util/collections/HandleList$Handle;
    .locals 1
    .param p1, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;",
            ")",
            "Lcom/hivemq/client/internal/util/collections/HandleList$Handle<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;",
            ">;"
        }
    .end annotation

    .line 42
    iget-boolean v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->manualAcknowledgement:Z

    if-eqz v0, :cond_0

    .line 43
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->missingAcknowledgements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->missingAcknowledgements:I

    .line 44
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->increaseMissingAcknowledgements()V

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/util/collections/HandleList;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/HandleList$Handle;
    .locals 0

    .line 27
    check-cast p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->add(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;)Lcom/hivemq/client/internal/util/collections/HandleList$Handle;

    move-result-object p1

    return-object p1
.end method

.method areAcknowledged()Z
    .locals 1

    .line 50
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->missingAcknowledgements:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
