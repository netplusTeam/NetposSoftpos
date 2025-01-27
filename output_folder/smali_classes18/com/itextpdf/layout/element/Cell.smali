.class public Lcom/itextpdf/layout/element/Cell;
.super Lcom/itextpdf/layout/element/BlockElement;
.source "Cell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/element/BlockElement<",
        "Lcom/itextpdf/layout/element/Cell;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BORDER:Lcom/itextpdf/layout/borders/Border;


# instance fields
.field private col:I

.field private colspan:I

.field private row:I

.field private rowspan:I

.field protected tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/itextpdf/layout/borders/SolidBorder;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(F)V

    sput-object v0, Lcom/itextpdf/layout/element/Cell;->DEFAULT_BORDER:Lcom/itextpdf/layout/borders/Border;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/itextpdf/layout/element/Cell;-><init>(II)V

    .line 99
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "rowspan"    # I
    .param p2, "colspan"    # I

    .line 89
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    .line 90
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/itextpdf/layout/element/Cell;->rowspan:I

    .line 91
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/element/Cell;->colspan:I

    .line 92
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;
    .locals 1
    .param p1, "element"    # Lcom/itextpdf/layout/element/IBlockElement;

    .line 163
    iget-object v0, p0, Lcom/itextpdf/layout/element/Cell;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-object p0
.end method

.method public add(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Cell;
    .locals 1
    .param p1, "element"    # Lcom/itextpdf/layout/element/Image;

    .line 174
    iget-object v0, p0, Lcom/itextpdf/layout/element/Cell;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-object p0
.end method

.method public clone(Z)Lcom/itextpdf/layout/element/Cell;
    .locals 3
    .param p1, "includeContent"    # Z

    .line 185
    new-instance v0, Lcom/itextpdf/layout/element/Cell;

    iget v1, p0, Lcom/itextpdf/layout/element/Cell;->rowspan:I

    iget v2, p0, Lcom/itextpdf/layout/element/Cell;->colspan:I

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/element/Cell;-><init>(II)V

    .line 186
    .local v0, "newCell":Lcom/itextpdf/layout/element/Cell;
    iget v1, p0, Lcom/itextpdf/layout/element/Cell;->row:I

    iput v1, v0, Lcom/itextpdf/layout/element/Cell;->row:I

    .line 187
    iget v1, p0, Lcom/itextpdf/layout/element/Cell;->col:I

    iput v1, v0, Lcom/itextpdf/layout/element/Cell;->col:I

    .line 188
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/itextpdf/layout/element/Cell;->properties:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/itextpdf/layout/element/Cell;->properties:Ljava/util/Map;

    .line 189
    iget-object v1, p0, Lcom/itextpdf/layout/element/Cell;->styles:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 190
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/itextpdf/layout/element/Cell;->styles:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/itextpdf/layout/element/Cell;->styles:Ljava/util/Set;

    .line 192
    :cond_0
    if-eqz p1, :cond_1

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/layout/element/Cell;->childElements:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/itextpdf/layout/element/Cell;->childElements:Ljava/util/List;

    .line 195
    :cond_1
    return-object v0
.end method

.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/itextpdf/layout/element/Cell;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "TD"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Cell;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Cell;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    return-object v0
.end method

.method public getCol()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/itextpdf/layout/element/Cell;->col:I

    return v0
.end method

.method public getColspan()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/itextpdf/layout/element/Cell;->colspan:I

    return v0
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 200
    sparse-switch p1, :sswitch_data_0

    .line 209
    invoke-super {p0, p1}, Lcom/itextpdf/layout/element/BlockElement;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 207
    :sswitch_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    return-object v0

    .line 202
    :sswitch_1
    sget-object v0, Lcom/itextpdf/layout/element/Cell;->DEFAULT_BORDER:Lcom/itextpdf/layout/borders/Border;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x2f -> :sswitch_0
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method public getRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 3

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "cellRenderer":Lcom/itextpdf/layout/renderer/CellRenderer;
    iget-object v1, p0, Lcom/itextpdf/layout/element/Cell;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/itextpdf/layout/element/Cell;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v1, v1, Lcom/itextpdf/layout/renderer/CellRenderer;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/itextpdf/layout/element/Cell;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 113
    .local v1, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    iget-object v2, p0, Lcom/itextpdf/layout/element/Cell;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/layout/element/Cell;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 114
    move-object v0, v1

    check-cast v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 115
    .end local v1    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_0

    .line 116
    :cond_0
    const-class v1, Lcom/itextpdf/layout/element/Table;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 117
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v2, "Invalid renderer for Table: must be inherited from TableRenderer"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 121
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Cell;->makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public getRow()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/itextpdf/layout/element/Cell;->row:I

    return v0
.end method

.method public getRowspan()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/itextpdf/layout/element/Cell;->rowspan:I

    return v0
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 228
    new-instance v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/CellRenderer;-><init>(Lcom/itextpdf/layout/element/Cell;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 215
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/itextpdf/layout/element/Cell;->row:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/itextpdf/layout/element/Cell;->col:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/itextpdf/layout/element/Cell;->rowspan:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/itextpdf/layout/element/Cell;->colspan:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Cell[row={0}, col={1}, rowspan={2}, colspan={3}]"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateCellIndexes(III)Lcom/itextpdf/layout/element/Cell;
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "numberOfColumns"    # I

    .line 232
    iput p1, p0, Lcom/itextpdf/layout/element/Cell;->row:I

    .line 233
    iput p2, p0, Lcom/itextpdf/layout/element/Cell;->col:I

    .line 234
    iget v0, p0, Lcom/itextpdf/layout/element/Cell;->colspan:I

    sub-int v1, p3, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/element/Cell;->colspan:I

    .line 235
    return-object p0
.end method
