.class Ljava9/util/stream/ReduceOps$3ReducingSink;
.super Ljava9/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava9/util/stream/ReduceOps$AccumulatingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/ReduceOps;->makeRef(Ljava9/util/stream/Collector;)Ljava9/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/ReduceOps$Box<",
        "TI;>;",
        "Ljava9/util/stream/ReduceOps$AccumulatingSink<",
        "TT;TI;",
        "Ljava9/util/stream/ReduceOps$3ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava9/util/function/BiConsumer;

.field final synthetic val$combiner:Ljava9/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava9/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Ljava9/util/stream/ReduceOps$3ReducingSink;->val$supplier:Ljava9/util/function/Supplier;

    iput-object p2, p0, Ljava9/util/stream/ReduceOps$3ReducingSink;->val$accumulator:Ljava9/util/function/BiConsumer;

    iput-object p3, p0, Ljava9/util/stream/ReduceOps$3ReducingSink;->val$combiner:Ljava9/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava9/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 169
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$3ReducingSink;->val$accumulator:Ljava9/util/function/BiConsumer;

    iget-object v1, p0, Ljava9/util/stream/ReduceOps$3ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    .line 164
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$3ReducingSink;->val$supplier:Ljava9/util/function/Supplier;

    invoke-interface {v0}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/stream/ReduceOps$3ReducingSink;->state:Ljava/lang/Object;

    .line 165
    return-void
.end method

.method public combine(Ljava9/util/stream/ReduceOps$3ReducingSink;)V
    .locals 3
    .param p1, "other"    # Ljava9/util/stream/ReduceOps$3ReducingSink;

    .line 174
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$3ReducingSink;->val$combiner:Ljava9/util/function/BinaryOperator;

    iget-object v1, p0, Ljava9/util/stream/ReduceOps$3ReducingSink;->state:Ljava/lang/Object;

    iget-object v2, p1, Ljava9/util/stream/ReduceOps$3ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava9/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/stream/ReduceOps$3ReducingSink;->state:Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public bridge synthetic combine(Ljava9/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 160
    check-cast p1, Ljava9/util/stream/ReduceOps$3ReducingSink;

    invoke-virtual {p0, p1}, Ljava9/util/stream/ReduceOps$3ReducingSink;->combine(Ljava9/util/stream/ReduceOps$3ReducingSink;)V

    return-void
.end method
