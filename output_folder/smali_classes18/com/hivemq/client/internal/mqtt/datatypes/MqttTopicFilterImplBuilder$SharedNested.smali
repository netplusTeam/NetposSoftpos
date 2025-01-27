.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;
.source "MqttTopicFilterImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilterBuilder$Nested$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedNested"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase<",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilterBuilder$Nested$Complete<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "shareName"    # Ljava/lang/String;
    .param p2, "baseTopicFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;",
            "TP;>;)V"
        }
    .end annotation

    .line 219
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested<TP;>;"
    .local p3, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;TP;>;"
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;->parentConsumer:Ljava/util/function/Function;

    .line 221
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "shareName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;",
            "TP;>;)V"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested<TP;>;"
    .local p2, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;TP;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;-><init>(Ljava/lang/String;)V

    .line 211
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;->parentConsumer:Ljava/util/function/Function;

    .line 212
    return-void
.end method


# virtual methods
.method public bridge synthetic addLevel(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;
    .locals 0

    .line 201
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->addLevel(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

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

    .line 230
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;->build()Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiLevelWildcard()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$End;
    .locals 1

    .line 201
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->multiLevelWildcard()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$End;

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested<",
            "TP;>;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
    .locals 1

    .line 201
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic share(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$SharedBase;
    .locals 0

    .line 201
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->share(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$SharedBase;

    return-object p1
.end method

.method public bridge synthetic singleLevelWildcard()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;
    .locals 1

    .line 201
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedNested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->singleLevelWildcard()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;

    return-object v0
.end method
