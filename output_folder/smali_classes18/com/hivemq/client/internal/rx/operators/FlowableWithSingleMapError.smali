.class public Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;
.super Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleOperator;
.source "FlowableWithSingleMapError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber;,
        Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;
    }
.end annotation

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
.field private final errorMapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hivemq/client/rx/FlowableWithSingle;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError<TF;TS;>;"
    .local p1, "source":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p2, "errorMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleOperator;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle;)V

    .line 46
    iput-object p2, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;->errorMapper:Lio/reactivex/functions/Function;

    .line 47
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

    .line 51
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError<TF;TS;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TF;>;"
    instance-of v0, p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 54
    .local v0, "conditional":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TF;>;"
    iget-object v1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    new-instance v2, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber$Conditional;

    iget-object v3, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;->errorMapper:Lio/reactivex/functions/Function;

    invoke-direct {v2, v0, v3}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber$Conditional;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;)V

    invoke-virtual {v1, v2}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 55
    .end local v0    # "conditional":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TF;>;"
    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    new-instance v1, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;

    iget-object v2, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;->errorMapper:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v2}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;)V

    invoke-virtual {v0, v1}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 58
    :goto_0
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

    .line 62
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError<TF;TS;>;"
    .local p1, "subscriber":Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;, "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<-TF;-TS;>;"
    instance-of v0, p1, Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;

    .line 66
    .local v0, "conditional":Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<-TF;-TS;>;"
    iget-object v1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    new-instance v2, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber$Conditional;

    iget-object v3, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;->errorMapper:Lio/reactivex/functions/Function;

    invoke-direct {v2, v0, v3}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber$Conditional;-><init>(Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;Lio/reactivex/functions/Function;)V

    invoke-virtual {v1, v2}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribeBoth(Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;)V

    .line 67
    .end local v0    # "conditional":Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<-TF;-TS;>;"
    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    new-instance v1, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber;

    iget-object v2, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;->errorMapper:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v2}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$WithSingleMapErrorSubscriber;-><init>(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;Lio/reactivex/functions/Function;)V

    invoke-virtual {v0, v1}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribeBoth(Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;)V

    .line 70
    :goto_0
    return-void
.end method
