.class public Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
.super Ljava/util/ArrayList;
.source "Paths.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1a83a509a702aad4L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .line 80
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    return-void
.end method

.method public static closedPathsFromPolyTree(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .locals 2
    .param p0, "polytree"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;

    .line 45
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;-><init>()V

    .line 47
    .local v0, "result":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;->CLOSED:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->addPolyNode(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;)V

    .line 48
    return-object v0
.end method

.method public static makePolyTreeToPaths(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .locals 2
    .param p0, "polytree"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;

    .line 53
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;-><init>()V

    .line 55
    .local v0, "result":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;->ANY:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->addPolyNode(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;)V

    .line 56
    return-object v0
.end method

.method public static openPathsFromPolyTree(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .locals 4
    .param p0, "polytree"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;

    .line 60
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;-><init>()V

    .line 62
    .local v0, "result":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getChilds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 63
    .local v2, "c":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v2    # "c":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    :cond_0
    goto :goto_0

    .line 67
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addPolyNode(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;)V
    .locals 3
    .param p1, "polynode"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .param p2, "nt"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;

    .line 84
    const/4 v0, 0x1

    .line 85
    .local v0, "match":Z
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths$1;->$SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$PolyNode$NodeType:[I

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 89
    :pswitch_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->isOpen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 90
    goto :goto_0

    .line 87
    :pswitch_1
    return-void

    .line 95
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChilds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 99
    .local v2, "pn":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    invoke-virtual {p0, v2, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->addPolyNode(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode$NodeType;)V

    .line 100
    .end local v2    # "pn":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    goto :goto_1

    .line 101
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cleanPolygons()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .locals 2

    .line 104
    const-wide v0, 0x3ff6a3d70a3d70a4L    # 1.415

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->cleanPolygons(D)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    move-result-object v0

    return-object v0
.end method

.method public cleanPolygons(D)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .locals 3
    .param p1, "distance"    # D

    .line 108
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;-><init>(I)V

    .line 109
    .local v0, "result":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v2, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->cleanPolygon(D)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getBounds()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;
    .locals 8

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->size()I

    move-result v1

    .line 119
    .local v1, "cnt":I
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;-><init>()V

    .line 120
    .local v2, "result":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    if-ne v0, v1, :cond_1

    .line 124
    return-object v2

    .line 127
    :cond_1
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->left:J

    .line 128
    iget-wide v5, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->left:J

    iput-wide v5, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->right:J

    .line 129
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->top:J

    .line 130
    iget-wide v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->top:J

    iput-wide v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->bottom:J

    .line 131
    :goto_1
    if-ge v0, v1, :cond_7

    .line 132
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 133
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->left:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 134
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->left:J

    goto :goto_3

    .line 136
    :cond_2
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->right:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 137
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->right:J

    .line 139
    :cond_3
    :goto_3
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->top:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 140
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->top:J

    goto :goto_4

    .line 142
    :cond_4
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->bottom:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 143
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->bottom:J

    .line 132
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 131
    .end local v3    # "j":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 147
    :cond_7
    return-object v2
.end method

.method public reversePaths()V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    .line 152
    .local v1, "poly":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->reverse()V

    .line 153
    .end local v1    # "poly":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method
