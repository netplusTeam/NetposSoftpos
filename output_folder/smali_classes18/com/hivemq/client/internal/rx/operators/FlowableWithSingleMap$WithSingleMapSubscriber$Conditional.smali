.class Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber$Conditional;
.super Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional;
.source "FlowableWithSingleMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber;
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
        ">",
        "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional<",
        "TF;TS;TFM;TSM;",
        "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<",
        "-TFM;-TSM;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<",
            "-TFM;-TSM;>;",
            "Lio/reactivex/functions/Function<",
            "-TF;+TFM;>;",
            "Lio/reactivex/functions/Function<",
            "-TS;+TSM;>;)V"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber$Conditional;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber$Conditional<TF;TS;TFM;TSM;>;"
    .local p1, "subscriber":Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;, "Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber<-TFM;-TSM;>;"
    .local p2, "flowableMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TF;+TFM;>;"
    .local p3, "singleMapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TS;+TSM;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$MapSubscriber$Conditional;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V

    .line 227
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

    .line 231
    .local p0, "this":Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber$Conditional;, "Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber$Conditional<TF;TS;TFM;TSM;>;"
    .local p1, "sm":Ljava/lang/Object;, "TSM;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/operators/FlowableWithSingleMap$WithSingleMapSubscriber$Conditional;->subscriber:Lorg/reactivestreams/Subscriber;

    check-cast v0, Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;

    invoke-interface {v0, p1}, Lcom/hivemq/client/internal/rx/WithSingleConditionalSubscriber;->onSingle(Ljava/lang/Object;)V

    .line 232
    return-void
.end method
