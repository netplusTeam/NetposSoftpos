.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
.super Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;
.source "MqttStatefulPublish.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId<",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_NO_SUBSCRIPTION_IDENTIFIERS:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

.field public static final DEFAULT_NO_TOPIC_ALIAS:I = 0x0

.field public static final NO_PACKET_IDENTIFIER_QOS_0:I = -0x1

.field public static final TOPIC_ALIAS_FLAG:I = 0xffff

.field public static final TOPIC_ALIAS_FLAG_NEW:I = 0x10000


# instance fields
.field private final dup:Z

.field private final subscriptionIdentifiers:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

.field private final topicAlias:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->DEFAULT_NO_SUBSCRIPTION_IDENTIFIERS:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;IZILcom/hivemq/client/internal/util/collections/ImmutableIntList;)V
    .locals 0
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .param p2, "packetIdentifier"    # I
    .param p3, "dup"    # Z
    .param p4, "topicAlias"    # I
    .param p5, "subscriptionIdentifiers"    # Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;-><init>(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;I)V

    .line 49
    iput-boolean p3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->dup:Z

    .line 50
    iput p4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->topicAlias:I

    .line 51
    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->subscriptionIdentifiers:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    .line 52
    return-void
.end method


# virtual methods
.method public getSubscriptionIdentifiers()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->subscriptionIdentifiers:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    return-object v0
.end method

.method public getTopicAlias()I
    .locals 2

    .line 59
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->topicAlias:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public isDup()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->dup:Z

    return v0
.end method

.method public isNewTopicAlias()Z
    .locals 2

    .line 63
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->topicAlias:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected toAttributeString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->dup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topicAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->topicAlias:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriptionIdentifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->subscriptionIdentifiers:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttStatefulPublish{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
