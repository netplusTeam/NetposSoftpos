.class public Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
.source "MqttUnsubscribeBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Nested$Complete;
.implements Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Nested$Start;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
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
        "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Nested$Complete<",
        "TP;>;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilder$Nested$Start<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;",
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
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;",
            "TP;>;)V"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    .local p1, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;TP;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 157
    return-void
.end method


# virtual methods
.method public bridge synthetic addTopicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->addTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTopicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;
    .locals 0

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->addTopicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic addTopicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;
    .locals 0

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->addTopicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic addTopicFilters(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;
    .locals 0

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->addTopicFilters(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic addTopicFilters(Ljava/util/stream/Stream;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;
    .locals 0

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->addTopicFilters(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic addTopicFilters([Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;
    .locals 0

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->addTopicFilters([Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public applyUnsubscribe()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;
    .locals 0

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->reverse(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
    .locals 1

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->topicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;
    .locals 0

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;
    .locals 0

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;
    .locals 0

    .line 150
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;

    return-object p1
.end method
