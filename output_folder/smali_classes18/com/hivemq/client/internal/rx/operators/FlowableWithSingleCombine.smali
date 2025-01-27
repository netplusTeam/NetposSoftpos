.class Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;
.super Lio/reactivex/Flowable;
.source "FlowableWithSingleCombine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SingleElement;,
        Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;,
        Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final source:Lcom/hivemq/client/rx/FlowableWithSingle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hivemq/client/rx/FlowableWithSingle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine<TF;TS;>;"
    .local p1, "source":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    .line 42
    return-void
.end method

.method static split(Lio/reactivex/Flowable;Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
            "-TF;-TS;>;)V"
        }
    .end annotation

    .line 159
    .local p0, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Ljava/lang/Object;>;"
    .local p1, "subscriber":Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;, "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<-TF;-TS;>;"
    instance-of v0, p1, Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Conditional;

    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Conditional;-><init>(Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;)V

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 164
    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Default;

    invoke-direct {v0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Default;-><init>(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 166
    :goto_0
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine<TF;TS;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    new-instance v1, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;

    invoke-direct {v1, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$CombineSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    invoke-virtual {v0, v1}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribeBoth(Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;)V

    .line 47
    return-void
.end method
