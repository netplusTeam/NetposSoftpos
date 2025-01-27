.class Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;
.super Ljava/lang/Object;
.source "TableRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/renderer/TableRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverflowRowsWrapper"
.end annotation


# instance fields
.field private isReplaced:Z

.field private isRowReplaced:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private overflowRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/renderer/TableRenderer;)V
    .locals 1
    .param p1, "overflowRenderer"    # Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1855
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->isRowReplaced:Ljava/util/HashMap;

    .line 1856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->isReplaced:Z

    .line 1859
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->overflowRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 1860
    return-void
.end method


# virtual methods
.method public getCell(II)Lcom/itextpdf/layout/renderer/CellRenderer;
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 1863
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->overflowRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aget-object v0, v0, p2

    return-object v0
.end method

.method public setCell(IILcom/itextpdf/layout/renderer/CellRenderer;)Lcom/itextpdf/layout/renderer/CellRenderer;
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "newCell"    # Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 1867
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->isReplaced:Z

    if-nez v0, :cond_0

    .line 1868
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->overflowRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->overflowRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v2, v2, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    .line 1869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->isReplaced:Z

    .line 1871
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->isRowReplaced:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1872
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->overflowRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->overflowRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {v1}, [Lcom/itextpdf/layout/renderer/CellRenderer;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    check-cast v1, [Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1874
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer$OverflowRowsWrapper;->overflowRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/renderer/CellRenderer;

    aput-object p3, v0, p2

    return-object p3
.end method
