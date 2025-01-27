.class Ljava9/util/stream/ReduceOps$13ReducingSink;
.super Ljava9/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava9/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava9/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/ReduceOps;->makeDouble(Ljava9/util/function/Supplier;Ljava9/util/function/ObjDoubleConsumer;Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/ReduceOps$Box<",
        "TR;>;",
        "Ljava9/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Double;",
        "TR;",
        "Ljava9/util/stream/ReduceOps$13ReducingSink;",
        ">;",
        "Ljava9/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava9/util/function/ObjDoubleConsumer;

.field final synthetic val$combiner:Ljava9/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava9/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava9/util/function/Supplier;Ljava9/util/function/ObjDoubleConsumer;Ljava9/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 734
    iput-object p1, p0, Ljava9/util/stream/ReduceOps$13ReducingSink;->val$supplier:Ljava9/util/function/Supplier;

    iput-object p2, p0, Ljava9/util/stream/ReduceOps$13ReducingSink;->val$accumulator:Ljava9/util/function/ObjDoubleConsumer;

    iput-object p3, p0, Ljava9/util/stream/ReduceOps$13ReducingSink;->val$combiner:Ljava9/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava9/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 2
    .param p1, "t"    # D

    .line 743
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$13ReducingSink;->val$accumulator:Ljava9/util/function/ObjDoubleConsumer;

    iget-object v1, p0, Ljava9/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ljava9/util/function/ObjDoubleConsumer;->accept(Ljava/lang/Object;D)V

    .line 744
    return-void
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    .line 738
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$13ReducingSink;->val$supplier:Ljava9/util/function/Supplier;

    invoke-interface {v0}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    .line 739
    return-void
.end method

.method public combine(Ljava9/util/stream/ReduceOps$13ReducingSink;)V
    .locals 3
    .param p1, "other"    # Ljava9/util/stream/ReduceOps$13ReducingSink;

    .line 748
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$13ReducingSink;->val$combiner:Ljava9/util/function/BinaryOperator;

    iget-object v1, p0, Ljava9/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    iget-object v2, p1, Ljava9/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava9/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    .line 749
    return-void
.end method

.method public bridge synthetic combine(Ljava9/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 734
    check-cast p1, Ljava9/util/stream/ReduceOps$13ReducingSink;

    invoke-virtual {p0, p1}, Ljava9/util/stream/ReduceOps$13ReducingSink;->combine(Ljava9/util/stream/ReduceOps$13ReducingSink;)V

    return-void
.end method
