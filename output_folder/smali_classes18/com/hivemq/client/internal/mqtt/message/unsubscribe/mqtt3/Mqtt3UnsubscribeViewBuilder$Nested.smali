.class public Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
.source "Mqtt3UnsubscribeViewBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$Nested$Complete;
.implements Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$Nested$Start;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nested"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$Nested$Complete<",
        "TP;>;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilder$Nested$Start<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;",
            "TP;>;)V"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    .local p1, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;TP;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 145
    return-void
.end method


# virtual methods
.method public bridge synthetic addTopicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 138
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTopicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 138
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addTopicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 138
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addTopicFilters(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 138
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilters(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addTopicFilters(Ljava/util/stream/Stream;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 138
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilters(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addTopicFilters([Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 138
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilters([Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method public applyUnsubscribe()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 138
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->reverse(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
    .locals 1

    .line 138
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 138
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 138
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;
    .locals 0

    .line 138
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3UnsubscribeBuilderBase;

    return-object p1
.end method
