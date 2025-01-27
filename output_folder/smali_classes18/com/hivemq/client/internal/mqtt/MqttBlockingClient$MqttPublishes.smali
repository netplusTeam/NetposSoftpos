.class Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;
.super Ljava/lang/Object;
.source "MqttBlockingClient.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MqttPublishes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;",
        "Lio/reactivex/FlowableSubscriber<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final entries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Throwable;

.field private queuedPublish:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

.field private final subscription:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 219
    const-class v0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;

    return-void
.end method

.method constructor <init>(Lio/reactivex/Flowable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p1, "publishes":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    .line 222
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    .line 227
    invoke-virtual {p1, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 228
    return-void
.end method

.method private handleError(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 401
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 402
    move-object v0, p1

    check-cast v0, Ljava/lang/RuntimeException;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private receiveNowUnsafe()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->queuedPublish:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->queuedPublish:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    .line 374
    .local v0, "queuedPublish":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->queuedPublish:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    .line 375
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->request()V

    .line 376
    return-object v0

    .line 378
    .end local v0    # "queuedPublish":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    :cond_0
    return-object v1
.end method

.method private request()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 241
    .local v0, "subscription":Lorg/reactivestreams/Subscription;
    if-eqz v0, :cond_0

    .line 242
    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 243
    return-void

    .line 241
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 383
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 384
    .local v0, "subscription":Lorg/reactivestreams/Subscription;
    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 389
    monitor-exit v1

    return-void

    .line 391
    :cond_1
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    .line 393
    :goto_0
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;

    move-object v3, v2

    .local v3, "entry":Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;
    if-eqz v2, :cond_2

    .line 394
    iget-object v2, v3, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->result:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 395
    iget-object v2, v3, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 397
    .end local v3    # "entry":Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;
    :cond_2
    monitor-exit v1

    .line 398
    return-void

    .line 397
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onComplete()V
    .locals 1

    .line 266
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->onError(Ljava/lang/Throwable;)V

    .line 267
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 271
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 273
    monitor-exit v0

    return-void

    .line 275
    :cond_0
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    .line 277
    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;

    move-object v2, v1

    .local v2, "entry":Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;
    if-eqz v1, :cond_1

    .line 278
    iget-object v1, v2, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 279
    iget-object v1, v2, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 281
    .end local v2    # "entry":Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;
    :cond_1
    monitor-exit v0

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNext(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V
    .locals 4
    .param p1, "publish"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    .line 247
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    monitor-enter v0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 249
    monitor-exit v0

    return-void

    .line 252
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;

    move-object v2, v1

    .local v2, "entry":Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;
    if-eqz v1, :cond_2

    .line 253
    iget-object v1, v2, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->result:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-static {v1, v3, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 254
    .local v1, "success":Z
    iget-object v3, v2, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 255
    if-eqz v1, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->request()V

    .line 257
    monitor-exit v0

    return-void

    .line 259
    .end local v1    # "success":Z
    :cond_1
    goto :goto_0

    .line 260
    :cond_2
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->queuedPublish:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    .line 261
    .end local v2    # "entry":Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 219
    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->onNext(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "subscription"    # Lorg/reactivestreams/Subscription;

    .line 232
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 237
    :goto_0
    return-void
.end method

.method public receive()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 291
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->receiveNowUnsafe()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    move-result-object v1

    .line 292
    .local v1, "publish":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    if-eqz v1, :cond_0

    .line 293
    monitor-exit v0

    return-object v1

    .line 295
    :cond_0
    new-instance v2, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;-><init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$1;)V

    .line 296
    .local v2, "entry":Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 297
    nop

    .end local v1    # "publish":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, "interruptedException":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v1, v2, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 304
    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/InterruptedException;
    move-object v0, v1

    .line 305
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v1, v2, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->result:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->CANCELLED:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 306
    .local v1, "result":Ljava/lang/Object;
    instance-of v3, v1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    if-eqz v3, :cond_1

    .line 307
    move-object v3, v1

    check-cast v3, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    return-object v3

    .line 309
    :cond_1
    instance-of v3, v1, Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 312
    if-eqz v0, :cond_2

    .line 313
    throw v0

    .line 315
    :cond_2
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 310
    :cond_3
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->handleError(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 289
    .end local v0    # "interruptedException":Ljava/lang/InterruptedException;
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "entry":Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;
    :cond_4
    :try_start_2
    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->handleError(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public receive(JLjava/util/concurrent/TimeUnit;)Ljava/util/Optional;
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 322
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    .line 325
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 332
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->receiveNowUnsafe()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    move-result-object v1

    .line 333
    .local v1, "publish":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    if-eqz v1, :cond_0

    .line 334
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 336
    :cond_0
    new-instance v2, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;-><init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$1;)V

    .line 337
    .local v2, "entry":Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 338
    nop

    .end local v1    # "publish":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    const/4 v0, 0x0

    .line 342
    .local v0, "interruptedException":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v1, v2, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/InterruptedException;
    move-object v0, v1

    .line 346
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v1, v2, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->result:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->CANCELLED:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 347
    .local v1, "result":Ljava/lang/Object;
    instance-of v3, v1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    if-eqz v3, :cond_1

    .line 348
    move-object v3, v1

    check-cast v3, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    return-object v3

    .line 350
    :cond_1
    instance-of v3, v1, Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 353
    if-nez v0, :cond_2

    .line 356
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    return-object v3

    .line 354
    :cond_2
    throw v0

    .line 351
    :cond_3
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->handleError(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 330
    .end local v0    # "interruptedException":Ljava/lang/InterruptedException;
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "entry":Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;
    :cond_4
    :try_start_2
    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->handleError(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p1    # "timeout":J
    .end local p3    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    throw v1

    .line 338
    .restart local p1    # "timeout":J
    .restart local p3    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 323
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receiveNow()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->receiveNowUnsafe()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    move-result-object v1

    .line 367
    .local v1, "publish":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 364
    .end local v1    # "publish":Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->handleError(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
