.class Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;
.super Ljava/lang/Object;
.source "FlowableWithSingleMapError.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapErrorSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber$Conditional;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T::",
        "Lorg/reactivestreams/Subscriber<",
        "-TF;>;>",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TF;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


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

.field final subscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private subscription:Lorg/reactivestreams/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;)V
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

    .line 81
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber<TF;TT;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "TT;"
    .local p2, "errorMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 84
    iput-object p2, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;->errorMapper:Lio/reactivex/functions/Function;

    .line 85
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 123
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber<TF;TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 125
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onComplete()V
    .locals 1

    .line 112
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber<TF;TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 113
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 102
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber<TF;TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;->errorMapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Mapped exception"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .local v0, "em":Ljava/lang/Throwable;
    goto :goto_0

    .line 103
    .end local v0    # "em":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    .line 104
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 105
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 107
    .local v0, "em":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber<TF;TT;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "subscription"    # Lorg/reactivestreams/Subscription;

    .line 89
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber<TF;TT;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    .line 90
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 91
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 117
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber<TF;TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMapError$MapErrorSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 119
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
