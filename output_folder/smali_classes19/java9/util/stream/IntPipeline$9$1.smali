.class Ljava9/util/stream/IntPipeline$9$1;
.super Ljava9/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/IntPipeline$9;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava9/util/stream/IntPipeline$9;


# direct methods
.method constructor <init>(Ljava9/util/stream/IntPipeline$9;Ljava9/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Ljava9/util/stream/IntPipeline$9;

    .line 361
    .local p0, "this":Ljava9/util/stream/IntPipeline$9$1;, "Ljava9/util/stream/IntPipeline$9$1;"
    .local p2, "downstream":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava9/util/stream/IntPipeline$9$1;->this$1:Ljava9/util/stream/IntPipeline$9;

    invoke-direct {p0, p2}, Ljava9/util/stream/Sink$ChainedInt;-><init>(Ljava9/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    .line 369
    .local p0, "this":Ljava9/util/stream/IntPipeline$9$1;, "Ljava9/util/stream/IntPipeline$9$1;"
    iget-object v0, p0, Ljava9/util/stream/IntPipeline$9$1;->this$1:Ljava9/util/stream/IntPipeline$9;

    iget-object v0, v0, Ljava9/util/stream/IntPipeline$9;->val$predicate:Ljava9/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava9/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Ljava9/util/stream/IntPipeline$9$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava9/util/stream/Sink;->accept(I)V

    .line 371
    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 364
    .local p0, "this":Ljava9/util/stream/IntPipeline$9$1;, "Ljava9/util/stream/IntPipeline$9$1;"
    iget-object v0, p0, Ljava9/util/stream/IntPipeline$9$1;->downstream:Ljava9/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava9/util/stream/Sink;->begin(J)V

    .line 365
    return-void
.end method
