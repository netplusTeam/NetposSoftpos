.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;
.source "MqttTopicImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Nested$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;
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
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Nested$Complete<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;",
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
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;",
            "TP;>;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested<TP;>;"
    .local p1, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;TP;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 95
    return-void
.end method


# virtual methods
.method public bridge synthetic addLevel(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilderBase;
    .locals 0

    .line 88
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;->addLevel(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilderBase;

    return-object p1
.end method

.method public applyTopic()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;
    .locals 1

    .line 88
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method
