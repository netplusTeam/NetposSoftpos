.class public Lcom/itextpdf/layout/renderer/AreaBreakRenderer;
.super Ljava/lang/Object;
.source "AreaBreakRenderer.java"

# interfaces
.implements Lcom/itextpdf/layout/renderer/IRenderer;


# instance fields
.field protected areaBreak:Lcom/itextpdf/layout/element/AreaBreak;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/AreaBreak;)V
    .locals 0
    .param p1, "areaBreak"    # Lcom/itextpdf/layout/element/AreaBreak;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/AreaBreakRenderer;->areaBreak:Lcom/itextpdf/layout/element/AreaBreak;

    .line 69
    return-void
.end method


# virtual methods
.method public addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 1
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public deleteOwnProperty(I)V
    .locals 0
    .param p1, "property"    # I

    .line 162
    return-void
.end method

.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 1
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getChildRenderers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    return-object v0
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

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModelElement()Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 1

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getOwnProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(ITT1;)TT1;"
        }
    .end annotation

    .line 145
    .local p2, "defaultValue":Ljava/lang/Object;, "TT1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasOwnProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public isFlushed()Z
    .locals 1

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 7
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 84
    new-instance v6, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AreaBreakRenderer;->areaBreak:Lcom/itextpdf/layout/element/AreaBreak;

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/layout/LayoutResult;->setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    return-object v0
.end method

.method public move(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 0
    .param p1, "parent"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 166
    return-object p0
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 1
    .param p1, "property"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
