.class public abstract Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;
.super Ljava/lang/Object;
.source "MqttTopicImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)V
    .locals 2
    .param p1, "topic"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 35
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    .line 37
    return-void
.end method


# virtual methods
.method public addLevel(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;
    .locals 2
    .param p1, "topicLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder<TB;>;"
    const-string v0, "Topic level"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 46
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 3

    .line 52
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "At least one topic level must be added."

    invoke-static {v0, v2}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    const-string v2, "Topic must be at least one character long."

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 55
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    return-object v1
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method
