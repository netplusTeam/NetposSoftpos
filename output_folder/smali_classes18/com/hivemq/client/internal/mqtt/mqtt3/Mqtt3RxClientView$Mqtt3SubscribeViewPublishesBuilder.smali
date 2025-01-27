.class Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$Mqtt3SubscribeViewPublishesBuilder;
.super Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Publishes;
.source "Mqtt3RxClientView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Mqtt3SubscribeViewPublishesBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Publishes<",
        "Lcom/hivemq/client/rx/FlowableWithSingle<",
        "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$Mqtt3SubscribeViewPublishesBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Publishes;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;
    .param p2, "x1"    # Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$1;

    .line 213
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$Mqtt3SubscribeViewPublishesBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;)V

    return-void
.end method


# virtual methods
.method public applySubscribe()Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$Mqtt3SubscribeViewPublishesBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$Mqtt3SubscribeViewPublishesBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$Mqtt3SubscribeViewPublishesBuilder;->manualAcknowledgement:Z

    invoke-virtual {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView;->subscribePublishes(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic applySubscribe()Ljava/lang/Object;
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientView$Mqtt3SubscribeViewPublishesBuilder;->applySubscribe()Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v0

    return-object v0
.end method
