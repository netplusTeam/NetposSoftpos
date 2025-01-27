.class Ljava9/util/stream/LongPipeline$1;
.super Ljava9/util/stream/ReferencePipeline$StatelessOp;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/LongPipeline;->mapToObj(Ljava9/util/function/LongFunction;I)Ljava9/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/ReferencePipeline$StatelessOp<",
        "Ljava/lang/Long;",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava9/util/stream/LongPipeline;

.field final synthetic val$mapper:Ljava9/util/function/LongFunction;


# direct methods
.method constructor <init>(Ljava9/util/stream/LongPipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/LongFunction;)V
    .locals 0
    .param p1, "this$0"    # Ljava9/util/stream/LongPipeline;
    .param p3, "inputShape"    # Ljava9/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 166
    .local p0, "this":Ljava9/util/stream/LongPipeline$1;, "Ljava9/util/stream/LongPipeline$1;"
    .local p2, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    iput-object p1, p0, Ljava9/util/stream/LongPipeline$1;->this$0:Ljava9/util/stream/LongPipeline;

    iput-object p5, p0, Ljava9/util/stream/LongPipeline$1;->val$mapper:Ljava9/util/function/LongFunction;

    invoke-direct {p0, p2, p3, p4}, Ljava9/util/stream/ReferencePipeline$StatelessOp;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

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
            "TU;>;)",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 169
    .local p0, "this":Ljava9/util/stream/LongPipeline$1;, "Ljava9/util/stream/LongPipeline$1;"
    .local p2, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TU;>;"
    new-instance v0, Ljava9/util/stream/LongPipeline$1$1;

    invoke-direct {v0, p0, p2}, Ljava9/util/stream/LongPipeline$1$1;-><init>(Ljava9/util/stream/LongPipeline$1;Ljava9/util/stream/Sink;)V

    return-object v0
.end method
