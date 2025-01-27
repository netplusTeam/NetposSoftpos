.class final Ljava9/util/stream/ForEachOps$ForEachOp$OfLong;
.super Ljava9/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"

# interfaces
.implements Ljava9/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/ForEachOps$ForEachOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/ForEachOps$ForEachOp<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava9/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field final consumer:Ljava9/util/function/LongConsumer;


# direct methods
.method constructor <init>(Ljava9/util/function/LongConsumer;Z)V
    .locals 0
    .param p1, "consumer"    # Ljava9/util/function/LongConsumer;
    .param p2, "ordered"    # Z

    .line 218
    invoke-direct {p0, p2}, Ljava9/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    .line 219
    iput-object p1, p0, Ljava9/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Ljava9/util/function/LongConsumer;

    .line 220
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "t"    # J

    .line 229
    iget-object v0, p0, Ljava9/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Ljava9/util/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Ljava9/util/function/LongConsumer;->accept(J)V

    .line 230
    return-void
.end method

.method public bridge synthetic evaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-super {p0, p1, p2}, Ljava9/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluateSequential(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-super {p0, p1, p2}, Ljava9/util/stream/ForEachOps$ForEachOp;->evaluateSequential(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 213
    invoke-super {p0}, Ljava9/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public inputShape()Ljava9/util/stream/StreamShape;
    .locals 1

    .line 224
    sget-object v0, Ljava9/util/stream/StreamShape;->LONG_VALUE:Ljava9/util/stream/StreamShape;

    return-object v0
.end method
