.class public Lcom/itextpdf/layout/renderer/DivRenderer;
.super Lcom/itextpdf/layout/renderer/BlockRenderer;
.source "DivRenderer.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Div;)V
    .locals 0
    .param p1, "modelElement"    # Lcom/itextpdf/layout/element/Div;

    .line 56
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 64
    new-instance v0, Lcom/itextpdf/layout/renderer/DivRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/DivRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/Div;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/DivRenderer;-><init>(Lcom/itextpdf/layout/element/Div;)V

    return-object v0
.end method
