.class Lcom/itextpdf/layout/element/FlexContainer;
.super Lcom/itextpdf/layout/element/Div;
.source "FlexContainer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Div;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 56
    new-instance v0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;-><init>(Lcom/itextpdf/layout/element/Div;)V

    return-object v0
.end method
