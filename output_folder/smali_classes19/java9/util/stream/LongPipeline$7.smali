.class Ljava9/util/stream/LongPipeline$7;
.super Ljava9/util/stream/LongPipeline$StatelessOp;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/LongPipeline;->unordered()Ljava9/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/LongPipeline$StatelessOp<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava9/util/stream/LongPipeline;


# direct methods
.method constructor <init>(Ljava9/util/stream/LongPipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V
    .locals 0
    .param p1, "this$0"    # Ljava9/util/stream/LongPipeline;
    .param p3, "inputShape"    # Ljava9/util/stream/StreamShape;
    .param p4, "opFlags"    # I

    .line 329
    .local p0, "this":Ljava9/util/stream/LongPipeline$7;, "Ljava9/util/stream/LongPipeline$7;"
    .local p2, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    iput-object p1, p0, Ljava9/util/stream/LongPipeline$7;->this$0:Ljava9/util/stream/LongPipeline;

    invoke-direct {p0, p2, p3, p4}, Ljava9/util/stream/LongPipeline$StatelessOp;-><init>(Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
    .locals 0
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 332
    .local p0, "this":Ljava9/util/stream/LongPipeline$7;, "Ljava9/util/stream/LongPipeline$7;"
    .local p2, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<Ljava/lang/Long;>;"
    return-object p2
.end method
