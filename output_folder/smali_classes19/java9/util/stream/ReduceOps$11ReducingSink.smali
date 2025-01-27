.class Ljava9/util/stream/ReduceOps$11ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava9/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava9/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/ReduceOps;->makeDouble(DLjava9/util/function/DoubleBinaryOperator;)Ljava9/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "Ljava9/util/stream/ReduceOps$11ReducingSink;",
        ">;",
        "Ljava9/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field private state:D

.field final synthetic val$identity:D

.field final synthetic val$operator:Ljava9/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(DLjava9/util/function/DoubleBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 634
    iput-wide p1, p0, Ljava9/util/stream/ReduceOps$11ReducingSink;->val$identity:D

    iput-object p3, p0, Ljava9/util/stream/ReduceOps$11ReducingSink;->val$operator:Ljava9/util/function/DoubleBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    .line 645
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$11ReducingSink;->val$operator:Ljava9/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Ljava9/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-interface {v0, v1, v2, p1, p2}, Ljava9/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava9/util/stream/ReduceOps$11ReducingSink;->state:D

    .line 646
    return-void
.end method

.method public begin(J)V
    .locals 2
    .param p1, "size"    # J

    .line 640
    iget-wide v0, p0, Ljava9/util/stream/ReduceOps$11ReducingSink;->val$identity:D

    iput-wide v0, p0, Ljava9/util/stream/ReduceOps$11ReducingSink;->state:D

    .line 641
    return-void
.end method

.method public combine(Ljava9/util/stream/ReduceOps$11ReducingSink;)V
    .locals 2
    .param p1, "other"    # Ljava9/util/stream/ReduceOps$11ReducingSink;

    .line 655
    iget-wide v0, p1, Ljava9/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-virtual {p0, v0, v1}, Ljava9/util/stream/ReduceOps$11ReducingSink;->accept(D)V

    .line 656
    return-void
.end method

.method public bridge synthetic combine(Ljava9/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 634
    check-cast p1, Ljava9/util/stream/ReduceOps$11ReducingSink;

    invoke-virtual {p0, p1}, Ljava9/util/stream/ReduceOps$11ReducingSink;->combine(Ljava9/util/stream/ReduceOps$11ReducingSink;)V

    return-void
.end method

.method public get()Ljava/lang/Double;
    .locals 2

    .line 650
    iget-wide v0, p0, Ljava9/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 634
    invoke-virtual {p0}, Ljava9/util/stream/ReduceOps$11ReducingSink;->get()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
