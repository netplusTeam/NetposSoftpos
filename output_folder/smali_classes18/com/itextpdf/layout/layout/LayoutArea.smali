.class public Lcom/itextpdf/layout/layout/LayoutArea;
.super Ljava/lang/Object;
.source "LayoutArea.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected bBox:Lcom/itextpdf/kernel/geom/Rectangle;

.field protected pageNumber:I


# direct methods
.method public constructor <init>(ILcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0
    .param p1, "pageNumber"    # I
    .param p2, "bBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/itextpdf/layout/layout/LayoutArea;->pageNumber:I

    .line 73
    iput-object p2, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 74
    return-void
.end method


# virtual methods
.method public clone()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 2

    .line 112
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/layout/LayoutArea;

    .line 114
    .local v0, "clone":Lcom/itextpdf/layout/layout/LayoutArea;
    iget-object v1, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-object v0

    .line 116
    .end local v0    # "clone":Lcom/itextpdf/layout/layout/LayoutArea;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 128
    return v2

    .line 130
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/layout/layout/LayoutArea;

    .line 131
    .local v0, "that":Lcom/itextpdf/layout/layout/LayoutArea;
    iget v1, p0, Lcom/itextpdf/layout/layout/LayoutArea;->pageNumber:I

    iget v3, v0, Lcom/itextpdf/layout/layout/LayoutArea;->pageNumber:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v3, v0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->equalsWithEpsilon(Lcom/itextpdf/kernel/geom/Rectangle;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public getBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/itextpdf/layout/layout/LayoutArea;->pageNumber:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 139
    new-instance v0, Lcom/itextpdf/io/util/HashCode;

    invoke-direct {v0}, Lcom/itextpdf/io/util/HashCode;-><init>()V

    .line 140
    .local v0, "hashCode":Lcom/itextpdf/io/util/HashCode;
    iget v1, p0, Lcom/itextpdf/layout/layout/LayoutArea;->pageNumber:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/util/HashCode;->append(I)Lcom/itextpdf/io/util/HashCode;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 141
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/util/HashCode;->append(I)Lcom/itextpdf/io/util/HashCode;

    .line 142
    invoke-virtual {v0}, Lcom/itextpdf/io/util/HashCode;->hashCode()I

    move-result v1

    return v1
.end method

.method public setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0
    .param p1, "bbox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 100
    iput-object p1, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/itextpdf/layout/layout/LayoutArea;->pageNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "{0}, page {1}"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
