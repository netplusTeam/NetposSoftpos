.class public abstract Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
.super Ljava/lang/Object;
.source "MqttTopicFilterImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;,
        Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;,
        Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;,
        Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;,
        Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)V
    .locals 2
    .param p1, "topicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 40
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getTopicFilterString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    .line 42
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseTopicFilter"    # Ljava/lang/String;

    .line 36
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    .line 38
    return-void
.end method


# virtual methods
.method public addLevel(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
    .locals 2
    .param p1, "topicLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder<TB;>;"
    const-string v0, "Topic level"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public multiLevelWildcard()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 70
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public singleLevelWildcard()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object v0

    return-object v0
.end method
