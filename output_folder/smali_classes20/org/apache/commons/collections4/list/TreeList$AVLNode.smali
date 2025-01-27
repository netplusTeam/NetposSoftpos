.class Lorg/apache/commons/collections4/list/TreeList$AVLNode;
.super Ljava/lang/Object;
.source "TreeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/TreeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AVLNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private height:I

.field private left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private leftIsPrevious:Z

.field private relativePosition:I

.field private right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private rightIsNext:Z

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V
    .locals 1
    .param p1, "relativePosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 329
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p2, "obj":Ljava/lang/Object;, "TE;"
    .local p3, "rightFollower":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p4, "leftFollower":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 331
    iput-object p2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    .line 333
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    .line 334
    iput-object p3, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 335
    iput-object p4, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 336
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .param p4, "x3"    # Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .param p5, "x4"    # Lorg/apache/commons/collections4/list/TreeList$1;

    .line 304
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 346
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 347
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections4/list/TreeList$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Collection;
    .param p2, "x1"    # Lorg/apache/commons/collections4/list/TreeList$1;

    .line 304
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V
    .locals 13
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "absolutePositionOfParent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;III",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 371
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    .local p5, "prev":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p6, "next":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    move-object v7, p0

    move v8, p2

    move/from16 v9, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    sub-int v0, v9, v8

    div-int/lit8 v0, v0, 0x2

    add-int v10, v8, v0

    .line 373
    .local v10, "mid":I
    const/4 v11, 0x1

    if-ge v8, v10, :cond_0

    .line 374
    new-instance v12, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    add-int/lit8 v3, v10, -0x1

    move-object v0, v12

    move-object v1, p1

    move v2, p2

    move v4, v10

    move-object/from16 v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    iput-object v12, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-object/from16 v12, p5

    goto :goto_0

    .line 376
    :cond_0
    iput-boolean v11, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    .line 377
    move-object/from16 v12, p5

    iput-object v12, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 379
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 380
    sub-int v0, v10, p4

    iput v0, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 381
    if-ge v10, v9, :cond_1

    .line 382
    new-instance v11, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    add-int/lit8 v2, v10, 0x1

    move-object v0, v11

    move-object v1, p1

    move/from16 v3, p3

    move v4, v10

    move-object v5, p0

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    iput-object v11, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-object/from16 v0, p6

    goto :goto_1

    .line 384
    :cond_1
    iput-boolean v11, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    .line 385
    move-object/from16 v0, p6

    iput-object v0, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 387
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 388
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 304
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .param p1, "x1"    # Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .param p2, "x2"    # I

    .line 304
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->addAll(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 304
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method private addAll(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 10
    .param p2, "currentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;I)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 810
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p1, "otherTree":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    .line 811
    .local v0, "maxNode":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    .line 819
    .local v1, "otherTreeMin":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget v2, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    iget v3, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_5

    .line 824
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v2

    .line 830
    .local v2, "leftSubTree":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 831
    .local v3, "sAncestors":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;>;"
    move-object v5, p1

    .line 832
    .local v5, "s":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget v6, v5, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v6, p2

    .line 833
    .local v6, "sAbsolutePosition":I
    const/4 v7, 0x0

    .line 834
    .local v7, "sParentAbsolutePosition":I
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    iget v8, v5, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    invoke-direct {p0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v9

    if-le v8, v9, :cond_1

    .line 835
    move v7, v6

    .line 836
    invoke-interface {v3, v5}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 837
    iget-object v5, v5, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 838
    if-eqz v5, :cond_0

    .line 839
    iget v8, v5, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v6, v8

    goto :goto_0

    .line 846
    :cond_1
    invoke-direct {v0, v2, v4}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 847
    invoke-direct {v0, v5, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 848
    if-eqz v2, :cond_2

    .line 849
    invoke-direct {v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v8

    invoke-direct {v8, v4, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 850
    iget v8, v2, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v9, p2, -0x1

    sub-int/2addr v8, v9

    iput v8, v2, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 852
    :cond_2
    if-eqz v5, :cond_3

    .line 853
    invoke-direct {v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v8

    invoke-direct {v8, v4, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 854
    sub-int v8, v6, p2

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 856
    :cond_3
    add-int/lit8 v8, p2, -0x1

    sub-int/2addr v8, v7

    iput v8, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 857
    iget v8, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v8, p2

    iput v8, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 860
    move-object v5, v0

    .line 861
    :goto_1
    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 862
    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 863
    .local v8, "sAncestor":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {v8, v5, v4}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 864
    invoke-direct {v8}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v5

    .line 865
    .end local v8    # "sAncestor":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    goto :goto_1

    .line 866
    :cond_4
    return-object v5

    .line 868
    .end local v2    # "leftSubTree":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .end local v3    # "sAncestors":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;>;"
    .end local v5    # "s":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .end local v6    # "sAbsolutePosition":I
    .end local v7    # "sParentAbsolutePosition":I
    :cond_5
    invoke-direct {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    .line 870
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 871
    .local v2, "sAncestors":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;>;"
    move-object v3, p0

    .line 872
    .local v3, "s":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget v5, v3, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 873
    .local v5, "sAbsolutePosition":I
    const/4 v6, 0x0

    .line 874
    .local v6, "sParentAbsolutePosition":I
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    iget v7, v3, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v8

    if-le v7, v8, :cond_7

    .line 875
    move v6, v5

    .line 876
    invoke-interface {v2, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 877
    iget-object v3, v3, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 878
    if-eqz v3, :cond_6

    .line 879
    iget v7, v3, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v5, v7

    goto :goto_2

    .line 883
    :cond_7
    invoke-direct {v1, p1, v4}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 884
    invoke-direct {v1, v3, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 885
    if-eqz p1, :cond_8

    .line 886
    invoke-direct {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v7

    invoke-direct {v7, v4, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 887
    iget v7, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 889
    :cond_8
    if-eqz v3, :cond_9

    .line 890
    invoke-direct {v3}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v7

    invoke-direct {v7, v4, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 891
    sub-int v7, v5, p2

    iput v7, v3, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 893
    :cond_9
    sub-int v7, p2, v6

    iput v7, v1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 895
    move-object v3, v1

    .line 896
    :goto_3
    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 897
    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 898
    .local v7, "sAncestor":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {v7, v3, v4}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 899
    invoke-direct {v7}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v3

    .line 900
    .end local v7    # "sAncestor":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    goto :goto_3

    .line 901
    :cond_a
    return-object v3
.end method

.method private balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 675
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 691
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "tree inconsistent!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-gez v0, :cond_0

    .line 687
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rotateRight()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 689
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rotateLeft()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 679
    :pswitch_1
    return-object p0

    .line 681
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-lez v0, :cond_1

    .line 682
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rotateLeft()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 684
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rotateRight()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)I"
        }
    .end annotation

    .line 730
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    :goto_0
    return v0
.end method

.method private getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 535
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    :goto_0
    return-object v0
.end method

.method private getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)I"
        }
    .end annotation

    .line 699
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    if-nez p1, :cond_0

    .line 700
    const/4 v0, 0x0

    return v0

    .line 702
    :cond_0
    iget v0, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    return v0
.end method

.method private getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 542
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    :goto_0
    return-object v0
.end method

.method private heightRightMinusLeft()I
    .locals 2

    .line 737
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v0

    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private insertOnLeft(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 4
    .param p1, "indexRelativeToMe"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 502
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p2, "obj":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    const/4 v2, -0x1

    iget-object v3, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0, v2, p2, p0, v3}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    goto :goto_0

    .line 505
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 508
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-ltz v0, :cond_1

    .line 509
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 511
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    .line 512
    .local v0, "ret":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 513
    return-object v0
.end method

.method private insertOnRight(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 4
    .param p1, "indexRelativeToMe"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 517
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p2, "obj":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v3, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0, v1, p2, v3, p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    goto :goto_0

    .line 520
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 522
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez v0, :cond_1

    .line 523
    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 525
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    .line 526
    .local v0, "ret":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 527
    return-object v0
.end method

.method private max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 551
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 560
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private recalcHeight()V
    .locals 3

    .line 721
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    nop

    .line 722
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget v0, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    .line 723
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    iget v1, v1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    .line 721
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    .line 724
    return-void
.end method

.method private removeMax()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 591
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 592
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 594
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 595
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez v0, :cond_1

    .line 596
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 598
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 599
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private removeMin()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 603
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 604
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 606
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 607
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_1

    .line 608
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 610
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 611
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private removeSelf()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 620
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 621
    return-object v1

    .line 623
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 624
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_1

    .line 625
    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v3, v2, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v3, v0

    iput v3, v2, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 627
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 628
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0

    .line 630
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 631
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v3, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    iget v4, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez v4, :cond_3

    const/4 v2, 0x0

    :cond_3
    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 632
    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 633
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0

    .line 636
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-lez v0, :cond_7

    .line 638
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    .line 639
    .local v0, "rightMin":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget-object v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 640
    iget-boolean v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v1, :cond_5

    .line 641
    iget-object v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 643
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 644
    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez v1, :cond_6

    .line 645
    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 647
    .end local v0    # "rightMin":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    :cond_6
    goto :goto_0

    .line 649
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    .line 650
    .local v0, "leftMax":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget-object v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 651
    iget-boolean v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v1, :cond_8

    .line 652
    iget-object v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 654
    :cond_8
    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v3, v1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 655
    .local v3, "leftPrevious":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 656
    if-nez v1, :cond_9

    .line 659
    iput-object v3, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 660
    iput-boolean v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    .line 662
    :cond_9
    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-lez v1, :cond_a

    .line 663
    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 666
    .end local v0    # "leftMax":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .end local v3    # "leftPrevious":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    :cond_a
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 667
    return-object p0
.end method

.method private rotateLeft()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 741
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 742
    .local v0, "newTop":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    .line 744
    .local v1, "movedNode":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v3

    add-int/2addr v2, v3

    .line 745
    .local v2, "newTopPosition":I
    iget v3, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    neg-int v3, v3

    .line 746
    .local v3, "myNewPosition":I
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v5

    add-int/2addr v4, v5

    .line 748
    .local v4, "movedPosition":I
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 749
    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 751
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 752
    invoke-direct {p0, p0, v3}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 753
    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 754
    return-object v0
.end method

.method private rotateRight()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 758
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 759
    .local v0, "newTop":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    .line 761
    .local v1, "movedNode":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v3

    add-int/2addr v2, v3

    .line 762
    .local v2, "newTopPosition":I
    iget v3, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    neg-int v3, v3

    .line 763
    .local v3, "myNewPosition":I
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v5

    add-int/2addr v4, v5

    .line 765
    .local v4, "movedPosition":I
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 766
    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 768
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 769
    invoke-direct {p0, p0, v3}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 770
    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 771
    return-object v0
.end method

.method private setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 781
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p2, "previous":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    .line 782
    if-eqz v0, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 783
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 784
    return-void
.end method

.method private setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I
    .locals 1
    .param p2, "newOffest"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;I)I"
        }
    .end annotation

    .line 709
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    if-nez p1, :cond_0

    .line 710
    const/4 v0, 0x0

    return v0

    .line 712
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v0

    .line 713
    .local v0, "oldOffset":I
    iput p2, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 714
    return v0
.end method

.method private setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 793
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p2, "next":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    .line 794
    if-eqz v0, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 795
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 796
    return-void
.end method


# virtual methods
.method get(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 413
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    sub-int v0, p1, v0

    .line 415
    .local v0, "indexRelativeToMe":I
    if-nez v0, :cond_0

    .line 416
    return-object p0

    .line 419
    :cond_0
    if-gez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    .line 420
    .local v1, "nextNode":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    :goto_0
    if-nez v1, :cond_2

    .line 421
    const/4 v2, 0x0

    return-object v2

    .line 423
    :cond_2
    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v2

    return-object v2
.end method

.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 396
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .line 430
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v2, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    .line 432
    .local v0, "result":I
    if-eq v0, v1, :cond_0

    .line 433
    return v0

    .line 436
    .end local v0    # "result":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    :goto_0
    return p2

    .line 439
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0

    .line 442
    :cond_3
    return v1
.end method

.method insert(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 493
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p2, "obj":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    sub-int v0, p1, v0

    .line 495
    .local v0, "indexRelativeToMe":I
    if-gtz v0, :cond_0

    .line 496
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->insertOnLeft(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    return-object v1

    .line 498
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->insertOnRight(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    return-object v1
.end method

.method next()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 468
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0
.end method

.method previous()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 479
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 480
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0
.end method

.method remove(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 570
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    sub-int v0, p1, v0

    .line 572
    .local v0, "indexRelativeToMe":I
    if-nez v0, :cond_0

    .line 573
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    return-object v1

    .line 575
    :cond_0
    if-lez v0, :cond_1

    .line 576
    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v2, v2, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 577
    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez v1, :cond_2

    .line 578
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    goto :goto_0

    .line 581
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v2, v2, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 582
    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-lez v1, :cond_2

    .line 583
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 586
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 587
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    return-object v1
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 405
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 406
    return-void
.end method

.method toArray([Ljava/lang/Object;I)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "index"    # I

    .line 452
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    aput-object v0, p1, p2

    .line 453
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    .line 456
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    .line 459
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 961
    .local p0, "this":Lorg/apache/commons/collections4/list/TreeList$AVLNode;, "Lorg/apache/commons/collections4/list/TreeList$AVLNode<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 962
    const-string v1, "AVLNode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 964
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 965
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 966
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 967
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 969
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 970
    const-string v1, ", faedelung "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    .line 971
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 972
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 973
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 961
    return-object v0
.end method
