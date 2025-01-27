.class abstract Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;
.super Ljava/lang/Object;
.source "FlowableWithSingleCombine.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/ConditionalSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplitSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Conditional;,
        Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "T::",
        "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
        "-TF;-TS;>;>",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;
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

    .line 168
    const-class v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine;

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 174
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber<TF;TS;TT;>;"
    .local p1, "subscriber":Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    .line 176
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 223
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber<TF;TS;TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 225
    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onComplete()V
    .locals 1

    .line 212
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber<TF;TS;TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    invoke-interface {v0}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onComplete()V

    .line 213
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 207
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber<TF;TS;TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    invoke-interface {v0, p1}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 208
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 186
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber<TF;TS;TT;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 188
    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 190
    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "subscription"    # Lorg/reactivestreams/Subscription;

    .line 180
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber<TF;TS;TT;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    .line 181
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    invoke-interface {v0, p0}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 182
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 217
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber<TF;TS;TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 219
    return-void

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 194
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber<TF;TS;TT;>;"
    instance-of v0, p1, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SingleElement;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;->subscriber:Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SingleElement;

    iget-object v1, v1, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SingleElement;->element:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onSingle(Ljava/lang/Object;)V

    .line 197
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleCombine$SplitSubscriber;->tryOnNextActual(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract tryOnNextActual(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation
.end method
