.class final Ljava9/util/stream/Nodes$ToArrayTask$OfRef;
.super Ljava9/util/stream/Nodes$ToArrayTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/Nodes$ToArrayTask<",
        "TT;",
        "Ljava9/util/stream/Node<",
        "TT;>;",
        "Ljava9/util/stream/Nodes$ToArrayTask$OfRef<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava9/util/stream/Node;[Ljava/lang/Object;I)V
    .locals 0
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/Node<",
            "TT;>;[TT;I)V"
        }
    .end annotation

    .line 2031
    .local p0, "this":Ljava9/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava9/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    .local p1, "node":Ljava9/util/stream/Node;, "Ljava9/util/stream/Node<TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p3}, Ljava9/util/stream/Nodes$ToArrayTask;-><init>(Ljava9/util/stream/Node;I)V

    .line 2032
    iput-object p2, p0, Ljava9/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    .line 2033
    return-void
.end method

.method synthetic constructor <init>(Ljava9/util/stream/Node;[Ljava/lang/Object;ILjava9/util/stream/Nodes$1;)V
    .locals 0
    .param p1, "x0"    # Ljava9/util/stream/Node;
    .param p2, "x1"    # [Ljava/lang/Object;
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava9/util/stream/Nodes$1;

    .line 2026
    .local p0, "this":Ljava9/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava9/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava9/util/stream/Node;[Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>(Ljava9/util/stream/Nodes$ToArrayTask$OfRef;Ljava9/util/stream/Node;I)V
    .locals 1
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/Nodes$ToArrayTask$OfRef<",
            "TT;>;",
            "Ljava9/util/stream/Node<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2036
    .local p0, "this":Ljava9/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava9/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    .local p1, "parent":Ljava9/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava9/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    .local p2, "node":Ljava9/util/stream/Node;, "Ljava9/util/stream/Node<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/Nodes$ToArrayTask;-><init>(Ljava9/util/stream/Nodes$ToArrayTask;Ljava9/util/stream/Node;I)V

    .line 2037
    iget-object v0, p1, Ljava9/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    iput-object v0, p0, Ljava9/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    .line 2038
    return-void
.end method


# virtual methods
.method copyNodeToArray()V
    .locals 3

    .line 2047
    .local p0, "this":Ljava9/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava9/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    iget-object v0, p0, Ljava9/util/stream/Nodes$ToArrayTask$OfRef;->node:Ljava9/util/stream/Node;

    iget-object v1, p0, Ljava9/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava9/util/stream/Nodes$ToArrayTask$OfRef;->offset:I

    invoke-interface {v0, v1, v2}, Ljava9/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 2048
    return-void
.end method

.method makeChild(II)Ljava9/util/stream/Nodes$ToArrayTask$OfRef;
    .locals 2
    .param p1, "childIndex"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava9/util/stream/Nodes$ToArrayTask$OfRef<",
            "TT;>;"
        }
    .end annotation

    .line 2042
    .local p0, "this":Ljava9/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava9/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    new-instance v0, Ljava9/util/stream/Nodes$ToArrayTask$OfRef;

    iget-object v1, p0, Ljava9/util/stream/Nodes$ToArrayTask$OfRef;->node:Ljava9/util/stream/Node;

    invoke-interface {v1, p1}, Ljava9/util/stream/Node;->getChild(I)Ljava9/util/stream/Node;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Ljava9/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava9/util/stream/Nodes$ToArrayTask$OfRef;Ljava9/util/stream/Node;I)V

    return-object v0
.end method

.method bridge synthetic makeChild(II)Ljava9/util/stream/Nodes$ToArrayTask;
    .locals 0

    .line 2026
    .local p0, "this":Ljava9/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava9/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/stream/Nodes$ToArrayTask$OfRef;->makeChild(II)Ljava9/util/stream/Nodes$ToArrayTask$OfRef;

    move-result-object p1

    return-object p1
.end method
