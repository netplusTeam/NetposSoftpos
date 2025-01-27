.class public Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;
.super Ljava/lang/Object;
.source "Mqtt3PublishResultView.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;


# static fields
.field public static final MAPPER:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;->MAPPER:Lio/reactivex/functions/Function;

    return-void
.end method

.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V
    .locals 0
    .param p1, "delegate"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    .line 45
    return-void
.end method

.method public static of(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;
    .locals 2
    .param p0, "publishResult"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;

    .line 38
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;

    move-object v1, p0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    return-object v0
.end method

.method private toAttributeString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "publish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;->getPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;->getError()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;->getError()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 68
    if-ne p0, p1, :cond_0

    .line 69
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;

    if-nez v0, :cond_1

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;

    .line 76
    .local v0, "that":Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getError()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->getError()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->MAPPER_JAVA:Ljava/util/function/Function;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->of(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;->delegate:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttPublishResult{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishResultView;->toAttributeString()Ljava/lang/String;

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
