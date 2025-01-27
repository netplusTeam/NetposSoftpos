.class public Lorg/jline/reader/impl/UndoTree;
.super Ljava/lang/Object;
.source "UndoTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/reader/impl/UndoTree$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private current:Lorg/jline/reader/impl/UndoTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jline/reader/impl/UndoTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field

.field private final parent:Lorg/jline/reader/impl/UndoTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jline/reader/impl/UndoTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field

.field private final state:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Lorg/jline/reader/impl/UndoTree;, "Lorg/jline/reader/impl/UndoTree<TT;>;"
    .local p1, "s":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/jline/reader/impl/UndoTree;->state:Ljava/util/function/Consumer;

    .line 25
    new-instance v0, Lorg/jline/reader/impl/UndoTree$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jline/reader/impl/UndoTree$Node;-><init>(Lorg/jline/reader/impl/UndoTree;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jline/reader/impl/UndoTree;->parent:Lorg/jline/reader/impl/UndoTree$Node;

    .line 26
    invoke-static {v0, v0}, Lorg/jline/reader/impl/UndoTree$Node;->access$002(Lorg/jline/reader/impl/UndoTree$Node;Lorg/jline/reader/impl/UndoTree$Node;)Lorg/jline/reader/impl/UndoTree$Node;

    .line 27
    invoke-virtual {p0}, Lorg/jline/reader/impl/UndoTree;->clear()V

    .line 28
    return-void
.end method


# virtual methods
.method public canRedo()Z
    .locals 1

    .line 46
    .local p0, "this":Lorg/jline/reader/impl/UndoTree;, "Lorg/jline/reader/impl/UndoTree<TT;>;"
    iget-object v0, p0, Lorg/jline/reader/impl/UndoTree;->current:Lorg/jline/reader/impl/UndoTree$Node;

    invoke-static {v0}, Lorg/jline/reader/impl/UndoTree$Node;->access$100(Lorg/jline/reader/impl/UndoTree$Node;)Lorg/jline/reader/impl/UndoTree$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canUndo()Z
    .locals 2

    .line 42
    .local p0, "this":Lorg/jline/reader/impl/UndoTree;, "Lorg/jline/reader/impl/UndoTree<TT;>;"
    iget-object v0, p0, Lorg/jline/reader/impl/UndoTree;->current:Lorg/jline/reader/impl/UndoTree$Node;

    invoke-static {v0}, Lorg/jline/reader/impl/UndoTree$Node;->access$000(Lorg/jline/reader/impl/UndoTree$Node;)Lorg/jline/reader/impl/UndoTree$Node;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/reader/impl/UndoTree;->parent:Lorg/jline/reader/impl/UndoTree$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 31
    .local p0, "this":Lorg/jline/reader/impl/UndoTree;, "Lorg/jline/reader/impl/UndoTree<TT;>;"
    iget-object v0, p0, Lorg/jline/reader/impl/UndoTree;->parent:Lorg/jline/reader/impl/UndoTree$Node;

    iput-object v0, p0, Lorg/jline/reader/impl/UndoTree;->current:Lorg/jline/reader/impl/UndoTree$Node;

    .line 32
    return-void
.end method

.method public newState(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lorg/jline/reader/impl/UndoTree;, "Lorg/jline/reader/impl/UndoTree<TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jline/reader/impl/UndoTree$Node;

    invoke-direct {v0, p0, p1}, Lorg/jline/reader/impl/UndoTree$Node;-><init>(Lorg/jline/reader/impl/UndoTree;Ljava/lang/Object;)V

    .line 36
    .local v0, "node":Lorg/jline/reader/impl/UndoTree$Node;, "Lorg/jline/reader/impl/UndoTree<TT;>.Node;"
    iget-object v1, p0, Lorg/jline/reader/impl/UndoTree;->current:Lorg/jline/reader/impl/UndoTree$Node;

    invoke-static {v1, v0}, Lorg/jline/reader/impl/UndoTree$Node;->access$102(Lorg/jline/reader/impl/UndoTree$Node;Lorg/jline/reader/impl/UndoTree$Node;)Lorg/jline/reader/impl/UndoTree$Node;

    .line 37
    iget-object v1, p0, Lorg/jline/reader/impl/UndoTree;->current:Lorg/jline/reader/impl/UndoTree$Node;

    invoke-static {v0, v1}, Lorg/jline/reader/impl/UndoTree$Node;->access$002(Lorg/jline/reader/impl/UndoTree$Node;Lorg/jline/reader/impl/UndoTree$Node;)Lorg/jline/reader/impl/UndoTree$Node;

    .line 38
    iput-object v0, p0, Lorg/jline/reader/impl/UndoTree;->current:Lorg/jline/reader/impl/UndoTree$Node;

    .line 39
    return-void
.end method

.method public redo()V
    .locals 2

    .line 58
    .local p0, "this":Lorg/jline/reader/impl/UndoTree;, "Lorg/jline/reader/impl/UndoTree<TT;>;"
    invoke-virtual {p0}, Lorg/jline/reader/impl/UndoTree;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/jline/reader/impl/UndoTree;->current:Lorg/jline/reader/impl/UndoTree$Node;

    invoke-static {v0}, Lorg/jline/reader/impl/UndoTree$Node;->access$100(Lorg/jline/reader/impl/UndoTree$Node;)Lorg/jline/reader/impl/UndoTree$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/reader/impl/UndoTree;->current:Lorg/jline/reader/impl/UndoTree$Node;

    .line 62
    iget-object v1, p0, Lorg/jline/reader/impl/UndoTree;->state:Ljava/util/function/Consumer;

    invoke-static {v0}, Lorg/jline/reader/impl/UndoTree$Node;->access$200(Lorg/jline/reader/impl/UndoTree$Node;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 63
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot redo."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public undo()V
    .locals 2

    .line 50
    .local p0, "this":Lorg/jline/reader/impl/UndoTree;, "Lorg/jline/reader/impl/UndoTree<TT;>;"
    invoke-virtual {p0}, Lorg/jline/reader/impl/UndoTree;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/jline/reader/impl/UndoTree;->current:Lorg/jline/reader/impl/UndoTree$Node;

    invoke-static {v0}, Lorg/jline/reader/impl/UndoTree$Node;->access$000(Lorg/jline/reader/impl/UndoTree$Node;)Lorg/jline/reader/impl/UndoTree$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/reader/impl/UndoTree;->current:Lorg/jline/reader/impl/UndoTree$Node;

    .line 54
    iget-object v1, p0, Lorg/jline/reader/impl/UndoTree;->state:Ljava/util/function/Consumer;

    invoke-static {v0}, Lorg/jline/reader/impl/UndoTree$Node;->access$200(Lorg/jline/reader/impl/UndoTree$Node;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 55
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot undo."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
