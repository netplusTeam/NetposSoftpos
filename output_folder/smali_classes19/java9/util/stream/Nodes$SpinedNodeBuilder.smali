.class final Ljava9/util/stream/Nodes$SpinedNodeBuilder;
.super Ljava9/util/stream/SpinedBuffer;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node;
.implements Ljava9/util/stream/Node$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpinedNodeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/SpinedBuffer<",
        "TT;>;",
        "Ljava9/util/stream/Node<",
        "TT;>;",
        "Ljava9/util/stream/Node$Builder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1259
    .local p0, "this":Ljava9/util/stream/Nodes$SpinedNodeBuilder;, "Ljava9/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    invoke-direct {p0}, Ljava9/util/stream/SpinedBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1279
    .local p0, "this":Ljava9/util/stream/Nodes$SpinedNodeBuilder;, "Ljava9/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Ljava9/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    .line 1280
    return-void
.end method

.method public asArray(Ljava9/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 1294
    .local p0, "this":Ljava9/util/stream/Nodes$SpinedNodeBuilder;, "Ljava9/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "arrayFactory":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    invoke-super {p0, p1}, Ljava9/util/stream/SpinedBuffer;->asArray(Ljava9/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public begin(J)V
    .locals 0
    .param p1, "size"    # J

    .line 1273
    .local p0, "this":Ljava9/util/stream/Nodes$SpinedNodeBuilder;, "Ljava9/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    invoke-virtual {p0}, Ljava9/util/stream/Nodes$SpinedNodeBuilder;->clear()V

    .line 1274
    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/Nodes$SpinedNodeBuilder;->ensureCapacity(J)V

    .line 1275
    return-void
.end method

.method public build()Ljava9/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 1299
    .local p0, "this":Ljava9/util/stream/Nodes$SpinedNodeBuilder;, "Ljava9/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    return-object p0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 0
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 1289
    .local p0, "this":Ljava9/util/stream/Nodes$SpinedNodeBuilder;, "Ljava9/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-super {p0, p1, p2}, Ljava9/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    .line 1290
    return-void
.end method

.method public end()V
    .locals 0

    .line 1285
    .local p0, "this":Ljava9/util/stream/Nodes$SpinedNodeBuilder;, "Ljava9/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    return-void
.end method

.method public forEach(Ljava9/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1268
    .local p0, "this":Ljava9/util/stream/Nodes$SpinedNodeBuilder;, "Ljava9/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "consumer":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-super {p0, p1}, Ljava9/util/stream/SpinedBuffer;->forEach(Ljava9/util/function/Consumer;)V

    .line 1269
    return-void
.end method

.method public spliterator()Ljava9/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1263
    .local p0, "this":Ljava9/util/stream/Nodes$SpinedNodeBuilder;, "Ljava9/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    invoke-super {p0}, Ljava9/util/stream/SpinedBuffer;->spliterator()Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
