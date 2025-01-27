.class Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional;
.super Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;
.source "FlowableWithSingleMap.java"

# interfaces
.implements Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;
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
        "FM:",
        "Ljava/lang/Object;",
        "SM:",
        "Ljava/lang/Object;",
        "T::",
        "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
        "-TFM;>;>",
        "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber<",
        "TF;TS;TFM;TSM;TT;>;",
        "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<",
        "TF;TS;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V
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

    .line 180
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional<TF;TS;TFM;TSM;TT;>;"
    .local p1, "subscriber":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "TT;"
    .local p2, "flowableMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TF;+TFM;>;"
    .local p3, "singleMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TS;+TSM;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V

    .line 181
    return-void
.end method


# virtual methods
.method public tryOnNext(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 185
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional<TF;TS;TFM;TSM;TT;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional;->flowableMapper:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional;->subscriber:Lorg/reactivestreams/Subscriber;

    check-cast v0, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 191
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional;->flowableMapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Mapped value"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .local v0, "fm":Ljava/lang/Object;, "TFM;"
    nop

    .line 196
    iget-object v1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional;->subscriber:Lorg/reactivestreams/Subscriber;

    check-cast v1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 192
    .end local v0    # "fm":Ljava/lang/Object;, "TFM;"
    :catchall_0
    move-exception v0

    .line 193
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional;->fail(Ljava/lang/Throwable;)V

    .line 194
    const/4 v1, 0x0

    return v1
.end method
