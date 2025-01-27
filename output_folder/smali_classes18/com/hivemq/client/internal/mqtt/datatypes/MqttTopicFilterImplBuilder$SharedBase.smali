.class public abstract Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
.source "MqttTopicFilterImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SharedBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase<",
        "TB;>;>",
        "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private shareName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;)V
    .locals 1
    .param p1, "sharedTopicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    .line 163
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase<TB;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)V

    .line 164
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->getShareName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->shareName:Ljava/lang/String;

    .line 165
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "shareName"    # Ljava/lang/String;

    .line 153
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;-><init>()V

    .line 154
    const-string v0, "Share name"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->shareName:Ljava/lang/String;

    .line 155
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "shareName"    # Ljava/lang/String;
    .param p2, "baseTopicFilter"    # Ljava/lang/String;

    .line 158
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase<TB;>;"
    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    const-string v0, "Share name"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->shareName:Ljava/lang/String;

    .line 160
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;
    .locals 3

    .line 173
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "At least one topic level must be added."

    invoke-static {v0, v2}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    const-string v2, "Topic must be at least one character long."

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->shareName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    move-result-object v1

    return-object v1
.end method

.method public share(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;
    .locals 1
    .param p1, "shareName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;, "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase<TB;>;"
    const-string v0, "Share name"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->shareName:Ljava/lang/String;

    .line 169
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;->self()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedBase;

    return-object v0
.end method
