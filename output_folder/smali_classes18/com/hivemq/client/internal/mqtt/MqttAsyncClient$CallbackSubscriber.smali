.class Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;
.super Ljava/lang/Object;
.source "MqttAsyncClient.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttAsyncClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;)V"
        }
    .end annotation

    .line 292
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;->callback:Ljava/util/function/Consumer;

    .line 294
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/function/Consumer;
    .param p2, "x1"    # Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$1;

    .line 288
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;-><init>(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .line 307
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 310
    return-void
.end method

.method public onNext(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V
    .locals 1
    .param p1, "publish"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    .line 303
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;->callback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 288
    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttAsyncClient$CallbackSubscriber;->onNext(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 298
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 299
    return-void
.end method
