.class Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber$Conditional;
.super Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber$Conditional;
.source "FlowableWithSingleMapError.java"

# interfaces
.implements Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber;
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
        "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber$Conditional<",
        "TF;",
        "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<",
        "-TF;-TS;>;>;",
        "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<",
        "TF;TS;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<",
            "-TF;-TS;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber$Conditional;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber$Conditional<TF;TS;>;"
    .local p1, "subscriber":Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<-TF;-TS;>;"
    .local p2, "errorMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber$Conditional;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;)V

    .line 169
    return-void
.end method


# virtual methods
.method public onSingle(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber$Conditional;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber$Conditional<TF;TS;>;"
    .local p1, "s":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber$Conditional;->subscriber:Lorg/reactivestreams/Subscriber;

    check-cast v0, Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;

    invoke-interface {v0, p1}, Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;->onSingle(Ljava/lang/Object;)V

    .line 174
    return-void
.end method
