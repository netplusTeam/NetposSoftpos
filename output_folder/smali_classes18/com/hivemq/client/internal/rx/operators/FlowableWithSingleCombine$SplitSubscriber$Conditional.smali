.class Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Conditional;
.super Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;
.source "FlowableWithSingleCombine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Conditional"
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
        "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<",
        "-TF;-TS;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<",
            "-TF;-TS;>;)V"
        }
    .end annotation

    .line 244
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Conditional;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Conditional<TF;TS;>;"
    .local p1, "subscriber":Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<-TF;-TS;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;-><init>(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V

    .line 245
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

    .line 249
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Conditional;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Conditional<TF;TS;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Conditional;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    check-cast v0, Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;

    invoke-interface {v0, p1}, Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
