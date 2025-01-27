.class public Lcom/itextpdf/layout/renderer/DrawContext;
.super Ljava/lang/Object;
.source "DrawContext.java"


# instance fields
.field private canvas:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private taggingEnabled:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/layout/renderer/DrawContext;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Z)V
    .locals 0
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p3, "enableTagging"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/DrawContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 61
    iput-object p2, p0, Lcom/itextpdf/layout/renderer/DrawContext;->canvas:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 62
    iput-boolean p3, p0, Lcom/itextpdf/layout/renderer/DrawContext;->taggingEnabled:Z

    .line 63
    return-void
.end method


# virtual methods
.method public getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DrawContext;->canvas:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v0
.end method

.method public getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/DrawContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public isTaggingEnabled()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/DrawContext;->taggingEnabled:Z

    return v0
.end method

.method public setTaggingEnabled(Z)V
    .locals 0
    .param p1, "taggingEnabled"    # Z

    .line 78
    iput-boolean p1, p0, Lcom/itextpdf/layout/renderer/DrawContext;->taggingEnabled:Z

    .line 79
    return-void
.end method
