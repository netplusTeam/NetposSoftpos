.class Ljava9/util/stream/IntPipeline$3;
.super Ljava9/util/stream/DoublePipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/IntPipeline;->asDoubleStream()Ljava9/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/DoublePipeline$StatelessOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava9/util/stream/IntPipeline;


# direct methods
.method constructor <init>(Ljava9/util/stream/IntPipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V
    .locals 0
    .param p1, "this$0"    # Ljava9/util/stream/IntPipeline;
    .param p3, "inputShape"    # Ljava9/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 213
    .local p0, "this":Ljava9/util/stream/IntPipeline$3;, "Ljava9/util/stream/IntPipeline$3;"
    .local p2, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    iput-object p1, p0, Ljava9/util/stream/IntPipeline$3;->this$0:Ljava9/util/stream/IntPipeline;

    invoke-direct {p0, p2, p3, p4}, Ljava9/util/stream/DoublePipeline$StatelessOp;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 216
    .local p0, "this":Ljava9/util/stream/IntPipeline$3;, "Ljava9/util/stream/IntPipeline$3;"
    .local p2, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<Ljava/lang/Double;>;"
    new-instance v0, Ljava9/util/stream/IntPipeline$3$1;

    invoke-direct {v0, p0, p2}, Ljava9/util/stream/IntPipeline$3$1;-><init>(Ljava9/util/stream/IntPipeline$3;Ljava9/util/stream/Sink;)V

    return-object v0
.end method
