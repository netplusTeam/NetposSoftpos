.class public Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;
.super Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleOperator;
.source "FlowableWithSingleMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber;,
        Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;
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
        ">",
        "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleOperator<",
        "TF;TS;TFM;TSM;>;"
    }
.end annotation


# instance fields
.field private final flowableMapper:Lio/reactivex/functions/Function;
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


# direct methods
.method private constructor <init>(Lcom/hivemq/client/rx/FlowableWithSingle;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;",
            "Lio/reactivex/functions/Function<",
            "-TF;+TFM;>;",
            "Lio/reactivex/functions/Function<",
            "-TS;+TSM;>;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap<TF;TS;TFM;TSM;>;"
    .local p1, "source":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p2, "flowableMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TF;+TFM;>;"
    .local p3, "singleMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TS;+TSM;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleOperator;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle;)V

    .line 61
    iput-object p2, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->flowableMapper:Lio/reactivex/functions/Function;

    .line 62
    iput-object p3, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->singleMapper:Lio/reactivex/functions/Function;

    .line 63
    return-void
.end method

.method public static mapBoth(Lcom/hivemq/client/rx/FlowableWithSingle;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;
    .locals 1
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
            ">(",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;",
            "Lio/reactivex/functions/Function<",
            "-TF;+TFM;>;",
            "Lio/reactivex/functions/Function<",
            "-TS;+TSM;>;)",
            "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap<",
            "TF;TS;TFM;TSM;>;"
        }
    .end annotation

    .line 42
    .local p0, "source":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p1, "flowableMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TF;+TFM;>;"
    .local p2, "singleMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TS;+TSM;>;"
    new-instance v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static mapSingle(Lcom/hivemq/client/rx/FlowableWithSingle;Lio/reactivex/functions/Function;)Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "SM:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "TF;TS;>;",
            "Lio/reactivex/functions/Function<",
            "-TS;+TSM;>;)",
            "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap<",
            "TF;TS;TF;TSM;>;"
        }
    .end annotation

    .line 49
    .local p0, "source":Lcom/hivemq/client/rx/FlowableWithSingle;, "Lcom/hivemq/client/rx/FlowableWithSingle<TF;TS;>;"
    .local p1, "singleMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TS;+TSM;>;"
    new-instance v0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;-><init>(Lcom/hivemq/client/rx/FlowableWithSingle;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V

    return-object v0
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TFM;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap<TF;TS;TFM;TSM;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TFM;>;"
    instance-of v0, p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v0, :cond_0

    .line 69
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 70
    .local v0, "conditional":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TFM;>;"
    iget-object v1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    new-instance v2, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional;

    iget-object v3, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->flowableMapper:Lio/reactivex/functions/Function;

    iget-object v4, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->singleMapper:Lio/reactivex/functions/Function;

    invoke-direct {v2, v0, v3, v4}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V

    invoke-virtual {v1, v2}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribeBoth(Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;)V

    .line 71
    .end local v0    # "conditional":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TFM;>;"
    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    new-instance v1, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;

    iget-object v2, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->flowableMapper:Lio/reactivex/functions/Function;

    iget-object v3, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->singleMapper:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v2, v3}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V

    invoke-virtual {v0, v1}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribeBoth(Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;)V

    .line 74
    :goto_0
    return-void
.end method

.method protected subscribeBothActual(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
            "-TFM;-TSM;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap<TF;TS;TFM;TSM;>;"
    .local p1, "subscriber":Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;, "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<-TFM;-TSM;>;"
    instance-of v0, p1, Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;

    if-eqz v0, :cond_0

    .line 80
    move-object v0, p1

    check-cast v0, Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;

    .line 82
    .local v0, "conditional":Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<-TFM;-TSM;>;"
    iget-object v1, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    new-instance v2, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber$Conditional;

    iget-object v3, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->flowableMapper:Lio/reactivex/functions/Function;

    iget-object v4, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->singleMapper:Lio/reactivex/functions/Function;

    invoke-direct {v2, v0, v3, v4}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber$Conditional;-><init>(Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V

    invoke-virtual {v1, v2}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribeBoth(Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;)V

    .line 83
    .end local v0    # "conditional":Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<-TFM;-TSM;>;"
    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->source:Lcom/hivemq/client/rx/FlowableWithSingle;

    new-instance v1, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber;

    iget-object v2, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->flowableMapper:Lio/reactivex/functions/Function;

    iget-object v3, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;->singleMapper:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v2, v3}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber;-><init>(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V

    invoke-virtual {v0, v1}, Lcom/hivemq/client/rx/FlowableWithSingle;->subscribeBoth(Lcom/hivemq/client/rx/FlowableWithSingleSubscriber;)V

    .line 86
    :goto_0
    return-void
.end method
