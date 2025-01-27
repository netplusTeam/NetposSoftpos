.class public Lcom/itextpdf/kernel/pdf/PdfArray;
.super Lcom/itextpdf/kernel/pdf/PdfObject;
.source "PdfArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObject;",
        "Ljava/lang/Iterable<",
        "Lcom/itextpdf/kernel/pdf/PdfObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x16727fb0a7594695L


# instance fields
.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 3
    .param p1, "rectangle"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 99
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    .line 101
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v1

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 102
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 103
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v1

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 104
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2
    .param p1, "arr"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 89
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 90
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1
    .param p1, "obj"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 79
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;I)V
    .locals 2
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;I)V"
        }
    .end annotation

    .line 186
    .local p1, "objects":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    .line 188
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 189
    .local v1, "element":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .end local v1    # "element":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<+Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 115
    .local v1, "element":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .end local v1    # "element":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 4
    .param p2, "asNames"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 173
    .local p1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    if-eqz p2, :cond_0

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 178
    :cond_1
    return-void
.end method

.method public constructor <init>([D)V
    .locals 6
    .param p1, "numbers"    # [D

    .line 135
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    .line 137
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 138
    .local v2, "f":D
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v5, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v2    # "f":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public constructor <init>([F)V
    .locals 7
    .param p1, "numbers"    # [F

    .line 123
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    .line 125
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 126
    .local v2, "f":F
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v5, v2

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v2    # "f":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public constructor <init>([I)V
    .locals 7
    .param p1, "numbers"    # [I

    .line 147
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    .line 149
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    int-to-float v2, v2

    .line 150
    .local v2, "i":F
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v5, v2

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v2    # "i":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 5
    .param p1, "values"    # [Z

    .line 159
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    .line 161
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-boolean v2, p1, v1

    .line 162
    .local v2, "b":Z
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v2    # "b":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 238
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 239
    return-void
.end method

.method public add(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 227
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public addAll(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 1
    .param p1, "a"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 270
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->addAll(Ljava/util/Collection;)V

    .line 271
    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 260
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    return-void
.end method

.method public clear()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 314
    return-void
.end method

.method public contains(Lcom/itextpdf/kernel/pdf/PdfObject;)Z
    .locals 5
    .param p1, "o"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 201
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 202
    return v1

    .line 203
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 204
    return v0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 206
    .local v3, "pdfObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-static {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->equalContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    return v1

    .line 209
    .end local v3    # "pdfObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_2
    goto :goto_0

    .line 210
    :cond_3
    return v0
.end method

.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 4
    .param p1, "from"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 601
    invoke-super {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 602
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 603
    .local v0, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 604
    .local v2, "entry":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->processCopying(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 605
    .end local v2    # "entry":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0

    .line 606
    :cond_0
    return-void
.end method

.method public get(I)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .param p1, "index"    # I

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 3
    .param p1, "index"    # I
    .param p2, "asDirect"    # Z

    .line 370
    if-nez p2, :cond_0

    .line 371
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 374
    .local v0, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 375
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    return-object v1

    .line 377
    :cond_1
    return-object v0
.end method

.method public getAsArray(I)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 3
    .param p1, "index"    # I

    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 389
    .local v1, "direct":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v2

    if-ne v2, v0, :cond_0

    .line 390
    move-object v0, v1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    return-object v0

    .line 391
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAsBoolean(I)Lcom/itextpdf/kernel/pdf/PdfBoolean;
    .locals 3
    .param p1, "index"    # I

    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 472
    .local v0, "direct":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 473
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    return-object v1

    .line 474
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 3
    .param p1, "index"    # I

    .line 402
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 403
    .local v0, "direct":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 404
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object v1

    .line 405
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 3
    .param p1, "index"    # I

    .line 444
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 445
    .local v0, "direct":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 446
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    .line 447
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;
    .locals 3
    .param p1, "index"    # I

    .line 430
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 431
    .local v0, "direct":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 432
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    return-object v1

    .line 433
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAsStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 3
    .param p1, "index"    # I

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 417
    .local v0, "direct":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 418
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    return-object v1

    .line 419
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 3
    .param p1, "index"    # I

    .line 458
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 459
    .local v0, "direct":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 460
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfString;

    return-object v1

    .line 461
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getType()B
    .locals 1

    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method public indexOf(Lcom/itextpdf/kernel/pdf/PdfObject;)I
    .locals 4
    .param p1, "o"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 324
    if-nez p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 326
    :cond_0
    const/4 v0, 0x0

    .line 327
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 328
    .local v2, "pdfObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-static {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->equalContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    return v0

    .line 331
    :cond_1
    nop

    .end local v2    # "pdfObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    add-int/lit8 v0, v0, 0x1

    .line 332
    goto :goto_0

    .line 333
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArrayDirectIterator;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArrayDirectIterator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 596
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    return-object v0
.end method

.method protected releaseContent()V
    .locals 1

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    .line 613
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    .line 290
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 291
    return-void
.end method

.method public remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 3
    .param p1, "o"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 300
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    return-void

    .line 302
    :cond_0
    if-nez p1, :cond_1

    .line 303
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 305
    .local v1, "pdfObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-static {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->equalContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 307
    goto :goto_1

    .line 309
    .end local v1    # "pdfObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_2
    goto :goto_0

    .line 310
    :cond_3
    :goto_1
    return-void
.end method

.method public set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 250
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toBooleanArray()[Z
    .locals 5

    .line 582
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    new-array v0, v0, [Z

    .line 584
    .local v0, "rslt":[Z
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 585
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsBoolean(I)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v2

    .line 586
    .local v2, "tmp":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    if-eqz v2, :cond_0

    .line 589
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    :cond_0
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "Cannot convert PdfArray to an array of booleans"

    invoke-direct {v3, v4, p0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v3

    .line 591
    .end local v1    # "k":I
    .end local v2    # "tmp":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    :cond_1
    return-object v0
.end method

.method public toDoubleArray()[D
    .locals 4

    .line 529
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    new-array v0, v0, [D

    .line 530
    .local v0, "rslt":[D
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 531
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    .end local v1    # "k":I
    :cond_0
    return-object v0

    .line 534
    .end local v0    # "rslt":[D
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Cannot convert PdfArray to an array of doubles."

    invoke-direct {v1, v2, v0, p0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v1
.end method

.method public toFloatArray()[F
    .locals 3

    .line 511
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    new-array v0, v0, [F

    .line 512
    .local v0, "rslt":[F
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 513
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    .end local v1    # "k":I
    :cond_0
    return-object v0

    .line 516
    .end local v0    # "rslt":[F
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Cannot convert PdfArray to an array of floats."

    invoke-direct {v1, v2, v0, p0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v1
.end method

.method public toIntArray()[I
    .locals 3

    .line 565
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 566
    .local v0, "rslt":[I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 567
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    .end local v1    # "k":I
    :cond_0
    return-object v0

    .line 570
    .end local v0    # "rslt":[I
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Cannot convert PdfArray to an array of integers."

    invoke-direct {v1, v2, v0, p0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v1
.end method

.method public toLongArray()[J
    .locals 4

    .line 547
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 548
    .local v0, "rslt":[J
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 549
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    .end local v1    # "k":I
    :cond_0
    return-object v0

    .line 552
    .end local v0    # "rslt":[J
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Cannot convert PdfArray to an array of longs."

    invoke-direct {v1, v2, v0, p0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v1
.end method

.method public toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 11

    .line 486
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v0

    .line 487
    .local v0, "x1":F
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v1

    .line 488
    .local v1, "y1":F
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    .line 489
    .local v2, "x2":F
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    .line 492
    .local v3, "y2":F
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 493
    .local v4, "llx":F
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 494
    .local v5, "lly":F
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 495
    .local v6, "urx":F
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 497
    .local v7, "ury":F
    new-instance v8, Lcom/itextpdf/kernel/geom/Rectangle;

    sub-float v9, v6, v4

    sub-float v10, v7, v5

    invoke-direct {v8, v4, v5, v9, v10}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 498
    .end local v0    # "x1":F
    .end local v1    # "y1":F
    .end local v2    # "x2":F
    .end local v3    # "y2":F
    .end local v4    # "llx":F
    .end local v5    # "lly":F
    .end local v6    # "urx":F
    .end local v7    # "ury":F
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Cannot convert PdfArray to Rectangle."

    invoke-direct {v1, v2, v0, p0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 355
    const-string v0, "["

    .line 356
    .local v0, "string":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 357
    .local v2, "entry":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    .line 358
    .local v3, "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .end local v2    # "entry":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v3    # "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    goto :goto_0

    .line 360
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    return-object v0
.end method
