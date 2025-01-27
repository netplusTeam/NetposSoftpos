.class Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber;
.super Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;
.source "FlowableWithSingleMapError.java"

# interfaces
.implements Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WithSingleMapErrorSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber$Conditional;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber<",
        "TF;",
        "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
        "-TF;-TS;>;>;",
        "Lcom/hivemq/client/rx/FlowableWithSingleSubscriber<",
        "TF;TS;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
            "-TF;-TS;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber<TF;TS;>;"
    .local p1, "subscriber":Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;, "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<-TF;-TS;>;"
    .local p2, "errorMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;)V

    .line 153
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

    .line 157
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber<TF;TS;>;"
    .local p1, "s":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    check-cast v0, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    invoke-interface {v0, p1}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onSingle(Ljava/lang/Object;)V

    .line 158
    return-void
.end method
