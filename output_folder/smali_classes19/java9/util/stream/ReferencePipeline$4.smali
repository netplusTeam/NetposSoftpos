.class Ljava9/util/stream/ReferencePipeline$4;
.super Ljava9/util/stream/IntPipeline$StatelessOp;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/ReferencePipeline;->mapToInt(Ljava9/util/function/ToIntFunction;)Ljava9/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/IntPipeline$StatelessOp<",
        "TP_OUT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava9/util/stream/ReferencePipeline;

.field final synthetic val$mapper:Ljava9/util/function/ToIntFunction;


# direct methods
.method constructor <init>(Ljava9/util/stream/ReferencePipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/ToIntFunction;)V
    .locals 0
    .param p1, "this$0"    # Ljava9/util/stream/ReferencePipeline;
    .param p3, "inputShape"    # Ljava9/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 206
    .local p0, "this":Ljava9/util/stream/ReferencePipeline$4;, "Ljava9/util/stream/ReferencePipeline$4;"
    .local p2, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*TP_OUT;*>;"
    iput-object p1, p0, Ljava9/util/stream/ReferencePipeline$4;->this$0:Ljava9/util/stream/ReferencePipeline;

    iput-object p5, p0, Ljava9/util/stream/ReferencePipeline$4;->val$mapper:Ljava9/util/function/ToIntFunction;

    invoke-direct {p0, p2, p3, p4}, Ljava9/util/stream/IntPipeline$StatelessOp;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava9/util/stream/Sink<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 209
    .local p0, "this":Ljava9/util/stream/ReferencePipeline$4;, "Ljava9/util/stream/ReferencePipeline$4;"
    .local p2, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<Ljava/lang/Integer;>;"
    new-instance v0, Ljava9/util/stream/ReferencePipeline$4$1;

    invoke-direct {v0, p0, p2}, Ljava9/util/stream/ReferencePipeline$4$1;-><init>(Ljava9/util/stream/ReferencePipeline$4;Ljava9/util/stream/Sink;)V

    return-object v0
.end method
