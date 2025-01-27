.class Ljava9/util/stream/ReduceOps$12ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava9/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava9/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/ReduceOps;->makeDouble(Ljava9/util/function/DoubleBinaryOperator;)Ljava9/util/stream/TerminalOp;
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
        "Ljava9/util/OptionalDouble;",
        "Ljava9/util/stream/ReduceOps$12ReducingSink;",
        ">;",
        "Ljava9/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:D

.field final synthetic val$operator:Ljava9/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(Ljava9/util/function/DoubleBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 676
    iput-object p1, p0, Ljava9/util/stream/ReduceOps$12ReducingSink;->val$operator:Ljava9/util/function/DoubleBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    .line 688
    iget-boolean v0, p0, Ljava9/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava9/util/stream/ReduceOps$12ReducingSink;->empty:Z

    .line 690
    iput-wide p1, p0, Ljava9/util/stream/ReduceOps$12ReducingSink;->state:D

    goto :goto_0

    .line 693
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$12ReducingSink;->val$operator:Ljava9/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Ljava9/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-interface {v0, v1, v2, p1, p2}, Ljava9/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava9/util/stream/ReduceOps$12ReducingSink;->state:D

    .line 695
    :goto_0
    return-void
.end method

.method public begin(J)V
    .locals 2
    .param p1, "size"    # J

    .line 682
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/ReduceOps$12ReducingSink;->empty:Z

    .line 683
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava9/util/stream/ReduceOps$12ReducingSink;->state:D

    .line 684
    return-void
.end method

.method public combine(Ljava9/util/stream/ReduceOps$12ReducingSink;)V
    .locals 2
    .param p1, "other"    # Ljava9/util/stream/ReduceOps$12ReducingSink;

    .line 704
    iget-boolean v0, p1, Ljava9/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-nez v0, :cond_0

    .line 705
    iget-wide v0, p1, Ljava9/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-virtual {p0, v0, v1}, Ljava9/util/stream/ReduceOps$12ReducingSink;->accept(D)V

    .line 706
    :cond_0
    return-void
.end method

.method public bridge synthetic combine(Ljava9/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 676
    check-cast p1, Ljava9/util/stream/ReduceOps$12ReducingSink;

    invoke-virtual {p0, p1}, Ljava9/util/stream/ReduceOps$12ReducingSink;->combine(Ljava9/util/stream/ReduceOps$12ReducingSink;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 676
    invoke-virtual {p0}, Ljava9/util/stream/ReduceOps$12ReducingSink;->get()Ljava9/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava9/util/OptionalDouble;
    .locals 2

    .line 699
    iget-boolean v0, p0, Ljava9/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava9/util/OptionalDouble;->empty()Ljava9/util/OptionalDouble;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ljava9/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-static {v0, v1}, Ljava9/util/OptionalDouble;->of(D)Ljava9/util/OptionalDouble;

    move-result-object v0

    :goto_0
    return-object v0
.end method
