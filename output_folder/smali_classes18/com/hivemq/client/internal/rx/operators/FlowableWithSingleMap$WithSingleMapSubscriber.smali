.class Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber;
.super Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;
.source "FlowableWithSingleMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WithSingleMapSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber$Conditional;
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
        "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber<",
        "TF;TS;TFM;TSM;",
        "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
        "-TFM;-TSM;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<",
            "-TFM;-TSM;>;",
            "Lio/reactivex/functions/Function<",
            "-TF;+TFM;>;",
            "Lio/reactivex/functions/Function<",
            "-TS;+TSM;>;)V"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber<TF;TS;TFM;TSM;>;"
    .local p1, "subscriber":Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;, "Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber<-TFM;-TSM;>;"
    .local p2, "flowableMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TF;+TFM;>;"
    .local p3, "singleMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TS;+TSM;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V

    .line 211
    return-void
.end method


# virtual methods
.method onSingleMapped(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSM;)V"
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber<TF;TS;TFM;TSM;>;"
    .local p1, "sm":Ljava/lang/Object;, "TSM;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber;->subscriber:Lorg/reactivestreams/Subscriber;

    check-cast v0, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;

    invoke-interface {v0, p1}, Lcom/hivemq/client/rx/reactivestreams/WithSingleSubscriber;->onSingle(Ljava/lang/Object;)V

    .line 216
    return-void
.end method
