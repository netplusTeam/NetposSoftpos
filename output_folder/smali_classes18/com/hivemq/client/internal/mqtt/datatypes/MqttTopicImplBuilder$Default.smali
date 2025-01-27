.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;
.source "MqttTopicImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Complete;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)V
    .locals 0
    .param p1, "topic"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 63
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)V

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic addLevel(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilderBase;
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;->addLevel(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilderBase;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/datatypes/MqttTopic;
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;->build()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    return-object v0
.end method

.method public filter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;->stringBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;-><init>()V

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic filter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;->filter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;
    .locals 0

    .line 68
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public share(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;
    .locals 2
    .param p1, "shareName"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;->stringBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;

    invoke-direct {v0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic share(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilterBuilder;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;->share(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;

    move-result-object p1

    return-object p1
.end method
