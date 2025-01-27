.class public abstract Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
.source "MqttTopicFilterImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Base"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base<",
        "TB;>;>",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder<",
        "TB;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)V
    .locals 0
    .param p1, "topicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 85
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base<TB;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)V

    .line 86
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseTopicFilter"    # Ljava/lang/String;

    .line 81
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base<TB;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 3

    .line 89
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "At least one topic level must be added."

    invoke-static {v0, v2}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    const-string v2, "Topic must be at least one character long."

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 92
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v1

    return-object v1
.end method
