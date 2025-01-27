.class abstract Ljava9/util/stream/Nodes$EmptyNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "EmptyNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/Nodes$EmptyNode$OfDouble;,
        Ljava9/util/stream/Nodes$EmptyNode$OfLong;,
        Ljava9/util/stream/Nodes$EmptyNode$OfInt;,
        Ljava9/util/stream/Nodes$EmptyNode$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 566
    .local p0, "this":Ljava9/util/stream/Nodes$EmptyNode;, "Ljava9/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asArray(Ljava9/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 570
    .local p0, "this":Ljava9/util/stream/Nodes$EmptyNode;, "Ljava9/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>;"
    .local p1, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[TT;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava9/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation

    .line 573
    .local p0, "this":Ljava9/util/stream/Nodes$EmptyNode;, "Ljava9/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>;"
    .local p1, "array":Ljava/lang/Object;, "TT_ARR;"
    return-void
.end method

.method public count()J
    .locals 2

    .line 577
    .local p0, "this":Ljava9/util/stream/Nodes$EmptyNode;, "Ljava9/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public forEach(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 580
    .local p0, "this":Ljava9/util/stream/Nodes$EmptyNode;, "Ljava9/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    return-void
.end method
