.class public Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;
.super Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleOperator;
.source "FlowableWithSingleObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleOperator<",
        "TF;TS;TF;TS;>;"
    }
.end annotation


# instance fields
.field private final bufferSize:I

.field private final delayError:Z

.field private final scheduler:Lio/reactivex/Scheduler;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/rx/FlowableWithSingle;Lio/reactivex/Scheduler;ZI)V
    .locals 0
    .param p2, "scheduler"    # Lio/reactivex/Scheduler;
    .param p3, "delayError"    # Z
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;",
            "Lio/reactivex/Scheduler;",
            "ZI)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn<TF;TS;>;"
    .local p1, "source":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleOperator;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle;)V

    .line 41
    iput-object p2, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;->scheduler:Lio/reactivex/Scheduler;

    .line 42
    iput-boolean p3, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;->delayError:Z

    .line 43
    iput p4, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;->bufferSize:I

    .line 44
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TF;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn<TF;TS;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TF;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    iget-object v1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;->scheduler:Lio/reactivex/Scheduler;

    iget-boolean v2, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;->delayError:Z

    iget v3, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;->bufferSize:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/hivemq/client/rx/FlowableWithSingle;->observeOn(Lio/reactivex/Scheduler;ZI)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 49
    return-void
.end method

.method protected subscribeBothActual(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
            "-TF;-TS;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn<TF;TS;>;"
    .local p1, "subscriber":Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;, "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<-TF;-TS;>;"
    new-instance v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;

    iget-object v1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;->scheduler:Lio/reactivex/Scheduler;

    iget-boolean v2, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;->delayError:Z

    iget v3, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleObserveOn;->bufferSize:I

    .line 54
    invoke-virtual {v0, v1, v2, v3}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;->observeOn(Lio/reactivex/Scheduler;ZI)Lio/reactivex/Flowable;

    move-result-object v0

    .line 53
    invoke-static {v0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;->split(Lio/reactivex/Flowable;Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V

    .line 55
    return-void
.end method
