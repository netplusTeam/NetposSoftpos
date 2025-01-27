.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;
.source "MqttTopicFilterImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
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
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base<",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested$Complete<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;",
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
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;",
            "TP;>;)V"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested<TP;>;"
    .local p1, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;TP;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 128
    return-void
.end method


# virtual methods
.method public bridge synthetic addLevel(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;
    .locals 0

    .line 122
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;->addLevel(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;

    return-object p1
.end method

.method public applyTopicFilter()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiLevelWildcard()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$End;
    .locals 1

    .line 122
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;->multiLevelWildcard()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$End;

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
    .locals 1

    .line 122
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public share(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;
    .locals 3
    .param p1, "shareName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested<",
            "TP;>;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;->stringBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-direct {v0, p1, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;-><init>(Ljava/lang/String;Ljava/util/function/Function;)V

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-direct {v0, p1, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic share(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$SharedBase;
    .locals 0

    .line 122
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested<TP;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;->share(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic singleLevelWildcard()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;
    .locals 1

    .line 122
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;->singleLevelWildcard()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;

    return-object v0
.end method
