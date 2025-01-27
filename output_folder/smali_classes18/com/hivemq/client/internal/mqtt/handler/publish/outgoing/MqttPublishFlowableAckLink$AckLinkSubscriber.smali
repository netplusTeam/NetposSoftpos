.class Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;
.super Ljava/lang/Object;
.source "MqttPublishFlowableAckLink.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;
.implements Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AckLinkSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
        ">;",
        "Lorg/reactivestreams/Subscription;",
        "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

.field static final STATE_CANCELLED:I = 0x3

.field static final STATE_DONE:I = 0x2

.field static final STATE_IN_PROGRESS:I = 0x1

.field static final STATE_NONE:I


# instance fields
.field private final ackFlow:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;

.field private published:J

.field private final requestState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final subscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private subscription:Lorg/reactivestreams/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink;

    .line 61
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;)V
    .locals 2
    .param p2, "ackFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;",
            ")V"
        }
    .end annotation

    .line 77
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->requestState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 80
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->ackFlow:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;

    .line 81
    return-void
.end method

.method private cancelActual()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->requestState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 148
    return-void

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 132
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "MqttPublishFlowables is global and must never cancel. This must not happen and is a bug."

    invoke-interface {v0, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public cancelLink()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->cancelActual()V

    .line 140
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 105
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->ackFlow:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->published:J

    invoke-virtual {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->onComplete(J)V

    .line 107
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 111
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 113
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->ackFlow:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->published:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->onError(Ljava/lang/Throwable;J)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 117
    :goto_0
    return-void
.end method

.method public onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V
    .locals 7
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 92
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->ackFlow:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;

    invoke-direct {v3, p1, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V

    invoke-interface {v0, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 94
    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->published:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->published:J

    .line 95
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->cancelActual()V

    .line 99
    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "subscription"    # Lorg/reactivestreams/Subscription;

    .line 85
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    .line 86
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 87
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->ackFlow:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;

    invoke-virtual {v0, p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlowableFlow;->link(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$LinkedFlow;)V

    .line 88
    return-void
.end method

.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .line 121
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->requestState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 124
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->requestState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowableAckLink$AckLinkSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 128
    :cond_0
    return-void

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
