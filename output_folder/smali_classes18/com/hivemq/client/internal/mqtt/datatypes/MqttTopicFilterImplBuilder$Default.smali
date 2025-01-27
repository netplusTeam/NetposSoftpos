.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;
.source "MqttTopicFilterImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base<",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Complete;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)V
    .locals 0
    .param p1, "topicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 105
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)V

    .line 106
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseTopicFilter"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;-><init>(Ljava/lang/String;)V

    .line 102
    return-void
.end method


# virtual methods
.method public bridge synthetic addLevel(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;->addLevel(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;->build()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiLevelWildcard()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$End;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;->multiLevelWildcard()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$End;

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;
    .locals 0

    .line 110
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public share(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;
    .locals 2
    .param p1, "shareName"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;->stringBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;

    invoke-direct {v0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic share(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$SharedBase;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;->share(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic singleLevelWildcard()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Base;->singleLevelWildcard()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;

    return-object v0
.end method
