.class Ljava9/util/stream/ReduceOps$9ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava9/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava9/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/ReduceOps;->makeLong(Ljava9/util/function/LongBinaryOperator;)Ljava9/util/stream/TerminalOp;
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
        "Ljava9/util/OptionalLong;",
        "Ljava9/util/stream/ReduceOps$9ReducingSink;",
        ">;",
        "Ljava9/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:J

.field final synthetic val$operator:Ljava9/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(Ljava9/util/function/LongBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 502
    iput-object p1, p0, Ljava9/util/stream/ReduceOps$9ReducingSink;->val$operator:Ljava9/util/function/LongBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    .line 514
    iget-boolean v0, p0, Ljava9/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava9/util/stream/ReduceOps$9ReducingSink;->empty:Z

    .line 516
    iput-wide p1, p0, Ljava9/util/stream/ReduceOps$9ReducingSink;->state:J

    goto :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/ReduceOps$9ReducingSink;->val$operator:Ljava9/util/function/LongBinaryOperator;

    iget-wide v1, p0, Ljava9/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-interface {v0, v1, v2, p1, p2}, Ljava9/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava9/util/stream/ReduceOps$9ReducingSink;->state:J

    .line 521
    :goto_0
    return-void
.end method

.method public begin(J)V
    .locals 2
    .param p1, "size"    # J

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/ReduceOps$9ReducingSink;->empty:Z

    .line 509
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava9/util/stream/ReduceOps$9ReducingSink;->state:J

    .line 510
    return-void
.end method

.method public combine(Ljava9/util/stream/ReduceOps$9ReducingSink;)V
    .locals 2
    .param p1, "other"    # Ljava9/util/stream/ReduceOps$9ReducingSink;

    .line 530
    iget-boolean v0, p1, Ljava9/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-nez v0, :cond_0

    .line 531
    iget-wide v0, p1, Ljava9/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-virtual {p0, v0, v1}, Ljava9/util/stream/ReduceOps$9ReducingSink;->accept(J)V

    .line 532
    :cond_0
    return-void
.end method

.method public bridge synthetic combine(Ljava9/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 502
    check-cast p1, Ljava9/util/stream/ReduceOps$9ReducingSink;

    invoke-virtual {p0, p1}, Ljava9/util/stream/ReduceOps$9ReducingSink;->combine(Ljava9/util/stream/ReduceOps$9ReducingSink;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 502
    invoke-virtual {p0}, Ljava9/util/stream/ReduceOps$9ReducingSink;->get()Ljava9/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava9/util/OptionalLong;
    .locals 2

    .line 525
    iget-boolean v0, p0, Ljava9/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava9/util/OptionalLong;->empty()Ljava9/util/OptionalLong;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ljava9/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-static {v0, v1}, Ljava9/util/OptionalLong;->of(J)Ljava9/util/OptionalLong;

    move-result-object v0

    :goto_0
    return-object v0
.end method
