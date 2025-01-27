.class Ljava9/util/stream/LongPipeline$8$1;
.super Ljava9/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/LongPipeline$8;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava9/util/stream/LongPipeline$8;


# direct methods
.method constructor <init>(Ljava9/util/stream/LongPipeline$8;Ljava9/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Ljava9/util/stream/LongPipeline$8;

    .line 344
    .local p0, "this":Ljava9/util/stream/LongPipeline$8$1;, "Ljava9/util/stream/LongPipeline$8$1;"
    .local p2, "downstream":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava9/util/stream/LongPipeline$8$1;->this$1:Ljava9/util/stream/LongPipeline$8;

    invoke-direct {p0, p2}, Ljava9/util/stream/Sink$ChainedLong;-><init>(Ljava9/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "t"    # J

    .line 352
    .local p0, "this":Ljava9/util/stream/LongPipeline$8$1;, "Ljava9/util/stream/LongPipeline$8$1;"
    iget-object v0, p0, Ljava9/util/stream/LongPipeline$8$1;->this$1:Ljava9/util/stream/LongPipeline$8;

    iget-object v0, v0, Ljava9/util/stream/LongPipeline$8;->val$predicate:Ljava9/util/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Ljava9/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Ljava9/util/stream/LongPipeline$8$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava9/util/stream/Sink;->accept(J)V

    .line 354
    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 347
    .local p0, "this":Ljava9/util/stream/LongPipeline$8$1;, "Ljava9/util/stream/LongPipeline$8$1;"
    iget-object v0, p0, Ljava9/util/stream/LongPipeline$8$1;->downstream:Ljava9/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava9/util/stream/Sink;->begin(J)V

    .line 348
    return-void
.end method
