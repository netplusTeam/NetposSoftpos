.class Ljava9/util/stream/DoublePipeline$7$1;
.super Ljava9/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/DoublePipeline$7;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava9/util/stream/DoublePipeline$7;


# direct methods
.method constructor <init>(Ljava9/util/stream/DoublePipeline$7;Ljava9/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Ljava9/util/stream/DoublePipeline$7;

    .line 326
    .local p0, "this":Ljava9/util/stream/DoublePipeline$7$1;, "Ljava9/util/stream/DoublePipeline$7$1;"
    .local p2, "downstream":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava9/util/stream/DoublePipeline$7$1;->this$1:Ljava9/util/stream/DoublePipeline$7;

    invoke-direct {p0, p2}, Ljava9/util/stream/Sink$ChainedDouble;-><init>(Ljava9/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "t"    # D

    .line 334
    .local p0, "this":Ljava9/util/stream/DoublePipeline$7$1;, "Ljava9/util/stream/DoublePipeline$7$1;"
    iget-object v0, p0, Ljava9/util/stream/DoublePipeline$7$1;->this$1:Ljava9/util/stream/DoublePipeline$7;

    iget-object v0, v0, Ljava9/util/stream/DoublePipeline$7;->val$predicate:Ljava9/util/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Ljava9/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Ljava9/util/stream/DoublePipeline$7$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava9/util/stream/Sink;->accept(D)V

    .line 336
    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 329
    .local p0, "this":Ljava9/util/stream/DoublePipeline$7$1;, "Ljava9/util/stream/DoublePipeline$7$1;"
    iget-object v0, p0, Ljava9/util/stream/DoublePipeline$7$1;->downstream:Ljava9/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava9/util/stream/Sink;->begin(J)V

    .line 330
    return-void
.end method
