.class public Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;
.super Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;
.source "ImageRenderInfo.java"


# instance fields
.field private canvasTagHierarchy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;"
        }
    .end annotation
.end field

.field private colorSpaceDictionary:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field private ctm:Lcom/itextpdf/kernel/geom/Matrix;

.field private image:Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

.field private isInline:Z

.field private resourceName:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method public constructor <init>(Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/geom/Matrix;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Z)V
    .locals 1
    .param p2, "gs"    # Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    .param p3, "ctm"    # Lcom/itextpdf/kernel/geom/Matrix;
    .param p4, "imageStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p5, "resourceName"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p6, "colorSpaceDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p7, "isInline"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;",
            "Lcom/itextpdf/kernel/geom/Matrix;",
            "Lcom/itextpdf/kernel/pdf/PdfStream;",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Z)V"
        }
    .end annotation

    .line 98
    .local p1, "canvasTagHierarchy":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;>;"
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    .line 100
    iput-object p5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->resourceName:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 101
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    .line 102
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {v0, p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    .line 103
    iput-object p6, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->colorSpaceDictionary:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 104
    iput-boolean p7, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->isInline:Z

    .line 105
    return-void
.end method


# virtual methods
.method public getArea()F
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Matrix;->getDeterminant()F

    move-result v0

    return v0
.end method

.method public getCanvasTagHierarchy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    return-object v0
.end method

.method public getColorSpaceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->colorSpaceDictionary:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object v0
.end method

.method public getImage()Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    return-object v0
.end method

.method public getImageCtm()Lcom/itextpdf/kernel/geom/Matrix;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    return-object v0
.end method

.method public getImageResourceName()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->resourceName:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getMcid()I
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    .line 195
    .local v1, "tag":Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->hasMcid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getMcid()I

    move-result v0

    return v0

    .line 198
    .end local v1    # "tag":Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
    :cond_0
    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getStartPoint()Lcom/itextpdf/kernel/geom/Vector;
    .locals 3

    .line 138
    new-instance v0, Lcom/itextpdf/kernel/geom/Vector;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Vector;->cross(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v0

    return-object v0
.end method

.method public hasMcid(I)Z
    .locals 1
    .param p1, "mcid"    # I

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->hasMcid(IZ)Z

    move-result v0

    return v0
.end method

.method public hasMcid(IZ)Z
    .locals 5
    .param p1, "mcid"    # I
    .param p2, "checkTheTopmostLevelOnly"    # Z

    .line 222
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 224
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->getMcid()I

    move-result v2

    .line 225
    .local v2, "infoMcid":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 228
    .end local v2    # "infoMcid":I
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    .line 229
    .local v3, "tag":Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->hasMcid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getMcid()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 231
    return v0

    .line 232
    .end local v3    # "tag":Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
    :cond_2
    goto :goto_1

    .line 234
    :cond_3
    return v1
.end method

.method public isInline()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->isInline:Z

    return v0
.end method
