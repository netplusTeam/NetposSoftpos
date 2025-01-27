.class Ljava9/util/stream/ReduceOps$5ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava9/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava9/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/ReduceOps;->makeInt(ILjava9/util/function/IntBinaryOperator;)Ljava9/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava9/util/stream/ReduceOps$5ReducingSink;",
        ">;",
        "Ljava9/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field private state:I

.field final synthetic val$identity:I

.field final synthetic val$operator:Ljava9/util/function/IntBinaryOperator;


# direct methods
.method constructor <init>(ILjava9/util/function/IntBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 286
    iput p1, p0, Ljava9/util/stream/ReduceOps$5ReducingSink;->val$identity:I

    iput-object p2, p0, Ljava9/util/stream/ReduceOps$5ReducingSink;->val$operator:Ljava9/util/function/IntBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    .line 297
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$5ReducingSink;->val$operator:Ljava9/util/function/IntBinaryOperator;

    iget v1, p0, Ljava9/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-interface {v0, v1, p1}, Ljava9/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    iput v0, p0, Ljava9/util/stream/ReduceOps$5ReducingSink;->state:I

    .line 298
    return-void
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    .line 292
    iget v0, p0, Ljava9/util/stream/ReduceOps$5ReducingSink;->val$identity:I

    iput v0, p0, Ljava9/util/stream/ReduceOps$5ReducingSink;->state:I

    .line 293
    return-void
.end method

.method public combine(Ljava9/util/stream/ReduceOps$5ReducingSink;)V
    .locals 1
    .param p1, "other"    # Ljava9/util/stream/ReduceOps$5ReducingSink;

    .line 307
    iget v0, p1, Ljava9/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-virtual {p0, v0}, Ljava9/util/stream/ReduceOps$5ReducingSink;->accept(I)V

    .line 308
    return-void
.end method

.method public bridge synthetic combine(Ljava9/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 286
    check-cast p1, Ljava9/util/stream/ReduceOps$5ReducingSink;

    invoke-virtual {p0, p1}, Ljava9/util/stream/ReduceOps$5ReducingSink;->combine(Ljava9/util/stream/ReduceOps$5ReducingSink;)V

    return-void
.end method

.method public get()Ljava/lang/Integer;
    .locals 1

    .line 302
    iget v0, p0, Ljava9/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 286
    invoke-virtual {p0}, Ljava9/util/stream/ReduceOps$5ReducingSink;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
