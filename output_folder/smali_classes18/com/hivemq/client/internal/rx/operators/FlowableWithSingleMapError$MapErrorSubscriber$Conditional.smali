.class Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber$Conditional;
.super Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;
.source "FlowableWithSingleMapError.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/ConditionalSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Conditional"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T::",
        "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
        "-TF;>;>",
        "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber<",
        "TF;TT;>;",
        "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
        "TF;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber$Conditional;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber$Conditional<TF;TT;>;"
    .local p1, "subscriber":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "TT;"
    .local p2, "errorMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;)V

    .line 135
    return-void
.end method


# virtual methods
.method public tryOnNext(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber$Conditional;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber$Conditional<TF;TT;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber$Conditional;->subscriber:Lorg/reactivestreams/Subscriber;

    check-cast v0, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
