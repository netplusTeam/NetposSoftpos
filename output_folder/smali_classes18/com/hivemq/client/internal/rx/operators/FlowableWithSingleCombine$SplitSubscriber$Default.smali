.class Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Default;
.super Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;
.source "FlowableWithSingleCombine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber<",
        "TF;TS;",
        "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
        "-TF;-TS;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
            "-TF;-TS;>;)V"
        }
    .end annotation

    .line 230
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Default;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Default<TF;TS;>;"
    .local p1, "subscriber":Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;, "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<-TF;-TS;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;-><init>(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V

    .line 231
    return-void
.end method


# virtual methods
.method tryOnNextActual(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 235
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Default;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Default<TF;TS;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Default;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    invoke-interface {v0, p1}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onNext(Ljava/lang/Object;)V

    .line 236
    const/4 v0, 0x1

    return v0
.end method
