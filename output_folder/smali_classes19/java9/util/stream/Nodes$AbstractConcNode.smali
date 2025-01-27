.class abstract Ljava9/util/stream/Nodes$AbstractConcNode;
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
    name = "AbstractConcNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Ljava9/util/stream/Node<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava9/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final left:Ljava9/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field protected final right:Ljava9/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field private final size:J


# direct methods
.method constructor <init>(Ljava9/util/stream/Node;Ljava9/util/stream/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_NODE;)V"
        }
    .end annotation

    .line 760
    .local p0, "this":Ljava9/util/stream/Nodes$AbstractConcNode;, "Ljava9/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    .local p1, "left":Ljava9/util/stream/Node;, "TT_NODE;"
    .local p2, "right":Ljava9/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput-object p1, p0, Ljava9/util/stream/Nodes$AbstractConcNode;->left:Ljava9/util/stream/Node;

    .line 762
    iput-object p2, p0, Ljava9/util/stream/Nodes$AbstractConcNode;->right:Ljava9/util/stream/Node;

    .line 767
    invoke-interface {p1}, Ljava9/util/stream/Node;->count()J

    move-result-wide v0

    invoke-interface {p2}, Ljava9/util/stream/Node;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava9/util/stream/Nodes$AbstractConcNode;->size:J

    .line 768
    return-void
.end method


# virtual methods
.method public count()J
    .locals 2

    .line 784
    .local p0, "this":Ljava9/util/stream/Nodes$AbstractConcNode;, "Ljava9/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    iget-wide v0, p0, Ljava9/util/stream/Nodes$AbstractConcNode;->size:J

    return-wide v0
.end method

.method public getChild(I)Ljava9/util/stream/Node;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_NODE;"
        }
    .end annotation

    .line 777
    .local p0, "this":Ljava9/util/stream/Nodes$AbstractConcNode;, "Ljava9/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Ljava9/util/stream/Nodes$AbstractConcNode;->left:Ljava9/util/stream/Node;

    return-object v0

    .line 778
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Ljava9/util/stream/Nodes$AbstractConcNode;->right:Ljava9/util/stream/Node;

    return-object v0

    .line 779
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getChildCount()I
    .locals 1

    .line 772
    .local p0, "this":Ljava9/util/stream/Nodes$AbstractConcNode;, "Ljava9/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    const/4 v0, 0x2

    return v0
.end method
