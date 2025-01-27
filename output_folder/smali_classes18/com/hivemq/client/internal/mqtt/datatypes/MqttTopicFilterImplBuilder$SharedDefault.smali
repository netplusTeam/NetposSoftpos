.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;
.source "MqttTopicFilterImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilterBuilder$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase<",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;",
        ">;",
        "Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilterBuilder$Complete;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;)V
    .locals 0
    .param p1, "sharedTopicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    .line 192
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareName"    # Ljava/lang/String;

    .line 184
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;-><init>(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "shareName"    # Ljava/lang/String;
    .param p2, "baseTopicFilter"    # Ljava/lang/String;

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method


# virtual methods
.method public bridge synthetic addLevel(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->addLevel(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilter;
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->build()Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiLevelWildcard()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$End;
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->multiLevelWildcard()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$End;

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;
    .locals 0

    .line 197
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic share(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$SharedBase;
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->share(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$SharedBase;

    return-object p1
.end method

.method public bridge synthetic singleLevelWildcard()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->singleLevelWildcard()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;

    return-object v0
.end method
