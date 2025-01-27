.class public Lcom/itextpdf/layout/element/LineSeparator;
.super Lcom/itextpdf/layout/element/BlockElement;
.source "LineSeparator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/element/BlockElement<",
        "Lcom/itextpdf/layout/element/LineSeparator;",
        ">;"
    }
.end annotation


# instance fields
.field protected tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;)V
    .locals 1
    .param p1, "lineDrawer"    # Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    .line 68
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    .line 69
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/LineSeparator;->setProperty(ILjava/lang/Object;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/itextpdf/layout/element/LineSeparator;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "Artifact"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/LineSeparator;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/LineSeparator;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    return-object v0
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 82
    new-instance v0, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/LineSeparatorRenderer;-><init>(Lcom/itextpdf/layout/element/LineSeparator;)V

    return-object v0
.end method
