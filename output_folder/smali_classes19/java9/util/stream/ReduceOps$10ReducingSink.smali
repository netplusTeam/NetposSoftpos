.class Ljava9/util/stream/ReduceOps$10ReducingSink;
.super Ljava9/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava9/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava9/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/ReduceOps;->makeLong(Ljava9/util/function/Supplier;Ljava9/util/function/ObjLongConsumer;Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/TerminalOp;
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
        "Ljava/lang/Long;",
        "TR;",
        "Ljava9/util/stream/ReduceOps$10ReducingSink;",
        ">;",
        "Ljava9/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava9/util/function/ObjLongConsumer;

.field final synthetic val$combiner:Ljava9/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava9/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava9/util/function/Supplier;Ljava9/util/function/ObjLongConsumer;Ljava9/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 560
    iput-object p1, p0, Ljava9/util/stream/ReduceOps$10ReducingSink;->val$supplier:Ljava9/util/function/Supplier;

    iput-object p2, p0, Ljava9/util/stream/ReduceOps$10ReducingSink;->val$accumulator:Ljava9/util/function/ObjLongConsumer;

    iput-object p3, p0, Ljava9/util/stream/ReduceOps$10ReducingSink;->val$combiner:Ljava9/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava9/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 2
    .param p1, "t"    # J

    .line 569
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$10ReducingSink;->val$accumulator:Ljava9/util/function/ObjLongConsumer;

    iget-object v1, p0, Ljava9/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ljava9/util/function/ObjLongConsumer;->accept(Ljava/lang/Object;J)V

    .line 570
    return-void
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    .line 564
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$10ReducingSink;->val$supplier:Ljava9/util/function/Supplier;

    invoke-interface {v0}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    .line 565
    return-void
.end method

.method public combine(Ljava9/util/stream/ReduceOps$10ReducingSink;)V
    .locals 3
    .param p1, "other"    # Ljava9/util/stream/ReduceOps$10ReducingSink;

    .line 574
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$10ReducingSink;->val$combiner:Ljava9/util/function/BinaryOperator;

    iget-object v1, p0, Ljava9/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    iget-object v2, p1, Ljava9/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava9/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    .line 575
    return-void
.end method

.method public bridge synthetic combine(Ljava9/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 560
    check-cast p1, Ljava9/util/stream/ReduceOps$10ReducingSink;

    invoke-virtual {p0, p1}, Ljava9/util/stream/ReduceOps$10ReducingSink;->combine(Ljava9/util/stream/ReduceOps$10ReducingSink;)V

    return-void
.end method
