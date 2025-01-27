.class Ljava9/util/stream/LongPipeline$2$1;
.super Ljava9/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/LongPipeline$2;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava9/util/stream/LongPipeline$2;


# direct methods
.method constructor <init>(Ljava9/util/stream/LongPipeline$2;Ljava9/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Ljava9/util/stream/LongPipeline$2;

    .line 198
    .local p0, "this":Ljava9/util/stream/LongPipeline$2$1;, "Ljava9/util/stream/LongPipeline$2$1;"
    .local p2, "downstream":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava9/util/stream/LongPipeline$2$1;->this$1:Ljava9/util/stream/LongPipeline$2;

    invoke-direct {p0, p2}, Ljava9/util/stream/Sink$ChainedLong;-><init>(Ljava9/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    .line 201
    .local p0, "this":Ljava9/util/stream/LongPipeline$2$1;, "Ljava9/util/stream/LongPipeline$2$1;"
    iget-object v0, p0, Ljava9/util/stream/LongPipeline$2$1;->downstream:Ljava9/util/stream/Sink;

    long-to-double v1, p1

    invoke-interface {v0, v1, v2}, Ljava9/util/stream/Sink;->accept(D)V

    .line 202
    return-void
.end method
