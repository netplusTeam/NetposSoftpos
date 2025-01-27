.class public abstract Lcom/hivemq/client/rx/FlowableWithSingle;
.super Lio/reactivex/Flowable;
.source "FlowableWithSingle.java"

# interfaces
.implements Lcom/hivemq/client/rx/reactivestreams/PublisherWithSingle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TF;>;",
        "Lcom/hivemq/client/rx/reactivestreams/PublisherWithSingle<",
        "TF;TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    return-void
.end method

.method static synthetic lambda$doOnSingle$0(Lio/reactivex/functions/Consumer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "singleConsumer"    # Lio/reactivex/functions/Consumer;
    .param p1, "s"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    invoke-interface {p0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V

    .line 180
    return-object p1
.end method


# virtual methods
.method public final doOnSingle(Lio/reactivex/functions/Consumer;)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TS;>;)",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 177
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p1, "singleConsumer":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TS;>;"
    const-string v0, "Single consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    new-instance v0, Lcom/hivemq/client/rx/FlowableWithSingle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/hivemq/client/rx/FlowableWithSingle$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/functions/Consumer;)V

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->mapSingle(Lcom/hivemq/client/rx/FlowableWithSingle;Lio/reactivex/functions/Function;)Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;

    move-result-object v0

    return-object v0
.end method

.method public final mapBoth(Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FM:",
            "Ljava/lang/Object;",
            "SM:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TF;+TFM;>;",
            "Lio/reactivex/functions/Function<",
            "-TS;+TSM;>;)",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TFM;TSM;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 146
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p1, "flowableMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TF;+TFM;>;"
    .local p2, "singleMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TS;+TSM;>;"
    const-string v0, "Flowable mapper"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    const-string v0, "Single mapper"

    invoke-static {p2, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->mapBoth(Lcom/hivemq/client/rx/FlowableWithSingle;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;

    move-result-object v0

    return-object v0
.end method

.method public final mapError(Lio/reactivex/functions/Function;)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 163
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    const-string v0, "Mapper"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;

    invoke-direct {v0, p0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle;Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public final mapSingle(Lio/reactivex/functions/Function;)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SM:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TS;+TSM;>;)",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TSM;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 124
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p1, "singleMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TS;+TSM;>;"
    const-string v0, "Single mapper"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->mapSingle(Lcom/hivemq/client/rx/FlowableWithSingle;Lio/reactivex/functions/Function;)Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;

    move-result-object v0

    return-object v0
.end method

.method public final observeOnBoth(Lio/reactivex/Scheduler;)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 2
    .param p1, "scheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 66
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    invoke-static {}, Lcom/hivemq/client/rx/FlowableWithSingle;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/hivemq/client/rx/FlowableWithSingle;->observeOnBoth(Lio/reactivex/Scheduler;ZI)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v0

    return-object v0
.end method

.method public final observeOnBoth(Lio/reactivex/Scheduler;Z)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 1
    .param p1, "scheduler"    # Lio/reactivex/Scheduler;
    .param p2, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Scheduler;",
            "Z)",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 85
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    invoke-static {}, Lcom/hivemq/client/rx/FlowableWithSingle;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hivemq/client/rx/FlowableWithSingle;->observeOnBoth(Lio/reactivex/Scheduler;ZI)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v0

    return-object v0
.end method

.method public final observeOnBoth(Lio/reactivex/Scheduler;ZI)Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 1
    .param p1, "scheduler"    # Lio/reactivex/Scheduler;
    .param p2, "delayError"    # Z
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Scheduler;",
            "ZI)",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    .line 106
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    const-string v0, "Scheduler"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle;Lio/reactivex/Scheduler;ZI)V

    return-object v0
.end method

.method public final subscribeBoth(Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/FlowableWithSingleSubscriber<",
            "-TF;-TS;>;)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 206
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p1, "subscriber":Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingleSubscriber<-TF;-TS;>;"
    const-string v0, "Subscriber"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p0, p1}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribeBothActual(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V

    .line 208
    return-void
.end method

.method public final subscribeBoth(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
            "-TF;-TS;>;)V"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 188
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p1, "subscriber":Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;, "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<-TF;-TS;>;"
    instance-of v0, p1, Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;

    if-eqz v0, :cond_0

    .line 190
    move-object v0, p1

    check-cast v0, Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribeBoth(Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;)V

    goto :goto_0

    .line 192
    :cond_0
    const-string v0, "Subscriber"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    new-instance v0, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;

    invoke-direct {v0, p1}, Lcom/hivemq/client/internal/rx/WithSingleStrictSubscriber;-><init>(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V

    invoke-virtual {p0, v0}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribeBothActual(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V

    .line 195
    :goto_0
    return-void
.end method

.method protected abstract subscribeBothActual(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
            "-TF;-TS;>;)V"
        }
    .end annotation
.end method

.method public final subscribeSingleFuture()Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 231
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    new-instance v0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;

    invoke-direct {v0, p0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle;)V

    .line 232
    .local v0, "singleFutureSubscriber":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    invoke-virtual {v0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->getFutureBeforeSubscribe()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 233
    .local v1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    invoke-virtual {v0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 234
    return-object v1
.end method

.method public final subscribeSingleFuture(Lio/reactivex/functions/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TF;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 257
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p1, "onNext":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TF;>;"
    new-instance v0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;

    invoke-direct {v0, p0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle;)V

    .line 258
    .local v0, "singleFutureSubscriber":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    invoke-virtual {v0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->getFutureBeforeSubscribe()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 260
    .local v1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    invoke-virtual {v0, p1}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 261
    return-object v1
.end method

.method public final subscribeSingleFuture(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TF;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 287
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p1, "onNext":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TF;>;"
    .local p2, "onError":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Ljava/lang/Throwable;>;"
    new-instance v0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;

    invoke-direct {v0, p0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle;)V

    .line 288
    .local v0, "singleFutureSubscriber":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    invoke-virtual {v0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->getFutureBeforeSubscribe()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 290
    .local v1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    invoke-virtual {v0, p1, p2}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 291
    return-object v1
.end method

.method public final subscribeSingleFuture(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p3, "onComplete"    # Lio/reactivex/functions/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TF;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 321
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p1, "onNext":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TF;>;"
    .local p2, "onError":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Ljava/lang/Throwable;>;"
    new-instance v0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;

    invoke-direct {v0, p0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle;)V

    .line 322
    .local v0, "singleFutureSubscriber":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    invoke-virtual {v0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->getFutureBeforeSubscribe()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 324
    .local v1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    invoke-virtual {v0, p1, p2, p3}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    .line 325
    return-object v1
.end method

.method public final subscribeSingleFuture(Lorg/reactivestreams/Subscriber;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TF;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 348
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TF;>;"
    new-instance v0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;

    invoke-direct {v0, p0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle;)V

    .line 349
    .local v0, "singleFutureSubscriber":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber<TF;TS;>;"
    invoke-virtual {v0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->getFutureBeforeSubscribe()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 350
    .local v1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    invoke-virtual {v0, p1}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 351
    return-object v1
.end method
