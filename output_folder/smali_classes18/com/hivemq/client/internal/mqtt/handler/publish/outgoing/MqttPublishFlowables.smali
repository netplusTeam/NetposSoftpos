.class public Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;
.super Lio/reactivex/Flowable;
.source "MqttPublishFlowables.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ClientScope;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Flowable<",
        "Lio/reactivex/Flowable<",
        "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
        ">;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field private requested:J

.field private subscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    nop

    .line 35
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/Flowable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "publishFlowable":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;>;"
    monitor-enter p0

    .line 51
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->requested:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 53
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string/jumbo v2, "thread interrupted while waiting to publish."

    invoke-interface {v1, v2, v0}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    monitor-exit p0

    return-void

    .line 59
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->subscriber:Lorg/reactivestreams/Subscriber;

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 61
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->requested:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->requested:J

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "publishFlowable":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;>;"
    throw v0

    .line 62
    .restart local p1    # "publishFlowable":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 78
    return-void
.end method

.method public request(J)V
    .locals 2
    .param p1, "n"    # J

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->requested:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->requested:J

    .line 69
    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 72
    :cond_0
    monitor-exit p0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
            ">;>;)V"
        }
    .end annotation

    .line 44
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Lio/reactivex/Flowable<Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;>;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->subscriber:Lorg/reactivestreams/Subscriber;

    if-nez v0, :cond_0

    .line 45
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 46
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 47
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
