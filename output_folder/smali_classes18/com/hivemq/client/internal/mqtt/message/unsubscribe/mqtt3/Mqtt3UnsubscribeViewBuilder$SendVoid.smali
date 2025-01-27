.class public Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$SendVoid;
.super Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
.source "Mqtt3UnsubscribeViewBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$SendVoid$Complete;
.implements Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$SendVoid$Start;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendVoid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$SendVoid;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$SendVoid$Complete;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$SendVoid$Start;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p1, "parentConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$SendVoid;->parentConsumer:Ljava/util/function/Consumer;

    .line 185
    return-void
.end method


# virtual methods
.method public bridge synthetic addTopicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTopicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addTopicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addTopicFilters(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilters(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addTopicFilters(Ljava/util/stream/Stream;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilters(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addTopicFilters([Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilters([Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic reverse(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->reverse(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$SendVoid;
    .locals 0

    .line 189
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$SendVoid;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$SendVoid;

    move-result-object v0

    return-object v0
.end method

.method public send()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$SendVoid;->parentConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$SendVoid;->build()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public bridge synthetic topicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method
