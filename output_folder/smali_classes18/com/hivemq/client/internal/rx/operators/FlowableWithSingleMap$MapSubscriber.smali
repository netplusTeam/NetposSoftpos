.class Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;
.super Ljava/lang/Object;
.source "FlowableWithSingleMap.java"

# interfaces
.implements Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "FM:",
        "Ljava/lang/Object;",
        "SM:",
        "Ljava/lang/Object;",
        "T::",
        "Lorg/reactivestreams/Subscriber<",
        "-TFM;>;>",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/rx/FlowableWithSingleSubscriber<",
        "TF;TS;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final flowableMapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TF;+TFM;>;"
        }
    .end annotation
.end field

.field private final singleMapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TS;+TSM;>;"
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

    .line 88
    const-class v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/reactivex/functions/Function<",
            "-TF;+TFM;>;",
            "Lio/reactivex/functions/Function<",
            "-TS;+TSM;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber<TF;TS;TFM;TSM;TT;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "TT;"
    .local p2, "flowableMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TF;+TFM;>;"
    .local p3, "singleMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TS;+TSM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 102
    iput-object p2, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->flowableMapper:Lio/reactivex/functions/Function;

    .line 103
    iput-object p3, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->singleMapper:Lio/reactivex/functions/Function;

    .line 104
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 168
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber<TF;TS;TFM;TSM;TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 170
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method fail(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 144
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber<TF;TS;TFM;TSM;TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 146
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 147
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 148
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onComplete()V
    .locals 1

    .line 157
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber<TF;TS;TFM;TSM;TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 158
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 152
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber<TF;TS;TFM;TSM;TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 153
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber<TF;TS;TFM;TSM;TT;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->flowableMapper:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Mapped value"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .local v0, "fm":Ljava/lang/Object;, "TFM;"
    nop

    .line 139
    iget-object v1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 141
    .end local v0    # "fm":Ljava/lang/Object;, "TFM;"
    :goto_0
    return-void

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->fail(Ljava/lang/Throwable;)V

    .line 137
    return-void
.end method

.method public onSingle(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber<TF;TS;TFM;TSM;TT;>;"
    .local p1, "s":Ljava/lang/Object;, "TS;"
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->singleMapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Mapped single value"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .local v0, "sm":Ljava/lang/Object;, "TSM;"
    nop

    .line 121
    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->onSingleMapped(Ljava/lang/Object;)V

    .line 122
    return-void

    .line 117
    .end local v0    # "sm":Ljava/lang/Object;, "TSM;"
    :catchall_0
    move-exception v0

    .line 118
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->fail(Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method

.method onSingleMapped(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSM;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber<TF;TS;TFM;TSM;TT;>;"
    .local p1, "sm":Ljava/lang/Object;, "TSM;"
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "subscription"    # Lorg/reactivestreams/Subscription;

    .line 108
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber<TF;TS;TFM;TSM;TT;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    .line 109
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 110
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 162
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber<TF;TS;TFM;TSM;TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 164
    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
