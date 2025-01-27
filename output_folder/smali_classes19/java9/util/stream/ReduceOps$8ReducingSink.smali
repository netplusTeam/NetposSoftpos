.class Ljava9/util/stream/ReduceOps$8ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava9/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava9/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/ReduceOps;->makeLong(JLjava9/util/function/LongBinaryOperator;)Ljava9/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "Ljava9/util/stream/ReduceOps$8ReducingSink;",
        ">;",
        "Ljava9/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field private state:J

.field final synthetic val$identity:J

.field final synthetic val$operator:Ljava9/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(JLjava9/util/function/LongBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 460
    iput-wide p1, p0, Ljava9/util/stream/ReduceOps$8ReducingSink;->val$identity:J

    iput-object p3, p0, Ljava9/util/stream/ReduceOps$8ReducingSink;->val$operator:Ljava9/util/function/LongBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    .line 471
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$8ReducingSink;->val$operator:Ljava9/util/function/LongBinaryOperator;

    iget-wide v1, p0, Ljava9/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-interface {v0, v1, v2, p1, p2}, Ljava9/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava9/util/stream/ReduceOps$8ReducingSink;->state:J

    .line 472
    return-void
.end method

.method public begin(J)V
    .locals 2
    .param p1, "size"    # J

    .line 466
    iget-wide v0, p0, Ljava9/util/stream/ReduceOps$8ReducingSink;->val$identity:J

    iput-wide v0, p0, Ljava9/util/stream/ReduceOps$8ReducingSink;->state:J

    .line 467
    return-void
.end method

.method public combine(Ljava9/util/stream/ReduceOps$8ReducingSink;)V
    .locals 2
    .param p1, "other"    # Ljava9/util/stream/ReduceOps$8ReducingSink;

    .line 481
    iget-wide v0, p1, Ljava9/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-virtual {p0, v0, v1}, Ljava9/util/stream/ReduceOps$8ReducingSink;->accept(J)V

    .line 482
    return-void
.end method

.method public bridge synthetic combine(Ljava9/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 460
    check-cast p1, Ljava9/util/stream/ReduceOps$8ReducingSink;

    invoke-virtual {p0, p1}, Ljava9/util/stream/ReduceOps$8ReducingSink;->combine(Ljava9/util/stream/ReduceOps$8ReducingSink;)V

    return-void
.end method

.method public get()Ljava/lang/Long;
    .locals 2

    .line 476
    iget-wide v0, p0, Ljava9/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 460
    invoke-virtual {p0}, Ljava9/util/stream/ReduceOps$8ReducingSink;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
